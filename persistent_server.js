var mysql = require('mysql');
/* If the node mysql module is not found on your system, you may
 * need to do an "npm install -g mysql". */

var dbConnection = mysql.createConnection({
  user: "",
  password: "",
  database: "chat"
});
/* You'll need to fill this out with your mysql username and password.
 * database: "chat" specifies that we're using the database called 
 * "chat", which we created by running schema.sql.*/

dbConnection.connect();
/* Now you can make queries to the Mysql database using the
 * dbConnection.query() method.
 * See https://github.com/felixge/node-mysql for more details about
 * using this module.*/

/* You already know how to create an http server from the previous
 * assignment; you can re-use most of that code here. */

dbConnection.end();
