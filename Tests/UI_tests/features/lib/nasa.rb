require_relative '../lib/pages/planets_homepage'
require_relative '../lib/pages/planets_edit'
require_relative '../lib/pages/planet_delete'
require_relative '../lib/pages/planets_new'
require_relative '../lib/pages/api_lookup'

module NasaSite

  def planets_page
    PlanetsPage.new
  end

  def planets_edit
    PlanetsEdit.new
  end

  def planet_new
    PlanetsNew.new
  end

  def planet_delete
    PlanetsDelete.new
  end

  def api_lookup
    ApiLookup.new
  end
end
