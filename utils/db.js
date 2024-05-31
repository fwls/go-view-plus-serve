const config = require('../config')

const knex = require('knex')({
    client: 'mysql',
    connection: config.dbConnection,
    pool: { min: 0, max: 7 },
  })


module.exports = knex