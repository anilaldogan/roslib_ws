const express = require("express")
const router = express.Router();
const ROSLIB = require("roslib")
const Joi = require("joi");

const rosAuth = require("../../utils/rosAuth");


router.post("/", async (req, res) => {

    let ros = new ROSLIB.Ros({ url: "ws://localhost:9090" });


    ros.on("connection", function () {
        console.log(`[${process.pid}] Connected to websocket server.`);
        //rosAuth(ros);
        const { error, value } = bodyValidate(req.body);
        if (error) return res.status(403).json({ message: error.details[0].message });

        const { robot, x, y, th } = req.body;

        //testFunction(res, ros, robot, x, y, th);



        // Create a listener for /my_topic
        const my_topic_listener = new ROSLIB.Topic({
            ros,
            name: '/my_topic',
            messageType: 'test_roslib/message1',
        });

        let msg = new ROSLIB.Message({
            robot: robot,
            x: x,
            y: y,
            th: th
        });
        
        my_topic_listener.publish(msg);

        my_topic_listener.subscribe((message) => {
            console.log(message);
            res.status(200).json({ 
                message: message,
                status: "Successful"
            });

            my_topic_listener.unsubscribe();
            ros.close();
        });


    });

    ros.on("error", function (error) {
        console.log(`[${process.pid}] Error connecting to websocket server: `, error.message);
        res.status(500).json({ message: error.message });
    });

    ros.on("close", function () {
        console.log(`[${process.pid}] Connection to websocket server closed.`);
    });

});







function testFunction(res, ros, robot, x, y, th) {
    var client = new ROSLIB.Service({
        ros: ros,
        name: `/${robot}/set_parameters`,
        serviceType: 'geometry_msgs'
    });

    var request = new ROSLIB.ServiceRequest({
        config: {
            bools: [
                // {name: '', value: false}
            ],
            ints: [
                // {name: '', value: 0}
            ],
            strs: [
                // {name: '', value: ''}
            ],
            doubles: [
                { name: 'max_vel_x', value: req.body.max_vel_x },
                { name: 'min_vel_x', value: req.body.min_vel_x },
                { name: 'max_vel_theta', value: req.body.max_vel_theta },

            ],
            groups: [
                // {name: '', state: false, id: 0, parent: 0}

            ]
        }
    });

    client.callService(request, function (result) {
        console.log('Result for service call on '
            + client.name
            + ': '
            + JSON.stringify(result, null, 2));

        res.send(`${req.body.robot} configured successfully`)

        ros.close();

    }, function (error) {
        res.status(406).send(error)
        ros.close();
    });

}

bodyValidate = (request) => {
    const schema = Joi.object({
        robot: Joi.string().min(2).max(100).required(),
        x: Joi.number().required(),
        y: Joi.number().required(),
        th: Joi.number().required()
    });
    return schema.validate(request);
}

module.exports = router;