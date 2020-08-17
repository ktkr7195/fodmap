module RecipesHelper
  def recipe_sample
    <<-"EOS".strip_heredoc
      人参　一本
      玉ネギ　半分
      じゃがいも　２個
      ect..
    EOS
  end

  # def recipe_content
  #   <<-"EOS".strip_heredoc
  #     #{@recipe.content}      
  #   EOS
  # end
end
