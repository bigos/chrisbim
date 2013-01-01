class Spinach::Features::PageStructure < Spinach::FeatureSteps
  step 'there is navbar' do
    visit root_path
    n = page.find('#navbar')
  end

  step 'it should contain required links' do
    #pending 'step not implemented'
    links = page.all(:xpath, '//div[@id="navbar"]/a')
    puts 'links found in navbar:'
    links.each do |l|
      puts 'Link to '+ l.text
      #p l.value
      #p l[:title]
    end
    puts '###########'
    puts page.first(:xpath, '//div[@id="navbar"]/a').inspect
    
  end
end
