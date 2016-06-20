def select_books_titles_and_years_in_first_series_order_by_year
	"
	SELECT books.title, books.year
	FROM books
	INNER JOIN series
	ORDER BY series.id
	LIMIT 3	
	"
end

def select_name_and_motto_of_char_with_longest_motto
	"
	SELECT characters.name, characters.motto 
	FROM characters
	ORDER BY length(motto) DESC
	LIMIT 1
	"
end

def select_value_and_count_of_most_prolific_species
	"
	SELECT characters.species, COUNT(characters.species)
	FROM characters
	group by characters.species
	order by count(characters.species) desc
	limit 1
	"
end

def select_name_and_series_subgenres_of_authors
	"
	select authors.name, subgenres.name
	from authors
	inner join subgenres
	on authors.id = subgenres.id
	"

end

def select_series_title_with_most_human_characters
"
SELECT series.title 
FROM series
JOIN characters
ON series.id = characters.series_id
group by series.id
having MAX(characters.species) = 'human'
limit 1
"

end

def select_character_names_and_number_of_books_they_are_in
"
select characters.name, count(character_books.book_id)
from characters 
inner join character_books
on character_books.character_id = characters.id
group by characters.id
order by count(character_books.book_id) desc, characters.name 

"


end








