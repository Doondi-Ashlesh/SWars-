extends Node

var score = 0
var gameover = false
var restart = false
var highscore= 0

func reset():
	
	if highscore <= score:
		highscore=score
	score = 0
	gameover =false
	
	
	
