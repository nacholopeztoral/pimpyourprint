class QuizPolicy < Struct.new(:user, :quiz)
    def show?
      true
    end

end
