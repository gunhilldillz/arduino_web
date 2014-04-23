Final Project
Arduino -- Physical Computing -- Web Interface

Take a look at the config folder
become familiar with the dino gem
Keep in mind that the way the dino gem works it it will send a RESET 
command to the Arduino between controller actions.  So everytime we switch
controller actions all of the pins will attempt to reset.  This makes incrementing
a servo very jerky.  I'm working on finding a solution to this.  Perhaps we can 
have some javascript store variables in the browser in only ONE ACTION so that the 
Arduino never receives a RESET command. 
