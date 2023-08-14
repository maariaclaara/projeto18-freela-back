import joi from "joi";

export const serviceSchema = joi.object({
  photo: joi.string().uri().required(),
  name: joi.string().required(),
  phone: joi.string().pattern(new RegExp('^\\d{11}$')).required(),
  description: joi.string().min(5).required(),
  price: joi.string().pattern(/^\d{1,3}(?:.\d{3})*(?:,\d{1,2})?$/).message('Formato de valor inválido! Insira o valor em $ REAIS.').required(),
});


