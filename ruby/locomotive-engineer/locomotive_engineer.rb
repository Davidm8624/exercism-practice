class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    # assigning multiple values to multiple variables at same time
    first, second, third, *rest = each_wagons_id

    return [third, *missing_wagons, *rest, first, second]
  end

  def self.add_missing_stops(route, **stops)
    return { **route, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    return { **route, **more_route_information }
  end
end
