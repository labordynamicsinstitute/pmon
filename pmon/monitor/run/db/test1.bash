#!/bin/bash
echo "Insert a new record"
sqlite3 rlist.db 'insert into jobs (dlabel) values ("n111")'
sqlite3 rlist.db 'insert into jobs (dlabel) values ("n222")'
sqlite3 rlist.db 'insert into jobs (dlabel) values ("n333")'
sqlite3 rlist.db 'insert into jobs (dlabel) values ("n444")'
sqlite3 rlist.db 'insert into jobs (dlabel) values ("n555")'
sqlite3 rlist.db 'select * from jobs'
