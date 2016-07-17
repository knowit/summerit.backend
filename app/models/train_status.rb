class TrainStatus < ApplicationRecord
  belongs_to :rpi
  belongs_to :train
end
