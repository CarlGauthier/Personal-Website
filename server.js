var express = require('express')
var app = express();
var mysql = require('mysql');

app.use(express.static('public'));
app.set('views', 'public/views');
require('dotenv').config();

var connection = mysql.createConnection({
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    host: process.env.MYSQL_HOST,
    database : process.env.MYSQL_DATABASE
});

connection.connect(function(err) {
    console.log(process.env.MYSQL_DATABASE);
    if (err) throw err;
        console.log("Connected!");
    
});

app.get('/', function(req, res) {
    QueryAction('index.ejs', 'Select * From ProjectView Limit 5', 'Accueil', res);
});

function QueryAction(page, query, pageTitle, res) {
    connection.query(query, function(err, result) {
        if(err){
            throw err;
        } else {
            console.log(result);
            res.render(page, {title: pageTitle, data: result});
        }
    });
}

app.listen(80);