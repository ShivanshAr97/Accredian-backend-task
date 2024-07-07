import { Router } from "express";
import authRoutes from "./auth.js";
import referRoutes from "./refer.js"

const rootRouter = Router()

rootRouter.use("/auth",authRoutes)
rootRouter.use("/refer",referRoutes)

export default rootRouter