/* Author: Charlton Sammut
   Last Edited:  04/01/2019*/

/*TODO
Decimal points?
Validation?*/

main():- 
	 write('-----------------------------------------------------------------'), nl,
       write('Select a function.'), nl,
	 write('1) Calculate the area of a cirlce.'), nl,
	 write('2) Calculate the area of a square.'), nl,
	 write('3) Calculate the area of a rectangle.'), nl,
	 write('4) Calculate the area of a triangle.'), nl,
	 write('5) Calculate the area of a parallelogram.'), nl,
	 write('6) Calculate the volume of a sphere.'), nl,
       write('7) Calculate the volume of a cube.'), nl,
	 write('8) Calculate the volume of a cyclinder.'), nl,
	 write('9) Calculate the volume of a cone.'), nl,
       write('q) Exit program.'),nl,
	 write('-----------------------------------------------------------------'), nl,
	 read(Choice), main(Choice). /*Choice decideds which function is going to be entered*/

/*Area of Circle*/

main(1):- 
	write('Calculate the area of a circle using:'), nl,
      write('a) Radius'), nl,
      write('b) Diameter'), nl, 
      write('c) Circumfurance'), nl,
      read(Choice),/*Decided which function is going to be entered*/
      choiceA(Choice).
 /*Radius*/

choiceA(a):-
	write('Enter the radius of your circle'), nl, 
      read(Radius),/*Holds user input*/
      areaofcircle0(Radius,Ans),
	write('Area of your circle is ') , write(Ans), write(' units^2'), nl,
      write('Enter any button to continue'), nl,
      read(Anybutton),/*User has the chance to look at his/her answer before menu is displayed again*/
      main().

areaofcircle0(Radius,Ans):-
	Ans is 3.1416*Radius^2.

  /*Diameter*/ 
      
choiceA(b):-
	write('Enter the diameter of your circle'), nl,
      read(Diameter),/*Holds user input*/
      Ans is (1/4)*(3.1416)*(Diameter ^ 2),
	write('Area of your cicrle is ') , write(Ans), write(' units^2'), nl,
      write('Enter any button to continue'), nl,
      read(Anybutton),
      main().

 /*Circumference*/

choiceA(c):-
	write('Enter the circumference of your circle'), nl,
      read(Circumference),/*Holds user input*/
      Ans is (1/(4*3.1416))*(Circumference ^ 2),
	write('Area of your circle is ') , write(Ans), write(' units^2'), nl,
      write('Enter any button to continue'), nl,
      read(Anybutton),
      main().	

/*Square*/

main(2):-
	write('Enter the length of one of the sides of your square'), nl,
	read(Length),/*Holds user input*/
	Ans is Length^2,
	write('Area of your square is '), write(Ans), write(' units^2'), nl,
	write('Enter any button to continue'), nl,
	read(Anybutton),
	main().

/*Rectangle*/

main(3):-
	write('Enter the length and base of your rectangle'), nl,
	write('Length '), read(Length),/*Holds user input*/
      write('Base'), read(Base), nl,/*Holds user input*/
	areaofrectangle(Length,Base,Ans),
	write('Area of your square is '), write(Ans), write(' units^2'), nl,
	write('Enter any button to continue'), nl,
	read(Anybutton),
	main().

areaofrectangle(Length,Base,Ans):-
	Ans is Length * Base.

/*Triangle*/

main(4):-
	write('Enter the Base and the perpendicular height of your triangle'), nl,
	write('Base '), read(Base),/*Holds user input*/
      write('Height '), read(Height),/*Holds user input*/
	areaofrectangle(Base,Height,X),
	Ans is X/2,
	write('Area of your triangle is '), write(Ans), write(' units^2'), nl,
	write('Enter any button to continue'), nl,
	read(Anybutton),
	main().

/*Parallelogram*/

main(5):-
	write('Enter the Base and the perpendicular height of your parallelogram'), nl,
	write('Base '), read(Base),/*Holds user input*/
      write('Height '), read(Height),/*Holds user input*/
	areaofrectangle(Base,Height,Ans), 
	write('Area of your parallelogram is '), write(Ans), write(' units^2'), nl,
	write('Enter any button to continue'), nl,
	read(Anybutton),
	main().
	
/*Sphere*/

main(6):-
	write('Enter the radius of your sphere'), nl,
      read(Radius),/*Holds user input*/
      areaofcircle0(Radius,X),
      Ans is X*(4/3)*Radius, 
      write('Volume of your sphere is ') , write(Ans), write(' units^3'), nl,
      write('Enter any button to continue'), nl,
      read(Anybutton),
      main().

/*Cube*/

main(7):-
	write('Enter the length of one of the sides of your cube'), nl,
	read(Length),/*Holds user input*/
	Ans is Length^3,
	write('Volume of your cube is '), write(Ans), write(' units^3'), nl,
	write('Enter any button to continue'), nl,
	read(Anybutton),
	main().

/*Cylinder*/

main(8):-
	write('Enter the Radius and the height of your Cylinder'), nl,
	write('Radius '), read(Radius),/*Holds user input*/
      write('Height '), read(Height),/*Holds user input*/
      areaofcircle0(Radius,X),
	Ans is X*Height,
	write('Volume of your cylinder is ') , write(Ans), write(' units^3'), nl,
	write('Enter any button to continue'), nl,
	read(Anything),
	main().

/*Cone*/
main(9):-
	write('Enter the radius and perpendicular height of your cone'), nl,
	write('Radius '), read(Radius),/*Holds user input*/
      write('Height '), read(Height),/*Holds user input*/
	areaofcircle0(Radius,X),
	Ans is X*(Height/3),
	write('Volume of your cone is ') , write(Ans), write(' units^3'), nl,
	write('Enter any button to continue'), nl,
	read(Anything),
	main().



main(q):-
	write('Exiting programm'), nl.

main(_):-
	write('Invalid input'), nl,
	write('Enter any button to continue'), nl,
	read(Anything),
	main().

