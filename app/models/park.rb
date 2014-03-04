class Park < ActiveRecord::Base

  validate :occupati_cannot_be_greater_than_capacity

  validates :occupati, numericality: true
  validates :capacity, numericality: true

  def occupati_cannot_be_greater_than_capacity
    if !occupati.nil? && !capacity.nil?
      if occupati > capacity
        errors.add(:occupati, "can't be greater than capacity")
      end
    end
  end

end
