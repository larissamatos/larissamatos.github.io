n <- 10000
resultadoQuandoNaoTroca <- c()
resultadoQuandoTroca <- c()
portas <- c("A","B","C")
for (i in 1:n) {
  ## número da porta com o prêmio, escolhida ao acaso pela produção do programa
  portapremio <- sample(portas, size=1) 
  ## número da porta escolhida ao acaso pelo participante
  portaescolhida <- sample(portas, size=1) 
  
  portaslivres <- portas[portas != portaescolhida & portas !=portapremio]
  
  ## porta mostrada pelo apresentador, escolhida ao acaso entre as portas vazias disponíveis.
  ApresentadorMostra <- sample(portaslivres, size=1) 
  
  ## indica a porta escolhida após a troca
  trocouPorta <- portas[portas != portaescolhida & portas != ApresentadorMostra] 
  
  resultadoQuandoNaoTroca[i] <- ifelse(portaescolhida == portapremio, "ganhou", "perdeu")
  resultadoQuandoTroca[i] <- ifelse(trocouPorta == portapremio, "ganhou", "perdeu")
}

proporcaoManteveGanhou <- mean(resultadoQuandoNaoTroca == "ganhou")
proporcaoTrocouGanhou <- mean(resultadoQuandoTroca == "ganhou")