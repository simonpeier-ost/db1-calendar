/*
 * Authors: Oliver Dietsche, Simon Peier
 */

/* 3. View*/
/* 3.1 */
create view PersView (name, email, calendar, "number of meetings", "number of tasks") as
    select p.name, p.email, cal.name, sum(m.name), sum(t.name)
from person p
    join person_calendar pcal on p.id = pcal.person
    join calendar cal on cal.id = pcal.calendar
    join meeting m on p.id = m.scheduler
    join task t on p.id = t.assignee
group by p.name, p.email, cal.name
order by p.name;

select * from PersView;
