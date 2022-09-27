#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
  WINNER_ID=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT name FROM teams where name='$OPPONENT'")

    # if they are not found
    if [[ -z $WINNER_ID ]]
    then 
    INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
      echo Inserted into teams: $WINNER
      fi
     WINNER_ID=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    fi
   # if they are not found
    if [[ -z $OPPONENT_ID ]]
    then 
    INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
      echo Inserted into teams: $OPPONENT
      fi
    fi
    OPPONENT_ID=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
  fi
done 

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != "year" ]]
then
  # get team info
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams where name ='$OPPONENT'")
  # input game info
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)")
    if [[ $INSERT_GAME_RESULTS == "INSERT 0 1" ]]
    then
    echo game data inserted -- $YEAR -- $ROUND -- $WINNER -- $OPPONENT -- $WINNER_GOALS -- $OPPONENT_GOALS
  fi
fi
done
