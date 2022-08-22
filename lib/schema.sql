CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT, series_id INTEGER, year INTEGER);

CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_id INTEGER);

CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, subgenre_id INTEGER, author_id INTEGER);

CREATE TABLE character_books (id INTEGER PRIMARY KEY, book_id INTEGER, character_id INTEGER);
