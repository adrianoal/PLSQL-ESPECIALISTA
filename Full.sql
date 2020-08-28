---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
					-- Oracle PL/SQL Especialista: do Básico ao Avançado --
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 1:Oracle PL/SQL Especialista: do Básico ao Avançado

1.Apresentação do curso 

Prof. Emílio Scudeiro
Diretor de Tecnologia da IT Architect

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 2:PL/SQL Fundamentos - Instalação do Oracle Database 18c


2.Download e Instalação do Oracle Database 18c XE
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
3.Startup e Shutdown da instância e Serviços do Oracle Database 18c XE

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
4.Configurando Serviços Listener e Oracle no Windows

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
5.Criando e testando uma conexão com o Oracle Database 18c XE

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 3:PL/SQL Fundamentos - Instalação do Oracle SQL Developer


6.Download instalação e configuração de conexões do Oracle SQL Developer

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 4:PL/SQL Fundamentos - Visão geral do Oracle PL/SQL 

 Introdução:
 -----------
 
 * PL/SQL - É um acrónimo para a expressão Procedural Languagem / Structured Query Language
 
 No SQL -->
	SELECT * FROM: Exemplo
 
		Quando um comando SQL é executado, existem um tráfego de rede, ou seja, o SQL Developer
		ou (PL/SQL Developer) enviar pela rede o comando para o Banco de Dados, que processa e 
		devolve pela rede para ou SQL Developer ou (PL/SQL Developer). 
		
 No PL/SQL --> Não tem tráfego de rede	, apenas a chamada do Objeto que está dentro do banco
 de dados. Com isso tem um ganho de performance, pq diminue o tráfego de rede.
 
--
-- Seção 4 - Visão Geral do Oracle PL/SQL
--
-- Aula 1 - Visão Geral do Oracle PL/SQL
-- 

-- Bloco Anônimo - Exemplo

--
-- Seção 4 - Visão Geral do Oracle PL/SQL
--
-- Aula 1 - Visão Geral do Oracle PL/SQL
-- 

-- Bloco Anônimo - Exemplo

SET SERVEROUTPUT ON
DECLARE
  vTexto  VARCHAR2(100) := 'Seja bem vindo ao PL/SQL';
BEGIN
  DBMS_OUTPUT.PUT_LINE(vTexto);
EXCEPTION
  WHEN OTHERS 
  THEN 
    DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 5:PL/SQL Fundamentos - Bloco Anônimo 

--
-- Seção 5 Bloco Anônimo
--
-- Aula 1 - Bloco Anônimo
-- 

-- Bloco Anônimo - Exemplo

SET SERVEROUTPUT ON -- P/ Habilitar o Buffer de saida da Package DBMS_OUTPUT...
DECLARE
  vNumero1  NUMBER(11,2) := 2000;
  vNumero2  NUMBER(11,2) := 5000;
  vMedia    NUMBER(11,2);
BEGIN
  vMedia := (vnumero1 + vnumero2) / 2;
  DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);
EXCEPTION
  WHEN OTHERS 
  THEN 
    DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 6:PL/SQL Fundamentos - Declaração de identificadores - Variáveis


9.Definindo identificadores - variáveis 
--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 1 - Definindo Identificadores – Variáveis
--
-- 

 UTILIZAÇÃO DE VARIÁVEIS:
 ------------------------
 
 * Armazenamento temporário de dados
 * Manipulação dos valores armazenados
 * Reutilização
 * Facilidade de manutenção

 IDENTIFICADORES:
 ----------------
 
 * Identificadores é um nome genérico para nomear itens e unidades de programas PL/SQL,
   que incluem constantes, variáveis, exceções, cursores, procedures, funcões e Packages.


-- Declarando Variáveis 

-- Declarando uma variável Tipo NUMBER


-- Quoted Identifiers(Entre aspas duplas)
-- Exemplo:
DECLARE
	"NUMBER" NUMBER := 1; -- Isso funciona, porem, nao e uma boa pratica. 
						  -- Bom saber, caso caia na prova de certificação
						  -- Nome de variáveis deve conter no maximo 30 caracteres iniciado por 1 letra


--Literal String - Exemplo
BEGIN
	vtexto:='String de caracteres'; -- E uma string com aspas simples
	vdata:='28/01/2020'; 			-- E uma string com aspas simples


--Literal Numérico - Exemplo
BEGIN
vvalor:= 5000;    -- Notacao decimal
vvalor2:= 2638E8; -- Notacao cientifica
Vdouble:= 2.0d;   -- Notacao double 
vfloat:= 2.0f;	  -- Notação float


