# Meetingsverwaltung

> Oliver Dietsche, Simon Peier

## Prosa

Dieses System ermöglicht das verwalten von Aktivitäten in einem Kalender.

- Meetings erhalten eine eindeutige ID. Es kann also mehrere Meetings mit dem gleichen Namen geben.
- Das Alter einer Person ist dynamisch und wird anhand des Geburtstages berechnet und nicht direkt in der Datenbank gespeichert.
- Nur Organisatoren können Meetings erstellen.
- Meetings haben neben dem Organisator mindestens einen weiteren Teilnehmer.
- Eine Person kann zu jedem Zeitpunkt nur an einem Meeting teilnehmen.
- Wenn ein Task erfüllt ist, wird dieser nicht gelöscht, sondern mit Hilfe eines flags als "finished" markiert.

## Domain Model

![img](http://www.plantuml.com/plantuml/png/dPD1ZzD038NlyokiS5W9qMsxOY_H2gsqPmGI7BcuYTkOpdYY6UTG0VyT9qesJIYNlRJAYz-p_Lbvpef9k-1TmpK1XLOl44YRM6VdyfcbnOG19DQKgONzRdUb9fHphtxSELTvp1bUq9FKcE2N0n0CL4BMn7AoHqke4hVAKLxLFvFnCv6QSDE7IkNmgnp811yhNAHOJPT6IRfme3G7VwMKemovHqvPL-4ULz9inAHSSOkYWpiW-olZWPCsDLuMasq1J_Jl3DyndyS9X7D3TGc763sX_1_BAybYVt__le3DPWE5_K-WIgYYAB9a-EGciHWBHy_r2YMWgYLcU78IbS3JKKjuGO4e_WBjLAi4B3zwbI2CkQY0qEzuezEwJQvimSwJDPghz_C20umI6km77w_pzDlUhdAAOfuJhCQpdE7T4HyV7XyCEkUVaKK_68RGUb9oRditylwIJYYSKMCoxFCTldK7dKvXwgBxmlI6xlEgXdvciqoj4g4EPEwspZsJrFsdznS0)
