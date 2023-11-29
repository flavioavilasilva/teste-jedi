class ResidentList
  attr_reader :filters

  def initialize(filters)
    @filters = filters
  end

  def call
    return Resident.includes(:address).all unless filters.present?
    
    full_name_filter = "%#{filters}%"&.upcase
    query = Resident.where('UPPER(full_name) LIKE ?', full_name_filter)
    
    query&.includes(:address)
  end
end