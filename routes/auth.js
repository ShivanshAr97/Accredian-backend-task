import { Router } from "express"
import { register,login,incNormalPage,incVisitPage, names } from "../controllers/auth.js"

const authRoutes = Router()
authRoutes.post("/register",register )
authRoutes.post("/login",login )
authRoutes.get("/incNormalPage",incNormalPage )
authRoutes.get("/incVisitPage",incVisitPage )
authRoutes.get("/names",names )


export default authRoutes