const express = require('express'); const router = express.Router(); const db = require('../db');
router.get('/', async (req,res)=>{
  const [cats] = await db.query('SELECT c.*, f.family_name FROM Category c JOIN Family f ON c.family_id=f.family_id ORDER BY c.category_id DESC');
  res.render('categories', { categories: cats });
});
router.post('/add', async (req,res)=>{
  const { family_id, name, type } = req.body;
  await db.query('INSERT INTO Category (family_id, name, type) VALUES (?,?,?)', [family_id, name, type]);
  res.redirect('/categories');
});
module.exports = router;
