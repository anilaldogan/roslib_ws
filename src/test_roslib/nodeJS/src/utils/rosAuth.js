const sha512 = require("js-sha512");


rosAuth = ros => {
    let secret = process.env.ROS_AUTH_SECRET ?? "";
    let dest = "robot";
    let rand = "phobosfleet";
    let time = new Date().getTime() / 1000;
    let timeEnd = time + 1000;
    let level = "admin";
    let client = "server"
    let mac = sha512(secret + client + dest + rand + parseInt(time).toString() + level + parseInt(timeEnd).toString());
    ros.authenticate(mac, client, dest, rand, time, level, timeEnd);
}

module.exports = rosAuth;