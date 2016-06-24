require 'rails_helper'

describe Image do
  describe 'associations' do
    it 'is associated with a project' do
      binding.pry
      project = create(:project)
      image = create(:image, project: project)
      expect(image.project).to eq project
    end
  end
end
