class Blog < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_title_and_content,
                  against: %i[title content],
                  using: {
                    tsearch: { prefix: true }
                  }
end
