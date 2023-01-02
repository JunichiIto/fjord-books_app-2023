# frozen_string_literal: true

class Book < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
