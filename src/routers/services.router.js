import { Router } from "express";
import { serviceSchema } from "../schemas/services.schema.js";
import { authValidation  } from "../middlewares/authValidation.js";
import { validateSchema } from "../middlewares/validateSchema.js"
import { postServices, getServices, deleteService} from "../controllers/services.controllers.js";

const serviceRouter = Router();

serviceRouter.post("/services", validateSchema(serviceSchema), authValidation, postServices);
serviceRouter.get("/services", getServices);
serviceRouter.delete("/services/:id", deleteService);

export default serviceRouter;