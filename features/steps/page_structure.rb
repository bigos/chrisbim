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
    links=[]
    found_links.each do |l| links << l.text end
    links.should include( 'HOME', 'NEWS', 'ABOUT ME', 'GALLERY', 'WORKSHOPS', 'BLOG', 'LINKS', 'CONTACT')     
  end
  
  step 'there are links' do
    @links=['home', 'news', 'about_me', 'gallery', 'workshops', 'blog', 'links', 'contact']
    @links.each do |link|
      visit "http://localhost:3000/#{link}"
      @links.each do |l|
        #every page contains expected set of links
        title=l.upcase.gsub('_',' ')
        page.body.should include(title+'</a>')
      end
    end
  end



end
