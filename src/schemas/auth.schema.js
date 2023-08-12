import joi from "joi";

export const userSignUp = joi.object({
  name: joi.string().min(10).required(),
  email: joi.string().email().required(),
  city: joi.string().required(),
  phone: joi.string().pattern(new RegExp('^\\d{11}$')).required(),
  password: joi.string().min(6).required(),
  confirmPassword: joi.any().valid(joi.ref('password')).required(),
});

export const userSignIn = joi.object({
  email: joi.string().email().required(),
  password: joi.string().min(6).required(),
});



