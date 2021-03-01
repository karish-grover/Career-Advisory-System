
intro(A):-
    write("Welcome to Tutelage- India's leading career guiding platform !!!!! "),nl,nl,
    write("Please enter your name :- "),nl,read(Name),nl,write("Which year are you currently studying in?"),nl,
    read(Year),nl,pursue(A).

pursue(A):-interest(Interest),(Interest=a-> (natureOfWork(Type),
    (Type=a ->  natureOfWorkA(A);
    (Type=b ->  natureOfWorkB(A);
     natureOfWorkC(Choice))));(education(Education),(Education=a -> educationA(B); educationB(B)))).

interest(Interest):-
    write("Which one of the following would you like to pursue after graduation? "),nl,nl,
    write("1. Jobs (a)"),nl,
    write("2. Higher Education (b)"),nl,
    read(Interest).

natureOfWork(Type):-
    write("Which of the following Job types suit you the most:-"),nl,nl, 
    write("1. Campus Placements (a)"),nl,
    write("2. Start Ups (b)"),nl,
    write("3. Parental business (c)"),nl,
    read(Type).

natureOfWorkA(A):-branchName(Course),grade(Grade),coding(Level),
    (Grade>6-> write("~ In view of your grade you can sit in company placements for all good companies");
    write("~ In view of your grade ,unfortunately you cannot sit in the placement exams for all comapnies")),nl,
(Grade>6,Level>2->write("~ You might get a good package"),nl;write("~ Your probabilty of getting a good package is less."),nl),
write("~ You are advised to pursue a job in the "),write(Course),write(" industry"),nl,
Level>2->write("~ You can easily take a programming based job"),nl;
write("~ You are advised to avoid programming based jobs."),
    nl,write(" ****** Re-run the program to explore other options").

append(H,T,[H|T]).

match(mathematics,a).
match(machieneLearning,b).
match(artificialIntelligence,c).
match(computerOrganisation,d).
match(operatingSystems,e).

allOptions([H|T],Q,G):-length(T,W),W=0,match(E,H),append(E,G,Q).
allOptions([H|T],G,Y):-match(W,H),append(W,Y,A),allOptions(T,G,A).

natureOfWorkB(A):-branchName(Branch),write("Do you have a start-up idea ready (y/n) ?"),nl,read(C),
    write("Do you have proper fundings for a start-up at this stage (y/n) ?"),nl,read(Y),
    write("Enter in the form of a list, the topics from below ,on which you have done any project work/ BTP:-"),
    nl,write("1. Mathematics (a)"),nl,
    write("2. Machiene Learning (b)"),nl,
    write("3. Artificial Intelligence (c)"),nl,
    write("4. Computer Organisation (d)"),nl,
    write("5. Operating Systems (e)"),nl,read(List),nl,
write("~ You are advised a start-up in "),write(Branch),write(" industry")
    ,nl,write("~ Here are a few Areas you can work on:-"),allOptions(List,I,[]),nl,write(I),nl,
    C=n->write("~ You must consider other jobs for the time being and try again with an idea.");
    write("~ Choose your idea wisely"),nl,
(   Y=n -> write("~ You must consider other jobs or find investors for your idea due to your lack of capital");
    write("~ Ensure efficient utilisation of your capital")),nl,write(" ****** Re-run the program to explore other options").

natureOfWorkC(Choice):-
    write("If you want to pursue your parental business, you are advised to do the following:-"),nl,
    write("~ Acquire the required skills via higher education. "),nl,
    write("~ If you think you have all the skills to pursue it then go for it !!!"),nl,
    write("~ Re-run the program to know more about higher education options of your choice. "),nl
    ,nl,write(" ****** Re-run the program to explore other options").

branchName(Course):-
    write("Which course were you enrolled in, during your 4 year Btech program (csai/cse/csam/csb/csd/csss/ece) ?"),
     nl,read(Course).

grade(Grade):-
    write("What was your cummulative GPA during the 4 years at IIIT?"), nl,read(Grade),nl.

coding(Level):-
    write("Rate your coding skills out of 5:- "),nl,read(Level).


education(Education):-
    write("Which of the following higher education degrees would you like to aquire ?"),nl,
    write("1. Masters (a)"),nl,
    write("2. Management- MBA (b)"),nl,read(Education).

educationA(B):-
    branchName(Course),grade(Grade),write("Do you want to pursue masters in India (a) or abroad (b)?"),nl,
    read(E),E=a->(write("~ You can appear for the following exam to pursue masters in India:- "),nl,
    write(" GATE- Graduate Aptitude Test in Engineering"),nl);
    (write("Do you have enough fundings to study abroad (y/n)?"),read(O),
        O=y->(write("~ You can give the following exams to get admission in foreign universities:- "),nl,
        write("1. TOEFL"),nl,write("2. GRE"),nl); (write("~ You can consider applying for education loan "),nl,
        write("~ You can give the following exams to get admission in foreign universities:- "),nl,
        write("1. TOEFL"),nl,write("2. GRE"),nl)),
    nl,write(" ****** Re-run the program to explore other options").

educationB(B):-
    write("~ You can give the CAT entrance exam and obtain admission in reputed MBA institutions."),nl,
    nl,write(" ****** Re-run the program to explore other options").



