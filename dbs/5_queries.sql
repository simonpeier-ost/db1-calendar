/*
 * Authors: Oliver Dietsche, Simon Peier
 */

-- 1.1 Eine Query mit DISTINCT
-- Beschreibung: Alle Vornamen der Personen ohne Duplikate
SELECT DISTINCT firstname as "unique firstnames"
FROM person;

-- 1.2 Eine Query, die einen JOIN über drei oder mehr Tabellen enthält
-- Beschreibung: Namen aller Meetings, die Person mit ID = 3 in allen ihren Kalendern gemeinsam hat
SELECT meet.name as "Meeting"
FROM person pers
INNER JOIN person_calendar pers_cal ON pers.id = pers_cal.person
INNER JOIN calendar cal ON pers_cal.calendar = cal.id
INNER JOIN meeting meet ON cal.id = meet.calendar
WHERE pers.id = 3;

-- 1.3 Eine Query mit einer Unterabfrage mit Angabe, ob diese Query korreliert ist oder unkorreliert
-- Beschreibung: Vorname und Nachname der Personen, die 1 oder mehr Meetings erstellt haben
SELECT firstname, lastname
FROM person
WHERE id IN ( -- Subquerry ist korreliert
    SELECT scheduler
    FROM meeting
    GROUP BY scheduler
    HAVING count(*) >= 2
);

-- 1.4. Eine Query, die eines der vier folgenden Statements enthält: ANY, IN, EXISTS oder ALL
-- Beschreibung: Vorname und Nachname der Personen, die 1 oder weniger Meetings erstellt haben
SELECT firstname, lastname
FROM person
WHERE id NOT IN (
    SELECT scheduler
    FROM meeting
    GROUP BY scheduler
    HAVING count(*) >= 2
);

-- 2.2.1 Unterabfrage im FROM-Teil (anstelle einer Tabelle)
-- Beschreibung: Vorname und Nachname der Personen, die am meisten Meetings erstellt haben
SELECT firstname, lastname
FROM (
	SELECT pers.firstname, pers.lastname,
	rank() OVER (ORDER BY count(pers.id) DESC) as ranking
	FROM person pers
	INNER JOIN meeting meet ON pers.id = meet.scheduler
    GROUP BY pers.id
) AS pers
WHERE ranking = 1;

-- 2.2.2 Common Table Expression
WITH scheduling_rank AS  (
	SELECT pers.firstname, pers.lastname,
	rank() OVER (ORDER BY count(pers.id) DESC) as ranking
	FROM person pers
	INNER JOIN meeting meet ON pers.id = meet.scheduler
    GROUP BY pers.id
)
SELECT firstname, lastname
FROM scheduling_rank
WHERE ranking = 1;

-- 2.2.1 Schreiben Sie eine sinnvolle Query mit einer GROUP BY-Klausel
-- Beschreibung: Name des Kalenders mit der kleinsten Durchschnittsdauer der Meetings
SELECT cal.name
FROM meeting meet
INNER JOIN calendar cal ON meet.calendar = cal.id
GROUP BY meet.calendar, cal.id
HAVING avg(meet.duration) <= ALL (
    SELECT avg(duration)
    FROM meeting
    GROUP BY calendar
);

-- 2.2.2 Schreiben Sie eine sinnvolle Query mit einer Window-Funktion
-- Beschreibung: Vorname und Nachname der Personen, die am meisten Meetings erstellt haben
-- Bemerkung: count() als Window-Funktion, oder für dasselbe mit rank() siehe 2.1
SELECT pers.firstname, pers.lastname
FROM person pers
INNER JOIN meeting meet ON pers.id = meet.scheduler
GROUP BY pers.id
HAVING count(pers.id) >= ALL (
    SELECT count(pers.id)
    FROM person pers
    INNER JOIN meeting meet ON pers.id = meet.scheduler
    GROUP BY pers.id
);

-- 3. View
-- 3.1
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
