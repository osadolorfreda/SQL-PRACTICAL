const express = require('express'); const router = express.Router(); const db = require('../db');
router.get('/', async (req,res)=>{
  const [members] = await db.query('SELECT m.*, f.family_name FROM Member m JOIN Family f ON m.family_id=f.family_id ORDER BY m.member_id DESC');
  res.render('members', { members });
});
router.post('/add', async (req,res)=>{
  const { family_id, first_name, last_name, email, phone } = req.body;
  await db.query('INSERT INTO Member (family_id, first_name, last_name, email, phone) VALUES (?,?,?,?,?)', [family_id, first_name, last_name, email, phone]);
  res.redirect('/members');
});
module.exports = router;
