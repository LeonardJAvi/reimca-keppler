# Work Model
class Work < ActiveRecord::Base
  include ActivityHistory
  include CloneRecord
  mount_uploader :image, ImageUploader
  belongs_to :stack_state
  belongs_to :stack_city
  has_one :work
  mount_uploader :image, ImageUploader
  validates :name,:description,:stack_state_id,:stack_city_id,:contractor,:time,:image, presence: true
  validates :image, file_size: { less_than: 2.megabytes }

  # Fields for the search form in the navbar
  def self.search_field
    :name_or_description_or_stack_state_id_or_stack_city_id_or_contractor_or_time_or_image_cont
  end
end