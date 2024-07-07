import { Router } from "express"
import { referCnt } from "../controllers/refer.js"

const referRoutes = Router()
referRoutes.get("/count",referCnt)

export default referRoutes