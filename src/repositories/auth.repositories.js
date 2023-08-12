import { db } from "../database/database.connection.js";


export function authToken(token) {
  return db.query(
    `SELECT * FROM tokens WHERE token=$1`,
    [token]
  )
}

export function signInToken(user, token) {
  return db.query(
    `INSERT INTO tokens ("userId", token) VALUES ($1, $2)`,
    [ user[0].id, token ]
  );
}

export function emailDB(email){
  return db.query(
    `SELECT * FROM users WHERE email=$1`, 
    [email])
}

export function signUpDB(body, hash) {
  const { name, email, city, phone } = body;
  return db.query(
    `INSERT INTO users (name, email, city, phone, password) VALUES ($1, $2, $3, $4, $5)`,
    [name, email, city, phone, hash]
  );
}

export function logoutDB(token){
  return db.query(`DELETE FROM tokens WHERE token = $1`,
  [token]);
}
