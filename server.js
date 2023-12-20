const express = require('express');

const app = express();
const PORT = 5001;

app.use('/', (req, res) => {
    res.send("Server is running");
});

app.listen(PORT, () => {
    console.log(`Server is on ${PORT}`);
});