class QuizResultsPolicy< Struct.new(:user, :quiz_results)
    def show?
      true
    end

end
