% Rules for the knowledge base
language(python) :-
  why(for_my_kids).

language(python) :-
  why(i_dont_know).

language(java) :-
  why(make_money),
  which_platform(doesn_t_matter).

language(cpp) :-
  why(make_money),
  which_platform(gaming).

language(objectivec) :-
  why(make_money),
  which_platform(mobile),
  which_mobile_os(ios).

language(java) :-
  why(make_money),
  which_platform(mobile),
  which_mobile_os(android).

language(python) :-
  why(make_money),
  which_platform(facebook).

language(python) :-
  why(make_money),
  which_platform(google).

language(csharp) :-
  why(make_money),
  which_platform(microsoft).

language(objectivec) :-
  why(make_money),
  which_platform(apple).

language(javascript) :-
  why(make_money),
  which_platform(web),
  web(front_end).

language(csharp) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(corporate),
  think_about_microsoft(im_a_fan).

language(java) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(corporate),
  think_about_microsoft(not_bad).

language(java) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(corporate),
  think_about_microsoft(suck).

language(javascript) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(startup),
  try_something_new(yes).

language(python) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(startup),
  try_something_new(no),
  favourite_toy(lego).

language(ruby) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(startup),
  try_something_new(no),
  favourite_toy(play_doh).

language(php) :-
  why(make_money),
  which_platform(web),
  web(back_end),
  want_to_work_for(startup),
  try_something_new(no),
  favourite_toy(old_ugly).

language(csharp) :-
  why(make_money),
  which_platform(enterprise),
  think_about_microsoft(im_a_fan).

language(java) :-
  why(make_money),
  want_to_work_for(enterprise),
  think_about_microsoft(not_bad).

language(java) :-
  why(make_money),
  want_to_work_for(enterprise),
  think_about_microsoft(suck).

language(python) :-
  why(just_for_fun),
  prefer_to_learn(easy_way).

language(python) :-
  why(just_for_fun),
  prefer_to_learn(best_way).

language(java) :-
  why(just_for_fun),
  prefer_to_learn(harder_way),
  car(auto).

language(c) :-
  why(just_for_fun),
  prefer_to_learn(harder_way),
  car(manual).

language(cpp) :-
  why(just_for_fun),
  prefer_to_learn(hardest_way).

language(python) :-
  why(im_interested),
  prefer_to_learn(easy_way).

language(python) :-
  why(im_interested),
  prefer_to_learn(best_way).

language(java) :-
  why(im_interested),
  prefer_to_learn(harder_way),
  car(auto).

language(c) :-
  why(im_interested),
  prefer_to_learn(harder_way),
  car(manual).

language(cpp) :-
  why(im_interested),
  prefer_to_learn(hardest_way).

language(python) :-
  why(improve_myself),
  prefer_to_learn(easy_way).

language(python) :-
  why(improve_myself),
  prefer_to_learn(best_way).

language(java) :-
  why(improve_myself),
  prefer_to_learn(harder_way),
  car(auto).

language(c) :-
  why(improve_myself),
  prefer_to_learn(harder_way),
  car(manual).

language(cpp) :-
  why(improve_myself),
  prefer_to_learn(hardest_way).