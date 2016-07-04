module Posts
  class IndexCell < ApplicationCell
    cache :show

    def show
      render
    end
  end
end
