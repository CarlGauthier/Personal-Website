var express = require('express')
var app = express();
var mysql = require('mysql');

app.use(express.static('public'));
app.set('views', 'public/views');
app.set('view engine', 'ejs');
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
    
    connection.query('Select * From HomeProjectView; Select * From HomeBlogPostView', function(err, result) {
        if(err){
            throw err;
        } else {
            res.render('index.ejs', {title: 'Accueil', Project: result[0], BlogPost: result[1]});
        }
    });
});

app.get('/Portfolio', function(req, res) {
    Action('portfolio.ejs', 'Select * From HomeProjectView', 'Portfolio', res);
});

app.get('/Project:id', function(req, res) {
    console.log('Project #' + req.params.id);
});

app.get('/Blog', function(req, res) {
    Action('blog.ejs', 'Select * From HomeBlogPostView', 'Blog', res);
});

app.get('')


function Action(page, query, pageTitle, res) {
    connection.query(query, function(err, result) {
        if(err){
            throw err;
        } else {
            res.render(page, {title: pageTitle, data: result});
        }
    });
}

app.listen(80);