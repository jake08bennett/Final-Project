# Final-Project

Welcome to the animal quiz game. This game runs through Gosu and has 3 rounds for you to play in 60 seconds. I plan on adding multiple rounds in addition to the current ones in the near future.

#  How does it work?

The animal quiz works based off of 4 main classes. You have ```sh main.rb``` where everything included in the game is created, initialized, drawn and is updated. Next is ```sh options.rb``` which i specifically used in order to have 4 different answers that the user could select. ```sh timer.rb``` was used as it says in the name to create a timer for my game and finally ```sh round.rb``` was used to set up the rounds and check if the correct picture was shown when a certain option was pressed. 

# How To Run It.

In order to run the quiz, you need to make sure that you have Gosu installed. Once you have Gosu Installed, clone the repo.
```sh
 $ git clone https://github.com/jake08bennett/Final-Project.git
```
Navigate to the folder and run my main file to begin project
```sh
 $ cd Final-Project
 $ ruby main.rb
```

# Challenges I Faced

The main challenge in which I faced during this project was changing the round. I could not work out how to undraw a picture in order to start as new round. I ended up working round this problem by just using certain arrow keys in order to draw pictures when a certain picture was pressed.

I also had an issue where my score would not count up and simply stayed at 0 or gave you points no matter what optio you pressed whether it was correct or not. This was worked around because i used conditions and if statements in order to see if verything was correct in order to gain score.

I experieneced minor issues also with my timer however i was quickl able to right these wrongs.

# Why I Deserve an A

I chose what i believe was one of the harder projects in the class. Not only this but i worked a good solution to the problem, not completely as i wanted it but a good proportion to being finished. When i encountered issues or errors i found different ways to use the same thing but in a differet way. For example the code for my round changing.

Also I worked using a logic which the majority of the class didnt undertsand but i was still able to get the game to work. This shows how I understand Ruby and Gosu in a high level that i was able to see different ways of completing the code.

With any errors i recieved i didnt just remove that as a feature from the game i persisted and worked through them. So even though the game didnt turn out exactly as i wanted its a working game which i am proud i worked through to get. 
