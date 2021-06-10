class Dock
  attr_reader :name, :max_rental_time, :rental_log
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end 

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
      charge_info = {}
      @rental_log.each do |rented_boat, renter|
        if boat == rented_boat
          charge_info[:card_number] = renter.credit_card_number
          charge_info[:amount] = rented_boat.price_per_hour * rented_boat.hours_rented
        end 
      end
      charge_info
    end 
end 

#