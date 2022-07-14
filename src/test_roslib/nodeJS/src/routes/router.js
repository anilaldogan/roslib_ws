const express = require("express")
const router = express.Router();


const roslib_test = require("./roslibTest/post_roslibTest");

router.use("/api/roslib", roslib_test);

module.exports = router;