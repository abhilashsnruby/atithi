module CustomersHelper
  def rooms_for_select
    Room.present? ? Room.pluck(:id).flatten : ''
  end
end
