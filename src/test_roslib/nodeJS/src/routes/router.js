const express = require("express")
const router = express.Router();


const roslib_test = require("./roslibTest/post_roslibTest");
const service_test = require("./roslibTest/post_serviceTest");


router.use("/api/service", service_test);
router.use("/api/roslib", roslib_test);


module.exports = router;