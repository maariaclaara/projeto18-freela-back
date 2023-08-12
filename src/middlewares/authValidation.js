import { authToken } from "../repositories/auth.repositories.js";
import bcrypt from "bcrypt";
import { emailDB } from "../repositories/auth.repositories.js";

export async function authValidation(req, res, next) {
  const { authorization } = req.headers;
  const token = authorization?.replace("Bearer ", "");
  if (!token) return res.sendStatus(401);
  try {
    const session = await authToken(token);
    if (!session.rowCount) return res.sendStatus(401);
    res.locals.session = session.rows[0];
    next();
  } catch (error) {
    res.status(500).send(error.message);
  }
}


export async function signInValidation(req, res, next) {
    const { email, password } = req.body;
    try {
      const { rows: user, rowCount: userExists } = await emailDB(email);
      if (!userExists) {
        return res.sendStatus(401);
      }
      const isPasswordValid = bcrypt.compareSync(password, user[0].password);
      if (!isPasswordValid) {
        return res.sendStatus(401);
      }
      res.locals.user = user;
      next();
    } catch (error) {
      res.status(500).send(error.message);
    }
  }