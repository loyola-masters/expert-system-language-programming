% Expert system should be started from here
main :-
  reconsult('lang_kb.pl'),nl,
  reconsult('courses_kb.pl'),nl,
  reconsult('questions.pl'),nl,
  reconsult('answers.pl'),nl,
  reconsult('describe.pl'),nl,
  reconsult('assign.pl'),nl,

  % LANGUAGE selection process
  intro,
  reset_answers,
  find_language(Language),
  describe(Language), nl,

  % COURSE recommendation process
  intro_courses,
  reset_answers,
  find_course(Course, Language),
  describe(Course), nl.

intro :-
  write('Which programming language should I learn first?'), nl,
  write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.


find_language(Language) :-
  language(Language), !.

intro_courses :-
  write('Se le asigno un lenguaje de programacion. \n Ahora, a traves del segundo sistema experto recomendaremos un curso para aprender dicho lenguaje de programacion.'), nl,
  write('Por favor, responda a las siguientes preguntas: '), nl, nl.

find_course(Course, Language) :-
  course(Course, Language), !.

% Store user answers to be able to track his progress
:- dynamic(progress/2).


% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
  retract(progress(_, _)),
  fail.
reset_answers.


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
