const config = require('../config')
const jwt = require('jsonwebtoken')

// Middleware function to verify token
async function verifyToken(req, res, next) {
    const token = req.headers['authorization'];
    if (!token) {
        return res.status(403).send({ code: 500, auth: false, msg: 'No token provided.' });
    }
    jwt.verify(token, config.secretKey, (err, decoded) => {
        if (err) {
            return res.status(403).send({ code: 500, auth: false, msg: 'Failed to authenticate token.' });
        }
        // If token is valid, save user data to request object
        req.user = decoded;
        next();
    });
}


module.exports = {
    verifyToken
}