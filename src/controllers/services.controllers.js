import { db } from "../database/database.connection.js";


export async function postServices(req, res) {

  const { photo, name, phone, description, price } = req.body;
  const { userId } = res.locals.session;

  try {   
    await db.query(`
    INSERT INTO services ("userId", photo, name, phone, description, price) VALUES ($1, $2, $3, $4, $5, $6)`, 
    [userId, photo, name, phone, description, price]);

    return res.sendStatus(201);    
  }
  catch (err) {
    return res.status(500).send(err.message)
  };
};


export async function getServices(req, res){

  try {
      const services = await db.query(`SELECT * FROM services`)

      return res.send(services.rows);
    } 
    catch (err) {
      return res.status(500).send(err.message)
    };
};


export async function getIdService(req, res) {

  const { userId } = res.locals.session;

  try {
    const idService = await db.query(`SELECT "userId", photo, name, phone, description, price FROM services WHERE "userId" = $1"`, 
    [userId]);

    if (idService.rowCount === 0) {
      return res.status(404).send(alert('Você ainda não tem serviços cadastrados!'));
    }

    return res.status(200).send(idService.rows[0]);
  } 
  catch (err) {
    return res.status(500).send(err.message)
  }
} 


export async function putServices(req, res) {

  const { id } = req.params;
  const { photo, name, phone, description, price } = req.body;

    try{
    await db.query(`UPDATE services SET photo = $1, name = $2, phone = $3, description = $4, price = $5 WHERE id = $6`, 
    [photo, name, phone, description, price, id])

      return res.sendStatus(200); 
    }
    catch (err){
      return res.status(500).send(err.message)
    }
}


export async function deleteService(req, res){

  const { id } = req.params.id;

  try {
    await db.query(`SELECT * FROM services WHERE id=$1`, [id])
    

    await db.query(`DELETE FROM services WHERE id=$1;`,
      [id]);
    
    return res.sendStatus(200);
  }
  catch (err){
    return res.status(500).send(err.message)
  }
};