require 'rails_helper'
describe Project do
  describe '#create' do
    it "is valid with a catch_copy, user_id, title, concept" do
      project = build(:project)
      expect(project).to be_valid
    end

    describe 'associations' do
      it 'is associated with a user' do
        user = create(:user)
        project = create(:project, user: user)
        expect(project.user).to eq user
      end
    end

    it "is invalid without a catch_copy" do
      project = build(:project, catch_copy: "")
      project.valid?
      expect(project.errors[:catch_copy]).to include("を入力してください。")
    end

    it "is invalid without a title" do
      project = build(:project, title: "")
      project.valid?
      expect(project.errors[:title]).to include("を入力してください。")
    end

    it "is invalid without a concept" do
      project = build(:project, concept: "")
      project.valid?
      expect(project.errors[:concept]).to include("を入力してください。")
    end

  end
end
