class Comment < ApplicationRecord
  belongs_to :movie
  include Visible

end
