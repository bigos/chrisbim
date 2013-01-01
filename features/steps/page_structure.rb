class Spinach::Features::PageStructure < Spinach::FeatureSteps
  step 'there is navbar' do
    visit root_path
    n = page.find('#navbar')
  end

  step 'it should contain required links' do
    #tip on easy finding xpath:
    #in FF incpect the element with Firebug
    #hover your mouse over the element in the source
    #or right click on the element in the DOM path above the souce window
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
