class BodyComposition < ActiveRecord::Base

  validates :taken_at, uniqueness: true

  before_save :calculate_absolutes

  private

    def calculate_absolutes
      if fat_percent? && weight?
        self.fat = (fat_percent * weight / 100).round(2)
      end

      if lean_percent? && weight?
        self.lean = (lean_percent * weight / 100).round(2)
      end
    end
end