--Literal Boleano - Exemplo
BEGIN
vboleano:= TRUE
vboleano:= FALSE
vboleano:= NULL



SET SERVEROUTPUT ON
DECLARE
  vNumero    NUMBER(11,2) := 1200.50;
  
BEGIN
  DBMS_OUTPUT.PUT_LINE('Numero = ' ||   vNumero);

END;

-- Declarando variáveis Tipo CHAR e VARCHAR2

SET SERVEROUTPUT ON
DECLARE
  vCaracterTamFixo     CHAR(2) := 'RS';
  vCaracterTamVariavel VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo );
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCaracterTamVariavel );
  
END;

-- Declarando variáveis Tipo DATE

SET SERVEROUTPUT ON
DECLARE
  vData1     DATE := '29/04/20';   -- Aqui ocorre a conversao implicita de string p/ data. O Oracle faz automaticamente
  vData2     DATE := '29/04/2020'; -- Aqui ocorre a conversao implicita de string p/ data. O Oracle faz automaticamente
BEGIN
  DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1 );
  DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2 );
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
10.Definindo Identificadores - Constantes

--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 2 - Definindo Identificadores – Constantes
--
-- 

-- Declarando Constantes

-- Declarando uma Constante Tipo NUMBER

SET SERVEROUTPUT ON
DECLARE
  vPi    CONSTANT NUMBER(38,15) := 3.141592653589793;
  
BEGIN
  DBMS_OUTPUT.PUT_LINE('Pi = ' ||   vPi);

END;
-- Obs: O valor de constantes não são muito usados em abientes corporativos, é mais para sistemas
     -- ciêntíficos, conforme o exemplo acima que guarda o valor de PI.



-- Declarando Constante Tipo CHAR e VARCHAR2

SET SERVEROUTPUT ON
DECLARE
  vCaracterTamFixo     CONSTANT CHAR(2) := 'RS';
  vCaracterTamVariavel CONSTANT VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo );
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCaracterTamVariavel );
  
END;

-- Declarando variáveis Tipo DATE

SET SERVEROUTPUT ON
DECLARE
  vData1     DATE := '29/04/20';
  vData2     DATE := '29/04/2020';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1 );
  DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2 );
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
11.Tipos de Dados no PL/SQL Datatypes

--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 3 - Tipos de Dados no PL/SQL - Datatypes
--

-- Declarando Variáveis utilizando os principais Tipos de Dados

-- Tipo de dados ESCALAR podem ser classificados em quatro categorias:

-- NUMÉRICO (P,S) --> Precição/Escala máximo de dígitos p/ naumber é 38
-- CARACTERE
-- DATA
-- BOOLEANO 


-- Obs: No SQL o tamanho máximo para VARCHAR é de apenas 2.000 bytes
--		No SQL o tamanho máximo para VARCHAR2 é de apenas 4.000 bytes
--		No SQL o tamanho máximo para LONG é de apenas 2G -1 byte

SET SERVEROUTPUT ON
DECLARE
  vNumero              NUMBER(11,2) := 1200.50;
  vCaracterTamFixo     CHAR(100) := 'Texto de Tamanho Fixo de até 32767 bytes';
  vCaracterTamVariavel VARCHAR2(100) := 'Texto Tamanho variável de até 32767 bytes'; 
  vBooleano            BOOLEAN := TRUE;
  vData                DATE := sysdate;
  vLong                LONG := 'Texto Tamanho variável de até 32760 bytes';
  vRowid               ROWID; -- Pseudocoluna, endereco logico de uma linha, uma string de 18 caracteres
  vTimestamp           TIMESTAMP := systimestamp; -- uma alternativa para o tipo DATE, armazena data com até 9 dig de segundos apos o decimal
  vTimestamptz         TIMESTAMP WITH TIME ZONE := systimestamp; -- Armazena a data de acordo com fuso horario do servidor do BD. Se estiver em NY, horario de la
  vCaracterTamFixoUniversal     NCHAR(100) := 'Texto de Tamanho Fixo Universal de até 32767 bytes'; -- Suporta qualquer lingua do mundo
  vCaracterTamVariavelUniversal NVARCHAR2(100) := 'Texto Tamanho variável Universal de até 32767 bytes'; -- Suporta qualquer lingua do mundo
  vNumeroInteiro       BINARY_INTEGER := 1200; -- P/ armazenamento de numeros inteiros, sem decimais. Faixa entre -2.147.483.648 até 2.147483.647 como 32 bits ou 4 bytes
  vNumeroFloat         BINARY_FLOAT := 15000000; -- Alternativa ao number. Number fica armazenado utilizando a notacao decimal. BINARY_FLOAT fica armazenado com notacao ponto flutuante. Precisao (32 bits)
  vNumeroDouble        BINARY_DOUBLE := 15000000; -- Alternativa ao number. Number fica armazenado utilizando a notacao decimal. BINARY_DOUBLE fica armazenado com notacao ponto flutuante. Precisao (64 bits)
