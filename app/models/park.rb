class Park < ActiveRecord::Base

  validate :occupati_cannot_be_greater_than_capacity, :occupati_cannot_be_min_zero

  validates :occupati, numericality: true
  validates :capacity, numericality: true

  def occupati_cannot_be_greater_than_capacity
    if !occupati.nil? && !capacity.nil?
      if occupati > capacity
        errors.add(:occupati, "can't be greater than capacity")
      end
    end
  end

  def occupati_cannot_be_min_zero
    if !occupati.nil?
      if occupati < 0
        errors.add(:occupati, "can't be less than zero")
      end
    end
  end

end
