const express = require("express")
const router = express.Router();
const ROSLIB = require("roslib")
const Joi = require("joi");

const rosAuth = require("../../utils/rosAuth");


router.post("/", async (req, res) => {

    let ros = new ROSLIB.Ros({ url: "ws://localhost:9090" });

    rosAuth(ros);

    ros.on("connection", function () {
        console.log(`[${process.pid}] Connected to websocket server.`);
    });

    ros.on("error", function (error) {
        console.log(`[${process.pid}] Error connecting to websocket server: `, error.message);
    });

    ros.on("close", function () {
        console.log(`[${process.pid}] Connection to websocket server closed.`);
    });

    var listener = new ROSLIB.Topic({
        ros: ros,
        name: "/listener",
        messageType: "std_msgs/String"
    });

    listener.subscribe(function (message) {
        console.log(`[${process.pid}] Received message on ` + listener.name + ": " + message.data);
        listener.unsubscribe();
    });

    return res.status(200).json({ message: "OK" });
});

module.exports = router;