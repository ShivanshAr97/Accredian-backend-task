import express, { query } from "express"
import dotenv from "dotenv"
dotenv.config();
import cors from "cors"
import { PrismaClient } from "@prisma/client";

const PORT = process.env.PORT||5000

import rootRouter from "./routes/index.js";
import { errorMiddleware } from "./middlewares/errorMiddleware.js";

const app = express()
app.use(express.json())

const corsOptions ={
    origin:['http://localhost:5173'], 
    credentials:true,            //access-control-allow-credentials:true
    optionSuccessStatus:200
  }
  app.use(cors(corsOptions));

app.use("/api",rootRouter)

export const prismaClient = new PrismaClient()

app.use(errorMiddleware)

app.listen(PORT, ()=>{
    console.log(`Running on Port ${PORT}`)
})