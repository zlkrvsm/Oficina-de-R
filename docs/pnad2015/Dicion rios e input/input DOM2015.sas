/*     PROGRAMA DE LEITURA EM SAS DO ARQUIVO DE MICRODADOS DE DOMIC�LIOS
    DA PNAD 2015 - PESQUISAS B�SICA E SUPLEMENTARES DE ACESSO � INTERNET E � TELEVIS�O, 
       ASPECTOS DAS RELA��ES DE TRABALHO E PR�TICAS DE ESPORTE E ATIVIDADE F�SICA          */

/* Obs.: As duas primeiras posi��es de V0102 (N�mero de controle)
        s�o o c�digo da UF (Unidade da Federa��o).
   Obs.2: Ajuste o endere�o do arquivo DOM2015.TXT no comando INFILE */


DATA DOM2015;
INFILE '...\dados\DOM2015.TXT' LRECL=241 MISSOVER;
INPUT 	    @00001          V0101          $4.          /*Ano de refer�ncia*/
            @00005          UF             $2.          /*Unidade da Federa��o*/
            @00005          V0102          $8.          /*N�mero de controle*/
            @00013          V0103          $3.          /*N�mero de s�rie*/
            @00016          V0104          $2.          /*Tipo de entrevista*/
            @00018          V0105          $2.          /*Total de moradores*/
            @00020          V0106          $2.          /*Total de moradores de 10 anos ou mais*/
            @00022          V0201          $1.          /*Esp�cie do domic�lio*/
            @00023          V0202          $1.          /*Tipo do domic�lio*/
            @00024          V0203          $1.          /*Material predominante na constru��o das paredes externas do pr�dio*/
            @00025          V0204          $1.          /*Material predominante na cobertura (telhado) do domic�lio */
            @00026          V0205           2.          /*N�mero de c�modos do domic�lio*/
            @00028          V0206           2.          /*N�mero de c�modos servindo de dormit�rio*/
            @00030          V0207          $1.          /*Condi��o de ocupa��o do domic�lio*/
            @00031          V0208           12.         /*Aluguel mensal pago no m�s de refer�ncia*/
            @00043          V0209           12.         /*Presta��o mensal paga no m�s de refer�ncia*/
            @00055          V0210          $1.          /*Terreno onde est� localizado o domic�lio � pr�prio*/
            @00056          V0211          $1.          /*Tem �gua canalizada em pelo menos um c�modo do domic�lio */
            @00057          V0212          $1.          /*Proveni�ncia da �gua canalizada utilizada no domic�lio*/
            @00058          V0213          $1.          /*�gua utilizada no domic�lio � canalizada de rede geral de distribui��o para a propriedade*/
            @00059          V0214          $1.          /*�gua utilizada no domic�lio � de po�o ou nascente localizado na propriedade*/
            @00060          V0215          $1.          /*Tem banheiro ou sanit�rio no domic�lio ou na propriedade*/
            @00061          V0216          $1.          /*Uso do banheiro ou sanit�rio*/
            @00062          V2016           2.          /*N�mero de banheiros ou sanit�rios*/
            @00064          V0217          $1.          /*Forma de escoadouro do banheiro ou sanit�rio*/
            @00065          V0218          $1.          /*Destino do lixo domiciliar */
            @00066          V0219          $1.          /*Forma de ilumina��o do domic�lio*/
            @00067          V0220          $1.          /*Tem telefone m�vel celular*/
            @00068          V2020          $1.          /*Tem telefone fixo convencional*/
            @00069          V0221          $1.          /*Tem fog�o de duas ou mais bocas*/
            @00070          V0222          $1.          /*Tem fog�o de uma boca*/
            @00071          V0223          $1.          /*Tipo de combust�vel utilizado no fog�o */
            @00072          V0224          $1.          /*Tem filtro d��gua*/
            @00073          V0225          $1.          /*Tem r�dio*/
            @00074          V0226          $1.          /*Tem televis�o em cores*/
            @00075          V0227          $1.          /*Tem televis�o em preto e branco*/
            @00076          V02270         $2.          /*N�mero de televis�es de tela fina*/
            @00078          V02271         $2.          /*N�mero de televis�es de tubo*/
            @00080          V02272         $1.          /*Tem televis�o por assinatura*/
            @00081          V02273         $1.          /*Tem televis�o com recep�ao de sinal digital de tv aberta*/
            @00082          V02274         $1.          /*Tem televis�o com antena parab�lica*/
            @00083          V2027          $1.          /*Tem aparelho de DVD*/
            @00084          V0228          $1.          /*Tem geladeira*/
            @00085          V0229          $1.          /*Tem freezer*/
            @00086          V0230          $1.          /*Tem m�quina de lavar roupa*/
            @00087          V0231          $1.          /*Tem microcomputador*/
            @00088          V0232          $1.          /*Microcomputador � utilizado para acessar a Internet*/
            @00089          V02321         $1.          /*Tem tablet*/
            @00090          V02322         $1.          /*Tem acesso � Internet no pr�prio domicilio*/
            @00091          V02323         $1.          /*Para acessar � Internet utiliza-se microcomputador*/
            @00092          V02324         $1.          /*Para acessar � Internet utiliza-se telefone celular*/
            @00093          V02325         $1.          /*Para acessar � Internet utiliza-se tablet*/
            @00094          V02326         $1.          /*Para acessar � Internet utiliza-se tv*/
            @00095          V02327         $1.          /*Para acessar � Internet utiliza-se outro equipamento eletr�nico*/
            @00096          V02424         $1.          /*O acesso � Internet � feito atrav�s de sinal de rede celular 3G ou 4G*/
            @00097          V02425         $1.          /*O acesso � Internet � feito atrav�s de conex�o discada por linha telef�nica*/
            @00098          V02426         $1.          /*O acesso � Internet � feito por banda larga*/
            @00099          V2032          $1.          /*Tem carro ou motocicleta de uso pessoal*/
            @00100          V4105          $1.          /*C�digo de situa��o censit�ria*/
            @00101          V4107          $1.          /*C�digo de �rea censit�ria*/
            @00102          V4600          $2.          /*Dia de refer�ncia*/
            @00104          V4601          $2.          /*M�s de refer�ncia*/
            @00106          V4602          $4.          /*Estrato*/
            @00110          V4604          $2.          /*N�mero de munic�pios selecionados no estrato*/
            @00112          V4605          12.10        /*Probabilidade do munic�pio*/
            @00124          V4606          $3.          /*N�mero de setores selecionados no munic�pio*/
            @00127          V4607          12.10        /*Probabilidade do setor*/
            @00139          V4608          $6.          /*Intervalo de sele��o do domic�lio*/
            @00145          V4609          $9.          /*Proje��o de popula��o */
            @00154          V4610           3.          /*Inverso da fra��o*/
            @00157          V4611           5.          /*Peso do domic�lio*/
            @00162          V4614           12.         /*Rendimento mensal domiciliar*/
            @00174          UPA            $4.          /*Delimita��o do munic�pio*/
            @00178          V4617           7.          /*STRAT*/
            @00185          V4618           7.          /*PSU*/
            @00192          V4620          $2.          /*N�mero de componentes do dom�cilio */
            @00194          V4621           12.          /*Rendimento mensal domiciliar per capita */
            @00206          V4622          $2.          /*Faixa do rendimento mensal domiciliar per capita */
            @00208          V4624          $1.          /*Forma de abastecimento de �gua*/
            @00209          V4628          $1.          /*Marca de sele��o de domic�lio para o Suplemento de Aspectos das Rela��es de Trabalho e/ou Suplemento de Pr�ticas de Esporte e Atividade F�sica*/
            @00210          V4629           7.          /*Proje��o da popula��o obtida com os dados dos moradores dos domic�lios da pesquisa - Suplemento de Pr�ticas de Esporte e Atividade F�sica */
            @00217          V4630          $5.          /*Dom�nio do p�s-estrato do Suplemento de Pr�ticas de Esporte e Atividade F�sica*/
            @00222          V4632           7.          /*Proje��o da popula��o obtida com os dados dos moradores dos domic�lios da pesquisa - Suplemento de Aspectos das Rela��es de Trabalho*/			
            @00229          V4633          $5.          /*Dom�nio do p�s-estrato do Suplemento de Aspectos das Rela��es de Trabalho*/			
	        @00234          V9992          $8.          /*Data de gera��o do arquivo de microdados*/
			;
run;
