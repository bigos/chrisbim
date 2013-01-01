class Spinach::Features::PageStructure < Spinach::FeatureSteps
  step 'there is navbar' do
    visit root_path
    n = page.find('#navbar')
  end

  step 'it should contain required links' do
    #pending 'step not implemented'
    found_links = page.all(:xpath, '//div[@id="navbar"]/a')
    #puts 'links found in navbar:'
    links=[]
    found_links.each do |l|
      #puts 'Link to '+ l.text
      links << l.text
      #p l.value
      #p l[:title]
    end
    #puts '###########' + links.inspect
    links.should include( 'HOME', 'NEWS', 'ABOUT ME', 'GALLERY', 'WORKSHOPS', 'COMMENTS', 'LINKS', 'CONTACT')     
  end
end
