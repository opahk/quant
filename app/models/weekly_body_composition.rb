class WeeklyBodyComposition < ActiveRecord::Base

  before_save :set_anchor_timestamp
  before_save :generate_average
  before_save :calculate_percents

  private

    def set_anchor_timestamp
      seconds = 7.days
      self.taken_at = Time.at((taken_at.to_f / seconds).floor * seconds)
    end

    def generate_average
      relation = BodyComposition
        .where('taken_at >= ? and taken_at < ?', taken_at, taken_at + 7.days)
      self.weight = relation.average(:weight)
      self.fat = relation.average(:fat)
      self.lean = relation.average(:lean)
    end

    def calculate_percents
      if fat? && weight?
        self.fat_percent = (fat / weight * 100).round(2)
      end
      if lean? && weight?
        self.lean_percent = (lean / weight * 100).round(2)
      end
    end
end
