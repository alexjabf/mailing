class Movie < ActiveRecord::Base
  has_many :movie_tags
  has_many :tags, through: :movie_tags

  attr_accessor :tag_ids
end