BEGIN
  DBMS_OUTPUT.PUT_LINE('Numero = ' ||   vNumero);
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo );
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCaracterTamVariavel );
  IF  vBooleano = TRUE
  THEN 
    DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'TRUE');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'FALSE OR NULL');
  END IF;
  DBMS_OUTPUT.PUT_LINE('Data = ' || vData);
  DBMS_OUTPUT.PUT_LINE('Long = ' || vLong );
  SELECT rowid
  INTO   vRowid
  FROM   employees
  WHERE  first_name = 'Steven' AND last_name = 'King';
  DBMS_OUTPUT.PUT_LINE('Rowid = ' || vRowid );
  DBMS_OUTPUT.PUT_LINE('Timestamp = ' || vTimestamp);
  DBMS_OUTPUT.PUT_LINE('Timestamp with time zone= ' || vTimestamptz);
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixoUniversal );
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCaracterTamVariavelUniversal );
  DBMS_OUTPUT.PUT_LINE('Numero Inteiro = ' || vNumeroInteiro);
  DBMS_OUTPUT.PUT_LINE('Numero Float = ' || vNumeroFloat);
  DBMS_OUTPUT.PUT_LINE('Numero Double = ' || vNumeroDouble);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
12.Variável Bind


 * Variável tipo BIND é uma variável que vc declara em um ambiente externo ao bloco, e então 
   utiliza para passar valores em tempo de execução, para um ou mais blocos PL/SQL que podem
   utilizá-la como qualquer outra variável.
  
 * Vc pode referenciar variáveis BIND declaradas em um ambiente externo ao bloco dentro do 
   bloco PL/SQL. 

 * No ambiente do Oracle SQL*Plus ou do Oracle SQL Developer, para detectar uma variável BIND, vc 
   utiliza o comando VARIABLE.
 
 
 REFERENCIANDO VARIÁVEIS BIND:
 -----------------------------
 
 * Para referenciar variáveis BIND, vc deve prefixar a referência com o caractere(:) para 
   distinguir de variáveis declaradas no bloco PL/SQL.

--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 4 - Variável Bind
--

-- Utilizando Variável Bind

SET SERVEROUTPUT ON

VARIABLE gmedia NUMBER -- Variavel tipo BIND deve ser declarada fora de sessao DECLARE.
DECLARE
  vnumero1  NUMBER(11,2) := 2000;
  vnumero2  NUMBER(11,2) := 5000;
  
BEGIN  
  :gmedia := (vnumero1 + vnumero2) / 2; -- Referenciando a Variável BIND --> :gmedia
  DBMS_OUTPUT.PUT_LINE('Media = ' || TO_CHAR(:gmedia));
EXCEPTION
  WHEN OTHERS 
  THEN 
    DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 7:PL/SQL Fundamentos - Sintaxe e Diretrizes de um Bloco PL/SQL

13.Sintaxe e Diretrizes de um bloco PL/SQL


 DIRETRIZES DE UM BLOCO PL/SQL:
 ------------------------------
 
 * Unidade Léxicas (identificadores ou literais - palavras de um comando) podem ser separadas por um ou mais 
   espaços. 


--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 1 - Sintaxe e Diretrizes de um Bloco PL/SQL
--

-- Comentando o Código

SET SERVEROUTPUT ON
DECLARE
  vNumero1  NUMBER(13,2);  -- Declaração de variável para o Primeiro número
  vNumero2  NUMBER(13,2);  -- Declaração de variável para o Segundo número
  vMedia    NUMBER(13,2);  -- Declaração de variável para receber a Media calculada
