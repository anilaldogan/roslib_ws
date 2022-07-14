const express = require("express");
const { exit } = require("process");
const router = require("./routes/router");
const app = express();

console.log(`[${process.pid}] Start Proccess`);

require("dotenv").config();
app.use(express.json({ limit: "4mb" }));
app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
    res.status(200).json({ message: "NodeJS is fine..." });
});

app.use(router);

async function init() {
    try {
        const port = process.env.PORT ?? 7427;

        app.listen(port, () => {
            console.log(`[${process.pid}] listening on port ${port}`);
        });

    } catch (error) {
        console.log(error);
        exit(1);
    }
}

init();