import bcrypt from "bcrypt";
import { v4 as uuid } from "uuid";
import { signInToken } from "../repositories/auth.repositories.js";
import { emailDB, signUpDB, logoutDB } from "../repositories/auth.repositories.js";


export async function signUp(req, res) {
  const { password, email } = req.body;
  const hash = bcrypt.hashSync(password, 10);

  const emailExist = await emailDB(email);
    if (emailExist.rowCount != 0) return res.status(409).send("Email já cadastrado!");

  try {
    await signUpDB(req.body, hash);
    res.sendStatus(201);
  } catch (error) {
    res.status(500).send(error.message);
  }
}


export async function signIn(req, res) {
  const { user } = res.locals;

  try {
    const token = uuid();

    await signInToken(user, token);
    res.status(200).send({ token });
  } catch (error) {
    res.status(500).send(error.message);
  }
}


export async function logout(req, res) {
  const { token } = res.locals.session;

  try {
    await logoutDB(token);

    res.sendStatus(200);
  } catch (err) {
    res.status(500).send(err.message);
  }
}


