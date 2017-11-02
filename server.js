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
    database : process.env.MYSQL_DATABASE,
    multipleStatements: true
});

connection.connect(function(err) {
    if (err) throw err;
        console.log("Connected!");
    
});

app.get('/', function(req, res) {
    Action('index.ejs', 'Select * From ProjectView Limit 5; Select * From Context', 'Accueil', res);
});

function Action(page, query, pageTitle, res) {
    connection.query(query, function(err, result) {
        if(err){
            throw err;
        } else {
            console.log(result.count);
            //var json = {title: pageTitle}
            //json.push()
            //console.log(json);
            //res.render(page, {title: pageTitle, model: result[0], model2: result[1]});
        }
    });
    connection.end();
}

/*
function Action(page, query, pageTitle, res) {
    connection.query(query, function(err, result) {
        if(err){
            throw err;
        } else {
            console.log(result);
            res.render(page, {title: pageTitle, data: result});
        }
    });
    connection.end();
}
*/

app.listen(80);

/*
var myObj = new Object;
var a = 'string1';
myObj[a] = 'whatever';
alert(myObj.string1)
*/