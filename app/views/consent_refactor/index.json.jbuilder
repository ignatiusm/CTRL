json.consent_steps do
  json.array! @consent_steps do |step|
    json.order step.order
    json.title step.title
    json.description step.description
    json.reviewed StepReview.find_by(user: current_user, consent_step: step).present?

    json.groups step.consent_groups do |group|
      json.order  group.order
      json.header group.header

      json.questions group.consent_questions do |question|
        json.id question.id
        json.order question.order
        json.question question.question
        json.description question.description
        json.default_answer question.default_answer
        json.question_type question.question_type
        json.answer_choices_position question.answer_choices_position
        json.show_description false

        json.options question.question_options do |option|
          json.value option.value
        end

        json.answer QuestionAnswer.find_by(user: current_user, consent_question: question) do |answer|
          json.question_id question.id
          json.answer answer.answer
        end
      end
    end
  end
end