BEGIN
  /* Cálculo do valor da média entre dois números
     Autor: Emílio Scudero
     Data: 05/05/2020 */
	 
  vNumero1  :=  8000;
  vNumero2  :=  4000;
  vmedia    := (vNumero1 + vNumero2) / 2;           -- Cálculo da Media entre os dois números  
  DBMS_OUTPUT.PUT_LINE('vnumero1 = ' || vNumero1);  -- Impressão do Primeiro Número
  DBMS_OUTPUT.PUT_LINE('vnumero2 = ' || vNumero2);  -- Impressão do Segundo Número
  DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);     	-- Impressão da Média calculada 
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
14.Utilizando Funções no bloco PL/SQL



--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 2 - Utilizando Funções no bloco PL/SQL
--

--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 2 - Utilizando Funções no bloco PL/SQL
--

-- Utilizando Funções no bloco PL/SQL

SET SERVEROUTPUT ON
DECLARE
  vNumero1  NUMBER(13,2);  -- Declaração de variável para o Primeiro número
  vNumero2  NUMBER(13,2);  -- Declaração de variável para o Segundo número
  vMedia    NUMBER(13,2);  -- Declaração de variável para a Média
BEGIN
  /* Cálculo do valor da média entre dois números
     Autor: Emílio Scudero
     Data: 05/05/2020 */
	 
  vNumero1  :=  5000.8888;
  vNumero2  :=  3000.4444;
  vMedia    :=  ROUND((vNumero1 + vNumero2) / 2, 2);
  DBMS_OUTPUT.PUT_LINE('vnumero1 = ' || vnumero1);  -- Impressão do Primeiro Número
  DBMS_OUTPUT.PUT_LINE('vnumero2 = ' || vnumero2);  -- Impressão do Segundo Número
  DBMS_OUTPUT.PUT_LINE('Media = ' || TO_CHAR(vMedia,'99G999G999D99')); -- Impressão da Média calculada no formato q estabeleci
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
15.Blocos Aninhados e Escopo de Identificadores (Variáveis e Constantes)

 BLOCOS ANINHADOS:
 -----------------
 
 * Uma das vantagens que o PL/SQL possui é a possibilidade de criar e aninhar blocos 
 
 * Vc pode dividir uma parte lógica de um bloco em Sub-blocos
 
 * A Seção EXCEPTION tbm pode conter Blocos e Sub-blocos aninhados ou seja,
   (Cada bloco pode conter a sua seção EXCEPTION)
 

--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 3 - Blocos Aninhados e Escopo de Identificadores (variáveis e constantes)
--

-- Escopo de Identificadores e Blocos Aninhados

SET SERVEROUTPUT ON
DECLARE
  vbloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vbloco1);
  -- Se voce referencia vbloco2 aqui ocorrerá Erro
      DECLARE
        vbloco2 VARCHAR2(20) := 'Bloco 2';
      BEGIN
        DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vbloco1);
        DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 2: ' || vbloco2);
      END;
  DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vbloco1);
  -- Se voce referencia vbloco2 aqui ocorrerá Erro
END;


-- PODEMOS IDENTIFICAR OS BLOCOS ATRAVES DE LABELS: 
-- Identificando Blocos através de Labels

-- EXEMPLO:


<<BLOCO1>>
DECLARE
  vbloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || bloco1.vbloco1);
  -- Se voce referencia vbloco2 aqui ocorrerá Erro
      <<BLOCO2>>
      DECLARE
        vbloco2 VARCHAR2(20) := 'Bloco 2';
      BEGIN
        DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || bloco1.vbloco1);
        DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 2: ' || bloco2.vbloco2);
      END;
  DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || bloco1.vbloco1);
  -- Se voce referencia vbloco2 aqui ocorrerá Erro
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
16.Padrões de Codificação sugeridos


--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 4 - Padrões de codificação sugeridos
--

-- Exemplo de uso dos Padrões de codificação sugeridos

SET SERVEROUTPUT ON
<<BLOCO1>>
DECLARE
  vBloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vBloco1);
  -- Se voce referencia vbloco2 aqui ocorrerá Erro
  
	  <<BOLCO2>>
	  DECLARE
		vBloco2 VARCHAR2(20) := 'Bloco 2';
	  BEGIN
		DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vBloco1);
		DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 2: ' || vBloco2);
	  END;
	  
  DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vBloco1);
  -- Se voce referencia vbloco2 aqui ocorrerá Erro
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 8:PL/SQL Fundamentos - Utilizando comandos SQL no PL/SQL

