class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def self.search(search)
    if search
      Flight.where("departure_airport_id = ? and arrival_airport_id = ? and time = ?",
        search[:from_code], search[:to_code], search[:time].to_datetime)
    else
      nil
    end
  end

end
