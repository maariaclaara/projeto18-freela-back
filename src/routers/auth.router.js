import { Router } from "express";
import { userSignUp, userSignIn } from "../schemas/auth.schema.js";
import { signInValidation, authValidation  } from "../middlewares/authValidation.js";
import { validateSchema } from "../middlewares/validateSchema.js"
import { signIn, signUp, logout} from "../controllers/auth.controllers.js";


const userRouter = Router();

userRouter.post("/signin", validateSchema(userSignIn), signInValidation, signIn);
userRouter.post("/signup", validateSchema(userSignUp), signUp);
userRouter.post("/logout", authValidation, logout);

export default userRouter;