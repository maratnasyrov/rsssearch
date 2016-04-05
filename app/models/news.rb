require 'elasticsearch/model'

class News < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :feed

  scope :desc_sort, -> { order('updated_at DESC') }
end

News.__elasticsearch__.create_index!
