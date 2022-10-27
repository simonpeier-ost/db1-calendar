/*
 * Authors: Oliver Dietsche, Simon Peier
 */

ALTER TABLE person_calendar
ADD CONSTRAINT fk_pers_cal_pers
    FOREIGN KEY (person) REFERENCES person (id)
;

ALTER TABLE person_calendar
ADD CONSTRAINT fk_pers_cal_cal
    FOREIGN KEY (calendar) REFERENCES calendar (id)
;

ALTER TABLE meeting
ADD CONSTRAINT fk_meet_cal
    FOREIGN KEY (calendar) REFERENCES calendar (id)
    ON DELETE CASCADE
;

ALTER TABLE task
ADD CONSTRAINT fk_task_cal
    FOREIGN KEY (calendar) REFERENCES calendar (id)
    ON DELETE CASCADE
;

ALTER TABLE task
ADD CONSTRAINT fk_task_meet
    FOREIGN KEY (meeting) REFERENCES meeting (id)
;