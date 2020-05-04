/*     PROGRAMA DE LEITURA EM SAS DO ARQUIVO DE MICRODADOS DE PESSOAS
    DA PNAD 2015 - PESQUISA BÁSICA E SUPLEMENTARES DE ACESSO À INTERNET E À TELEVISÃO, 
	  ASPECTOS DE CUIDADOS DAS CRIANÇAS COM MENOS DE 4 ANOS DE IDADE, ASPECTOS DAS 
	  RELAÇÕES DE TRABALHO, SINDICALIZAÇÃO E PRÁTICAS DE ESPORTE E ATIVIDADE FÍSICA */
				   
/* Obs.: As duas primeiras posições de V0102 (Número de controle)
        são o código da UF (Unidade da Federação).
   Obs.2: Ajuste o endereço do arquivo PES2015.TXT no comando INFILE */


DATA PES2015;
INFILE '...\dados\PES2015.TXT'  LRECL=948 MISSOVER;
INPUT   
@00001			V0101          $4.          /*Ano de referência*/
@00005			UF          $2.          /*Unidade da Federação*/
@00005			V0102          $8.          /*Número de controle*/
@00013			V0103          $3.          /*Número de série*/
@00016			V0301          $2.          /*Número de ordem*/
@00018			V0302          $1.          /*Sexo*/
@00019			V3031          $2.          /*Dia de nascimento*/
@00021			V3032          $2.          /*Mês de nascimento*/
@00023			V3033          $4.          /*Ano de nascimento*/
@00027			V8005          3.          /*Idade do morador na data de referência*/
@00030			V0401          $1.          /*Condição na unidade domiciliar*/
@00031			V0402          $1.          /*Condição na família*/
@00032			V0403          $1.          /*Número da família*/
@00033			V0404          $1.          /*Cor ou raça*/
@00034			V0405          $1.          /*Tem mãe viva*/
@00035			V0406          $1.          /*Mãe mora no domicílio*/
@00036			V0407          2.          /*Número de ordem da mãe */
@00038			V0408          $1.          /*Tem registro de nascimento*/
@00039			V4111          $1.          /*Vive em companhia de cônjuge ou companheiro(a)*/
@00040			V4112          $1.          /*Natureza da união*/
@00041			V4011          $1.          /*Estado civil*/
@00042			V0412          $1.          /*O informante desta parte foi*/
@00043			V0501          $1.          /*Nasceu no município de residência*/
@00044			V0502          $1.          /*Nasceu na Unidade da Federação de residência*/
@00045			V5030          $2.          /*Lugar de nascimento*/
@00047			V0504          $1.          /*Morou em outra Unidade da Federação ou país estrangeiro*/
@00048			V0505          $1.          /*Morava na Unidade da Federação na data de referência */
@00049			V5061          $1.          /*Tinha até 4 anos ininterruptos de residência na Unidade da Federação*/
@00050			V5062          $1.          /*Tempo de residência na Unidade da Federação (até 4 anos)*/
@00051			V5063          $1.          /*Tinha de 5 a 9 anos ininterruptos de residência na Unidade da Federação*/
@00052			V5064          $1.          /*Tempo de residência na Unidade da Federação (de 5 a 9 anos)*/
@00053			V5065          $1.          /*Tinha 10 anos ou mais de residência na Unidade da Federação*/
@00054			V0507          $1.          /*Morava na Unidade da Federação há 5 anos da data de referência*/
@00055			V5080          $2.          /*Lugar de residência há 5 anos da data de referência*/
@00057			V5090          $2.          /*Lugar de residência anterior*/
@00059			V0510          $1.          /*Morava no município na data de referência*/
@00060			V0511          $1.          /*Morou em outro município na Unidade da Federação*/
@00061			V5121          $1.          /*Tinha até 4 anos ininterruptos de residência no município*/
@00062			V5122          $1.          /*Tempo de residência no município (até 4 anos)*/
@00063			V5123          $1.          /*Tinha de 5 a 9 anos ininterruptos de residência no município*/
@00064			V5124          $1.          /*Tempo de residência no município (de 5 a 9 anos)*/
@00065			V5125          $1.          /*Tinha 10 anos ou mais de residência no município*/
@00066			V5126          $1.          /*O informante desta parte foi*/
@00067			V0601          $1.          /*Sabe ler e escrever*/
@00068			V0602          $1.          /*Frequenta escola ou creche*/
@00069			V6002          $1.          /*Rede de ensino*/
@00070			V6020          $1.          /*Área da rede pública de ensino*/
@00071			V6003          $2.          /*Curso que frequenta*/
@00073			V6030          $1.          /*Duração do ensino fundamental*/
@00074			V0604          $1.          /*O curso que frequenta é seriado*/
@00075			V0605          $1.          /*Série que frequenta*/
@00076			V0606          $1.          /*Anteriormente frequentou escola ou creche*/
@00077			V6007          $2.          /*Curso mais elevado que frequentou anteriormente*/
@00079			V6070          $1.          /*Duração do ensino fundamental que frequentou anteriormente*/
@00080			V0608          $1.          /*Este curso que frequentou anteriormente era seriado*/
@00081			V0609          $1.          /*Concluiu, com aprovação, pelo menos a 1ª série deste curso que frequentou anteriormente*/
@00082			V0610          $1.          /*Última série concluída com aprovação, neste curso que frequentou anteriormente*/
@00083			V0611          $1.          /*Concluiu este curso que frequentou anteriormente*/
@00084			V06111          $1.          /*Nos últimos três meses, utilizou a Internet em algum local*/
@00085			V061111          $1.          /*Nos últimos doze meses, utilizou a Internet em algum local*/
@00086			V061112          $1.          /*O acesso à Internet foi feito através de microcomputador*/
@00087			V061113          $1.          /*O acesso à Internet foi feito através de telefone celular*/
@00088			V061114          $1.          /*O acesso à Internet foi feito através de tablet*/
@00089			V061115          $1.          /*O acesso à Internet foi feito através de tv*/
@00090			V061116          $1.          /*O acesso à Internet foi feito através de outro equipamento eletrônico*/
@00091			V06112          $1.          /*Tem telefone móvel celular para uso pessoal*/
@00092			V0612          $1.          /*O informante desta parte foi*/
@00093			V0701          $1.          /*Teve algum trabalho no período de referência de 365 dias*/
@00094			V0702          $1.          /*Exerceu tarefas em cultivo, pesca ou criação de animais, destinados à própria alimentação das pessoas moradoras no domicílio, no período de referência de 365 dias*/
@00095			V0703          $1.          /*Exerceu tarefas em construção de prédio, cômodo, poço ou outras obras de construção, destinadas ao próprio uso das pessoas moradoras no domicílio, no período de referência de 365 dias*/
@00096			V0704          $1.          /*Trabalhou na semana de referência*/
@00097			V0705          $1.          /*Esteve afastado temporariamente do trabalho remunerado que tinha na semana de referência*/
@00098			V7060          $4.          /*Código da ocupação no trabalho do período de captação de 358 dias*/
@00102			V7070          $5.          /*Código da atividade principal do empreendimento no trabalho do período de captação de 358 dias*/
@00107			V0708          $1.          /*Posição na ocupação no trabalho do período de captação de 358 dias*/
@00108			V7090          $4.          /*Código da ocupação no trabalho da semana de referência*/
@00112			V7100          $5.          /*Código da atividade principal do empreendimento no trabalho da semana de referência*/
@00117			V0711          $1.          /*Posição na ocupação no trabalho da semana de referência*/
@00118			V7121          $1.          /*Código 2 - recebia normalmente rendimento mensal em dinheiro no mês de referência no(s) trabalho(s) da semana de referência*/
@00119			V7122          12.          /*Rendimento mensal em dinheiro que recebia normalmente no mês de referência no(s) trabalho(s) da semana de referência*/
@00131			V7124          $1.          /*Código 4 - recebia normalmente rendimento mensal em produtos ou mercadorias no mês de referência no(s) trabalho(s) da semana de referência*/
@00132			V7125          12.          /*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente no mês de referência no(s) trabalho(s) da semana de referência*/
@00144			V7127          $1.          /*Código 6 - recebia normalmente rendimento mensal somente em benefícios no mês de referência no(s) trabalho(s) da semana de referência*/
@00145			V7128          $1.          /*Código 8 - era trabalhador não remunerado no(s) trabalho(s) da semana de referência*/
@00146			V0713          2.          /*Número de horas habitualmente trabalhadas por semana no(s) trabalho(s) da semana de referência*/
@00148			V0714          $1.          /*Cuidava dos afazeres domésticos na semana de referência*/
@00149			V0715          2.          /*Número de horas que dedicava normalmente por semana aos afazeres domésticos*/
@00151			V0716          $1.          /*O informante desta parte foi*/
@00152			V9001          $1.          /*Trabalhou na semana de referência*/
@00153			V9002          $1.          /*Esteve afastado temporariamente do trabalho remunerado que tinha na semana de referência*/
@00154			V9003          $1.          /*Exerceu tarefas em cultivo, pesca ou criação de animais, destinados à própria alimentação das pessoas moradoras no domicílio, na semana de referência*/
@00155			V9004          $1.          /*Exerceu tarefas em construção de prédio, cômodo, poço ou outras obras de construção, destinadas ao próprio uso das pessoas moradoras no domicílio, na semana de referência*/
@00156			V9005          $1.          /*Número de trabalhos que tinha na semana de referência*/
@00157			V9906          $4.          /*Código da ocupação no trabalho principal da semana de referência*/
@00161			V9907          $5.          /*Código da atividade principal do empreendimento no trabalho principal da semana de referência*/
@00166			V9008          $2.          /*Posição na ocupação no trabalho principal da semana de referência*/
@00168			V9009          $1.          /*Recebia do empregador alguma área para produção particular*/
@00169			V9010          $1.          /*Tinha parceria com o empregador*/
@00170			V90101          $1.          /*Foi contratado somente por pessoa responsável pelo estabelecimento*/
@00171			V9011          $1.          /*Foi contratado somente por pessoa(s) responsável(véis) pelo(s) estabelecimento(s) em que trabalhou como empregado temporário no mês de referência*/
@00172			V9012          $1.          /*Foi contratado como empregado temporário, somente por intermediário (empresa empreiteira, empreiteiro, “gato”, etc.) no mês de referência*/
@00173			V90121          $1.          /*Foi contratado por intemédio de*/
@00174			V9013          $1.          /*Teve ajuda de trabalhador não remunerado membro da unidade domiciliar no mês de referência*/
@00175			V9014          $1.          /*Número de trabalhadores não remunerados membros da unidade domiciliar, independentemente da idade, que ajudaram à pessoa que era empregado no mês de referência*/
@00176			V9151          $1.          /*Código 1 - referente à 1ª parcela ou parcela única do empreendimento*/
@00177			V9152          11.          /*Área informada na 1ª parcela ou parcela única do empreendimento*/
@00188			V9154          7.          /*Equivalência em m², referente à unidade de medida de superfície em V9152*/
@00195			V9156          $1.          /*Código 3 - referente à 2ª parcela do empreendimento*/
@00196			V9157          11.          /*Área informada na 2ª parcela do empreendimento*/
@00207			V9159          7.          /*Equivalência em m², referente à unidade de medida de superfície em V9157*/
@00214			V9161          $1.          /*Código 5 - referente à 3ª parcela do empreendimento*/
@00215			V9162          11.          /*Área informada na 3ª parcela do empreendimento*/
@00226			V9164          7.          /*Equivalência em m², referente à unidade de medida de superfície em V9162*/
@00233			V9016          $1.          /*Tinha pelo menos um empregado temporário, no mês de referência, no trabalho principal da semana de referência*/
@00234			V9017          $1.          /*Número de empregados temporários, no mês de referência, no trabalho principal da semana de referência*/
@00235			V9018          $1.          /*Tinha pelo menos um empregado permanente, no mês de referência, no trabalho principal da semana de referência*/
@00236			V9019          $1.          /*Número de empregados permanentes, no mês de referência, no trabalho principal da semana de referência*/
@00237			V9201          $1.          /*Código 2 - referente à 1ª parcela ou parcela única do empreendimento*/
@00238			V9202          11.          /*Área informada na 1ª parcela ou parcela única do empreendimento*/
@00249			V9204          7.          /*Equivalência em m², referente à unidade de medida de superfície em V9202*/
@00256			V9206          $1.          /*Código 4 - referente à 2ª parcela do empreendimento*/
@00257			V9207          11.          /*Área informada na 2ª parcela do empreendimento*/
@00268			V9209          7.          /*Equivalência em m², referente à unidade de medida de superfície em V9207*/
@00275			V9211          $1.          /*Código 6 - referente à 3ª parcela do empreendimento*/
@00276			V9212          11.          /*Área informada na 3ª parcela do empreendimento*/
@00287			V9214          7.          /*Equivalência em m², referente à unidade de medida de superfície em V9212*/
@00294			V9021          $1.          /*Condição em relação ao empreendimento do grupamento agrícola*/
@00295			V9022          $1.          /*Parceria contratada neste trabalho*/
@00296			V9023          $1.          /*Forma contratada de pagamento pelo uso do bem, móvel ou imóvel, arrendado para o empreendimento*/
@00297			V9024          $1.          /*Assumiu, previamente, o compromisso de vender uma parte da produção principal do empreendimento no período de referência de 365 dias*/
@00298			V9025          $1.          /*Vendeu alguma parte da produção principal do empreendimento no período de referência de 365 dias*/
@00299			V9026          $1.          /*Comprador que adquiriu a totalidade, ou a maior parte, da produção principal do empreendimento que foi vendida no período de referência de 365 dias.*/
@00300			V9027          $1.          /*Algum tipo de produção desenvolvida no empreendimento foi consumida como alimentação pelos membros da unidade domiciliar no mês de referência*/
@00301			V9028          $1.          /*Parcela da alimentação consumida pelos membros da unidade domiciliar, no mês de referência, que foi retirada de produção desenvolvida no empreendimento*/
@00302			V9029          $1.          /*Posição na ocupação no trabalho principal da semana de referência*/
@00303			V9030          $1.          /*A jornada normal desse trabalho estava totalmente compreendida no período de 5 horas da manhã às 10 horas da noite*/
@00304			V9031          $1.          /*A jornada normal desse trabalho estava totalmente compreendida no período noturno de 10 horas da noite às 5 horas da manhã seguinte*/
@00305			V9032          $1.          /*Setor do emprego no trabalho principal da semana de referência*/
@00306			V9033          $1.          /*Área do emprego no trabalho principal da semana de referência*/
@00307			V9034          $1.          /*Era militar do Exército, Marinha de Guerra ou Aeronáutica no trabalho principal da semana de referência*/
@00308			V9035          $1.          /*Era funcionário público estatutário no trabalho principal da semana de referência*/
@00309			V9036          $1.          /*Prestava serviço doméstico remunerado em mais de um domicílio, no mês de referência*/
@00310			V9037          $1.          /*Exercia habitualmente esse trabalho pelo menos uma vez por semana*/
@00311			V9038          $1.          /*Número de dias por semana que, habitualmente, prestava serviço doméstico remunerado*/
@00312			V9039          $1.          /*Número de dias por mês que, habitualmente, prestava serviço doméstico remunerado*/
@00313			V9040          $1.          /*Número de pessoas ocupadas, no mês de referência, no empreendimento do trabalho principal da semana de referência*/
@00314			V9041          $1.          /*Forma contratada, verbalmente ou por escrito, para o cálculo da remuneração no trabalho principal da semana de referência*/
@00315			V9042          $1.          /*Tinha carteira de trabalho assinada no trabalho principal da semana de referência */
@00316			V9043          $1.          /*Recebeu auxílio para moradia no mês de referência*/
@00317			V9044          $1.          /*Recebeu auxílio para alimentação no mês de referência*/
@00318			V9045          $1.          /*Recebeu auxílio para transporte no mês de referência*/
@00319			V9046          $1.          /*Recebeu auxílio para educação ou creche no mês de referência*/
@00320			V9047          $1.          /*Recebeu auxílio para saúde ou reabilitação no mês de referência*/
@00321			V9048          $1.          /*Número de empregados, no mês de referência, no empreendimento do trabalho principal da semana de referência*/
@00322			V9049          $1.          /*Tinha pelo menos um sócio ocupado, no mês de referência, no empreendimento do trabalho principal da semana de referência*/
@00323			V9050          $1.          /*Número de sócios ocupados, no mês de referência, no empreendimento do trabalho principal da semana de referência*/
@00324			V9051          $1.          /*Tinha pelo menos um trabalhador não remunerado, no mês de referência, no trabalho principal da semana de referência*/
@00325			V9052          $1.          /*Número de trabalhadores não remunerados ocupados, no mês de referência, no trabalho principal da semana de referência*/
@00326			V9531          $1.          /*Código 1 - recebia normalmente rendimento mensal em dinheiro, no mês de referência, no trabalho principal da semana de referência*/
@00327			V9532          12.          /*Rendimento mensal em dinheiro que recebia normalmente, no mês de referência, no trabalho principal da semana de referência*/
@00339			V9534          $1.          /*Código 3 - recebia normalmente rendimento mensal em produtos ou mercadorias, no mês de referência, no trabalho principal da semana de referência*/
@00340			V9535          12.          /*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente, no mês de referência, no trabalho principal da semana de referência*/
@00352			V9537          $1.          /*Código 5 - recebia normalmente rendimento mensal somente em benefícios, no mês de referência, no trabalho principal da semana de referência*/
@00353			V90531          $1.          /*O empreendimento tem registro no Cadastro Nacional de Pessoa Jurídica - CNPJ*/
@00354			V90532          $1.          /*Esse empreendimento possuía fatura ou nota fiscal para emitir aos clientes*/
@00355			V90533          $1.          /*Esse empreendimento entregava contracheque a seus funcionários*/
@00356			V9054          $1.          /*Tipo de estabelecimento ou onde era exercido o trabalho principal da semana de referência*/
@00357			V9055		   $1.			/*Morava em domicílio que estava no mesmo terreno ou área do estabelecimento em que tinha trabalho*/
@00358			V9056		   $1.			/*Ia direto do domicílio em que morava para o trabalho*/
@00359			V9057		   $1.			/*Tempo de percurso diário de ida da residência para o local de trabalho*/
@00360			V9058		   2.			/*Número de horas habitualmente trabalhadas por semana no trabalho principal da semana de referência*/
@00362			V9059		   $1.			/*Era contribuinte para instituto de previdência no trabalho principal da semana de referência*/
@00363			V9060		   $1.			/*Instituto de previdência para o qual contribuía no trabalho principal da semana de referência*/
@00364			V9611		   2.			/*Número de anos no trabalho principal da semana de referência, contados até a data de referência*/
@00366			V9612		   2.			/*Número de meses no trabalho principal da semana de referência, contados até a data de referência*/
@00368			V9062		   $1.			/*Saiu de algum trabalho no período de captação de 358 dias*/
@00369			V9063		   $1.			/*De quantos trabalhos saiu no período de captação de 358 dias*/
@00370			V9064		   2.			/*Número de meses que permaneceu nesse trabalho anterior no período de captação de 358 dias*/
@00372			V9065		   $1.			/*Era empregado com carteira de trabalho assinada nesse trabalho anterior*/
@00373			V9066		   $1.			/*Recebeu seguro-desemprego depois que saiu desse emprego anterior*/
@00374			V9067		   $1.			/*Teve algum trabalho no período de captação de 358 dias*/
@00375			V9068		   $1.			/*Exerceu tarefas em cultivo, pesca ou criação de animais, destinados à própria alimentação das pessoas moradoras no domicílio, no período de captação de 358 dias*/
@00376			V9069		   $1.			/*Exerceu tarefas em construção de prédio, cômodo, poço ou outras obras de construção, destinadas ao próprio uso das pessoas moradoras no domicílio, no período de captação de 358 dias*/
@00377			V9070		   $1.			/*De quantos trabalhos saiu no período de captação de 358 dias*/
@00378			V9971		   $4.			/*Código da ocupação no trabalho anterior do período de captação de 358 dias */
@00382			V9972		   $5.			/*Código da atividade principal do empreendimento no trabalho anterior do período de captação de 358 dias*/
@00387			V9073		   $2.			/*Posição na ocupação no trabalho anterior do período de captação de 358 dias*/
@00389			V9074		   $1.			/*Nesse emprego anterior recebia do empregador alguma área para produção particular*/
@00390			V9075		   $1.			/*Nesse emprego anterior tinha parceria com o empregador*/
@00391			V9076		   $1.			/*Condição em relação ao empreendimento agrícola nesse trabalho anterior*/
@00392			V9077		   $1.			/*Posição na ocupação nesse trabalho anterior*/
@00393			V9078		   $1.			/*Setor do emprego nesse trabalho anterior*/
@00394			V9079		   $1.			/*Área do emprego nesse trabalho anterior*/
@00395			V9080		   $1.			/*Era militar do Exército, Marinha de Guerra ou Aeronáutica nesse trabalho anterior*/
@00396			V9081		   $1.			/*Era funcionário público estatutário nesse trabalho anterior*/
@00397			V9082		   $1.			/*Prestava serviço doméstico remunerado em mais de um domicílio nos últimos 30 dias em que esteve nesse trabalho anterior*/
@00398			V9083		   $1.			/*Tinha carteira de trabalho assinada nesse trabalho anterior*/
@00399			V9084		   $1.			/*Após sair desse emprego anterior, recebeu seguro-desemprego*/
@00400			V9085		   $1.			/*Era contribuinte de instituto de previdência por esse trabalho anterior*/
@00401			V9861		   2.			/*Número de anos nesse trabalho anterior*/
@00403			V9862		   2.			/*Número de meses nesse trabalho anterior*/
@00405			V9087		   $1.			/*Era associado a algum sindicato no mês de referência*/
@00406			V90871		   $1.			/*Embora não fosse associado, costumava participar de alguma atividade promovida por sindicato ligado a algum trabalho que teve no período de referência de 365 dias*/
@00407			V908721		   $1.			/*Costumava participar de assembleias */
@00408			V908722		   $1.			/*Costumava participar de manifestações */
@00409			V908723		   $1.			/*Costumava participar de palestras, cursos ou debates */
@00410			V908724		   $1.			/*Costumava participar de eventos comemorativos*/
@00411			V908725		   $1.			/*Costumava participar de atividades de lazer ou esportivas */
@00412			V908726		   $1.			/*Costumava participar de outra atividade*/
@00413			V90873		   $1.			/*Já foi associado a algum sindicato anteriormente*/
@00414			V90874		   $1.			/*Motivo pelo qual não era associado a algum sindicato no mês de referência*/
@00415			V9088		   $1.			/*Tipo de sindicato*/
@00416			V90881		   $1.			/* Motivo pelo qual se associou a esse sindicato*/
@00417			V90882		   $1.			/* Costuma utilizar algum serviço oferecido por esse sindicato*/
@00418			V908831		   $1.			/* Costuma utilizar atendimento jurídico*/
@00419			V908832		   $1.			/* Costuma utilizar convênio médico ou odontológico*/
@00420			V908833		   $1.			/* Costuma utilizar atendimento médico ou odontológico*/
@00421			V908834		   $1.			/* Costuma utilizar convênio com instituição de ensino, curso ou creche*/
@00422			V908835		   $1.			/* Costuma utilizar convênio com estabelecimento comercial ou de serviço (ótica, farmácia, restaurante, academia de ginástica etc)*/
@00423			V908836		   $1.			/* Costuma utilizar seguro de vida*/
@00424			V908837		   $1.			/* Costuma utilizar outro serviço*/
@00425			V90884		   $1.			/* Costumava participar de alguma atividade promovida por esse sindicato*/
@00426			V908851		   $1.			/* Costumava participar de assembleias*/
@00427			V908852		   $1.			/* Costumava participar de manifestações*/
@00428			V908853		   $1.			/* Costumava participar de palestras, cursos ou debates*/
@00429			V908854		   $1.			/* Costumava participar de eventos comemorativos*/
@00430			V908855		   $1.			/* Costumava participar de atividades de lazer ou esportivas*/
@00431			V908856		   $1.			/* Costumava participar de outra atividade*/
@00432			V90886		   $1.			/* No mês de referência, tinha algum cargo de representação dos trabalhadores na organização desse sindicato*/
@00433			V90887		   $1.			/* No período de 365 dias, houve participação desse sindicato em negociação ou dissídio coletivo no trabalho principal que tinha na semana de referência*/
@00434			V908881		   $1.			/* Aspectos tratados em negociações referem-se a rendimentos monetários*/
@00435			V908882		   $1.			/* Aspectos tratados em negociações referem-se a benefícios*/
@00436			V908883		   $1.			/* Aspectos tratados em negociações referem-se a jornada de trabalho*/
@00437			V908884		   $1.			/* Aspectos tratados em negociações referem-se a condições de saúde e segurança no trabalho*/
@00438			V908885		   $1.			/* Aspectos tratados em negociações referem-se a treinamento ou capacitação para o trabalho*/
@00439			V908886		   $1.			/* Aspectos tratados em negociações referem-se a igualdade de oportunidades e de tratamento*/
@00440			V908887		   $1.			/* Aspectos tratados em negociações referem-se a outro */
@00441			V9891		   $1.			/*Faixa de idade em que começou a trabalhar*/
@00442			V9892		   2.			/*Idade com que começou a trabalhar*/
@00444			V9990		   $4.			/*Código da ocupação no trabalho secundário da semana de referência*/
@00448			V9991		   $5.			/*Código da atividade principal do empreendimento no trabalho secundário da semana de referência*/
@00453			V9092		   $1.			/*Posição na ocupação no trabalho secundário da semana de referência*/
@00454			V9093		   $1.			/*Setor do emprego nesse trabalho secundário*/
@00455			V9094		   $1.			/*Área do emprego nesse trabalho secundário*/
@00456			V9095		   $1.			/*Era militar do Exército, Marinha de Guerra ou Aeronáutica nesse trabalho secundário*/
@00457			V9096		   $1.			/*Era funcionário público estatutário nesse trabalho secundário*/
@00458			V9097		   $1.			/*Tinha carteira de trabalho assinada nesse trabalho secundário */
@00459			V9981		   $1.			/*Código 2 - recebia normalmente rendimento mensal em dinheiro, no mês de referência, nesse trabalho secundário*/
@00460			V9982		   12.			/*Rendimento mensal em dinheiro que recebia normalmente, no mês de referência, nesse trabalho secundário*/
@00472			V9984		   $1.			/*Código 4 - recebia normalmente rendimento mensal em produtos ou mercadorias, no mês de referência, nesse trabalho secundário*/
@00473			V9985		   12.			/*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente, no mês de referência, nesse trabalho secundário*/
@00485			V9987		   $1.			/*Código 6 - recebia normalmente rendimento mensal somente em benefícios, no mês de referência, nesse trabalho secundário*/
@00486			V9099		   $1.			/*Era contribuinte de instituto de previdência nesse trabalho secundário*/
@00487			V9100		   $1.			/*Instituto de previdência para o qual contribuía nesse emprego secundário*/
@00488			V9101		   2.			/*Número de horas habitualmente trabalhadas por semana nesse trabalho secundário*/
@00490			V1021		   $1.			/*Código 2 - recebia normalmente rendimento mensal em dinheiro, no mês de referência, no(s) outro(s) trabalho(s) da semana de referência*/
@00491			V1022		   12.			/*Rendimento mensal em dinheiro que recebia normalmente, no mês de referência, no(s) outro(s) trabalho(s) da semana de referência*/
@00503			V1024		   $1.			/*Código 4 - recebia normalmente rendimento mensal em produtos ou mercadorias, no mês de referência, no(s) outro(s) trabalho(s) da semana de referência*/
@00504			V1025		   12.			/*Rendimento mensal em valor dos produtos ou mercadorias que recebia normalmente, no mês de referência, no(s) outro(s) trabalho(s) da semana de referência*/
@00516			V1027		   $1.			/*Código 6 - recebia normalmente rendimento mensal somente em benefícios no mês de referência, no(s) outro(s) trabalho(s) da semana de referência*/
@00517			V1028		   $1.			/*Código 8 - era trabalhador não remunerado, no mês de referência, no(s) outro(s) trabalho(s) da semana de referência*/
@00518			V9103		   $1.			/*Era contribuinte de instituto de previdência, por esse(s) outro(s) trabalho(s) da semana de referência*/
@00519			V9104		   $1.			/*Instituto de previdência para o qual contribuía nesse(s) outro(s) trabalho(s) da semana de referência*/
@00520			V9105		   2.			/*Número de horas habitualmente trabalhadas por semana nesse(s) outro(s) trabalho(s) da semana de referência*/
@00522			V9106		   $1.			/*Teve algum trabalho antes do período de referência de 365 dias*/
@00523			V9107		   $1.			/*Exerceu tarefas em cultivo, pesca ou criação de animais, destinados à própria alimentação das pessoas moradoras no domicílio, antes do período de referência de 365 dias*/
@00524			V9108		   $1.			/*Exerceu tarefas em construção de prédio, cômodo, poço ou outras obras de construção, destinadas ao próprio uso das pessoas moradoras no domicílio,  antes do período de referência de 365 dias*/
@00525			V1091		   2.			/*Número de anos, contados até a data de referência, desde que saiu do último trabalho*/
@00527			V1092		   2.			/*Número de meses, contados até a data de referência, desde que saiu do último trabalho*/
@00529			V9910		   $4.			/*Código da ocupação no útimo trabalho que teve no período de referência de menos de 4 anos*/
@00533			V9911		   $5.			/*Código da atividade principal do empreendimento nesse último trabalho que teve no período de referência de menos de 4 anos*/
@00538			V9112		   $1.			/*Posição na ocupação no último trabalho no período de referência de menos de 4 anos*/
@00539			V9113		   $1.			/*Era militar ou funcionário público estatutário nesse último trabalho */
@00540			V9114		   $1.			/*Tinha carteira de trabalho assinada nesse último trabalho */
@00541			V9115		   $1.			/*Tomou alguma providência para conseguir trabalho na semana de referência*/
@00542			V9116		   $1.			/*Tomou alguma providência para conseguir trabalho no período de captação de 23 dias*/
@00543			V9117		   $1.			/*Tomou alguma providência para conseguir trabalho no período de captação de 30 dias*/
@00544			V9118		   $1.			/*Tomou alguma providência para conseguir trabalho no período de captação de 305 dias*/
@00545			V9119		   $1.			/*Última providência que tomou para conseguir trabalho no período de referência de 365 dias*/
@00546			V9120		   $1.			/*Era contribuinte de alguma entidade de previdência privada, no mês de referência*/
@00547			V9121		   $1.			/*Cuidava dos afazeres domésticos na semana de referência*/
@00548			V9921		   2.			/*Número de horas que dedicava normalmente por semana aos afazeres domésticos*/
@00550			V9122		   $1.			/*Era aposentado de instituto de previdência federal (INSS), estadual ou municipal ou do governo federal na semana de referência*/
@00551			V9123		   $1.			/*Era pensionista de instituto de previdência federal (INSS), estadual ou municipal ou do governo federal na semana de referência*/
@00552			V9124		   $1.			/*Recebia normalmente rendimento que não era proveniente de trabalho (pensão alimentícia ou de fundo de pensão, abono de permanência, aluguel, doação, juros de caderneta de poupança, dividendos ou outro qualquer */
@00553			V1251		   $2.			/*Código 01 - recebia normalmente rendimento de aposentadoria de instituto de previdência ou do governo federal, no mês de referência*/
@00555			V1252		   12.			/*Rendimento de aposentadoria de instituto de previdência ou do governo federal que recebia, normalmente, no mês de referência*/
@00567			V1254		   $2.			/*Código 02 - recebia normalmente rendimento de pensão de instituto de previdência ou do governo federal, no mês de referência*/
@00569			V1255		   12.			/*Rendimento de pensão de instituto de previdência ou do governo federal que recebia, normalmente, no mês de referência*/
@00581			V1257		   $2.			/*Código 03 - recebia normalmente rendimento de outro tipo de aposentadoria, no mês de referência*/
@00583			V1258		   12.			/*Rendimento de outro tipo de aposentadoria que recebia, normalmente, no mês de referência*/
@00595			V1260		   $2.			/*Código 04 - recebia normalmente rendimento de outro tipo de pensão, no mês de referência*/
@00597			V1261		   12.			/*Rendimento de outro tipo de pensão que recebia, normalmente, no mês de referência*/
@00609			V1263		   $2.			/*Código 05 - recebia normalmente rendimento de abono de permanência, no mês de referência*/
@00611			V1264		   12.			/*Rendimento de abono de permanência que recebia, normalmente, no mês de referência*/
@00623			V1266		   $2.			/*Código 06 - recebia normalmente rendimento de aluguel, no mês de referência*/
@00625			V1267		   12.			/*Rendimento de aluguel que recebia, normalmente, no mês de referência*/
@00637			V1269		   $2.			/*Código 07 - recebia normalmente rendimento de doação de não morador, no mês de referência*/
@00639			V1270		   12.			/*Rendimento de doação de não morador que recebia, normalmente, no mês de referência*/
@00651			V1272		   $2.			/*Código 08 - recebia normalmente juros de caderneta de poupança ou de outras aplicações financeiras, dividendos, programas sociais ou outros rendimentos, no mês de referência*/
@00653			V1273		   12.			/*Juros de caderneta de poupança e de outras aplicações financeiras, dividendos, programas sociais e outros rendimentos que recebia, normalmente, no mês de referência*/
@00665			V9126		   $1.			/*O informante desta parte foi*/
@00666			V1101		   $1.			/*Teve algum filho nascido vivo até a data de referência*/
@00667			V1141		   $2.			/*Número de filhos tidos, do sexo masculino, que moravam no domicílio*/
@00669			V1142		   $2.			/*Número de filhos tidos, do sexo feminino, que moravam no domicílio*/
@00671			V1151		   $2.			/*Número de filhos tidos, do sexo masculino, ainda vivos que moravam em outro local qualquer*/
@00673			V1152		   $2.			/*Número de filhos tidos, do sexo feminino, ainda vivos que moravam em outro local qualquer*/
@00675			V1153		   $1.			/*Código 5 - Não sabe o número de filhos tidos, do sexo masculino, que moravam em outro local qualquer*/
@00676			V1154		   $1.			/*Código 7 - Não sabe o número de filhos tidos, do sexo feminino, que moravam em outro local qualquer*/
@00677			V1161		   $2.			/*Número de filhos tidos, do sexo masculino, que morreram*/
@00679			V1162		   $2.			/*Número de filhos tidos, do sexo feminino, que morreram*/
@00681			V1163		   $1.			/*Código 6 - Não sabe o número de filhos tidos, do sexo masculino, que já morreram*/
@00682			V1164		   $1.			/*Código 8 - Não sabe o número de filhos tidos, do sexo feminino, que já morreram*/
@00683			V1107		   $1.			/*Sexo do último filho tido nascido vivo até a data de referência*/
@00684			V1181		   $2.			/*Mês de nascimento do último filho tido nascido vivo*/
@00686			V1182		   $4.			/*Ano de nascimento do último filho tido nascido vivo*/
@00690			V1109		   $1.			/*O último filho tido nascido vivo ainda estava vivo na data de referência*/
@00691			V1110		   $1.			/*Teve algum filho, com 7 meses ou mais de gestação, que nasceu morto até a data de referência*/
@00692			V1111		   $2.			/*Número de filhos tidos nascidos mortos, do sexo masculino, até a data de referência*/
@00694			V1112		   $2.			/*Número de filhos tidos nascidos mortos, do sexo feminino, até a data de referência*/
@00696			V1113		   $1.			/*Código 5 - Não sabe o número de filhos tidos nascidos mortos, do sexo masculino, até a data de referência*/
@00697			V1114		   $1.			/*Código 7 - Não sabe o número de filhos tidos nascidos mortos, do sexo feminino, até a data de referência*/
@00698			V1115		   $1.			/*O informante desta parte foi*/
@00699			V4801		   $2.			/*Nível de ensino, duração do ensino fundamental e série que frequentavam (todos os estudantes)*/
@00701			V4802		   $2.			/*Nível de ensino e grupos de séries do ensino fundamental que frequentavam (todos os estudantes)*/
@00703			V4803		   $2.			/*Anos de estudo (todas as pessoas)*/
@00705			V4704		   $1.			/*Condição de atividade*/
@00706			V4805		   $1.			/*Condição de ocupação no período de referência de 365 dias*/
@00707			V4706		   $2.			/*Posição na ocupação no trabalho principal*/
@00709			V4707		   $1.			/*Horas habitualmente trabalhadas por semana em todos os trabalhos*/
@00710			V4808		   $1.			/*Atividade principal do empreendimento do trabalho principal */
@00711			V4809		   $2.			/*Grupamentos de atividade principal do empreendimento do trabalho principal */
@00713			V4810		   $2.			/*Grupamentos ocupacionais do trabalho principal*/
@00715			V4711		   $1.			/*Contribuição para instituto de previdência em qualquer trabalho */
@00716			V4812		   $1.			/*Atividade principal do empreendimento no trabalho principal do período de referência de 365 dias*/
@00717			V4713		   $1.			/*Condição de atividade no trabalho principal do período de referência de 365 dias*/
@00718			V4814		   $1.			/*Condição de ocupação no período de referência de 365 dias*/
@00719			V4715		   $2.			/*Posição na ocupação no trabalho principal do período de referência de 365 dias*/
@00721			V4816		   $2.			/*Grupamentos de atividade no trabalho principal do período de referência de 365 dias*/
@00723			V4817		   $2.			/*Grupamentos ocupacionais do trabalho principal do período de referência de 365 dias*/
@00725			V4718		   12.			/*Rendimento mensal do trabalho principal para pessoas de 10 anos ou mais de idade*/
@00737			V4719		   12.			/*Rendimento mensal de todos os trabalhos para pessoas de 10 anos ou mais de idade*/
@00749			V4720		   12.			/*Rendimento mensal de todas as fontes para pessoas de 10 anos ou mais de idade*/
@00761			V4721		   12.			/*Rendimento mensal domiciliar*/
@00773			V4722		   12.			/*Rendimento mensal familiar */
@00785			V4723		   $2.			/*Tipo de família*/
@00787			V4724		   $2.			/*Número de componentes da família */
@00789			V4727		   $1.			/*Código de área censitária*/
@00790			V4728		   $1.			/*Código de situação censitária*/
@00791			V4729		   5.			/*Peso da pessoa*/
@00796			V4732		   5.			/*Peso da família*/
@00801			V4735		   $1.			/*Controle da tabulação de fecundidade, para mulheres com 10 anos ou mais de idade*/
@00802			V4838		   $1.			/*Grupos de anos de estudo*/
@00803			V6502		   $1.			/*Criança de 5 a 17 anos de idade*/
@00804			V4741		   2.			/*Número de componentes do domícilio */
@00806			V4742		   12.			/*Rendimento mensal domiciliar per capita */
@00818			V4743		   $2.			/*Faixa de rendimento mensal domiciliar per capita */
@00820			V4745		   $1.			/*Nível de instrução mais elevado alcançado*/
@00821			V4746		   $1.			/*Situação de ocupação na semana de referência das pessoas de 5 anos ou mais de idade*/
@00822			V4747		   $1.			/*Atividade principal do empreendimento do trabalho principal */
@00823			V4748		   $1.			/*Atividade principal do empreendimento do trabalho principal do período de referência de 365 dias*/
@00824			V4749		   $1.			/*Situação de ocupação no período de referência de 365 dias das pessoas de 5 anos ou mais de idade*/
@00825			V4750		   12.			/*Rendimento mensal familiar per capita */
@00837			V38011		   $2.			/*Primeiro responsável pela criança no domicílio*/
@00839			V38012		   $2.			/*Segundo responsável pela criança no domicílio*/
@00841			V3802		   $1.			/*Nos últimos três meses normalmente, de segunda à sexta, onde a criança fica no período da manhã*/
@00842			V3803		   $1.			/*Qual o principal motivo para a criança ficar neste local*/
@00843			V3804		   $1.			/*A criança fica o período da tarde neste mesmo local e com a mesma pessoa?*/
@00844			V3805		   $1.			/*Nos últimos três meses normalmente, de segunda à sexta, onde a criança fica no período da tarde*/
@00845			V3806		   $1.			/*Qual o principal motivo para a criança ficar neste local*/
@00846			V3807		   $1.			/*Tem interesse em matricular a criança em creche ou escola*/
@00847			V3808		   $1.			/*Qual a principal ação que o responsável pela criança tomou para obter uma vaga em creche ou escola*/
@00848			V3809		   $1.			/*Informante desta parte*/
@00849			V37001		   $1.			/*Marca de seleção de pessoa para o Suplemento de Aspectos das Relações de Trabalho*/
@00850			V37002		   $1.			/*Tipo de entrevista*/
@00851			V3701		   $1.			/*Foi contratado por intermediário no trabalho único ou principal da semana de referência*/
@00852			V3702		   $1.			/*Foi contratado por */
@00853			V3703		   $1.			/*Grau de satisfação quanto às condições prometidas e encontradas efetivamente*/
@00854			V3704		   $1.			/*Número de horas efetivamente trabalhadas estava*/
@00855			V3705		   $1.			/*Sobre a alteração do número de horas trabalhadas em relação ao que tinha sido acordado*/
@00856			V3706		   $1.			/*Rendimento efetivamente recebido no trabalho da semana de referência estava*/
@00857			V37071		   $1.			/*Possuía débito financeiro de aluguel que o impedia de sair do trabalho que tinha na semana de referência*/
@00858			V37072		   $1.			/*Possuía débito financeiro de alimentação que o impedia de sair do trabalho que tinha na semana de referência*/
@00859			V37073		   $1.			/*Possuía débito financeiro de instrumentos de trabalho que o impedia de sair do trabalho que tinha na semana de referência*/
@00860			V37074		   $1.			/*Possuía débito financeiro de transporte que o impedia de sair do trabalho que tinha na semana de referência*/
@00861			V37075		   $1.			/*Possuía outro débito financeiro que o impedia de sair do trabalho que tinha na semana de referência*/
@00862			V37091		   $1.			/*Grau de satisfação quanto ao salário e complementos/gratificações salariais*/
@00863			V37092		   $1.			/*Grau de satisfação quanto ao valor do auxílio alimentação*/
@00864			V37093		   $1.			/*Grau de satisfação quanto à jornada de trabalho*/
@00865			V37094		   $1.			/*Grau de satisfação quanto à flexibilidade de horário*/
@00866			V37095		   $1.			/*Grau de satisfação quanto ao processo de capacitação profissional*/
@00867			V37096		   $1.			/*Grau de satisfação quanto à promoção de igualdade de oportunidades e de tratamento no trabalho*/
@00868			V37097		   $1.			/*Grau de satisfação quanto à salubridade e à segurança no ambiente de trabalho*/
@00869			V37098		   $1.			/*Grau de satisfação quanto aos benefícios sociais complementares*/
@00870			V3719		   5.			/*Peso do morador selecionado para o Suplemento de Aspectos das relações de trabalho SEM ajuste pela projeção de população*/
@00875			V3720		   5.			/*Peso do morador selecionado para o Suplemento de Aspectos das relações de trabalho COM ajuste pela projeção de população - usado no cálculo de indicadores de morador selecionado*/
@00880			V36001		   $1.   		/*Marca de seleção de pessoa para o Suplemento de Práticas de Esporte e Atividade Física*/
@00881			V36002		   $1.   		/*Tipo de entrevista*/
@00882			V3601 		   $1.   		/*No período de referência de 365 dias, praticou algum esporte no tempo livre (fora do horário de trabalho e de educação física na escola)*/
@00883			V3602 		   $1.   		/*Por que motivo praticou esporte no período de referência de 365 dias */
@00884			V3603 		   $1.   		/*Frequência com que costumava praticar esporte no período de referência de 365 dias*/
@00885			V3604 		   $2.   		/*Número de meses em que praticou esporte com essa frequência*/
@00887			V3605 		   $1.   		/*Em dia que costumava praticar esporte, o tempo que normalmente dedicava era de*/
@00888			V3606 		   $1.   		/*No período de referência de 365 dias, praticou mais de uma modalidade de esporte*/
@00889			V3607 		   $5.   		/*Código do principal esporte que praticou no período de referência de 365 dias*/
@00894			V3608 		   $1.   		/*Costumava praticar esse esporte em*/
@00895			V3609 		   $1.   		/*Nesse período, praticou esse principal esporte com orientação de professor ou instrutor*/
@00896			V3610 		   $1.   		/*Nesse período, praticou esse principal esporte como representante ou filiado a alguma instituição*/
@00897			V3611 		   $1.   		/*Essa instituição era*/
@00898			V3612 		   $1.   		/*Nesse período, participou de alguma competição desse principal esporte */
@00899			V3613 		   $1.   		/*O nível dessa competição foi*/
@00900			V3614 		   $1.   		/*No período de 365 dias, além de todas as atividades de esporte, praticou alguma outra que considerava como atividade física no seu tempo livre (fora do horário de trabalho e da educação física na escola)*/
@00901			V3615 		   $1.   		/*Por que motivo não praticou esporte no período de referência de 365 dias */
@00902			V3616 		   $1.   		/*Já praticou algum esporte antes de 27 de setembro de 2014*/
@00903			V3617 		   $5.   		/*Código do último esporte que praticou anteriormente*/
@00908			V3618 		   $2.   		/*Idade com que deixou de praticar esporte*/
@00910			V3619 		   $1.   		/*Por que motivo parou de praticar esporte*/
@00911			V3620 		   $1.   		/*No período de referência de 365 dias, praticou alguma atividade física que não considera esporte, no seu tempo livre (fora do horário de trabalho ou da educação física na escola)*/
@00912			V3621 		   $1.   		/*Por que motivo praticou atividade física no período de referência de 365 dias */
@00913			V3622 		   $1.   		/*Frequência com que costumava praticar atividade física no período de referência de 365 dias*/
@00914			V3623 		   $2.   		/*Número de meses em que praticou atividade física com essa frequência*/
@00916			V3624 		   $1.   		/*Em dia que costumava praticar atividade física, o tempo que normalmente dedicava era de*/
@00917			V3625 		   $5.   		/*Código da atividade física que praticou nesse período*/
@00922			V3626 		   $1.   		/*Costumava praticar essa atividade física em*/
@00923			V3627 		   $1.   		/*Nesse período, praticou essa principal atividade física com orientação de professor ou instrutor*/
@00924			V3628 		   $1.   		/*Nesse período, praticou essa principal atividade física como representante ou filiado a alguma instituição*/
@00925			V3629 		   $1.   		/*Essa instituição era*/
@00926			V3630 		   $1.   		/*Nesse período, participou de alguma competição dessa principal atividade física*/
@00927			V3631 		   $1.   		/*O nível dessa competição foi*/
@00928			V3632 		   $1.   		/*Em sua opinião, o poder público deveria investir no desenvolvimento de atividades físicas ou esportivas na vizinhança em que reside*/
@00929			V3633 		   $1.   		/*Em sua opinião, em que o poder público deveria investir primeiramente na vizinhança em que reside*/
@00930			V3634 		   $1.   		/*Esse investimento, na vizinhança em que reside, deveria ser primeiramente*/
@00931			V3637 		    5.   		/*Peso do morador selecionado para o Suplemento de Práticas de Esporte e Atividade Física SEM ajuste pela projeção de população*/
@00936			V3638 		    5.   		/*Peso do morador selecionado para o Suplemento de Práticas de Esporte e Atividade Física COM ajuste pela projeção de população - usado no cálculo de indicadores de morador selecionado*/
@00941			V9993 		   $8.   		/*data de geração do arquivo de microdados*/

;
run;
