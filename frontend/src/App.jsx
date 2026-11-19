import { useState, useEffect } from "react";
import "./App.css";

function App() {
  const [songs, setSongs] = useState([]);
  const [search, setSearch] = useState("");
  const [year, setYear] = useState("All");
  const [rating, setRating] = useState("All");
  const [likes, setLikes] = useState({});

  useEffect(() => {
    fetch("http://127.0.0.1:5000/api/songs")
      .then((res) => res.json())
      .then((data) => setSongs(data));
  }, []);

  const years = [...new Set(songs.map((s) => s.release_year))].sort((a, b) => b - a);
  const ratings = [...new Set(songs.map((s) => Number(s.rating)))].sort((a, b) => b - a);

  const shown = songs
    .filter((s) => year === "All" || s.release_year === Number(year))
    .filter((s) => rating === "All" || Number(s.rating) === Number(rating))
    .filter((s) =>
      (s.song + " " + s.movie_name + " " + s.singer_name)
        .toLowerCase()
        .includes(search.toLowerCase())
    )
    .sort((a, b) => b.rating - a.rating);

  const toggleLike = (id) => setLikes({ ...likes, [id]: !likes[id] });

  const play = (s) => {
    const q = encodeURIComponent(`${s.song} ${s.movie_name} song`);
    window.open(`https://www.youtube.com/results?search_query=${q}`, "_blank");
  };

  return (
    <div className="app">
      <header className="header">
        <h1>🎶 Tamil Movie Song Explorer ❤️</h1>

        <div className="controls">
          <div className="search-group">
            <input
              className="search-input"
              placeholder="Movie name or song name"
              value={search}
              onChange={(e) => setSearch(e.target.value)}
            />
          </div>

          <select
            className="filter-btn"
            value={year}
            onChange={(e) => setYear(e.target.value)}
          >
            <option value="All">📅 Release Year</option>
            {years.map((y) => (
              <option key={y} value={y}>{y}</option>
            ))}
          </select>

          <select
            className="filter-btn"
            value={rating}
            onChange={(e) => setRating(e.target.value)}
          >
            <option value="All">⭐ Highest Rating</option>
            {ratings.map((r) => (
              <option key={r} value={r}>{r.toFixed(1)}</option>
            ))}
          </select>
        </div>
      </header>

      <div className="grid">
        {shown.map((s) => (
          <div className="card" key={s.id}>
            <h3 className="song-name">{s.song}</h3>
            <p className="movie-name">🎬 {s.movie_name}</p>
            <p className="singer-name">🎤 {s.singer_name.split(",")[0]}</p>
            <p className="">📅 {s.release_year} &nbsp; ⭐ {s.rating}</p>
            <div className="actions">
              <button className="play-btn" onClick={() => play(s)}>▶️ Play</button>
              <button className="like-btn" onClick={() => toggleLike(s.id)}>
                {likes[s.id] ? "❤️ Liked" : "🤍 Like"}
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default App;