class Spinach::Features::PageStructure < Spinach::FeatureSteps
  step 'there is navbar' do
    visit root_path
    n = page.find('#navbar')
  end

  step 'it should contain required links' do
    pending 'step not implemented'
  end
end
