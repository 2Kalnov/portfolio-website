class PagesController < ApplicationController
  def home
    @skills = Skill.all.to_a
  end

  def about
  end

  def contact
  end
end
