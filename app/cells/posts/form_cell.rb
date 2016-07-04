module Posts
  class FormCell < ApplicationCell
    cache :show

    def show
      render
    end

    private

    def post
      model
    end
  end
end
