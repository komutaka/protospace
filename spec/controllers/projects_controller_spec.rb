require 'rails_helper'

describe ProjectsController do
  before { login_user }

  describe 'GET #show' do
    it "assigns the requested project to @project" do
      project = create(:project)
      get :show, id: project
      expect(assigns(:project)).to eq project
    end
    # it "assigns the requested comment to @comment" do
    #   comment = create(:commnet)
    #   get :show, id: project
    #   expect(assigns(:comment)).to eq comment
    # end
    it "renders the :show template" do
      project = create(:project)
      get :show, id: project
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it "assigns a new project to @project" do
      get :new
      expect(assigns(:project)).to be_a_new(project)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested project to @project" do
      project = create(:project)
      get :edit, id: project
      expect(assigns(:project)).to eq project
    end
    it "renders the :edit template"do
      project = create(:project)
      get :edit, id: project
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it "saves the new project in the database" do
        expect{
          post :create, project: attributes_for(:project }.to change(Project)
      end
      it "redirects to root_path" do
        post :create, project: attributes_for(:project)
        expect(response).to redirect_to project_path(assigns[:project])
      end
    end

    context 'with invalid attributes' do
      it "does not save the new project in the database" do
        expect{
          post :create, project: attributes_for(:invalid_project)
         }.not_to change(Project)
      end
      it "renders the :edit template" do
        post :create,
        project: attributes_for(:invalid_project)
        expect(response).to render_template :new
      end
    end
  end


  describe 'PATCH #update' do
    before :each do
      @project = create(:project,
      title: '村長',
      concept: 'むらながくん')
    end
    context 'with valid attributes' do
      it "locates the requested @project" do
        patch :update, id: @project, project: attributes_for(:project)
        expect(assigns(:project)).to eq(@project)
      end
      it "changes @project's attributes" do
        patch :update, id: @project,
          project: attributes_for(:project,
            title: 'ゴリラ',
            concept: 'Smith')
        @project.reload
        expect(@project.title).to eq('ゴリラ')
        expect(@project.concept).to eq('Smith')
      end
      it "redirects to the updated project" do
        patch :update, id: @project, project: attributes_for(:project)
        expect(response).to redirect_to @project
      end
    end

    context 'with invalid attributes' do
      it "does not change the project's attributes" do
        patch :update, id: @project,
         project: attributes_for(:project,
          title: "ゴリラ", concept: nil)
        @project.reload
        expect(@project.title).not_to eq("ゴリラ")
        expect(@project.concept).to eq("Smith")
      end
      it "re-renders the :edit template" do
        patch :update, id: @project,
        project: attributes_for(:invalid_project)
        expect(response).to render_template :edit
      end
    end
  end

  describe 'DELETE #destory' do
    before :each do
      @project = create(:project)
    end
    it "deletes the project" do
      expect{
        delete :destory, id: @project
      }.to change(Project, :count).by(-1)
    end
    it "redirects to root_path" do
      delete :destory, id: @project
      expect(response).to redirect_to root_path
    end
  end

end
