console.log(process.argv.slice(2))
const { Pool } = require('pg');

const pool = new Pool();

const cohortNameReqd = process.argv.slice(2)[0];
const limitReqd = process.argv.slice(2)[1];
pool.query({
  text: `
    SELECT DISTINCT
      teachers.name AS teacher,
      cohorts.name AS cohort
    FROM assistance_requests
    JOIN teachers ON  assistance_requests.teacher_id = teachers.id
    JOIN students ON assistance_requests.student_id = students.id
    JOIN cohorts ON students.cohort_id = cohorts.id  
    WHERE cohorts.name LIKE $1
    ORDER BY teacher
    limit $2;
    `,
  values: [`%${cohortNameReqd}%`, limitReqd],
})
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack)); 