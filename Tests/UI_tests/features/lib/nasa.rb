require_relative '../lib/pages/planets_homepage'
require_relative '../lib/pages/planets_edit'

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
end
