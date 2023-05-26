main :-
  reconsult('kb.pl'),nl,
  reconsult('questions.pl'),nl,
  reconsult('answers.pl'),nl,
  reconsult('describe.pl'),nl,
  reconsult('assign.pl'),nl,
  intro,
  reset_answers,
  find_language(Language),
  describe(Language), nl.
  % Course selection process
  find_course(Course),
  describe(Course), nl.


  % Don't use cut to get all matching courses
  find_course(Course) :-
    course(Course).

  % 1. For the Coursera MOOC dataset, create a knowledge base of the offer of courses
  % 2. Add to each row the programming language the course is about
  course_description(Language) :-
    language(Language),
    name(...),
    university(...),
    difficultyLevel(...),
    courseRating(...),
    course_description(...),
    skills(..).

  % 3. Prepare questions for user level evaluation
  %    - questions, answers, assign  
  %   Questions: 
  %           1. What level do you have?
  %           2. What University do you prefer?
  %           3. Minimum course rating
  %           4. What skills?
