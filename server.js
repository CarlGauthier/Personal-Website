var express = require('express')
var app = express();
var mysql = require('mysql');

app.use(express.static('public'));
app.set('views', 'public/views');

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database : 'carldb'
});

connection.connect(function(err) {
    if (err) throw err;
        console.log("Connected!");
});

app.get('/', function(req, res) {
    var data = SQLQuery('Select * From ProjectView Limit 5');
    console.log("Json data :");
    console.log(data);
    Action('index.ejs', 'Accueil', data, res);
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

function Action(page, pageTitle, result, res) {
    var json = {title : pageTitle, data : result};
    res.render(page, json);
}

function SQLQuery(query) {
    connection.query(query, function(err, result) {
        if(err) {
            throw err;
        } else {
            return result;
        }
    });
}

app.listen(8080);