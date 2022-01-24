class BlogPost < ApplicationRecord
  belongs_to :blog
  belongs_to :author
end
