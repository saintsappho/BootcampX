console.log(process.argv.slice(2))
const { Pool } = require('pg');

const pool = new Pool();

const cohortNameReqd = process.argv.slice(2)[0];
const limitReqd = process.argv.slice(2)[1];
pool.query({
  text: `
    SELECT students.id, students.name, cohorts.name AS cohort_name
    FROM students
    JOIN cohorts ON cohorts.id = students.cohort_id
    WHERE cohorts.name LIKE $1
    LIMIT $2;
    `,
  values: [`%${cohortNameReqd}%`, limitReqd],
})
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));