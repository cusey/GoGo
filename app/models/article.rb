class Article < ApplicationRecord
    scope :get_last_name, -> (name){ where(author_last_name: name)}
end
