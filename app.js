require('dotenv').config();
const express = require('express');
const path = require('path');
const session = require('express-session');
const flash = require('connect-flash');
const db = require('./db');

const app = express();
const port = process.env.PORT || 3000;

const familyRoutes = require('./routes/familyRoutes');
const memberRoutes = require('./routes/memberRoutes');
const categoryRoutes = require('./routes/categoryRoutes');
const txnRoutes = require('./routes/transactionRoutes');
const reportRoutes = require('./routes/reportRoutes');

app.set('view engine','ejs');
app.set('views', path.join(__dirname,'views'));

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static(path.join(__dirname,'public')));
app.use(session({ secret: process.env.SESSION_SECRET || 'secret', resave:false, saveUninitialized:true }));
app.use(flash());
app.use((req,res,next)=>{ res.locals.messages = req.flash(); next(); });

app.use('/', familyRoutes);
app.use('/members', memberRoutes);
app.use('/categories', categoryRoutes);
app.use('/transactions', txnRoutes);
app.use('/reports', reportRoutes);

app.get('/', async (req,res)=>{
  try{
    const [families] = await db.query('SELECT * FROM Family ORDER BY family_id DESC LIMIT 10');
    res.render('index', { families });
  }catch(err){
    console.error(err); res.status(500).send('Server error');
  }
});

app.listen(port, ()=> console.log('Server running on port', port));
