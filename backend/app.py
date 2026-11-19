from flask import Flask, jsonify, request
from flask_cors import CORS
import mysql.connector

app = Flask(__name__)
CORS(app)

def get_db():
    return mysql.connector.connect(
        host="localhost",
        user="lara",
        password="gayu",
        database="tamil_movies"
    )

@app.route("/api/songs")
def get_songs():
    search = request.args.get("search", "")
    db = get_db()
    cur = db.cursor(dictionary=True)
    cur.execute(
        "SELECT * FROM tamil_songs WHERE song LIKE %s OR movie_name LIKE %s OR singer_name LIKE %s",
        (f"%{search}%", f"%{search}%", f"%{search}%")
    )
    songs = cur.fetchall()
    cur.close()
    db.close()
    return jsonify(songs)

if __name__ == "__main__":
    app.run(debug=True)