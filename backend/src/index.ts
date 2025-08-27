import express = require("express");
import {users} from './controller/user'


const app = express()
const PORT = 3001


app.get('/', users);


app.listen(PORT,()=>{
    console.log(`SERVER IS LISTEN ON PORT ${PORT}`)
})