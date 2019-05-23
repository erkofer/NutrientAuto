﻿using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using NutrientAuto.CrossCutting.HttpService.HttpContext;
using NutrientAuto.Identity.Domain.Aggregates.UserAggregate;
using NutrientAuto.Identity.Service.Services.User;
using NutrientAuto.Shared.Notifications;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NutrientAuto.WebApi.Controllers.Identity
{
    [Produces("application/json")]
    //[Authorize]
    [Route("api/users")]
    public class UsersController : BaseController
    {
        private readonly IUsersService _userService;
        private readonly IIdentityService _httpContextUserAccessor;

        public UsersController(IUsersService userService, IIdentityService httpContextUserAccessor, IDomainNotificationHandler domainNotificationHandler, IMediator mediator, ILogger<UsersController> logger)
            : base(domainNotificationHandler, mediator, logger)
        {
            _userService = userService;
            _httpContextUserAccessor = httpContextUserAccessor;
        }

        [HttpGet]
        [Authorize]
        [Route("")]
        public async Task<IActionResult> GetAllUsersAsync()
        {
            List<NutrientIdentityUser> users = await _userService.GetAllAsync();

            return CreateResponse(users.Select(user => ToUser(user)));
        }

        [HttpGet]
        [Authorize]
        [Route("{id:guid}")]
        public async Task<IActionResult> GetByIdAsync(Guid id)
        {
            NutrientIdentityUser user = await _userService.GetByIdAsync(id);

            return CreateResponse(ToUser(user));
        }

        [HttpGet]
        [Authorize]
        [Route("{email:minlength(3)}")]
        public async Task<IActionResult> GetByEmailAsync(string email)
        {
            NutrientIdentityUser user = await _userService.GetByEmailAsync(email);

            return CreateResponse(ToUser(user));
        }

        [HttpPost]
        [Authorize]
        [Route("invite/{email:minlength(3)}")]
        public async Task<IActionResult> InviteUserAsync(string invitedEmail)
        {
            Guid userId = _httpContextUserAccessor.GetUserId();
            await _userService.InviteUserAsync(userId, invitedEmail);

            return CreateResponse();
        }

        private object ToUser(NutrientIdentityUser user)
        {
            return new
            {
                id = user.Id,
                email = user.Email,
                userName = user.UserName
            };
        }
    }
}