﻿using NutrientAuto.Community.Domain.Aggregates.ProfileAggregate;
using NutrientAuto.Community.Domain.Repositories.ProfileAggregate;
using NutrientAuto.Shared.Commands;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace NutrientAuto.Community.Domain.DomainServices.ProfileAggregate
{
    public class ProfileDomainService : IProfileDomainService
    {
        private readonly IProfileRepository _profileRepository;

        public ProfileDomainService(IProfileRepository profileRepository)
        {
            _profileRepository = profileRepository;
        }

        public async Task<ProfileAccessResult> CanAccessProfileData(Guid requesterId, Guid requestedId)
        {
            if (requesterId == requestedId)
                return ProfileAccessResult.CanAccess;

            Profile requestedProfile = await _profileRepository.GetByIdAsync(requestedId);
            if (requestedProfile != null)
            {
                if (requestedProfile.IsPublic)
                    return ProfileAccessResult.CanAccess;
                if (requestedProfile.IsPrivate)
                    return ProfileAccessResult.Forbidden;
                if (requestedProfile.IsProtected)
                {
                    if (requestedProfile.IsFriend(requesterId))
                        return ProfileAccessResult.CanAccess;

                    return ProfileAccessResult.Forbidden;
                }
            }

            return ProfileAccessResult.NotFound;
        }

        public async Task<CommandResult> MakeFriends(Guid requesterId, Guid requestedId)
        {
            if (!IsValidIds(requesterId, requestedId))
                return FailureDueToSameProfile();

            Profile requesterProfile = await _profileRepository.GetByIdAsync(requesterId);
            Profile requestedProfile = await _profileRepository.GetByIdAsync(requestedId);

            if (!FoundValidProfiles(requesterProfile, requestedProfile))
                return FailureDueToProfilesNotFound();

            requesterProfile.AddFriend(requestedProfile);
            requestedProfile.AddFriend(requesterProfile);

            return await CheckValidationAndUpdateAsync(requesterProfile, requestedProfile);
        }

        public async Task<CommandResult> EndFriendship(Guid requesterId, Guid requestedId)
        {
            if (!IsValidIds(requesterId, requestedId))
                return FailureDueToSameProfile();

            Profile requesterProfile = await _profileRepository.GetByIdAsync(requesterId);
            Profile requestedProfile = await _profileRepository.GetByIdAsync(requestedId);

            if (!FoundValidProfiles(requesterProfile, requestedProfile))
                return FailureDueToProfilesNotFound();

            requesterProfile.RemoveFriend(requestedProfile);
            requestedProfile.RemoveFriend(requesterProfile);

            return await CheckValidationAndUpdateAsync(requesterProfile, requestedProfile);
        }

        private bool IsValidIds(Guid requesterId, Guid requestedId)
        {
            return requesterId != requestedId;
        }

        private bool FoundValidProfiles(Profile requesterProfile, Profile requestedProfile)
        {
            return requesterProfile != null && requestedProfile != null;
        }

        private CommandResult FailureDueToSameProfile()
        {
            return CommandResult.Failure("Perfil inválido", "Não é possível tornar-se amigo de si mesmo.");
        }

        private CommandResult FailureDueToProfilesNotFound()
        {
            return CommandResult.Failure("Perfis inválidos", "Ocorreu um erro ao buscar os perfis envolvidos na operação.");
        }

        private async Task<CommandResult> CheckValidationAndUpdateAsync(Profile requesterProfile, Profile requestedProfile)
        {
            if (!requesterProfile.IsValid)
                return CommandResult.Failure(requesterProfile.GetNotifications().ToList());
            if (!requestedProfile.IsValid)
                return CommandResult.Failure(requestedProfile.GetNotifications().ToList());

            await _profileRepository.UpdateAsync(requesterProfile);
            await _profileRepository.UpdateAsync(requestedProfile);

            return CommandResult.Ok();
        }
    }
}
