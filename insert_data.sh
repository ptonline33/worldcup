#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE TABLE games,teams")"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if (( $YEAR != 'year' ))
  then 
    # get team_id for Winner
    RESULT1=$($PSQL "SELECT team_id from teams where name='$WINNER'")
    # get team_id for Opponent
    RESULT2=$($PSQL "select team_id from teams where name='$OPPONENT'")
    
    #if not found
    if [[ -z $RESULT1 ]]
    then
      INSERT_WINNER_RESULT=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $WINNER"
        WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
      fi
      else
        WINNER_ID=$RESULT1
    fi
    if [[ -z $RESULT2 ]]
    then
      INSERT_OPPONENT_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $OPPONENT"
        OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
      fi
      else 
        OPPONENT_ID=$RESULT2
    fi
    INSERT_INTO_GAMES=$($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
     if [[ $INSERT_INTO_GAMES == "INSERT 0 1" ]]
      then
        echo "Inserted into games, $YEAR,$ROUND,$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS"
    fi
  fi
done 

