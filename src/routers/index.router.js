import { Router } from "express";
import authRouter from "./auth.router.js";
import serviceRouter from "./services.router.js";

const router = Router();

router.use(authRouter);
router.use(serviceRouter);

export default router;