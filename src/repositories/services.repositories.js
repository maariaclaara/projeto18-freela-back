import { db } from "../database/database.connection.js";


export function dataBaseDB(userId, photo, name, phone, description, price) {
  return db.query(`
  INSERT INTO services ("userId", photo, name, phone, description, price) VALUES ($1, $2, $3, $4, $5, $6)`, 
  [userId, photo, name, phone, description, price]);
}

export function getServiceDB() {
  return db.query(`SELECT * FROM services`);
}


export function deleteDB(id, userId){
  return db.query(`DELETE FROM services WHERE id=$1, "userId"=$2`,
  [id, userId]);
}