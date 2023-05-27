main :-
  % Expert System 1: Programming Languages ------------ %
  reconsult('kb.pl'),nl,
  reconsult('questions.pl'),nl,
  reconsult('answers.pl'),nl,
  reconsult('describe.pl'),nl,
  reconsult('assign.pl'),nl,
  intro,
  reset_answers,
  find_language(Language),
  describe(Language), nl.

  % Expert System 2: Course selection ---------------- %
  reconsult('kb_courses.pl'),nl,
  reconsult('questions_courses.pl'),nl,
  reconsult('answers_courses.pl'),nl,
  reconsult('describe_courses.pl'),nl,
  reconsult('assign_courses.pl'),nl,
  intro_courses,
  % Course selection process
  reset_answers,
  find_course(Course, Language),
  describe(Course), nl.

  % Don't use cut to get all matching courses
  find_course(Course, Language) :-
    course(Course, Language).

  % 1. For the Coursera MOOC dataset, create a knowledge base of the offer of courses
  % 2. Add to each row the programming language the course is about
  course_description(Course) :-
    write( " language... "),
    name(" course ... "),
    university(" university... "),
    difficultyLevel(" level... "),
    courseRating(" rating... "),
    course_description(" description... "),
    skills(" skills... ").

  % 3. Prepare questions for user level evaluation
  %    - questions, answers, assign  
  %   Questions: 
  %           1. What level do you have?
  %           2. What University do you prefer?
  %           3. Minimum course rating
  %           4. What skills?

  % ...
  % Follow a parallel coding following the structure of the programming languages Expert System
  % Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.
