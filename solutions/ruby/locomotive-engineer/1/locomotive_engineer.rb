class LocomotiveEngineer
  def self.generate_list_of_wagons(*ids)
    ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    f, s, t, *last = each_wagons_id
    [t] + missing_wagons + last + [f, s]

  end

  def self.add_missing_stops(route, **k_s)
    route[:stops] = k_s.values
    route
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
