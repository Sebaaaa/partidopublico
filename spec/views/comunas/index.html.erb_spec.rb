require 'rails_helper'

RSpec.describe "comunas/index", type: :view do
  before(:each) do
    assign(:comunas, [
      Comuna.create!(),
      Comuna.create!()
    ])
  end

  it "renders a list of comunas" do
    render
  end
end
