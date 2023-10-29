var pool = require('./db');
var md5 = require('md5');

async function get_user_and_password(user, password) {
    try {
        var query = 'select * from users where user = ? and password = ? limit 1';
        var rows = await pool.query(query, [user, md5(password)]);
        return rows [0]

        
    } catch (error) {
        console.log(error)
    }
}

module.exports = { get_user_and_password }