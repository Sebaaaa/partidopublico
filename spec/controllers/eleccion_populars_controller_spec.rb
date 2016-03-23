require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe EleccionPopularsController, type: :controller do
  include Devise::TestHelpers
  # This should return the minimal set of attributes required to create a valid
  # EleccionPopular. As you add validations to EleccionPopular, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EleccionPopularsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all eleccion_populars as @eleccion_populars" do
      eleccion_popular = EleccionPopular.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:eleccion_populars)).to eq([eleccion_popular])
    end
  end

  describe "GET #show" do
    it "assigns the requested eleccion_popular as @eleccion_popular" do
      eleccion_popular = EleccionPopular.create! valid_attributes
      get :show, {:id => eleccion_popular.to_param}, valid_session
      expect(assigns(:eleccion_popular)).to eq(eleccion_popular)
    end
  end

  describe "GET #new" do
    it "assigns a new eleccion_popular as @eleccion_popular" do
      get :new, {}, valid_session
      expect(assigns(:eleccion_popular)).to be_a_new(EleccionPopular)
    end
  end

  describe "GET #edit" do
    it "assigns the requested eleccion_popular as @eleccion_popular" do
      eleccion_popular = EleccionPopular.create! valid_attributes
      get :edit, {:id => eleccion_popular.to_param}, valid_session
      expect(assigns(:eleccion_popular)).to eq(eleccion_popular)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new EleccionPopular" do
        expect {
          post :create, {:eleccion_popular => valid_attributes}, valid_session
        }.to change(EleccionPopular, :count).by(1)
      end

      it "assigns a newly created eleccion_popular as @eleccion_popular" do
        post :create, {:eleccion_popular => valid_attributes}, valid_session
        expect(assigns(:eleccion_popular)).to be_a(EleccionPopular)
        expect(assigns(:eleccion_popular)).to be_persisted
      end

      it "redirects to the created eleccion_popular" do
        post :create, {:eleccion_popular => valid_attributes}, valid_session
        expect(response).to redirect_to(EleccionPopular.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved eleccion_popular as @eleccion_popular" do
        post :create, {:eleccion_popular => invalid_attributes}, valid_session
        expect(assigns(:eleccion_popular)).to be_a_new(EleccionPopular)
      end

      it "re-renders the 'new' template" do
        post :create, {:eleccion_popular => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested eleccion_popular" do
        eleccion_popular = EleccionPopular.create! valid_attributes
        put :update, {:id => eleccion_popular.to_param, :eleccion_popular => new_attributes}, valid_session
        eleccion_popular.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested eleccion_popular as @eleccion_popular" do
        eleccion_popular = EleccionPopular.create! valid_attributes
        put :update, {:id => eleccion_popular.to_param, :eleccion_popular => valid_attributes}, valid_session
        expect(assigns(:eleccion_popular)).to eq(eleccion_popular)
      end

      it "redirects to the eleccion_popular" do
        eleccion_popular = EleccionPopular.create! valid_attributes
        put :update, {:id => eleccion_popular.to_param, :eleccion_popular => valid_attributes}, valid_session
        expect(response).to redirect_to(eleccion_popular)
      end
    end

    context "with invalid params" do
      it "assigns the eleccion_popular as @eleccion_popular" do
        eleccion_popular = EleccionPopular.create! valid_attributes
        put :update, {:id => eleccion_popular.to_param, :eleccion_popular => invalid_attributes}, valid_session
        expect(assigns(:eleccion_popular)).to eq(eleccion_popular)
      end

      it "re-renders the 'edit' template" do
        eleccion_popular = EleccionPopular.create! valid_attributes
        put :update, {:id => eleccion_popular.to_param, :eleccion_popular => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested eleccion_popular" do
      eleccion_popular = EleccionPopular.create! valid_attributes
      expect {
        delete :destroy, {:id => eleccion_popular.to_param}, valid_session
      }.to change(EleccionPopular, :count).by(-1)
    end

    it "redirects to the eleccion_populars list" do
      eleccion_popular = EleccionPopular.create! valid_attributes
      delete :destroy, {:id => eleccion_popular.to_param}, valid_session
      expect(response).to redirect_to(eleccion_populars_url)
    end
  end

end
