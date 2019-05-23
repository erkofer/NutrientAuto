﻿using NutrientAuto.Community.Domain.Commands.FoodTableAggregate.BaseCommand;
using NutrientAuto.Community.Domain.CommandValidators.FoodTableAggregate;

namespace NutrientAuto.Community.Domain.Commands.FoodTableAggregate
{
    public class RemoveFoodTableCommand : BaseFoodTableCommand
    {
        public override bool Validate()
        {
            ValidationResult = new RemoveFoodTableCommandValidator().Validate(this);
            return ValidationResult.IsValid;
        }
    }
}
