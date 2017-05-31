module WorshipPlaceHelper
  def output_worship_place_item(worship_place, item)
    if worship_place.is_temple? && !worship_place.temple.nil?
      is_temple = true
    elsif !worship_place.is_temple? && !worship_place.shrine.nil?
      is_temple = false
    else
      return
    end

    case item
    when :rank
      if is_temple
        prefix = "寺格: "
      else
        prefix = "社格: "
      end
    when :object
      prefix = "御本尊: "
    when :sect
      if is_temple
        prefix = "宗派: "
      else
        return "宗派: -"
      end
    end

    if is_temple
      if !worship_place.temple.send(item).nil?
        prefix + worship_place.temple.send(item)
      end
    else
      if !worship_place.shrine.send(item).nil?
        prefix + worship_place.shrine.send(item)
      end
    end
  end
end
