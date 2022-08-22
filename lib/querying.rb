def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(SPECIES) AS amount FROM characters GROUP BY species ORDER BY amount DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, subgenres.name FROM authors AS a INNER JOIN series AS s ON s.author_id = a.id INNER JOIN subgenres ON subgenres.id = s.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM series INNER JOIN authors AS a ON a.id = series.author_id INNER JOIN characters ON characters.author_id = a.id WHERE species = 'human' GROUP BY species ORDER BY COUNT(species) DESC;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title) AS amount  FROM characters INNER JOIN character_books ON character_id = characters.id INNER JOIN books ON books.id = book_id GROUP BY characters.name ORDER BY amount DESC, characters.name ASC;"
end
