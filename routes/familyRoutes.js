const express = require('express'); const router = express.Router();
const db = require('../db');
router.get('/families', async (req,res)=>{
  const [rows] = await db.query('SELECT * FROM Family ORDER BY family_id DESC');
  res.render('families', { families: rows });
});
router.post('/families/add', async (req,res)=>{
  const { family_name } = req.body;
  await db.query('INSERT INTO Family (family_name) VALUES (?)', [family_name]);
  res.redirect('/families');
});
module.exports = router;
