class Image < ActiveRecord::Base
  PERMITTED_PARAMS = [:imageable_id, :imageable_type, :image, :position]

  module Kinds
    TILE = 'tile'
    HEADER = 'header'

    ALL = constants.flat_map { |c| const_get(c) }
  end

  IMAGEABLE_CLASSES = [
    'Address',
    'Event',
    'Participation',
    'Role',
    'User',
  ]

  belongs_to :imageable, polymorphic: true
  validate :update_image_fields

  dragonfly_accessor :image

  scope :ordered, -> { order(:position) }

  def tile?
    kind == Kinds::TILE
  end

  def header?
    kind == Kinds::HEADER
  end

  private

  def update_image_fields
    self.image_width = image.try(:width) || 0
    self.image_height = image.try(:height) || 0
  rescue HTTP_ERRORS
    errors.add(:image, "could not be fetched")
  rescue Dragonfly::Job::Fetch::NotFound
    errors.add(:image, "not found")
  end
end
