ALTER TABLE person_calendar
ADD CONSTRAINT fk_pers_cal
    FOREIGN KEY (person) REFERENCES person (id)
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
    ON DELETE CASCADE
;