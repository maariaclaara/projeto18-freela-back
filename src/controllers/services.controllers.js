import { dataBaseDB, getServiceDB, deleteDB} from "../repositories/services.repositories.js";

export async function postServices(req, res) {

  const { photo, name, phone, description, price } = req.body;
  const { userId } = res.locals.session;

  try {   
    await dataBaseDB(userId, photo, name, phone, description, price);

    return res.sendStatus(201);    
  }
  catch (err) {
    return res.status(500).send(err.message)
  };
};


export async function getServices(req, res){

  try {
      const services = await getServiceDB();

      return res.send(services.rows);
    } 
    catch (err) {
      return res.status(500).send(err.message)
    };
};


export async function deleteService(req, res){

  const { id } = req.params;

  try {   
    await deleteDB(id);
    
    return res.sendStatus(200);
  }
  catch (err){
    return res.status(500).send(err.message)
  }
};
