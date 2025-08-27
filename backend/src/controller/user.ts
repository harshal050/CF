import {PrismaClient} from "../../src/generated/prisma";
const prisma =  new PrismaClient();

export const users = async(req:any,res:any)=>{
    try{
        const data = await prisma.user.findMany()
        res.json({msg:data})
    }catch(e){
        res.json({msg:e})
    }  
}
