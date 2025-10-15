# simulating a poker winnings

per_game_wp <- 0.5
rbinom(1,4,per_game_wp)|>
  table()
nsim<- 1000
sim_expected_prize <-function(nsim=1000, per_game_wp=0.5)
  sim_4games <-rbinom(nsim,4, per_game_wp)|>
  table()
winnings <-c(0,5,15,25,60)-20
expected_prize <- sum(winnings * (sim_4games/nsim)