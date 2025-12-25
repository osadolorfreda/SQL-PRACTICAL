const express = require('express'); const router = express.Router(); const db = require('../db');
router.get('/', async (req,res)=>{
  const [txns] = await db.query(`SELECT t.*, c.name AS category_name, m.first_name as member_first, f.family_name FROM Transaction t LEFT JOIN Category c ON t.category_id=c.category_id LEFT JOIN Member m ON t.member_id=m.member_id LEFT JOIN Family f ON t.family_id=f.family_id ORDER BY t.txn_date DESC LIMIT 200`);
  res.render('transactions', { transactions: txns });
});
router.post('/add', async (req,res)=>{
  const { family_id, member_id, category_id, amount, txn_date, note } = req.body;
  await db.query('INSERT INTO Transaction (family_id, member_id, category_id, amount, txn_date, note) VALUES (?,?,?,?,?,?)', [family_id, member_id, category_id, amount, txn_date, note]);
  res.redirect('/transactions');
});
module.exports = router;
