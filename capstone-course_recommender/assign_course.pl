% Assigns an answer to questions from the knowledge base LANGUAGES
% Assigns an answer to questions from the knowledge base
% question/1
% checks if there is already progress (i.e., an answer has been given)
% for the question 'why', and if so, it assigns the value of the answer to the variable Answer.
% This ensures that the system will not repeat the same question if it has already been answered.
why(Answer) :-
  progress(why, Answer).
% answer/1
why(Answer) :-
  % if 'why' question has not been formulated...
  \+ progress(why, _),
  % ... ask it
  ask(why, Answer, [for_my_kids, i_dont_know, make_money, just_for_fun, im_interested, improve_myself]).

which_platform(Answer) :-
  progress(which_platform, Answer).
which_platform(Answer) :-
  \+ progress(which_platform, _),
  ask(which_platform, Answer, [doesn_t_matter, gaming, mobile, facebook, google, microsoft, apple, web, enterprise]).

which_mobile_os(Answer) :-
  progress(which_mobile_os, Answer).
which_mobile_os(Answer) :-
  \+ progress(which_mobile_os, _),
  ask(which_mobile_os, Answer, [ios, android]).

web(Answer) :-
  progress(web, Answer).
web(Answer) :-
  \+ progress(web, _),
  ask(web, Answer, [front_end, back_end]).

want_to_work_for(Answer) :-
  progress(want_to_work_for, Answer).
want_to_work_for(Answer) :-
  \+ progress(want_to_work_for, _),
  ask(want_to_work_for, Answer, [startup, corporate]).

think_about_microsoft(Answer) :-
  progress(think_about_microsoft, Answer).
think_about_microsoft(Answer) :-
  \+ progress(think_about_microsoft, _),
  ask(think_about_microsoft, Answer, [im_a_fan, not_bad, suck]).

try_something_new(Answer) :-
  progress(try_something_new, Answer).
try_something_new(Answer) :-
  \+ progress(try_something_new, _),
  ask(try_something_new, Answer, [yes, no]).

favourite_toy(Answer) :-
  progress(favourite_toy, Answer).
favourite_toy(Answer) :-
  \+ progress(favourite_toy, _),
  ask(favourite_toy, Answer, [lego, play_doh, old_ugly]).

prefer_to_learn(Answer) :-
  progress(prefer_to_learn, Answer).
prefer_to_learn(Answer) :-
  \+ progress(prefer_to_learn, _),
  ask(prefer_to_learn, Answer, [easy_way, best_way, harder_way, hardest_way]).

car(Answer) :-
  progress(car, Answer).
car(Answer) :-
  \+ progress(car, _),
  ask(car, Answer, [auto, manual]).

% Assigns an answer to questions from the knowledge base COURSES
language(Answer) :-
  progress(language, Answer).
language(Answer) :-
  \+ progress(language, _),
  ask(language, Answer, [python, javascript, java, ruby, php, objectivec]).

agree(Answer) :-
  progress(agree, Answer).
agree(Answer) :-
  \+ progress(agree, _),
  ask(agree, Answer, [yes, no]).
  
university(Answer) :-
  progress(university, Answer).
university(Answer) :-
  \+ progress(university, _),
  ask(university, Answer, [rice_university, coursera_project_network, vanderbilt_university, university_of_california_san_diego, johns_hopkins_university, university_of_california_irvine]).
  
difficulty_level(Answer) :-
  progress(difficulty_level, Answer).
difficulty_level(Answer) :-
  \+ progress(difficulty_level, _),
  ask(difficulty_level, Answer, [beginner, intermediate, advanced]).
  
skills(Answer) :-
  progress(skills, Answer).
skills(Answer) :-
  \+ progress(skills, _),
  ask(skills, Answer, [python_programming, computer_programming, computer_science, software_development, programming_style, operations_management, approximation_error, syntax, sql, object_oriented_programming, mysql, pandas, applied_machine_learning, data_science, numpy, data_analysis, mobile_app, internet_of_things, front_end, back_end, concatenation, holding_value, text_corpus, hypertext_transfer_protocol, web_api, data_visualization, infographics, web_development, calibration, java_platform, android_development, graph_algorithms, graph_theory, search_algorithm, sorting, evaluation, education, github, rubgems, databases, web_page, mobile_development, iOS_development, swift_programming]).
  
rating(Answer) :-
  progress(rating, Answer).
rating(Answer) :-
  \+ progress(rating, _),
  ask(rating, Answer, [high, low]).
