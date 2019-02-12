Quiz.destroy_all
Question.destroy_all
Answer.destroy_all

test_quiz = Quiz.create(name: 'TEST', image: 'https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/ce2ece60-9b32-11e6-95ab-00163ed833e7/260663710/the-test-fun-for-friends-screenshot.jpg')

q1 = Question.create(description: 'derphyeyyporoeuoprpe', multiple_choice: true, correct: false, timed_value: 0, quiz_id: test_quiz.id)

q1a1 = Answer.create(description: 'poop', solution: false, question_id: q1.id)
q1a2 = Answer.create(description: 'hoop', solution: false, question_id: q1.id)
q1a3 = Answer.create(description: 'loop', solution: true, question_id: q1.id)
q1a4 = Answer.create(description: 'doop', solution: false, question_id: q1.id)

q2 = Question.create(description: 'hadsflklkhlkjhasdasdfkladsfjklldsal', multiple_choice: true, correct: false, timed_value: 20, quiz_id: test_quiz.id)

q2a1 = Answer.create(description: 'derp', solution: true, question_id: q2.id)
q2a2 = Answer.create(description: 'herp', solution: false, question_id: q2.id)

q3 = Question.create(description: 'fdsjkllksdfjkldsfljlkjdsjkldsjl', multiple_choice: false, correct: false, timed_value: 0, quiz_id: test_quiz.id)

q3a = Answer.create(description: 'nimoaosojofgppsaknfdk', solution: true, question_id: q3.id)
