/*
 * Authors: Oliver Dietsche, Simon Peier
 */

INSERT INTO person values
(1, 'Bret', 'Craig', 'bret.craig@ost.ch', to_date('2000-02-02', 'YYYY-MM-DD')),
(2, 'Talha', 'Schwartz', 'talha.schwartz@ost.ch', NULL),
(3, 'Henrietta', 'Spears', 'herietta.spears@ost.ch', to_date('2003-07-16', 'YYYY-MM-DD')),
(4, 'Sayed', 'Lu', 'sayed.lu@ost.ch', NULL),
(5, 'Antony', 'Sexton', 'antony.sexton@ost.ch', to_date('2007-02-16', 'YYYY-MM-DD')),
(6, 'Yannis', 'Derrick', 'yannis.derrick@ost.ch', to_date('2010-10-10', 'YYYY-MM-DD')),
(7, 'Abdi', 'Randall', 'abdi.randall@ost.ch', to_date('2020-05-05', 'YYYY-MM-DD'));

INSERT INTO calendar values
(1, 'Hausaufgaben', NULL),
(2, 'Henrietta', 'Mein persönlicher Kalender'),
(3, 'Volleybal Lunki', NULL),
(4, 'Fachschaft Informatik', NULL),
(5, 'Jodel Klub', NULL),
(6, 'Parties', 'Die besten Parties lokal in Rapperswil SG'),
(7, 'Geburtstage', NULL);

INSERT INTO person_calendar values
(1, 3, 1),
(2, 3, 2),
(3, 3, 5),
(4, 2, 6),
(5, 3, 6),
(6, 4, 6),
(7, 5, 6),
(8, 2, 7),
(9, 6, 7);

INSERT INTO meeting values
(1, 'Rattenfest', '2022-05-18 20:00:00', '06:00:00', NULL, 'OST Rapperswil SG Campus', 6),
(2, 'Halloween Party', '2022-10-28 20:00:00', '08:00:00', 'Verkleidung gibt einen gratis Shot.', 'OST Rapperswil SG Campus', 6),
(3, 'Spiel gegen Zürich Affoltern', '2022-11-05 09:00:00', '05:00:00', 'Weitere infos siehe Gruppenchat.', 'Oberlunkhofen', 3),
(4, 'Spiel gegen Einsiedeln', '2022-11-12 09:00:00', '05:00:00', 'Weitere infos siehe Gruppenchat.', 'Einsiedeln', 3),
(5, 'Spiel gegen Bern', '2022-11-19 09:00:00', '05:00:00', 'Weitere infos siehe Gruppenchat.', 'Oberlunkhofen', 3),
(6, 'Jodel Training', '2022-11-15 14:00:00', '01:00:00', NULL, 'Kaserne Bern', 5),
(7, 'Rogers Geburtstag', '2022-12-12 00:00:00', '24:00:00', 'Geboren 1999', NULL, 7);

INSERT INTO task values
(1, 'Getränke entgegennehmen', '2022-05-16 17:30:00', true, 'Hofweiler wird bei der Schranke warten.', 6, 1),
(2, 'Verkleidung kaufen', '2022-10-16 15:30:00', false, NULL, 2, 2),
(3, 'Werbung live schalten', '2022-08-13 11:30:00', false, NULL, 3, NULL),
(4, 'Hausaufgaben dieser Woche machen', '2022-10-18 15:30:00', false, NULL, 1, NULL),
(5, 'Probeprüfung lösen', '2022-12-21 15:30:00', false, NULL, 1, NULL),
(6, 'Beim Beizli anrufen', '2022-07-03 13:30:00', true, NULL, 5, NULL),
(7, 'Vorlesung besuchen', '2022-09-11 19:30:00', false, NULL, 2, NULL);