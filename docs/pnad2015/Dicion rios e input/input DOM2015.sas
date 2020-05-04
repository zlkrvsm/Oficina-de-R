/*     PROGRAMA DE LEITURA EM SAS DO ARQUIVO DE MICRODADOS DE DOMICÍLIOS
    DA PNAD 2015 - PESQUISAS BÁSICA E SUPLEMENTARES DE ACESSO À INTERNET E À TELEVISÃO, 
       ASPECTOS DAS RELAÇÕES DE TRABALHO E PRÁTICAS DE ESPORTE E ATIVIDADE FÍSICA          */

/* Obs.: As duas primeiras posições de V0102 (Número de controle)
        são o código da UF (Unidade da Federação).
   Obs.2: Ajuste o endereço do arquivo DOM2015.TXT no comando INFILE */


DATA DOM2015;
INFILE '...\dados\DOM2015.TXT' LRECL=241 MISSOVER;
INPUT 	    @00001          V0101          $4.          /*Ano de referência*/
            @00005          UF             $2.          /*Unidade da Federação*/
            @00005          V0102          $8.          /*Número de controle*/
            @00013          V0103          $3.          /*Número de série*/
            @00016          V0104          $2.          /*Tipo de entrevista*/
            @00018          V0105          $2.          /*Total de moradores*/
            @00020          V0106          $2.          /*Total de moradores de 10 anos ou mais*/
            @00022          V0201          $1.          /*Espécie do domicílio*/
            @00023          V0202          $1.          /*Tipo do domicílio*/
            @00024          V0203          $1.          /*Material predominante na construção das paredes externas do prédio*/
            @00025          V0204          $1.          /*Material predominante na cobertura (telhado) do domicílio */
            @00026          V0205           2.          /*Número de cômodos do domicílio*/
            @00028          V0206           2.          /*Número de cômodos servindo de dormitório*/
            @00030          V0207          $1.          /*Condição de ocupação do domicílio*/
            @00031          V0208           12.         /*Aluguel mensal pago no mês de referência*/
            @00043          V0209           12.         /*Prestação mensal paga no mês de referência*/
            @00055          V0210          $1.          /*Terreno onde está localizado o domicílio é próprio*/
            @00056          V0211          $1.          /*Tem água canalizada em pelo menos um cômodo do domicílio */
            @00057          V0212          $1.          /*Proveniência da água canalizada utilizada no domicílio*/
            @00058          V0213          $1.          /*Água utilizada no domicílio é canalizada de rede geral de distribuição para a propriedade*/
            @00059          V0214          $1.          /*Água utilizada no domicílio é de poço ou nascente localizado na propriedade*/
            @00060          V0215          $1.          /*Tem banheiro ou sanitário no domicílio ou na propriedade*/
            @00061          V0216          $1.          /*Uso do banheiro ou sanitário*/
            @00062          V2016           2.          /*Número de banheiros ou sanitários*/
            @00064          V0217          $1.          /*Forma de escoadouro do banheiro ou sanitário*/
            @00065          V0218          $1.          /*Destino do lixo domiciliar */
            @00066          V0219          $1.          /*Forma de iluminação do domicílio*/
            @00067          V0220          $1.          /*Tem telefone móvel celular*/
            @00068          V2020          $1.          /*Tem telefone fixo convencional*/
            @00069          V0221          $1.          /*Tem fogão de duas ou mais bocas*/
            @00070          V0222          $1.          /*Tem fogão de uma boca*/
            @00071          V0223          $1.          /*Tipo de combustível utilizado no fogão */
            @00072          V0224          $1.          /*Tem filtro d’água*/
            @00073          V0225          $1.          /*Tem rádio*/
            @00074          V0226          $1.          /*Tem televisão em cores*/
            @00075          V0227          $1.          /*Tem televisão em preto e branco*/
            @00076          V02270         $2.          /*Número de televisões de tela fina*/
            @00078          V02271         $2.          /*Número de televisões de tubo*/
            @00080          V02272         $1.          /*Tem televisão por assinatura*/
            @00081          V02273         $1.          /*Tem televisão com recepçao de sinal digital de tv aberta*/
            @00082          V02274         $1.          /*Tem televisão com antena parabólica*/
            @00083          V2027          $1.          /*Tem aparelho de DVD*/
            @00084          V0228          $1.          /*Tem geladeira*/
            @00085          V0229          $1.          /*Tem freezer*/
            @00086          V0230          $1.          /*Tem máquina de lavar roupa*/
            @00087          V0231          $1.          /*Tem microcomputador*/
            @00088          V0232          $1.          /*Microcomputador é utilizado para acessar a Internet*/
            @00089          V02321         $1.          /*Tem tablet*/
            @00090          V02322         $1.          /*Tem acesso à Internet no próprio domicilio*/
            @00091          V02323         $1.          /*Para acessar à Internet utiliza-se microcomputador*/
            @00092          V02324         $1.          /*Para acessar à Internet utiliza-se telefone celular*/
            @00093          V02325         $1.          /*Para acessar à Internet utiliza-se tablet*/
            @00094          V02326         $1.          /*Para acessar à Internet utiliza-se tv*/
            @00095          V02327         $1.          /*Para acessar à Internet utiliza-se outro equipamento eletrônico*/
            @00096          V02424         $1.          /*O acesso à Internet é feito através de sinal de rede celular 3G ou 4G*/
            @00097          V02425         $1.          /*O acesso à Internet é feito através de conexão discada por linha telefônica*/
            @00098          V02426         $1.          /*O acesso à Internet é feito por banda larga*/
            @00099          V2032          $1.          /*Tem carro ou motocicleta de uso pessoal*/
            @00100          V4105          $1.          /*Código de situação censitária*/
            @00101          V4107          $1.          /*Código de área censitária*/
            @00102          V4600          $2.          /*Dia de referência*/
            @00104          V4601          $2.          /*Mês de referência*/
            @00106          V4602          $4.          /*Estrato*/
            @00110          V4604          $2.          /*Número de municípios selecionados no estrato*/
            @00112          V4605          12.10        /*Probabilidade do município*/
            @00124          V4606          $3.          /*Número de setores selecionados no município*/
            @00127          V4607          12.10        /*Probabilidade do setor*/
            @00139          V4608          $6.          /*Intervalo de seleção do domicílio*/
            @00145          V4609          $9.          /*Projeção de população */
            @00154          V4610           3.          /*Inverso da fração*/
            @00157          V4611           5.          /*Peso do domicílio*/
            @00162          V4614           12.         /*Rendimento mensal domiciliar*/
            @00174          UPA            $4.          /*Delimitação do município*/
            @00178          V4617           7.          /*STRAT*/
            @00185          V4618           7.          /*PSU*/
            @00192          V4620          $2.          /*Número de componentes do domícilio */
            @00194          V4621           12.          /*Rendimento mensal domiciliar per capita */
            @00206          V4622          $2.          /*Faixa do rendimento mensal domiciliar per capita */
            @00208          V4624          $1.          /*Forma de abastecimento de água*/
            @00209          V4628          $1.          /*Marca de seleção de domicílio para o Suplemento de Aspectos das Relações de Trabalho e/ou Suplemento de Práticas de Esporte e Atividade Física*/
            @00210          V4629           7.          /*Projeção da população obtida com os dados dos moradores dos domicílios da pesquisa - Suplemento de Práticas de Esporte e Atividade Física */
            @00217          V4630          $5.          /*Domínio do pós-estrato do Suplemento de Práticas de Esporte e Atividade Física*/
            @00222          V4632           7.          /*Projeção da população obtida com os dados dos moradores dos domicílios da pesquisa - Suplemento de Aspectos das Relações de Trabalho*/			
            @00229          V4633          $5.          /*Domínio do pós-estrato do Suplemento de Aspectos das Relações de Trabalho*/			
	        @00234          V9992          $8.          /*Data de geração do arquivo de microdados*/
			;
run;
