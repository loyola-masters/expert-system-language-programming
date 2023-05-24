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

  % 1. For the Coursera MOOC dataset:
  %    a. Add language column
  %    b. Tag course difficulty: begginer, intermediate, expert
  % 
  % 2. Create knowledge base of courses (use ChatGPT), because there are many rules:
  course_description(python1) :-
    syllabus(...),
    ...
  course_description(python2) :-
    syllabus(...),
    ...
  course_description(python3) :-
    syllabus(...),
    ...

  course(python1) :-
    language(python),
    level(begginer).

  course(python2) :-
    language(python),
    level(intermediate).

  course(python3) :-
    language(python),
    level(advanced).

  % 3. Prepare questions for user level evaluation
  %.    - questions, answers, assign  
  %   Questions:  What level do you have?
  %   Answers:    level-begginer/interm/advanced