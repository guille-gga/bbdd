const express = require("express")

const PORT = 3000
const app= express();

app.use(express.static("public"))

app.get("/test", (req, res)=>{
    res.send(Math.random())
})

app.listen(PORT, ()=> console.log("SERVER FUNCIONANDO EN EL PORT 3000"))