const express = require('express');
const userRouter = require('./routes/user.js');

const app = express();
const PORT = 3000;


app.use('/', [userRouter])

app.use('/', (req, res) => {
    res.send("Welcome Express Server");
});

app.listen(PORT, () => {
    console.log(`Server is on ${PORT}`);
});