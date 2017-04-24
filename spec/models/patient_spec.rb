require 'rails_helper'

RSpec.describe Patient, type: :model do

  it "patient require a name" do

   project = Project.create
   vaccinator = Vaccinator.create
   patient = Patient.create(:project => project, :vaccinator => vaccinator, :first_name => nil)
   expect(patient).to_not be_valid
 end
end
