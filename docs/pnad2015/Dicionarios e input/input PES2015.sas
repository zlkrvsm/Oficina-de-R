/*     PROGRAMA DE LEITURA EM SAS DO ARQUIVO DE MICRODADOS DE PESSOAS
    DA PNAD 2015 - PESQUISA B�SICA E SUPLEMENTARES DE ACESSO � INTERNET E � TELEVIS�O, 
	  ASPECTOS DE CUIDADOS DAS CRIAN�AS COM MENOS DE 4 ANOS DE IDADE, ASPECTOS DAS 
	  RELA��ES DE TRABALHO, SINDICALIZA��O E PR�TICAS DE ESPORTE E ATIVIDADE F�SICA */
				   
/* Obs.: As duas primeiras posi��es de V0102 (N�mero de controle)
        s�o o c�digo da UF (Unidade da Federa��o).
   Obs.2: Ajuste o endere�o do arquivo PES2015.TXT no comando INFILE */


DATA PES2015;
INFILE '...\dados\PES2015.TXT'  LRECL=948 MISSOVER;
INPUT   
@00001			V0101          $4.          /*Ano de refer�ncia*/
@00005			UF          $2.          /*Unidade da Federa��o*/
@00005			V0102          $8.          /*N�mero de controle*/
@00013			V0103          $3.          /*N�mero de s�rie*/
@00016			V0301          $2.          /*N�mero de ordem*/
@00018			V0302          $1.          /*Sexo*/
@00019			V3031          $2.          /*Dia de nascimento*/
@00021			V3032          $2.          /*M�s de nascimento*/
@00023			V3033          $4.          /*Ano de nascimento*/
@00027			V8005          3.          /*Idade do morador na data de refer�ncia*/
@00030			V0401          $1.          /*Condi��o na unidade domiciliar*/
@00031			V0402          $1.          /*Condi��o na fam�lia*/
@00032			V0403          $1.          /*N�mero da fam�lia*/
@00033			V0404          $1.          /*Cor ou ra�a*/
@00034			V0405          $1.          /*Tem m�e viva*/
@00035			V0406          $1.          /*M�e mora no domic�lio*/
@00036			V0407          2.          /*N�mero de ordem da m�e */
@00038			V0408          $1.          /*Tem registro de nascimento*/
@00039			V4111          $1.          /*Vive em companhia de c�njuge ou companheiro(a)*/
@00040			V4112          $1.          /*Natureza da uni�o*/
@00041			V4011          $1.          /*Estado civil*/
@00042			V0412          $1.          /*O informante desta parte foi*/
@00043			V0501          $1.          /*Nasceu no munic�pio de resid�ncia*/
@00044			V0502          $1.          /*Nasceu na Unidade da Federa��o de resid�ncia*/
@00045			V5030          $2.          /*Lugar de nascimento*/
@00047			V0504          $1.          /*Morou em outra Unidade da Federa��o ou pa�s estrangeiro*/
@00048			V0505          $1.          /*Morava na Unidade da Federa��o na data de refer�ncia */
@00049			V5061          $1.          /*Tinha at� 4 anos ininterruptos de resid�ncia na Unidade da Federa��o*/
@00050			V5062          $1.          /*Tempo de resid�ncia na Unidade da Federa��o (at� 4 anos)*/
@00051			V5063          $1.          /*Tinha de 5 a 9 anos ininterruptos de resid�ncia na Unidade da Federa��o*/
@00052			V5064          $1.          /*Tempo de resid�ncia na Unidade da Federa��o (de 5 a 9 anos)*/
@00053			V5065          $1.          /*Tinha 10 anos ou mais de resid�ncia na Unidade da Federa��o*/
@00054			V0507          $1.          /*Morava na Unidade da Federa��o h� 5 anos da data de refer�ncia*/
@00055			V5080          $2.          /*Lugar de resid�ncia h� 5 anos da data de refer�ncia*/
@00057			V5090          $2.          /*Lugar de resid�ncia anterior*/
@00059			V0510          $1.          /*Morava no munic�pio na data de refer�ncia*/
@00060			V0511          $1.          /*Morou em outro munic�pio na Unidade da Federa��o*/
@00061			V5121          $1.          /*Tinha at� 4 anos ininterruptos de resid�ncia no munic�pio*/
@00062			V5122          $1.          /*Tempo de resid�ncia no munic�pio (at� 4 anos)*/
@00063			V5123          $1.          /*Tinha de 5 a 9 anos ininterruptos de resid�ncia no munic�pio*/
@00064			V5124          $1.          /*Tempo de resid�ncia no munic�pio (de 5 a 9 anos)*/
@00065			V5125          $1.          /*Tinha 10 anos ou mais de resid�ncia no munic�pio*/
@00066			V5126          $1.          /*O informante desta parte foi*/
@00067			V0601          $1.          /*Sabe ler e escrever*/
@00068			V0602          $1.          /*Frequenta escola ou creche*/
@00069			V6002          $1.          /*Rede de ensino*/
@00070			V6020          $1.          /*�rea da rede p�blica de ensino*/
@00071			V6003          $2.          /*Curso que frequenta*/
@00073			V6030          $1.          /*Dura��o do ensino fundamental*/
@00074			V0604          $1.          /*O curso que frequenta � seriado*/
@00075			V0605          $1.          /*S�rie que frequenta*/
@00076			V0606          $1.          /*Anteriormente frequentou escola ou creche*/
@00077			V6007          $2.          /*Curso mais elevado que frequentou anteriormente*/
@00079			V6070          $1.          /*Dura��o do ensino fundamental que frequentou anteriormente*/
@00080			V0608          $1.          /*Este curso que frequentou anteriormente era seriado*/
@00081			V0609          $1.          /*Concluiu, com aprova��o, pelo menos a 1� s�rie deste curso que frequentou anteriormente*/
@00082			V0610          $1.          /*�ltima s�rie conclu�da com aprova��o, neste curso que frequentou anteriormente*/
@00083			V0611          $1.          /*Concluiu este curso que frequentou anteriormente*/
@00084			V06111          $1.          /*Nos �ltimos tr�s meses, utilizou a Internet em algum local*/
@00085			V061111          $1.          /*Nos �ltimos doze meses, utilizou a Internet em algum local*/
@00086			V061112          $1.          /*O acesso � Internet foi feito atrav�s de microcomputador*/
@00087			V061113          $1.          /*O acesso � Internet foi feito atrav�s de telefone celular*/
@00088			V061114          $1.          /*O acesso � Internet foi feito atrav�s de tablet*/
@00089			V061115          $1.          /*O acesso � Internet foi feito atrav�s de tv*/
@00090			V061116          $1.          /*O acesso � Internet foi feito atrav�s de outro equipamento eletr�nico*/
@00091			V06112          $1.          /*Tem telefone m�vel celular para uso pessoal*/
@00092			V0612          $1.          /*O informante desta parte foi*/
@00093			V0701          $1.          /*Teve algum trabalho no per�odo de refer�ncia de 365 dias*/
@00094			V0702          $1.          /*Exerceu tarefas em cultivo, pesca ou cria��o de animais, destinados � pr�pria alimenta��o das pessoas moradoras no domic�lio, no per�odo de refer�ncia de 365 dias*/
@00095			V0703          $1.          /*Exerceu tarefas em constru��o de pr�dio, c�modo, po�o ou outras obras de constru��o, destinadas ao pr�prio uso das pessoas moradoras no domic�lio, no per�odo de refer�ncia de 365 dias*/
@00096			V0704          $1.          /*Trabalhou na semana de refer�ncia*/
@00097			V0705          $1.          /*Esteve afastado temporariamente do trabalho remunerado que tinha na semana de refer�ncia*/
@00098			V7060          $4.          /*C�digo da ocupa��o no trabalho do per�odo de capta��o de 358 dias*/
@00102			V7070          $5.          /*C�digo da atividade principal do empreendimento no trabalho do per�odo de capta��o de 358 dias*/
@00107			V0708          $1.          /*Posi��o na ocupa��o no trabalho do per�odo de capta��o de 358 dias*/
@00108			V7090          $4.          /*C�digo da ocupa��o no trabalho da semana de refer�ncia*/
@00112			V7100          $5.          /*C�digo da atividade principal do empreendimento no trabalho da semana de refer�ncia*/
@00117			V0711          $1.          /*Posi��o na ocupa��o no trabalho da semana de refer�ncia*/
@00118			V7121          $1.          /*C�digo 2 - recebia normalmente rendimento mensal em dinheiro no m�s de refer�ncia no(s) trabalho(s) da semana de refer�ncia*/
@00119			V7122          12.          /*Rendimento mensal em dinheiro que recebia normalmente no m�s de refer�ncia no(s) trabalho(s) da semana de refer�ncia*/
@00131			V7124          $1.          /*C�digo 4 - recebia normalmente rendimento mensal em produtos ou mercadorias no m�s de refer�ncia no(s) trabalho(s) da semana de refer�ncia*/
@00132			V7125          12.          /*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente no m�s de refer�ncia no(s) trabalho(s) da semana de refer�ncia*/
@00144			V7127          $1.          /*C�digo 6 - recebia normalmente rendimento mensal somente em benef�cios no m�s de refer�ncia no(s) trabalho(s) da semana de refer�ncia*/
@00145			V7128          $1.          /*C�digo 8 - era trabalhador n�o remunerado no(s) trabalho(s) da semana de refer�ncia*/
@00146			V0713          2.          /*N�mero de horas habitualmente trabalhadas por semana no(s) trabalho(s) da semana de refer�ncia*/
@00148			V0714          $1.          /*Cuidava dos afazeres dom�sticos na semana de refer�ncia*/
@00149			V0715          2.          /*N�mero de horas que dedicava normalmente por semana aos afazeres dom�sticos*/
@00151			V0716          $1.          /*O informante desta parte foi*/
@00152			V9001          $1.          /*Trabalhou na semana de refer�ncia*/
@00153			V9002          $1.          /*Esteve afastado temporariamente do trabalho remunerado que tinha na semana de refer�ncia*/
@00154			V9003          $1.          /*Exerceu tarefas em cultivo, pesca ou cria��o de animais, destinados � pr�pria alimenta��o das pessoas moradoras no domic�lio, na semana de refer�ncia*/
@00155			V9004          $1.          /*Exerceu tarefas em constru��o de pr�dio, c�modo, po�o ou outras obras de constru��o, destinadas ao pr�prio uso das pessoas moradoras no domic�lio, na semana de refer�ncia*/
@00156			V9005          $1.          /*N�mero de trabalhos que tinha na semana de refer�ncia*/
@00157			V9906          $4.          /*C�digo da ocupa��o no trabalho principal da semana de refer�ncia*/
@00161			V9907          $5.          /*C�digo da atividade principal do empreendimento no trabalho principal da semana de refer�ncia*/
@00166			V9008          $2.          /*Posi��o na ocupa��o no trabalho principal da semana de refer�ncia*/
@00168			V9009          $1.          /*Recebia do empregador alguma �rea para produ��o particular*/
@00169			V9010          $1.          /*Tinha parceria com o empregador*/
@00170			V90101          $1.          /*Foi contratado somente por pessoa respons�vel pelo estabelecimento*/
@00171			V9011          $1.          /*Foi contratado somente por pessoa(s) respons�vel(v�is) pelo(s) estabelecimento(s) em que trabalhou como empregado tempor�rio no m�s de refer�ncia*/
@00172			V9012          $1.          /*Foi contratado como empregado tempor�rio, somente por intermedi�rio (empresa empreiteira, empreiteiro, �gato�, etc.) no m�s de refer�ncia*/
@00173			V90121          $1.          /*Foi contratado por intem�dio de*/
@00174			V9013          $1.          /*Teve ajuda de trabalhador n�o remunerado membro da unidade domiciliar no m�s de refer�ncia*/
@00175			V9014          $1.          /*N�mero de trabalhadores n�o remunerados membros da unidade domiciliar, independentemente da idade, que ajudaram � pessoa que era empregado no m�s de refer�ncia*/
@00176			V9151          $1.          /*C�digo 1 - referente � 1� parcela ou parcela �nica do empreendimento*/
@00177			V9152          11.          /*�rea informada na 1� parcela ou parcela �nica do empreendimento*/
@00188			V9154          7.          /*Equival�ncia em m�, referente � unidade de medida de superf�cie em V9152*/
@00195			V9156          $1.          /*C�digo 3 - referente � 2� parcela do empreendimento*/
@00196			V9157          11.          /*�rea informada na 2� parcela do empreendimento*/
@00207			V9159          7.          /*Equival�ncia em m�, referente � unidade de medida de superf�cie em V9157*/
@00214			V9161          $1.          /*C�digo 5 - referente � 3� parcela do empreendimento*/
@00215			V9162          11.          /*�rea informada na 3� parcela do empreendimento*/
@00226			V9164          7.          /*Equival�ncia em m�, referente � unidade de medida de superf�cie em V9162*/
@00233			V9016          $1.          /*Tinha pelo menos um empregado tempor�rio, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00234			V9017          $1.          /*N�mero de empregados tempor�rios, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00235			V9018          $1.          /*Tinha pelo menos um empregado permanente, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00236			V9019          $1.          /*N�mero de empregados permanentes, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00237			V9201          $1.          /*C�digo 2 - referente � 1� parcela ou parcela �nica do empreendimento*/
@00238			V9202          11.          /*�rea informada na 1� parcela ou parcela �nica do empreendimento*/
@00249			V9204          7.          /*Equival�ncia em m�, referente � unidade de medida de superf�cie em V9202*/
@00256			V9206          $1.          /*C�digo 4 - referente � 2� parcela do empreendimento*/
@00257			V9207          11.          /*�rea informada na 2� parcela do empreendimento*/
@00268			V9209          7.          /*Equival�ncia em m�, referente � unidade de medida de superf�cie em V9207*/
@00275			V9211          $1.          /*C�digo 6 - referente � 3� parcela do empreendimento*/
@00276			V9212          11.          /*�rea informada na 3� parcela do empreendimento*/
@00287			V9214          7.          /*Equival�ncia em m�, referente � unidade de medida de superf�cie em V9212*/
@00294			V9021          $1.          /*Condi��o em rela��o ao empreendimento do grupamento agr�cola*/
@00295			V9022          $1.          /*Parceria contratada neste trabalho*/
@00296			V9023          $1.          /*Forma contratada de pagamento pelo uso do bem, m�vel ou im�vel, arrendado para o empreendimento*/
@00297			V9024          $1.          /*Assumiu, previamente, o compromisso de vender uma parte da produ��o principal do empreendimento no per�odo de refer�ncia de 365 dias*/
@00298			V9025          $1.          /*Vendeu alguma parte da produ��o principal do empreendimento no per�odo de refer�ncia de 365 dias*/
@00299			V9026          $1.          /*Comprador que adquiriu a totalidade, ou a maior parte, da produ��o principal do empreendimento que foi vendida no per�odo de refer�ncia de 365 dias.*/
@00300			V9027          $1.          /*Algum tipo de produ��o desenvolvida no empreendimento foi consumida como alimenta��o pelos membros da unidade domiciliar no m�s de refer�ncia*/
@00301			V9028          $1.          /*Parcela da alimenta��o consumida pelos membros da unidade domiciliar, no m�s de refer�ncia, que foi retirada de produ��o desenvolvida no empreendimento*/
@00302			V9029          $1.          /*Posi��o na ocupa��o no trabalho principal da semana de refer�ncia*/
@00303			V9030          $1.          /*A jornada normal desse trabalho estava totalmente compreendida no per�odo de 5 horas da manh� �s 10 horas da noite*/
@00304			V9031          $1.          /*A jornada normal desse trabalho estava totalmente compreendida no per�odo noturno de 10 horas da noite �s 5 horas da manh� seguinte*/
@00305			V9032          $1.          /*Setor do emprego no trabalho principal da semana de refer�ncia*/
@00306			V9033          $1.          /*�rea do emprego no trabalho principal da semana de refer�ncia*/
@00307			V9034          $1.          /*Era militar do Ex�rcito, Marinha de Guerra ou Aeron�utica no trabalho principal da semana de refer�ncia*/
@00308			V9035          $1.          /*Era funcion�rio p�blico estatut�rio no trabalho principal da semana de refer�ncia*/
@00309			V9036          $1.          /*Prestava servi�o dom�stico remunerado em mais de um domic�lio, no m�s de refer�ncia*/
@00310			V9037          $1.          /*Exercia habitualmente esse trabalho pelo menos uma vez por semana*/
@00311			V9038          $1.          /*N�mero de dias por semana que, habitualmente, prestava servi�o dom�stico remunerado*/
@00312			V9039          $1.          /*N�mero de dias por m�s que, habitualmente, prestava servi�o dom�stico remunerado*/
@00313			V9040          $1.          /*N�mero de pessoas ocupadas, no m�s de refer�ncia, no empreendimento do trabalho principal da semana de refer�ncia*/
@00314			V9041          $1.          /*Forma contratada, verbalmente ou por escrito, para o c�lculo da remunera��o no trabalho principal da semana de refer�ncia*/
@00315			V9042          $1.          /*Tinha carteira de trabalho assinada no trabalho principal da semana de refer�ncia */
@00316			V9043          $1.          /*Recebeu aux�lio para moradia no m�s de refer�ncia*/
@00317			V9044          $1.          /*Recebeu aux�lio para alimenta��o no m�s de refer�ncia*/
@00318			V9045          $1.          /*Recebeu aux�lio para transporte no m�s de refer�ncia*/
@00319			V9046          $1.          /*Recebeu aux�lio para educa��o ou creche no m�s de refer�ncia*/
@00320			V9047          $1.          /*Recebeu aux�lio para sa�de ou reabilita��o no m�s de refer�ncia*/
@00321			V9048          $1.          /*N�mero de empregados, no m�s de refer�ncia, no empreendimento do trabalho principal da semana de refer�ncia*/
@00322			V9049          $1.          /*Tinha pelo menos um s�cio ocupado, no m�s de refer�ncia, no empreendimento do trabalho principal da semana de refer�ncia*/
@00323			V9050          $1.          /*N�mero de s�cios ocupados, no m�s de refer�ncia, no empreendimento do trabalho principal da semana de refer�ncia*/
@00324			V9051          $1.          /*Tinha pelo menos um trabalhador n�o remunerado, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00325			V9052          $1.          /*N�mero de trabalhadores n�o remunerados ocupados, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00326			V9531          $1.          /*C�digo 1 - recebia normalmente rendimento mensal em dinheiro, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00327			V9532          12.          /*Rendimento mensal em dinheiro que recebia normalmente, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00339			V9534          $1.          /*C�digo 3 - recebia normalmente rendimento mensal em produtos ou mercadorias, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00340			V9535          12.          /*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00352			V9537          $1.          /*C�digo 5 - recebia normalmente rendimento mensal somente em benef�cios, no m�s de refer�ncia, no trabalho principal da semana de refer�ncia*/
@00353			V90531          $1.          /*O empreendimento tem registro no Cadastro Nacional de Pessoa Jur�dica - CNPJ*/
@00354			V90532          $1.          /*Esse empreendimento possu�a fatura ou nota fiscal para emitir aos clientes*/
@00355			V90533          $1.          /*Esse empreendimento entregava contracheque a seus funcion�rios*/
@00356			V9054          $1.          /*Tipo de estabelecimento ou onde era exercido o trabalho principal da semana de refer�ncia*/
@00357			V9055		   $1.			/*Morava em domic�lio que estava no mesmo terreno ou �rea do estabelecimento em que tinha trabalho*/
@00358			V9056		   $1.			/*Ia direto do domic�lio em que morava para o trabalho*/
@00359			V9057		   $1.			/*Tempo de percurso di�rio de ida da resid�ncia para o local de trabalho*/
@00360			V9058		   2.			/*N�mero de horas habitualmente trabalhadas por semana no trabalho principal da semana de refer�ncia*/
@00362			V9059		   $1.			/*Era contribuinte para instituto de previd�ncia no trabalho principal da semana de refer�ncia*/
@00363			V9060		   $1.			/*Instituto de previd�ncia para o qual contribu�a no trabalho principal da semana de refer�ncia*/
@00364			V9611		   2.			/*N�mero de anos no trabalho principal da semana de refer�ncia, contados at� a data de refer�ncia*/
@00366			V9612		   2.			/*N�mero de meses no trabalho principal da semana de refer�ncia, contados at� a data de refer�ncia*/
@00368			V9062		   $1.			/*Saiu de algum trabalho no per�odo de capta��o de 358 dias*/
@00369			V9063		   $1.			/*De quantos trabalhos saiu no per�odo de capta��o de 358 dias*/
@00370			V9064		   2.			/*N�mero de meses que permaneceu nesse trabalho anterior no per�odo de capta��o de 358 dias*/
@00372			V9065		   $1.			/*Era empregado com carteira de trabalho assinada nesse trabalho anterior*/
@00373			V9066		   $1.			/*Recebeu seguro-desemprego depois que saiu desse emprego anterior*/
@00374			V9067		   $1.			/*Teve algum trabalho no per�odo de capta��o de 358 dias*/
@00375			V9068		   $1.			/*Exerceu tarefas em cultivo, pesca ou cria��o de animais, destinados � pr�pria alimenta��o das pessoas moradoras no domic�lio, no per�odo de capta��o de 358 dias*/
@00376			V9069		   $1.			/*Exerceu tarefas em constru��o de pr�dio, c�modo, po�o ou outras obras de constru��o, destinadas ao pr�prio uso das pessoas moradoras no domic�lio, no per�odo de capta��o de 358 dias*/
@00377			V9070		   $1.			/*De quantos trabalhos saiu no per�odo de capta��o de 358 dias*/
@00378			V9971		   $4.			/*C�digo da ocupa��o no trabalho anterior do per�odo de capta��o de 358 dias */
@00382			V9972		   $5.			/*C�digo da atividade principal do empreendimento no trabalho anterior do per�odo de capta��o de 358 dias*/
@00387			V9073		   $2.			/*Posi��o na ocupa��o no trabalho anterior do per�odo de capta��o de 358 dias*/
@00389			V9074		   $1.			/*Nesse emprego anterior recebia do empregador alguma �rea para produ��o particular*/
@00390			V9075		   $1.			/*Nesse emprego anterior tinha parceria com o empregador*/
@00391			V9076		   $1.			/*Condi��o em rela��o ao empreendimento agr�cola nesse trabalho anterior*/
@00392			V9077		   $1.			/*Posi��o na ocupa��o nesse trabalho anterior*/
@00393			V9078		   $1.			/*Setor do emprego nesse trabalho anterior*/
@00394			V9079		   $1.			/*�rea do emprego nesse trabalho anterior*/
@00395			V9080		   $1.			/*Era militar do Ex�rcito, Marinha de Guerra ou Aeron�utica nesse trabalho anterior*/
@00396			V9081		   $1.			/*Era funcion�rio p�blico estatut�rio nesse trabalho anterior*/
@00397			V9082		   $1.			/*Prestava servi�o dom�stico remunerado em mais de um domic�lio nos �ltimos 30 dias em que esteve nesse trabalho anterior*/
@00398			V9083		   $1.			/*Tinha carteira de trabalho assinada nesse trabalho anterior*/
@00399			V9084		   $1.			/*Ap�s sair desse emprego anterior, recebeu seguro-desemprego*/
@00400			V9085		   $1.			/*Era contribuinte de instituto de previd�ncia por esse trabalho anterior*/
@00401			V9861		   2.			/*N�mero de anos nesse trabalho anterior*/
@00403			V9862		   2.			/*N�mero de meses nesse trabalho anterior*/
@00405			V9087		   $1.			/*Era associado a algum sindicato no m�s de refer�ncia*/
@00406			V90871		   $1.			/*Embora n�o fosse associado, costumava participar de alguma atividade promovida por sindicato ligado a algum trabalho que teve no per�odo de refer�ncia de 365 dias*/
@00407			V908721		   $1.			/*Costumava participar de assembleias */
@00408			V908722		   $1.			/*Costumava participar de manifesta��es */
@00409			V908723		   $1.			/*Costumava participar de palestras, cursos ou debates */
@00410			V908724		   $1.			/*Costumava participar de eventos comemorativos*/
@00411			V908725		   $1.			/*Costumava participar de atividades de lazer ou esportivas */
@00412			V908726		   $1.			/*Costumava participar de outra atividade*/
@00413			V90873		   $1.			/*J� foi associado a algum sindicato anteriormente*/
@00414			V90874		   $1.			/*Motivo pelo qual n�o era associado a algum sindicato no m�s de refer�ncia*/
@00415			V9088		   $1.			/*Tipo de sindicato*/
@00416			V90881		   $1.			/* Motivo pelo qual se associou a esse sindicato*/
@00417			V90882		   $1.			/* Costuma utilizar algum servi�o oferecido por esse sindicato*/
@00418			V908831		   $1.			/* Costuma utilizar atendimento jur�dico*/
@00419			V908832		   $1.			/* Costuma utilizar conv�nio m�dico ou odontol�gico*/
@00420			V908833		   $1.			/* Costuma utilizar atendimento m�dico ou odontol�gico*/
@00421			V908834		   $1.			/* Costuma utilizar conv�nio com institui��o de ensino, curso ou creche*/
@00422			V908835		   $1.			/* Costuma utilizar conv�nio com estabelecimento comercial ou de servi�o (�tica, farm�cia, restaurante, academia de gin�stica etc)*/
@00423			V908836		   $1.			/* Costuma utilizar seguro de vida*/
@00424			V908837		   $1.			/* Costuma utilizar outro servi�o*/
@00425			V90884		   $1.			/* Costumava participar de alguma atividade promovida por esse sindicato*/
@00426			V908851		   $1.			/* Costumava participar de assembleias*/
@00427			V908852		   $1.			/* Costumava participar de manifesta��es*/
@00428			V908853		   $1.			/* Costumava participar de palestras, cursos ou debates*/
@00429			V908854		   $1.			/* Costumava participar de eventos comemorativos*/
@00430			V908855		   $1.			/* Costumava participar de atividades de lazer ou esportivas*/
@00431			V908856		   $1.			/* Costumava participar de outra atividade*/
@00432			V90886		   $1.			/* No m�s de refer�ncia, tinha algum cargo de representa��o dos trabalhadores na organiza��o desse sindicato*/
@00433			V90887		   $1.			/* No per�odo de 365 dias, houve participa��o desse sindicato em negocia��o ou diss�dio coletivo no trabalho principal que tinha na semana de refer�ncia*/
@00434			V908881		   $1.			/* Aspectos tratados em negocia��es referem-se a rendimentos monet�rios*/
@00435			V908882		   $1.			/* Aspectos tratados em negocia��es referem-se a benef�cios*/
@00436			V908883		   $1.			/* Aspectos tratados em negocia��es referem-se a jornada de trabalho*/
@00437			V908884		   $1.			/* Aspectos tratados em negocia��es referem-se a condi��es de sa�de e seguran�a no trabalho*/
@00438			V908885		   $1.			/* Aspectos tratados em negocia��es referem-se a treinamento ou capacita��o para o trabalho*/
@00439			V908886		   $1.			/* Aspectos tratados em negocia��es referem-se a igualdade de oportunidades e de tratamento*/
@00440			V908887		   $1.			/* Aspectos tratados em negocia��es referem-se a outro */
@00441			V9891		   $1.			/*Faixa de idade em que come�ou a trabalhar*/
@00442			V9892		   2.			/*Idade com que come�ou a trabalhar*/
@00444			V9990		   $4.			/*C�digo da ocupa��o no trabalho secund�rio da semana de refer�ncia*/
@00448			V9991		   $5.			/*C�digo da atividade principal do empreendimento no trabalho secund�rio da semana de refer�ncia*/
@00453			V9092		   $1.			/*Posi��o na ocupa��o no trabalho secund�rio da semana de refer�ncia*/
@00454			V9093		   $1.			/*Setor do emprego nesse trabalho secund�rio*/
@00455			V9094		   $1.			/*�rea do emprego nesse trabalho secund�rio*/
@00456			V9095		   $1.			/*Era militar do Ex�rcito, Marinha de Guerra ou Aeron�utica nesse trabalho secund�rio*/
@00457			V9096		   $1.			/*Era funcion�rio p�blico estatut�rio nesse trabalho secund�rio*/
@00458			V9097		   $1.			/*Tinha carteira de trabalho assinada nesse trabalho secund�rio */
@00459			V9981		   $1.			/*C�digo 2 - recebia normalmente rendimento mensal em dinheiro, no m�s de refer�ncia, nesse trabalho secund�rio*/
@00460			V9982		   12.			/*Rendimento mensal em dinheiro que recebia normalmente, no m�s de refer�ncia, nesse trabalho secund�rio*/
@00472			V9984		   $1.			/*C�digo 4 - recebia normalmente rendimento mensal em produtos ou mercadorias, no m�s de refer�ncia, nesse trabalho secund�rio*/
@00473			V9985		   12.			/*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente, no m�s de refer�ncia, nesse trabalho secund�rio*/
@00485			V9987		   $1.			/*C�digo 6 - recebia normalmente rendimento mensal somente em benef�cios, no m�s de refer�ncia, nesse trabalho secund�rio*/
@00486			V9099		   $1.			/*Era contribuinte de instituto de previd�ncia nesse trabalho secund�rio*/
@00487			V9100		   $1.			/*Instituto de previd�ncia para o qual contribu�a nesse emprego secund�rio*/
@00488			V9101		   2.			/*N�mero de horas habitualmente trabalhadas por semana nesse trabalho secund�rio*/
@00490			V1021		   $1.			/*C�digo 2 - recebia normalmente rendimento mensal em dinheiro, no m�s de refer�ncia, no(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00491			V1022		   12.			/*Rendimento mensal em dinheiro que recebia normalmente, no m�s de refer�ncia, no(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00503			V1024		   $1.			/*C�digo 4 - recebia normalmente rendimento mensal em produtos ou mercadorias, no m�s de refer�ncia, no(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00504			V1025		   12.			/*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente, no m�s de refer�ncia, no(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00516			V1027		   $1.			/*C�digo 6 - recebia normalmente rendimento mensal somente em benef�cios no m�s de refer�ncia, no(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00517			V1028		   $1.			/*C�digo 8 - era trabalhador n�o remunerado, no m�s de refer�ncia, no(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00518			V9103		   $1.			/*Era contribuinte de instituto de previd�ncia, por esse(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00519			V9104		   $1.			/*Instituto de previd�ncia para o qual contribu�a nesse(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00520			V9105		   2.			/*N�mero de horas habitualmente trabalhadas por semana nesse(s) outro(s) trabalho(s) da semana de refer�ncia*/
@00522			V9106		   $1.			/*Teve algum trabalho antes do per�odo de refer�ncia de 365 dias*/
@00523			V9107		   $1.			/*Exerceu tarefas em cultivo, pesca ou cria��o de animais, destinados � pr�pria alimenta��o das pessoas moradoras no domic�lio, antes do per�odo de refer�ncia de 365 dias*/
@00524			V9108		   $1.			/*Exerceu tarefas em constru��o de pr�dio, c�modo, po�o ou outras obras de constru��o, destinadas ao pr�prio uso das pessoas moradoras no domic�lio,  antes do per�odo de refer�ncia de 365 dias*/
@00525			V1091		   2.			/*N�mero de anos, contados at� a data de refer�ncia, desde que saiu do �ltimo trabalho*/
@00527			V1092		   2.			/*N�mero de meses, contados at� a data de refer�ncia, desde que saiu do �ltimo trabalho*/
@00529			V9910		   $4.			/*C�digo da ocupa��o no �timo trabalho que teve no per�odo de refer�ncia de menos de 4 anos*/
@00533			V9911		   $5.			/*C�digo da atividade principal do empreendimento nesse �ltimo trabalho que teve no per�odo de refer�ncia de menos de 4 anos*/
@00538			V9112		   $1.			/*Posi��o na ocupa��o no �ltimo trabalho no per�odo de refer�ncia de menos de 4 anos*/
@00539			V9113		   $1.			/*Era militar ou funcion�rio p�blico estatut�rio nesse �ltimo trabalho */
@00540			V9114		   $1.			/*Tinha carteira de trabalho assinada nesse �ltimo trabalho */
@00541			V9115		   $1.			/*Tomou alguma provid�ncia para conseguir trabalho na semana de refer�ncia*/
@00542			V9116		   $1.			/*Tomou alguma provid�ncia para conseguir trabalho no per�odo de capta��o de 23 dias*/
@00543			V9117		   $1.			/*Tomou alguma provid�ncia para conseguir trabalho no per�odo de capta��o de 30 dias*/
@00544			V9118		   $1.			/*Tomou alguma provid�ncia para conseguir trabalho no per�odo de capta��o de 305 dias*/
@00545			V9119		   $1.			/*�ltima provid�ncia que tomou para conseguir trabalho no per�odo de refer�ncia de 365 dias*/
@00546			V9120		   $1.			/*Era contribuinte de alguma entidade de previd�ncia privada, no m�s de refer�ncia*/
@00547			V9121		   $1.			/*Cuidava dos afazeres dom�sticos na semana de refer�ncia*/
@00548			V9921		   2.			/*N�mero de horas que dedicava normalmente por semana aos afazeres dom�sticos*/
@00550			V9122		   $1.			/*Era aposentado de instituto de previd�ncia federal (INSS), estadual ou municipal ou do governo federal na semana de refer�ncia*/
@00551			V9123		   $1.			/*Era pensionista de instituto de previd�ncia federal (INSS), estadual ou municipal ou do governo federal na semana de refer�ncia*/
@00552			V9124		   $1.			/*Recebia normalmente rendimento que n�o era proveniente de trabalho (pens�o aliment�cia ou de fundo de pens�o, abono de perman�ncia, aluguel, doa��o, juros de caderneta de poupan�a, dividendos ou outro qualquer */
@00553			V1251		   $2.			/*C�digo 01 - recebia normalmente rendimento de aposentadoria de instituto de previd�ncia ou do governo federal, no m�s de refer�ncia*/
@00555			V1252		   12.			/*Rendimento de aposentadoria de instituto de previd�ncia ou do governo federal que recebia, normalmente, no m�s de refer�ncia*/
@00567			V1254		   $2.			/*C�digo 02 - recebia normalmente rendimento de pens�o de instituto de previd�ncia ou do governo federal, no m�s de refer�ncia*/
@00569			V1255		   12.			/*Rendimento de pens�o de instituto de previd�ncia ou do governo federal que recebia, normalmente, no m�s de refer�ncia*/
@00581			V1257		   $2.			/*C�digo 03 - recebia normalmente rendimento de outro tipo de aposentadoria, no m�s de refer�ncia*/
@00583			V1258		   12.			/*Rendimento de outro tipo de aposentadoria que recebia, normalmente, no m�s de refer�ncia*/
@00595			V1260		   $2.			/*C�digo 04 - recebia normalmente rendimento de outro tipo de pens�o, no m�s de refer�ncia*/
@00597			V1261		   12.			/*Rendimento de outro tipo de pens�o que recebia, normalmente, no m�s de refer�ncia*/
@00609			V1263		   $2.			/*C�digo 05 - recebia normalmente rendimento de abono de perman�ncia, no m�s de refer�ncia*/
@00611			V1264		   12.			/*Rendimento de abono de perman�ncia que recebia, normalmente, no m�s de refer�ncia*/
@00623			V1266		   $2.			/*C�digo 06 - recebia normalmente rendimento de aluguel, no m�s de refer�ncia*/
@00625			V1267		   12.			/*Rendimento de aluguel que recebia, normalmente, no m�s de refer�ncia*/
@00637			V1269		   $2.			/*C�digo 07 - recebia normalmente rendimento de doa��o de n�o morador, no m�s de refer�ncia*/
@00639			V1270		   12.			/*Rendimento de doa��o de n�o morador que recebia, normalmente, no m�s de refer�ncia*/
@00651			V1272		   $2.			/*C�digo 08 - recebia normalmente juros de caderneta de poupan�a ou de outras aplica��es financeiras, dividendos, programas sociais ou outros rendimentos, no m�s de refer�ncia*/
@00653			V1273		   12.			/*Juros de caderneta de poupan�a e de outras aplica��es financeiras, dividendos, programas sociais e outros rendimentos que recebia, normalmente, no m�s de refer�ncia*/
@00665			V9126		   $1.			/*O informante desta parte foi*/
@00666			V1101		   $1.			/*Teve algum filho nascido vivo at� a data de refer�ncia*/
@00667			V1141		   $2.			/*N�mero de filhos tidos, do sexo masculino, que moravam no domic�lio*/
@00669			V1142		   $2.			/*N�mero de filhos tidos, do sexo feminino, que moravam no domic�lio*/
@00671			V1151		   $2.			/*N�mero de filhos tidos, do sexo masculino, ainda vivos que moravam em outro local qualquer*/
@00673			V1152		   $2.			/*N�mero de filhos tidos, do sexo feminino, ainda vivos que moravam em outro local qualquer*/
@00675			V1153		   $1.			/*C�digo 5 - N�o sabe o n�mero de filhos tidos, do sexo masculino, que moravam em outro local qualquer*/
@00676			V1154		   $1.			/*C�digo 7 - N�o sabe o n�mero de filhos tidos, do sexo feminino, que moravam em outro local qualquer*/
@00677			V1161		   $2.			/*N�mero de filhos tidos, do sexo masculino, que morreram*/
@00679			V1162		   $2.			/*N�mero de filhos tidos, do sexo feminino, que morreram*/
@00681			V1163		   $1.			/*C�digo 6 - N�o sabe o n�mero de filhos tidos, do sexo masculino, que j� morreram*/
@00682			V1164		   $1.			/*C�digo 8 - N�o sabe o n�mero de filhos tidos, do sexo feminino, que j� morreram*/
@00683			V1107		   $1.			/*Sexo do �ltimo filho tido nascido vivo at� a data de refer�ncia*/
@00684			V1181		   $2.			/*M�s de nascimento do �ltimo filho tido nascido vivo*/
@00686			V1182		   $4.			/*Ano de nascimento do �ltimo filho tido nascido vivo*/
@00690			V1109		   $1.			/*O �ltimo filho tido nascido vivo ainda estava vivo na data de refer�ncia*/
@00691			V1110		   $1.			/*Teve algum filho, com 7 meses ou mais de gesta��o, que nasceu morto at� a data de refer�ncia*/
@00692			V1111		   $2.			/*N�mero de filhos tidos nascidos mortos, do sexo masculino, at� a data de refer�ncia*/
@00694			V1112		   $2.			/*N�mero de filhos tidos nascidos mortos, do sexo feminino, at� a data de refer�ncia*/
@00696			V1113		   $1.			/*C�digo 5 - N�o sabe o n�mero de filhos tidos nascidos mortos, do sexo masculino, at� a data de refer�ncia*/
@00697			V1114		   $1.			/*C�digo 7 - N�o sabe o n�mero de filhos tidos nascidos mortos, do sexo feminino, at� a data de refer�ncia*/
@00698			V1115		   $1.			/*O informante desta parte foi*/
@00699			V4801		   $2.			/*N�vel de ensino, dura��o do ensino fundamental e s�rie que frequentavam (todos os estudantes)*/
@00701			V4802		   $2.			/*N�vel de ensino e grupos de s�ries do ensino fundamental que frequentavam (todos os estudantes)*/
@00703			V4803		   $2.			/*Anos de estudo (todas as pessoas)*/
@00705			V4704		   $1.			/*Condi��o de atividade*/
@00706			V4805		   $1.			/*Condi��o de ocupa��o no per�odo de refer�ncia de 365 dias*/
@00707			V4706		   $2.			/*Posi��o na ocupa��o no trabalho principal*/
@00709			V4707		   $1.			/*Horas habitualmente trabalhadas por semana em todos os trabalhos*/
@00710			V4808		   $1.			/*Atividade principal do empreendimento do trabalho principal */
@00711			V4809		   $2.			/*Grupamentos de atividade principal do empreendimento do trabalho principal */
@00713			V4810		   $2.			/*Grupamentos ocupacionais do trabalho principal*/
@00715			V4711		   $1.			/*Contribui��o para instituto de previd�ncia em qualquer trabalho */
@00716			V4812		   $1.			/*Atividade principal do empreendimento no trabalho principal do per�odo de refer�ncia de 365 dias*/
@00717			V4713		   $1.			/*Condi��o de atividade no trabalho principal do per�odo de refer�ncia de 365 dias*/
@00718			V4814		   $1.			/*Condi��o de ocupa��o no per�odo de refer�ncia de 365 dias*/
@00719			V4715		   $2.			/*Posi��o na ocupa��o no trabalho principal do per�odo de refer�ncia de 365 dias*/
@00721			V4816		   $2.			/*Grupamentos de atividade no trabalho principal do per�odo de refer�ncia de 365 dias*/
@00723			V4817		   $2.			/*Grupamentos ocupacionais do trabalho principal do per�odo de refer�ncia de 365 dias*/
@00725			V4718		   12.			/*Rendimento mensal do trabalho principal para pessoas de 10 anos ou mais de idade*/
@00737			V4719		   12.			/*Rendimento mensal de todos os trabalhos para pessoas de 10 anos ou mais de idade*/
@00749			V4720		   12.			/*Rendimento mensal de todas as fontes para pessoas de 10 anos ou mais de idade*/
@00761			V4721		   12.			/*Rendimento mensal domiciliar*/
@00773			V4722		   12.			/*Rendimento mensal familiar */
@00785			V4723		   $2.			/*Tipo de fam�lia*/
@00787			V4724		   $2.			/*N�mero de componentes da fam�lia */
@00789			V4727		   $1.			/*C�digo de �rea censit�ria*/
@00790			V4728		   $1.			/*C�digo de situa��o censit�ria*/
@00791			V4729		   5.			/*Peso da pessoa*/
@00796			V4732		   5.			/*Peso da fam�lia*/
@00801			V4735		   $1.			/*Controle da tabula��o de fecundidade, para mulheres com 10 anos ou mais de idade*/
@00802			V4838		   $1.			/*Grupos de anos de estudo*/
@00803			V6502		   $1.			/*Crian�a de 5 a 17 anos de idade*/
@00804			V4741		   2.			/*N�mero de componentes do dom�cilio */
@00806			V4742		   12.			/*Rendimento mensal domiciliar per capita */
@00818			V4743		   $2.			/*Faixa de rendimento mensal domiciliar per capita */
@00820			V4745		   $1.			/*N�vel de instru��o mais elevado alcan�ado*/
@00821			V4746		   $1.			/*Situa��o de ocupa��o na semana de refer�ncia das pessoas de 5 anos ou mais de idade*/
@00822			V4747		   $1.			/*Atividade principal do empreendimento do trabalho principal */
@00823			V4748		   $1.			/*Atividade principal do empreendimento do trabalho principal do per�odo de refer�ncia de 365 dias*/
@00824			V4749		   $1.			/*Situa��o de ocupa��o no per�odo de refer�ncia de 365 dias das pessoas de 5 anos ou mais de idade*/
@00825			V4750		   12.			/*Rendimento mensal familiar per capita */
@00837			V38011		   $2.			/*Primeiro respons�vel pela crian�a no domic�lio*/
@00839			V38012		   $2.			/*Segundo respons�vel pela crian�a no domic�lio*/
@00841			V3802		   $1.			/*Nos �ltimos tr�s meses normalmente, de segunda � sexta, onde a crian�a fica no per�odo da manh�*/
@00842			V3803		   $1.			/*Qual o principal motivo para a crian�a ficar neste local*/
@00843			V3804		   $1.			/*A crian�a fica o per�odo da tarde neste mesmo local e com a mesma pessoa?*/
@00844			V3805		   $1.			/*Nos �ltimos tr�s meses normalmente, de segunda � sexta, onde a crian�a fica no per�odo da tarde*/
@00845			V3806		   $1.			/*Qual o principal motivo para a crian�a ficar neste local*/
@00846			V3807		   $1.			/*Tem interesse em matricular a crian�a em creche ou escola*/
@00847			V3808		   $1.			/*Qual a principal a��o que o respons�vel pela crian�a tomou para obter uma vaga em creche ou escola*/
@00848			V3809		   $1.			/*Informante desta parte*/
@00849			V37001		   $1.			/*Marca de sele��o de pessoa para o Suplemento de Aspectos das Rela��es de Trabalho*/
@00850			V37002		   $1.			/*Tipo de entrevista*/
@00851			V3701		   $1.			/*Foi contratado por intermedi�rio no trabalho �nico ou principal da semana de refer�ncia*/
@00852			V3702		   $1.			/*Foi contratado por */
@00853			V3703		   $1.			/*Grau de satisfa��o quanto �s condi��es prometidas e encontradas efetivamente*/
@00854			V3704		   $1.			/*N�mero de horas efetivamente trabalhadas estava*/
@00855			V3705		   $1.			/*Sobre a altera��o do n�mero de horas trabalhadas em rela��o ao que tinha sido acordado*/
@00856			V3706		   $1.			/*Rendimento efetivamente recebido no trabalho da semana de refer�ncia estava*/
@00857			V37071		   $1.			/*Possu�a d�bito financeiro de aluguel que o impedia de sair do trabalho que tinha na semana de refer�ncia*/
@00858			V37072		   $1.			/*Possu�a d�bito financeiro de alimenta��o que o impedia de sair do trabalho que tinha na semana de refer�ncia*/
@00859			V37073		   $1.			/*Possu�a d�bito financeiro de instrumentos de trabalho que o impedia de sair do trabalho que tinha na semana de refer�ncia*/
@00860			V37074		   $1.			/*Possu�a d�bito financeiro de transporte que o impedia de sair do trabalho que tinha na semana de refer�ncia*/
@00861			V37075		   $1.			/*Possu�a outro d�bito financeiro que o impedia de sair do trabalho que tinha na semana de refer�ncia*/
@00862			V37091		   $1.			/*Grau de satisfa��o quanto ao sal�rio e complementos/gratifica��es salariais*/
@00863			V37092		   $1.			/*Grau de satisfa��o quanto ao valor do aux�lio alimenta��o*/
@00864			V37093		   $1.			/*Grau de satisfa��o quanto � jornada de trabalho*/
@00865			V37094		   $1.			/*Grau de satisfa��o quanto � flexibilidade de hor�rio*/
@00866			V37095		   $1.			/*Grau de satisfa��o quanto ao processo de capacita��o profissional*/
@00867			V37096		   $1.			/*Grau de satisfa��o quanto � promo��o de igualdade de oportunidades e de tratamento no trabalho*/
@00868			V37097		   $1.			/*Grau de satisfa��o quanto � salubridade e � seguran�a no ambiente de trabalho*/
@00869			V37098		   $1.			/*Grau de satisfa��o quanto aos benef�cios sociais complementares*/
@00870			V3719		   5.			/*Peso do morador selecionado para o Suplemento de Aspectos das rela��es de trabalho SEM ajuste pela proje��o de popula��o*/
@00875			V3720		   5.			/*Peso do morador selecionado para o Suplemento de Aspectos das rela��es de trabalho COM ajuste pela proje��o de popula��o - usado no c�lculo de indicadores de morador selecionado*/
@00880			V36001		   $1.   		/*Marca de sele��o de pessoa para o Suplemento de Pr�ticas de Esporte e Atividade F�sica*/
@00881			V36002		   $1.   		/*Tipo de entrevista*/
@00882			V3601 		   $1.   		/*No per�odo de refer�ncia de 365 dias, praticou algum esporte no tempo livre (fora do hor�rio de trabalho e de educa��o f�sica na escola)*/
@00883			V3602 		   $1.   		/*Por que motivo praticou esporte no per�odo de refer�ncia de 365 dias */
@00884			V3603 		   $1.   		/*Frequ�ncia com que costumava praticar esporte no per�odo de refer�ncia de 365 dias*/
@00885			V3604 		   $2.   		/*N�mero de meses em que praticou esporte com essa frequ�ncia*/
@00887			V3605 		   $1.   		/*Em dia que costumava praticar esporte, o tempo que normalmente dedicava era de*/
@00888			V3606 		   $1.   		/*No per�odo de refer�ncia de 365 dias, praticou mais de uma modalidade de esporte*/
@00889			V3607 		   $5.   		/*C�digo do principal esporte que praticou no per�odo de refer�ncia de 365 dias*/
@00894			V3608 		   $1.   		/*Costumava praticar esse esporte em*/
@00895			V3609 		   $1.   		/*Nesse per�odo, praticou esse principal esporte com orienta��o de professor ou instrutor*/
@00896			V3610 		   $1.   		/*Nesse per�odo, praticou esse principal esporte como representante ou filiado a alguma institui��o*/
@00897			V3611 		   $1.   		/*Essa institui��o era*/
@00898			V3612 		   $1.   		/*Nesse per�odo, participou de alguma competi��o desse principal esporte */
@00899			V3613 		   $1.   		/*O n�vel dessa competi��o foi*/
@00900			V3614 		   $1.   		/*No per�odo de 365 dias, al�m de todas as atividades de esporte, praticou alguma outra que considerava como atividade f�sica no seu tempo livre (fora do hor�rio de trabalho e da educa��o f�sica na escola)*/
@00901			V3615 		   $1.   		/*Por que motivo n�o praticou esporte no per�odo de refer�ncia de 365 dias */
@00902			V3616 		   $1.   		/*J� praticou algum esporte antes de 27 de setembro de 2014*/
@00903			V3617 		   $5.   		/*C�digo do �ltimo esporte que praticou anteriormente*/
@00908			V3618 		   $2.   		/*Idade com que deixou de praticar esporte*/
@00910			V3619 		   $1.   		/*Por que motivo parou de praticar esporte*/
@00911			V3620 		   $1.   		/*No per�odo de refer�ncia de 365 dias, praticou alguma atividade f�sica que n�o considera esporte, no seu tempo livre (fora do hor�rio de trabalho ou da educa��o f�sica na escola)*/
@00912			V3621 		   $1.   		/*Por que motivo praticou atividade f�sica no per�odo de refer�ncia de 365 dias */
@00913			V3622 		   $1.   		/*Frequ�ncia com que costumava praticar atividade f�sica no per�odo de refer�ncia de 365 dias*/
@00914			V3623 		   $2.   		/*N�mero de meses em que praticou atividade f�sica com essa frequ�ncia*/
@00916			V3624 		   $1.   		/*Em dia que costumava praticar atividade f�sica, o tempo que normalmente dedicava era de*/
@00917			V3625 		   $5.   		/*C�digo da atividade f�sica que praticou nesse per�odo*/
@00922			V3626 		   $1.   		/*Costumava praticar essa atividade f�sica em*/
@00923			V3627 		   $1.   		/*Nesse per�odo, praticou essa principal atividade f�sica com orienta��o de professor ou instrutor*/
@00924			V3628 		   $1.   		/*Nesse per�odo, praticou essa principal atividade f�sica como representante ou filiado a alguma institui��o*/
@00925			V3629 		   $1.   		/*Essa institui��o era*/
@00926			V3630 		   $1.   		/*Nesse per�odo, participou de alguma competi��o dessa principal atividade f�sica*/
@00927			V3631 		   $1.   		/*O n�vel dessa competi��o foi*/
@00928			V3632 		   $1.   		/*Em sua opini�o, o poder p�blico deveria investir no desenvolvimento de atividades f�sicas ou esportivas na vizinhan�a em que reside*/
@00929			V3633 		   $1.   		/*Em sua opini�o, em que o poder p�blico deveria investir primeiramente na vizinhan�a em que reside*/
@00930			V3634 		   $1.   		/*Esse investimento, na vizinhan�a em que reside, deveria ser primeiramente*/
@00931			V3637 		    5.   		/*Peso do morador selecionado para o Suplemento de Pr�ticas de Esporte e Atividade F�sica SEM ajuste pela proje��o de popula��o*/
@00936			V3638 		    5.   		/*Peso do morador selecionado para o Suplemento de Pr�ticas de Esporte e Atividade F�sica COM ajuste pela proje��o de popula��o - usado no c�lculo de indicadores de morador selecionado*/
@00941			V9993 		   $8.   		/*data de gera��o do arquivo de microdados*/

;
run;
