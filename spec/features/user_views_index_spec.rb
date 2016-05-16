require 'spec_helper'

feature "User views index" do

  let!(:abbey_road) do
  Project.create(
    name: "Abbey Road",
    description: "The Fab Four cut a record together one last time")
  end

  let!(:rubber_soul) do
    Project.create(name: "Rubber Soul")
  end

  let!(:revolver) do
    Project.create(
      name: "Revolver",
      description: "A move toward darker subject matter, inspired by the band's time in India.")
  end

  scenario "list all projects" do
    visit '/'

    expect(page).to have_content "Projects"
    expect(page).to have_content "Abbey Road"
    expect(page).to have_content "Revolver"
  end

  scenario "each project name is a link to show page" do
    visit '/'

    click_link('Revolver')
    expect(page).to have_content "Revolver Info"
  end
end
