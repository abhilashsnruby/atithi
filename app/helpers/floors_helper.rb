module FloorsHelper
  def floors_for_select
    Floor.present? ? Floor.pluck(:id).flatten : ''
  end
end