17.Utilizando comandos SQL no PL/SQL


 * Vc pode utilizar o comando SELECT para popular variáveis com valores recuperados a partir 
   de uma linha de uma tabela.
   
 * O PL/SQL suporta completamente os comandos DML e os comandos de controle de transação do SQL.
 
 
 BLOCO PL/SQL X TRANSAÇÃO DO BANCO DE DADOS:
 -------------------------------------------
 
 * Um bloco PL/SQL não é uma unidade de transação. (BEGIN e END, não tem nada a ver com uma 
   transação, é apenas para controle do código)
   
   
 * Os comandos COMMIT, SAVEPOINT  e ROLLBACK são independentes do inicio e fim do bloco PL/SQL,
   no entanto, vc pode executar estes comandos dentro de um bloco.
   
 * O PL/SQL não suporta a execução direta de comandos DDL e DCL

 * Para executar um comando DDL ou DCL no bloco PL/SQL vc precisa utilizar SQL Dinâmico. 
     SQL Dinâmico --> (Execute IMMEDIATE)

  
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
18.Utilizando o comando SELECT no PL/SQL


 * O Comando SELECT no PL/SQL deve retornar uma e somante uma linha.
 
 * Se o SELECT no PL/SQL retornar mais de uma linha gera a exceção chamada TOO_MANY_ROWS.

 * Se o SELECT no PL/SQL  retornar nenhuma linha gera a exeção chamada NO_DATA_FOUND

 * Vc deve garantir que o comando SELECT retorne uma única linha 

-- Exemplo:

--
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 2 - Utilizando o comando SELECT no PL/SQL
--

-- Utilizando o comando SELECT no PL/SQL

SET SERVEROUTPUT ON
DECLARE
   vFirst_name  employees.first_name%type;
   vLast_name   employees.last_name%type;
   vSalary      employees.salary%type;
   vEmployee_id employees.employee_id%type := 121;
BEGIN
   SELECT first_name, last_name, salary
   INTO   vfirst_name, vlast_name, vsalary
   FROM   employees
   WHERE  employee_id = vEmployee_id;
   DBMS_OUTPUT.PUT_LINE('Employee Id: ' || vEmployee_id);
   DBMS_OUTPUT.PUT_LINE('Fist Name: ' || vFirst_name);
   DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
   DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

-- Erro ORA-01403 - No Data Found

SET SERVEROUTPUT ON
DECLARE
   vFirst_name  employees.first_name%type;
   vLast_name   employees.last_name%type;
   vSalary      employees.salary%type;
   vEmployee_id employees.employee_id%type := 50; -- nao trouxe nenhum registro, pq nao exixte ninguem com employee_id = 50... 
BEGIN
   SELECT first_name, last_name, salary
   INTO   vfirst_name, vlast_name, vsalary
   FROM   employees
   WHERE  employee_id = vEmployee_id;
   DBMS_OUTPUT.PUT_LINE('Employee Id: ' || vEmployee_id);
   DBMS_OUTPUT.PUT_LINE('Fist Name: ' || vFirst_name);
   DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
   DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

SET SERVEROUTPUT ON
DECLARE
   vJob_id          employees.job_id%type := 'IT_PROG';
   vAvg_Salary      employees.salary%type;
   vSum_Salary      employees.salary%type;
BEGIN
   SELECT ROUND(AVG(salary),2), 
          ROUND(SUM(salary),2)
   INTO   vAvg_Salary, vSum_Salary 
   FROM   employees
   WHERE  job_id = vJob_id;
   DBMS_OUTPUT.PUT_LINE('Cargo: ' || vJob_id);
   DBMS_OUTPUT.PUT_LINE('Média de salários: ' || vAvg_Salary);
   DBMS_OUTPUT.PUT_LINE('Somatório de salarios: ' || vSum_Salary);
END;

-- Erro ORA-01422 - Too Many Rows

SET SERVEROUTPUT ON
DECLARE
   vJob_id          employees.job_id%type;
   vAvg_Salary      employees.salary%type;
   vSum_Salary      employees.salary%type;
BEGIN
   SELECT job_id, 
          ROUND(AVG(salary),2), 
          ROUND(SUM(salary),2)
   INTO   vJob_id, vAvg_Salary, vSum_Salary 
   FROM   employees
   GROUP BY job_id;
   DBMS_OUTPUT.PUT_LINE('Cargo: ' || vJob_id);
   DBMS_OUTPUT.PUT_LINE('Média de salários: ' || vAvg_Salary);
   DBMS_OUTPUT.PUT_LINE('Somatório de salarios: ' || vSum_Salary);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			



























