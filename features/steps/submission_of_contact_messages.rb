class Spinach::Features::SubmissionOfContactMessages < Spinach::FeatureSteps
  step 'I visit contact page' do
    visit contact_path
  end

  step 'fill in valid data' do
    addr = 'name.surname@example.com'
    page.fill_in 'from', :with => addr
    msg = 'Hello, this is a message '+Time.now.to_f  
    page.fill_in 'content', :with => msg
  end

  step 'I click Submit' do
    page.click 'Submit'
  end

  step 'the message should be saved in the database' do
    m=Message.last
    m.from.should equal?(addr)
    m.content.should equal?(msg)
  end

  step 'I provide invalid data' do
    @invalid_objects=[]
    @invalid_objects<< Message.new(:from=>'',:content=>'')
    @invalid_objects<< Message.new(:from=>'',:content=>'Hi')
    @invalid_objects<< Message.new(:from=>'blah@',:content=>'Hi')
    @invalid_objects<< Message.new(:from=>'name@example.com',:content=>'')
  end

  step 'I should get validation errors' do
    @invalid_objects.each do |obj|
      obj.valid?.should be_false
    end
  end
end
