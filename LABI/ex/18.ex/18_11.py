import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])
    count = 0
    result = db.execute("SELECT firstname FROM contacts")
    rows = result.fetchall()
    for row in rows:
        count =1 + count
        print(row)
    print(str(count)+" contactos")

   ## result = db.execute("SELECT * FROM contacts")
   ## while True:
   ##     row = result.fetchone()
   ##     if not row:
   ##         break
   ##     print(row)
    
    db.close()
main(sys.argv)
