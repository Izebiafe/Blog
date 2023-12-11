class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id', counter_cache: true
  has_many :comments
  has_many :likes

  def mostrecentcomments
    omments.where(post_id: self[:id]).order(created_at: :desc).limit(5)
  end
  after_create :incrementpostcounter

  private

  def incrementpostcounter
    author.increment!(posts_counter: user.posts.size)
  end
end
