CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	artist VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS artist_genre (
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id),
	genre_id INTEGER NOT NULL REFERENCES genre(genre_id)
);


CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	album VARCHAR(100) NOT NULL,
	album_year DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS album_artist (
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id),
	album_id INTEGER NOT NULL REFERENCES albums(album_id)
);


CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	track VARCHAR(100) NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER NOT NULL REFERENCES albums(album_id)
);


CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	collection VARCHAR(100) NOT NULL,
	collection_year DATE NOT NULL,
	track_id INTEGER NOT NULL REFERENCES tracks(track_id)
);