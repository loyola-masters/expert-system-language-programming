% Assigns an answer to questions from the knowledge base

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
