class Comment < ApplicationRecord
  belongs_to :movie, -> { where movie_id:1},class_name: "Movie", foreign_key: "movie_id"#counter_cache: :count_of_comments, touch: book_updated_at,
  enum :status,[:archived,:actice, :inactive]
end
