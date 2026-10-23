# SQL Ultimate Course: my practice

My own queries written while following the course (SQL Server 2022 in Docker, VS Code + mssql extension).
Course materials are not in this repo.

## Layout
One file per lesson, named like the course script: `01_Query_Data_SELECT.sql`, `05_JOINs.sql`, ...
Exercises and my own extra queries go at the bottom of each file.

## Daily loop
1. Start Docker Desktop, double-click `../00_setup/mac-docker/start.command`.
2. Code along in the lesson file. Run a selection with Cmd+Shift+E.
3. Commit after each lesson (or each section of a long one):
   git add . && git commit -m "lesson 05: joins - inner, left, anti join"
4. git push
