const express = require('express'); const router = express.Router(); const db = require('../db');
router.get('/summary/:family_id', async (req,res)=>{
  const fid = req.params.family_id;
  const [[income]] = await db.query('SELECT COALESCE(SUM(amount),0) AS total_income FROM Transaction WHERE family_id=? AND amount>0', [fid]);
  const [[expense]] = await db.query('SELECT COALESCE(SUM(amount),0) AS total_expense FROM Transaction WHERE family_id=? AND amount<0', [fid]);
  res.render('report_summary', { income: income.total_income, expense: expense.total_expense, family_id: fid });
});
module.exports = router;
