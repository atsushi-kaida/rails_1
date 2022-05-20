class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start_time, comparison: {less_than_or_equal_to: :end_time}
  validates :end_time, comparison: {greater_than_or_equal_to: Time.now}
  validates :memo, length: {minimum:0, maximum:100}
end