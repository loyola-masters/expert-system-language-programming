% Assign an answer to questions from the LANGUAGE knowledge base
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

% Assign an answer to questions from the COURSES knowledge base
nivel(Answer) :-
  progress(nivel, Answer).
nivel(Answer) :-
  \+ progress(nivel, _),
  ask(nivel, Answer, [beginner, intermediate,advanced]).

min_rate(Answer) :-
  progress(min_rate, Answer).
min_rate(Answer) :-
  \+ progress(min_rate, _),
  ask(min_rate, Answer, [low,medium,high]).

skills_php(Answer) :-
  progress(skills_php, Answer).
skills_php(Answer) :-
  \+ progress(skills_php, _),
  ask(skills_php, Answer, [databases, web_application]).


skills_ruby(Answer) :-
  progress(skills_ruby, Answer).
skills_ruby(Answer) :-
  \+ progress(skills_ruby, _),
  ask(skills_ruby, Answer, [ github]).


skills_csharp(Answer) :-
  progress(skills_csharp, Answer).
skills_csharp(Answer) :-
  \+ progress(skills_csharp, _),
  ask(skills_csharp, Answer, [ computer_programming,software_engineering,object_z,documents,data_type,video_game_development,block_code]).

skills_objetivec(Answer) :-
  progress(skills_objetivec, Answer).
skills_objetivec(Answer) :-
  \+ progress(skills_objetivec, _),
  ask(skills_objetivec, Answer, [ ios_development]).

skills_javascript(Answer) :-
  progress(skills_javascript, Answer).
skills_javascript(Answer) :-
  \+ progress(skills_javascript, _),
  ask(skills_javascript, Answer, [ ajax,html,mongodb,web_hosting_service,front_end_js,jquery,recursive_function,django,document_object_model,web_application_js,web_development]).

skills_java(Answer) :-
  progress(skills_java, Answer).
skills_java(Answer) :-
  \+ progress(skills_java, _),
  ask(skills_java, Answer, [ eulers_totient_function,meteor,code_segment,recursive_function,project,build_operate_transfer,dijkstras_algorithm,java_syntax]).

skills_python(Answer) :-
  progress(skills_python, Answer).
skills_python(Answer) :-
  \+ progress(skills_python, _),
  ask(skills_python, Answer, [pandas,algorithms,measurement,natural_language,cross_validation,object_detection,python_software]).
