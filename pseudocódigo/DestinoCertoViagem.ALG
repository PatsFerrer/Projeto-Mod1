Algoritmo "AtividadeCadastro"
const
   maxUsuarios = 10
Var

   cliente: vetor[1..maxUsuarios] de caractere
   destino: vetor[1..maxUsuarios] de caractere
   i, qtd, opcao : inteiro

Inicio

   qtd <- 1

   Enquanto opcao <> 3  faca

      Escreval("-------------------------------------")
      Escreval("  C A D A S T R O  D E  V I A G E M  ")
      Escreval("-------------------------------------")
      Escreval("[1] CADASTRAR USU�RIO")
      Escreval("[2] LISTAR USU�RIOS CADASTRADOS")
      Escreval("[3] SAIR DO MENU")
      Leia(opcao)
      LimpaTela


      Escolha opcao
      Caso 1
         Se qtd <= maxUsuarios entao

            Escreva("Adicione o Usu�rio: ")
            leia (cliente [qtd])
            Escreva("Adicione o Destino: ")
            leia (destino [qtd])

            qtd <- qtd +1

         Senao
            Escreval("N�o � possivel adicionar mais usu�rios!")
            Escreval()
         FimSe

      Caso 2
         Se qtd -1 > 0 entao

            Escreval("=====================================")
            Escreval("  L I S T A N D O   U S U � R I O S  ")
            Escreval("=====================================")

            Para i de 1 at� qtd -1 faca
               Escreval("Cadastro", i, ":")
               Escreval("USU�RIO(A): ", cliente[i]:15, "DESTINO: ", destino[i])
               Escreval()
            FimPara

         Senao
            Escreval ("--- N�O H� USU�RIOS CADASTRADOS! ---")
            Escreval()
         FimSe

      Caso 3
         Escreval("-------------------------------------")
         Escreval("----- S A I N D O  D O  M E N U -----")
         Escreval("-------------------------------------")

      OutroCaso
         Escreval("---------- OP��O INV�LIDA! ----------")
         Escreval()
      FimEscolha

   FimEnquanto

Fimalgoritmo