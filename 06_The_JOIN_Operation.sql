--# 1. Show the matchid and player name for all goals scored by Germany. 
SELECT matchid, player
FROM goal
WHERE teamid = 'GER'

--# 2. Show the id, stadium, team1, team2 for just game 1012
SELECT id, stadium, team1, team2
FROM game
WHERE ID = 1012

--# 3. Show the player, teamid, stadium and mdate and for every German goal
SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (game.id=goal.matchid)
WHERE teamid = 'GER'

--# 4. Show the team1, team2 and player for every goal scored by a player 
--#    called Mario
SELECT team1, team2, player
FROM game JOIN goal ON (game.id=goal.matchid)
WHERE player LIKE 'Mario%'

--# 5. Show player, teamid, coach, gtim for all goals scored in the first 10 minutes
SELECT player, teamid, coach, gtime
FROM goal JOIN eteam ON (goal.teamid = eteam.id)
WHERE gtime <= 10
