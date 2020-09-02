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
19.Utilizando o comando INSERT no PL/SQL

--
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 3 - Utilizando o comando INSERT no PL/SQL
--

-- Utilizando o comando INSERT no PL/SQL

SET SERVEROUTPUT ON
DECLARE
   --vfirst_name  employees.first_name%type;
   --vlast_name   employees.last_name%type;
   --vsalary      employees.salary%type;
BEGIN
   INSERT INTO employees 
   (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
    VALUES 
    (employees_seq.nextval, 'Kobe', 'Bryant', 'KBRYANT', '515.123.45568', SYSDATE, 'IT_PROG', 15000, 0.4, 103, 60);
   COMMIT;  
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
20.Utilizando o comando UPDATE no PL/SQL


--
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 4 - Utilizando o comando UPDATE no PL/SQL
--

-- Utilizando o comando UPDATE no PL/SQL


SET SERVEROUTPUT ON
DECLARE
   vEmployee_id    employees.employee_id%type := 150;
   vPercentual     NUMBER(3) := 10;
BEGIN
   UPDATE employees 
   SET    salary = salary * (1 + vPercentual / 100)
   WHERE  employee_id =  vEmployee_id;
   COMMIT;  
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
21.Utilizando o comando DELETE no PL/SQL 

---
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 5 - Utilizando o comando DELETE no PL/SQL
--

-- Utilizando o comando DELETE no PL/SQL

-- DELETE no PL/SQL

SET SERVEROUTPUT ON
DECLARE
   vEmployee_id  employees.employee_id%type := 207;
BEGIN
   DELETE FROM employees 
   WHERE  employee_id =  vEmployee_id;
   COMMIT;  
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
22.Controlando Transações de banco de dados no PL/SQL

 * Uma transação consiste de um conjunto de comando DML(SELECT, INSERT, DELETE, UPDATE) que 
   formam uma unidade lógica de trabalho.
 Obs: O conceito de uma transação é, ou vc deseja efetivar (COMMIT), ou deseja desfazer (ROLLBACK).
 
 * Uma transação de banco de dados consiste em:
   - Um conjunto de comando DML
   - Um comando DDL -- CREATE/ ALTER / DROP / DESABLE --> Aqui o commit é automatico
   - Um comando DCL -- GRANT / REVOKE        --> Aqui o commit é automatico


 -- INICIO DE UMA TRANSAÇÃO NO ORACLE:
 -------------------------------------
   
 * No DB Oracle uma transação começa quando se conecta e um comando SQL DML é executado.

 * Após um comando COMMIT, um comando SQL DML é executado.

 * Após um comando ROLLBACK, um comando SQL DML é executado.

 

 -- FIM DE UMA TRANSAÇÃO NO ORACLE:
 ----------------------------------
 
 * Uma transação termina com um dos seguintes eventos:
 
 * COMMIT
 * ROLLBACK
 * DDL ou DCL (Executa um COMMIT automático)
 * Quando o usuário encerra a sessão (disconecta) no SQL Developer, SQL*Plus, e etc.
 * Crash do sistema (Sistema operacional, rede, banco de dados e etc). Nestes casos sofrerá um ROLLBACK
 
 SAVEPOINT --> É um ponto de controle, uma marca na transação.
			   É recurso disponível que não é muito usado.
			   

---
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 6 - Controlando Transações do Banco de Dados
--

-- Controlando Transações do Banco de Dados

SET SERVEROUTPUT ON
DECLARE
   vEmployee_id    employees.employee_id%type := 150;
BEGIN
   UPDATE employees 
   SET    salary = 15000
   WHERE  employee_id =  vEmployee_id;
   COMMIT;  
END;

SET SERVEROUTPUT ON
DECLARE
   vEmployee_id    employees.employee_id%type := 150;
BEGIN
   UPDATE employees 
   SET    salary = 20000
   WHERE  employee_id =  vEmployee_id;
   ROLLBACK;  
END;




BEGIN
    INSERT INTO employees 
    (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
    VALUES 
    (employees_seq.nextval, 'Kobe', 'Bryant', 'KBRYANT', '515.123.45568', SYSDATE, 'IT_PROG', 15000, 0.4, 103, 60);
    
    SAVEPOINT INSERTOK;
    
    UPDATE employees 
    SET    salary = 30000
    WHERE  job_id = 'IT_PROG';
    
    ROLLBACK TO INSERTOK;  -- Aqui ele descarta tudo que foi feito a partir do savepoint, portanto o INSERT sera mantido.
    COMMIT; -- A transacao so vai ser efetivada apos esse commit.
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
23.Cursor Implícito


 -- ATRIBUTOS DE CURSOR SQL:
 ---------------------------

 ATRIBUTO			DESCRICAO
 
 SQL%ROWCOUNT		Número de linhas afetadas pelo cursor
 SQL%FOUND			Retorna TRUE se o cursor afetou uma ou mais linhas 
 SQL%NOTFOUND		Retorna TRUE se o cursor nao afetou nenhuma linha 
 SQL%ISOPEN			Retorna FALSE, pq o Oracle controla o cursor implícito automaticamente, 
					fechando o cursor.

---
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 7 - Cursor Implícito
--

-- Utilizando atributos de Cursor Implícito

SET SERVEROUTPUT ON
DECLARE
   vdepartment_id  employees.department_id%type := 60;
   vpercentual     NUMBER(3) := 10;
BEGIN
   UPDATE employees 
   SET salary = salary * (1 + vpercentual / 100)
   WHERE department_id =  vdepartment_id;
   DBMS_OUTPUT.PUT_LINE('Numero de empregados atualizados: ' || SQL%ROWCOUNT);
   -- COMMIT;  
END;

ROLLBACK;			   
 
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 9:PL/SQL Fundamentos - Estruturas de Controle

24.Operadores PL/SQL e Regra de precedência


 FOREMATO:																RESULTADO:
 ---------																----------
	+																	OP. Soma
	-																	OP. Subtração
	*																	OP. Multiplicação
	/																	OP. Divisão
	**																	OP. Exponeciação
	NOT																	OP. Negação Lógica
	=, >, <, <=, >=, IS, NULL, LIKE, BETWEEN, IN, !=, <>, ^=, ~=		OP. de Comparação
	AND 																OP. Lógico AND
	OR																	OP. Lógico OR
	
	
 -- REGRA DE PRECEDÊNCIA DO PL/SQL:
 ----------------------------------
 Obs: Resolve o que encontrar primeiro da esquerda p/ direita
 
 Ordem	Operador
 1		**
 2		+,-
 3		*,/
 4		+,-,||
 5		=, <, >, <=, >=, <>, !=, ~=, ^=, BETWEEN, IN, IS NULL, LIKE 
 6 		AND
 7		NOT 
 8		OR
 
 
 Utilizando parentes para alterar sobrepor a regra de precedência:
 -----------------------------------------------------------------
 
 * Utilize parênteses p/ sobrepor a regra de precedência dos operadores 
 
 * Tudo que estiver entre parênteses será resolvido primeiro
 
 * Se vc aninhar parênteses, eles serão resolvidos de dentro p/ fora
 
 
 -- EXEMPLO: 
 -----------
   
    --
-- Seção 9 - Estruturas de Controle 
--
-- Aula 1 - Operadores PL/SQL
--

-- Operadores PL/SQL - Com erro no cálculo devido ao mal uso da regra de precedência

SET SERVEROUTPUT ON
DECLARE
   vNota1     NUMBER(11,2) := 7.0;
   vNota2     NUMBER(11,2) := 6.0;
   vNota3     NUMBER(11,2) := 9.0;
   vNota4     NUMBER(11,2) := 6.0;
   vMedia     NUMBER(11,2);
   
BEGIN
  vMedia := vNota1 + vNota2 + vNota3 + vNota4 / 4; -- Resultado errado, correcao abaixo. 
  DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);   
END;

-- Corrigindo o cálculo da média sobrepondo a regra de precedência utilizando parenteses

SET SERVEROUTPUT ON
DECLARE
   vNota1     NUMBER(11,2) := 7.0;
   vNota2     NUMBER(11,2) := 6.0;
   vNota3     NUMBER(11,2) := 9.0;
   vNota4     NUMBER(11,2) := 6.0;
   vMedia     NUMBER(11,2);
   
BEGIN
  vMedia := (vNota1 + vNota2 + vNota3 + vNota4) / 4;
  DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);   
END;


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
25.Utilizando o comando IF

 -- NULOS EM EXPRESSÕES DE COMPARAÇÃO:
 -------------------------------------

 * Qualquer expressão que possui um valor nulo, retorna NULL(Cuidado)

 * Qualquer expressão q possui um valor nulo retorna o booleano NULL
 
 * Para comparar com o valor NULL deve ser utilizado o operador IS NULL ou IS NOT NULL ou 
   tratar o valor NULL utilizando as funções NVL ou NVL2
 
--
-- Seção 9 - Estruturas de Controle 
--
-- Aula 2 - Utilizando o comando IF
--

-- Utilizando o comando IF

SET SERVEROUTPUT ON
ACCEPT pdepartment_id PROMPT 'Digite o Id do departamento: ' 
-- ACCEPT -- Comando do SQL*Plus, esse comando deve ser criado fora do bloco. ACCEPT define uma variavel.
-- PROMPT --> Para exibir uma frase.
DECLARE
   vpercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id; -- Variavel de substituicao prefixa com & 
BEGIN
   IF  vDepartment_id  =  80 
   THEN 
       vpercentual := 10; -- Sales
   ELSE 
       IF  vDepartment_id  =  20 
       THEN 
           vpercentual := 15; -- Marketing
       ELSE
           IF  vDepartment_id  =  60 
           THEN 
               vpercentual := 20; -- IT
           ELSE 
               vpercentual := 5;
           END IF;
       END IF;
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);   
  DBMS_OUTPUT.PUT_LINE('Percentual: ' || vpercentual );   
  
  UPDATE employees 
  SET    salary = salary * (1 + vpercentual / 100)
  WHERE department_id =  vDepartment_id;
  COMMIT;
END;

-- Comando IF  com ELSIF

SET SERVEROUTPUT ON
ACCEPT pdepartment_id PROMPT 'Digite o Id do departamento: '
DECLARE
   vpercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   IF  vDepartment_id  =  80 
   THEN 
       vpercentual := 10; -- Sales
   ELSIF vDepartment_id  =  20 
   THEN 
       vpercentual := 15; -- Marketing
   ELSIF vDepartment_id  =  60 
   THEN 
       vpercentual := 20; -- IT
   ELSE
       vpercentual := 5;
   END IF;
  
  DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);   
  DBMS_OUTPUT.PUT_LINE('percentual: ' || vpercentual );   
  
  UPDATE employees 
  SET    salary = salary * (1 + vpercentual / 100)
  WHERE department_id =  vDepartment_id;
  COMMIT;
END;


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
26.tilizando o comando CASE 

--
-- Seção 9 - Estruturas de Controle 
--
-- Aula 3 - Utilizando o comando CASE
--

-- Utilizando o comando CASE

SET SERVEROUTPUT ON
ACCEPT pdepartment_id PROMPT 'Digite o Id do departamento: '
DECLARE
   vpercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   CASE  vDepartment_id 
   WHEN  80 
   THEN 
        vpercentual := 10; -- Sales
   WHEN  20 
   THEN 
         vpercentual := 15; -- Marketing
   WHEN  60 
   THEN 
         vpercentual := 20; -- IT
   ELSE 
         vpercentual := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('percentual: ' || vPercentual );   
   UPDATE employees 
   SET salary = salary * (1 + vpercentual / 100)
   WHERE department_id =  &pdepartment_id;
   COMMIT; 
 END;
 
 -- Utilizando o comando CASE 2º opção
 
SET SERVEROUTPUT ON
ACCEPT pdepartment_id PROMPT 'Digite o Id do departamento: '
DECLARE
   vpercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   CASE  
   WHEN  vDepartment_id = 80 
   THEN 
        vpercentual := 10; -- Sales
   WHEN  vDepartment_id = 20 
   THEN 
         vpercentual := 15; -- Marketing
   WHEN  vDepartment_id = 60 
   THEN 
         vpercentual := 20; -- IT
   ELSE 
         vpercentual := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('percentual: ' || vpercentual );   
   UPDATE employees 
   SET salary = salary * (1 + vpercentual / 100)
   WHERE department_id =  &pdepartment_id;
   --COMMIT; 
 END;
 
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
27.LOOP Básico 

 -- CONTROLANDO UM LOOP DE DOMANDOS:
 -----------------------------------
 
 * O PL/SQL fornece diversos comandos de estruturas de LOOP para repetir um comando ou 
   sequencia de comandos várias vezes.
   
 * LOOP básico --> Fornece ações repetitivas sem condições globais

 * FOR LOOP --> Fornece controle de repetições de ações baseado em um contador

 * WHILE LOOP --> Fornce controle de repetições de ações baseado em uma condição

 * O comando EXIT encerra um LOOP em qualquer tipo de contrução 
   Utilizando o comando EXIT, o controle passa para o próximo comando após o comando END LOOP. 




--
-- Seção 9 - Estruturas de Controle 
--
-- Aula 4 - LOOP Básico
--

-- LOOP Básico

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '
DECLARE
  vNumero  NUMBER(38) := 1;
  vLimite  NUMBER(38) := &pLimite;
BEGIN
	-- Imprimindo números de 1 até o limite
	LOOP 
	  DBMS_OUTPUT.PUT_LINE('Número = ' || to_char(vNumero));
	  EXIT WHEN vNumero = vLimite;
	  vNumero := vNumero + 1;
	END LOOP;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
28.FOR LOOP 


--
-- Seção 9 - Estruturas de Controle 
--
-- Aula 5 - FOR LOOP
--

-- FOR LOOP

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '
DECLARE
  vInicio  INTEGER(3) := 1;
  vFim     NUMBER(38) := &pLimite;
BEGIN
	FOR i IN vinicio..vfim  LOOP  -- Pode inverter, comecar do final p/ o inicio
	  DBMS_OUTPUT.PUT_LINE('Número = ' || to_char(i) );
	END LOOP;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
29.WHILE E LOOP


-- Seção 9 - Estruturas de Controle 
--
-- Aula 6 - WHILE LOOP
--

-- WHILE LOOP

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '
DECLARE
  vNumero  NUMBER(38) :=  1;
  vLimite  NUMBER(38) := &pLimite;
BEGIN

-- Variaveis inicializadas na seção Declare

	WHILE  vNumero <= vLimite LOOP -- Enquanto a condicao for verdadeira, vai ficar executando
		DBMS_OUTPUT.PUT_LINE('Número =  ' || to_char(vNumero));
		vNumero := vNUmero + 1;
	END LOOP;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
30.Controlando LOOPs aninhados 


--
-- Seção 9 - Estruturas de Controle 
--
-- Aula 7 - Controlando LOOPs aninhados
--

-- Controlando LOOPs aninhados

SET SERVEROUTPUT ON
DECLARE
  vTotal   NUMBER(38) :=  1;
BEGIN
	<<LOOP1>>
	FOR i IN 1..8 LOOP
		DBMS_OUTPUT.PUT_LINE('I =  ' || to_char(i));
		
			<<LOOP2>>
			FOR j IN 1..8 LOOP
			  DBMS_OUTPUT.PUT_LINE('J =  ' || to_char(j));
			  DBMS_OUTPUT.PUT_LINE('Total =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
			  vTotal := vTotal * 2;
			  -- EXIT LOOP1 WHEN vtotal > 1000000000000000;
			END LOOP;
	END LOOP;
DBMS_OUTPUT.PUT_LINE('Total Final =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
END;

-- Utilizando EXIT com Label

SET SERVEROUTPUT ON
DECLARE
  vTotal   NUMBER(38) :=  1;
BEGIN
	<<LOOP1>>
	FOR i IN 1..8 LOOP
		DBMS_OUTPUT.PUT_LINE('I =  ' || to_char(i));
		
			<<LOOP2>>
			FOR j IN 1..8 LOOP
			  DBMS_OUTPUT.PUT_LINE('J =  ' || to_char(j));
			  DBMS_OUTPUT.PUT_LINE('Total =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
			  vTotal := vTotal * 2;
			  EXIT LOOP1 WHEN vtotal > 1000000000000000;
			END LOOP;
	END LOOP;
DBMS_OUTPUT.PUT_LINE('Total Final =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 10: PL/SQL Fundamentos - Tipos Compostos - Variável Tipo PL/SQL RECORD

31.Variável Tipo PL/SQL Record 

 PL/SQL Record --> É uma estrutura de campos na memória.
 
 * PL/SQL Record é um grupo de itens(campos) de dados relacionados armazenados em campos, 
   cada um com seu próprio nome e tipo de dados.
   
 * Um PL/SQL Record que contém campos como o nome, cidade e data de admissão de um cliente
   permite tratar os dados como uma unidade lógica.

 * Quando vc declara um tipo RECORD para estes campos, eles podem ser manipulados como uma 
   unidade.
 
 PL/SQL RECORDS - DIRETRIZES:
 ----------------------------
 
 * Cada registro definido pode possuir tantos campos quanto necessários
 
 * Campos podem ser atribuídos valores iniciais e podem ser definidos como NOT NULL
 
 * Campos sem valores iniciais são inicializados com NULL
 
 * A palavra chave DEFAULT tbm podem ser utilizada quando definido campos
 

--
-- Seção 10 - Tipos Compostos - Variável Tipo PL/SQL Record
--
-- Aula 1 - Variável Tipo PL/SQL Record
--

-- Criando um PL/SQL Record 

SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT pemployee_id PROMPT 'Digite o Id do empregado: '
DECLARE
TYPE  employee_record_type IS RECORD 
          (employee_id   employees.employee_id%type,
           first_name    employees.first_name%type,
           last_name     employees.last_name%type,
           email         employees.email%type,
           phone_number  employees.phone_number%type);
	  employee_record  employee_record_type; -- criado a variavel e o tipo q ela implementa

BEGIN
	SELECT  employee_id, first_name, last_name, email, phone_number
		INTO    employee_record
		FROM    employees
		WHERE   employee_id = &pemployee_id;
		
		DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' || 
						 employee_record.first_name || ' - ' || 
						 employee_record.last_name || ' - ' || 
						 employee_record.phone_number);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
32.Utilizando o Atributo %ROWTYPE 

 * Bastante útil quando 
--
-- Seção 10 - Tipos Compostos - Variável Tipo PL/SQL Record
--
-- Aula 2 - Utilizando atributo %ROWTYPE
--

-- Criando um PL/SQL Record utilizando atributo %ROWTYPE

SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT pemployee_id PROMPT 'Digite o Id do empregado: '

DECLARE
employee_record   employees%rowtype; -- A variavel criada vai ter a mesma estrutura da tb --> employees, neste ex. nao preciso definir os campos
vEmployee_id      employees.employee_id%type := &pemployee_id;
BEGIN
	SELECT  * 
	INTO    employee_record
	FROM    employees
	WHERE   employee_id = vEmployee_id;
	DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' || 
						 employee_record.first_name || ' - ' || 
						 employee_record.last_name || ' - ' || 
						 employee_record.phone_number || ' - ' ||
						 employee_record.job_id);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 11:PL/SQL Fundamentos - Tipos Compostos - Collectons

33.Collections - Associative Arrary

 -- O QUE É UMA COLLECTION?
 --------------------------
 
 * Coestruturas utilizadas para gerenciamento de múltiplas linhas de dados
 * Collections são listas (Vetores de uma dimensão), portanto, fica na memória.
 
 -- TIPOS DE COLLECTIONS:
 ------------------------
 
 	Collections - Associative Array
	Associative Array of Records - Bulk Collect --> (Herda as caracteristica da tabela)
					 
					 
	Nested Table 
	Nested Table of Records - Bulk Collect      --> (Herda as caracteristica da tabela)
    /* Obs: A diferenca entre a collection Associative Array, 
	   é obrigado inicializar e nao precisa da clausula INDEX BY*/
	
 * Varray 
 
 
 
 -- ASSOCIATIVE ARRAY:
 ---------------------
 
 * Associative arrys são estruturas unidimensionais(Uma dimensão) de tipos de dados Oracle,
   registros ou tipo definidos pelo usuário.
   Ex: Varchar2, number, date e etc.
   
 * No Oracle na versão 7 é conhecido como PL/SQL Tables
 * No Oracle nas versões 8 e 9i é conhecido como Index-by-tables 
 * Atualmente conhecido como Associative Array 
 
 * Pode ser indexada por valores numéricos ou caracter, permitindo buracos na numeração 
   do índice
   
 * É semelhante a um vetor, não podendo ser armazenado no banco de dados   
   -- Obs: Não é armazenado no DB, fica na memória do PL/SQL
   
 * Basta atribuir um valor para a ocorrencia do Associative Array 
 
 * Pode ser indexado com qualquer valor númerico,o q significa valores negativos, positivos ou
   tbm o zero.
   
 * Pode ser indexado tbm por strings de caracteres

 * Obrigatório a cláusula INDEX BY na definição do tipo


 -- SINTAXE:
 -----------
 
DECLARE 
TYPE nome_tipo_tabela  --> Dar um nome para o tipo
IS TABLE OF mome_tabela.nome_coluna%type --> Obs: O associative array na versao 7 era chamado de IS TABLE OF, portanto, permance ate hoje... tipo de dado e tamanho: Ex. varchar2(100)/ number(11)
INDEX BY BINARY_INTEGER --> É obrigatorio a clausula INDEX BY se for numerico --> BINARY_INTEGER.. Se o Index for uma string de caracteres varchar2();

-- Declarar uma variável no padrão, p/ implementar o tipo do array 
nome_variavel_table    nome_tipo_table


 -- REFERENCIANDO UM ASSOCIATIVE ARRAY - SINTAXE:
 ------------------------------------------------
 
 BEGIN
 nome_variavel_table(indice):= valor | expressao; 
 
-- Exemplo Prático:
-------------------
--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 1 - Collections - Associative Array
--

-- Collections - Associative Array

/*
SET VERIFY OFF: 
-- Use o comando VERIFY para alternar o visor da variável de substituição, 
   ambos antes e depois do SQL Developer substitui variáveis por valores:
*/


 -- O ARRAY serve para eu guardar informacoes que vou usar depois
 
SET SERVEROUTPUT ON
SET VERIFY OFF 
DECLARE
  TYPE Numero_Table_Type IS TABLE OF NUMBER(2) --> IS TABLE OF p/ associative arrary
  INDEX BY BINARY_INTEGER; -- E obrigatorio essa clausula
  Numero_table  Numero_Table_Type; -- Declaracao do Array
BEGIN
  -- Armazena números de 1 a 10 em um Associative Array
  FOR i IN 1..10
  
	  LOOP
		Numero_Table(i) := i;
	  END LOOP;
	  -- Programa faz uma série de coisas...
	  -- Lê o Associative Array e imprime os números armazenados
	  FOR i IN 1..10
	  LOOP
		DBMS_OUTPUT.PUT_LINE('Associative Array: Indice = ' 
							 || TO_CHAR(i) || -- aqui imprime o valor do indice
							 ', Valor = ' ||
							 TO_CHAR(Numero_Table(I))); -- aqui imprime o valor do associative array
  END LOOP;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
34.Associative Array of Records - Bulk Collect 

 * Associative Array de Records --> É quando vc está declarando um associative array e cada  
   occorencia do associative array vai ter toda a estrutura de campos de uma de um tipo de
   record.

-- EXEMPLO:   
-----------

DECLARE 
TYPE employees_table_type IS TABLE OF employees%ROWTYPE; -- Vai ter toda a estrutura da tabela employees.

employees_table		employees_table_type; -- declaracao da variavel q implementa o array --> employees_table_type 

   

-- EXEMPLO PRATICO:
-------------------

--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 2 - Associative Array of Records - Bulk Collect
--

-- Associative Array of Records - Bulk Collect

--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 2 - Associative Array of Records - Bulk Collect
--

-- Associative Array of Records - Bulk Collect

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE employees_table_type IS TABLE OF employees%rowtype
  INDEX BY BINARY_INTEGER;  -- Type Associative Array
  employees_table  employees_table_type;
BEGIN
  SELECT * -- nao usar isso na pratica quado a tabela e muito grande, se for o caso, usar CURSORES
    BULK COLLECT 
    INTO employees_table FROM employees;
    
  FOR i IN employees_table.first..employees_table.last  -- do primeiro ao ultimo registro da tabela
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' || 
                         employees_table(i).first_name || ' - ' || 
                         employees_table(i).last_name || ' - ' ||
                         employees_table(i).phone_number || ' - ' ||
                         employees_table(i).job_id || ' - ' ||
                         TO_CHAR(employees_table(i).salary,'99G999G999D99'));   
  END LOOP;
END;
-- employees_table(i).employee_id -- (i) é o indice da ocorrencia


 Obs: Tomar cuidado com Associative Array of Records - Bulk Collect, pq toda a tabela vai ficar
      dentro da memória nessa collection, ou seja, vai consumir muita memória do DB, e isso 
	  pode causar um problema de performance na aplicação.
 Em caso de dúvidas, utilizar um cursor.	  
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
35.Collections - Nested Table 

 * Nested Table --> É uma alternativa ao associative Array. 
   O mais utilizado no mercado de trabalho, é o --> associative Array

 * Nested Table são estruturas unidimensionais de tipos de dados Oracle, registros ou tipos 
   definidos pelo usuário 
   
 * Introduzida no Oracle versão 8.
   Inicialmente definida como sendo um vetor inicialmente sem espaços vazios na definição,
   mas pode se tornar esparsa(perdida, longe, espalhada, distanciada, longínqua) quando 
   registros forem removidos
   
 * Pode ser armazenada em tabelas e acessada por comandos SQL 
 
 * Pode ser dinamicamente estendida
 
 * A diferença do Associative Array é que fica em memória, já o Nested Table pode ser 
   armazenado em tabela, ou coluna, porém, no caso de coluna isso nunca deve ser feito, 
   pq viola as regras de normalização de Dados (1FN)--> Atributos multi-valorados
   
 -- DIRETRIZES:
 --------------
 
 * Elementos precisam ser alocados com o método EXTEND para serem definidos 
 
 * Indexada com valores positivos(de 1 até N)
 
 * Deve ser inicializada 
 
 * Sem a cláusula INDEX BY na declaração do tipo
 

 -- SINTAXE:
 -----------
 
DECLARE
TYPE nome_table
IS TABLE OF nome_tabela.coluna%type;


nome_variavel_table		nome_tipo_table:=nome_tipo_table();-- inicializando sem valor()
 
--------------------------------------------
-- Exemplo Prático:
-------------------
--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 3 - Collections - Nested Table
--

-- Collections - Nested Table

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE Numero_Table_Type IS TABLE OF INTEGER(2);
  Numero_table numero_table_type := numero_table_type(); -- É obrigado inicializar 
BEGIN
  -- Armazena números de 1 a 10 em um Nested Table
  FOR i IN 1..10
  LOOP
    Numero_Table.extend; -- P/ alocar uma occorencia tem que usar o metodo EXTEND, depois atribui valor, conforme abaixo
    Numero_Table(i) := i;
  END LOOP;
  -- O programa vai fazer muitas coisas...
  -- Lê o Nested Table e imprime os números armazenados
  FOR I IN 1..10
  LOOP
    DBMS_OUTPUT.PUT_LINE('Nested Table: Indice = ' || TO_CHAR(i) || ', Valor = ' || TO_CHAR(Numero_Table(i)));
  END LOOP;
END;

 A Diferenca do NESTED TABLE é que não precisa escrever INDEX BY.... e é obrigatório 
 inicializar.
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
36.Collections - Nested Table of Records - Bulk Collect
-- Traducao --> Tabela aninhada de coleta em massa de registros 
--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 4 - Nested Table of Records - Bulk Collect
--

-- Nested Table of Records - Bulk Collect

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE employees_table_type IS TABLE OF employees%rowtype;
  employees_table  employees_table_type := employees_table_type();
BEGIN
  SELECT *
    BULK COLLECT INTO employees_table 
  FROM employees;
  FOR i IN employees_table.first..employees_table.last  
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' || 
                         employees_table(i).first_name || ' - ' || 
                         employees_table(i).last_name || ' - ' ||
                         employees_table(i).phone_number || ' - ' ||
                         employees_table(i).job_id || ' - ' ||
                         TO_CHAR(employees_table(i).salary,'99G999G999D99'));   
  END LOOP;
END;
  
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
37.Collections - Varray 

 -- VARRAY:
 ----------
 
 * Varray é uma outra alternativa ao Associative Array e ao Nested Table.
 
 * Varray são estruturas uni-dimensionais(uma dimensão) de tipos de dados Oracle, registros 
 ou tipos definidos pelo usuário.
   
 * Introduzido no Oracle Versão 8, Semelhante a programação tradicional de vetor
 
 * O Oracle permite que seja de tamanho variável, por isso são chamados VARRAY
 
 * O tamanho máximo deve ser especificado na declaração do tipo
 
 A diferença do Nested Table com o VARRAY é que precisa ser definido um tamanho máximo

--
-- Aula 5 - Collections - Varray
--

-- Collections - Varray

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE Numero_Table_Type IS VARRAY(10) OF INTEGER(2);
  Numero_table numero_table_type := numero_table_type();
BEGIN
  -- Armazena números de 1 a 10 em um Varray
  FOR i IN 1..10
  LOOP
    Numero_Table.extend;
    Numero_Table(i) := i;
  END LOOP;
  -- O programa vai fazer muitas coisas...
  -- Lê o Varray e imprime os números armazenados
  FOR i IN 1..10
  LOOP
    DBMS_OUTPUT.PUT_LINE('Varray: Indice = ' || TO_CHAR(i) || ', Valor = ' || TO_CHAR(Numero_Table(i)));
  END LOOP;
END; 
 
   
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
38.Varray of Records - Bulk Collect(matriz de registros coletados em massa) 


--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 6 - Varray of Records - Bulk Collect
--

-- Varray of Records - Bulk Collect

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE employees_table_type IS VARRAY (200) OF employees%rowtype; -- Se a tabela tivar mais de 200 registro, mudar o varray de 200 um valor maior
  employees_table  employees_table_type := employees_table_type();
BEGIN
  SELECT *
    BULK COLLECT INTO employees_table 
  FROM employees;
  FOR i IN employees_table.first..employees_table.last  
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' || 
                         employees_table(i).first_name || ' - ' || 
                         employees_table(i).last_name || ' - ' ||
                         employees_table(i).phone_number || ' - ' ||
                         employees_table(i).job_id || ' - ' ||
                         TO_CHAR(employees_table(i).salary,'99G999G999D99'));   
  END LOOP;
END;
    
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
39.Utilizando Métodos para controlar Collections 

 * Além da lógica de programação, pode ser utilizado métodos para controlar as collections.
 
 -- SINTAXE:
 -----------
 
 nome_collection_metodo [(parametros)] -- Obs: O parametro e opcional



 MÉTODOS DE COLLECTIONS:
 -----------------------

METODO    	DESCRICAO 											TIPOS DE COLLECTIONS 

exists(n) 	Retorna TRUE se o elemento n existe
			Todos
count		Retorna o número de elementos							Todos
				Todos
first		Retorna o primeiro número do índice						Todos
			Retorna NULL se a collection está vazia		

last 		Retorna o último número do índice.						Todos
			Retorna NULL se a Collection está vázia
			
prior(n)	Retorna o número do índice anterior a n.				Todos

next(n)		Retorna o número do índice posterior a n.				Todos


limit 		Se aplica apeas p/ VARRAY, somente varray tem limite.	Varray
			Retorna o maior possível do índice

extend(n)	Para aumentar o tamanho:								Nested Table e Varray
			EXTEND adiciona um elemento nulo.
			EXTEND(n) adiciona n elementos nulos
			EXTEND(n,i) adiciona n cópias do elemento

trim 		TRIM remove um elemento do final da collection.			Nested Table 
			TRIM(n) remove n elementos do final da collections 

delete		DELETE remove todos os elementos de uma Collection.		Associative Array ou Nested Table
			DELETE(n) remove o elemento n da Collection.
			DELETE(m, n) remove todos os elementos na faixa m..n da Collection.



 Exemplo Prático com métodos first e last:
 -----------------------------------------

--
-- Seção 11 - Tipos Compostos - Collections 
--
-- Aula 7 - Utilizando Métodos para controlar Collections
--

-- Utilizando Métodos para controlar Collections

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE employees_table_type IS TABLE OF employees%rowtype;
  employees_table  employees_table_type := employees_table_type();
BEGIN
  SELECT *
    BULK COLLECT INTO employees_table 
  FROM employees;
  FOR i IN employees_table.first..employees_table.last  -- first e last --> sao metodos p/ controlar o indice da collections
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' || 
                         employees_table(i).first_name || ' - ' || 
                         employees_table(i).last_name || ' - ' ||
                         employees_table(i).phone_number || ' - ' ||
                         employees_table(i).job_id || ' - ' ||
                         TO_CHAR(employees_table(i).salary,'99G999G999D99'));   
  END LOOP;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 12:PL/SQL Fundamentos - Cursor Explícito

40.Controlando um Cursor Explícito utilizando CURSOR FOR LOOP 

 -- CURSOR:
 ----------
 
 * O Servidor Oracle utiliza áreas de trabalho chamadas private SQL areas para executar
   comandos SQL e para armazenar informações de processamento. (Fica na SGA)

 * Você pode utilizar cursores para nomear uma dessas áreas e acessar suas informações 
   armazenadas

 * O Cursor direciona todas as fases de processamento do comando SQL
 
 
 -- TIPOS DE CURSORES:
 ---------------------
 
 IMPLÍCITO:
		Cursores implícitos são declarados implicitamente para todos os comandos DML e para 
		comandos SELECT que retornam somente uma linha.
		Controles implícitos, não temos controles nenhum.

 EXPLÍCITO:
		Para consultas que retornam mais de uma linha, um cursor explícito pode ser declarado
		e nomeado pelo programador e manipulado através de comandos específicos no bloco PL/SQL.

		
 * Utilize cursores explícitos para individualmente processar cada linha retornada por um 
   comando SELECT multi-row(Várias Linhas)
   
 * O Conjunto de linhas retornadas por uma consulta multi-row é denominado result set
 
 * Um programa PL/SQL abre um cursor, processa(fetch) as linhas retornadas pela consulta e 
   então fecha o cursor 
   
 * O cursor marca a posição corrente no result set


 -- ATRIBUTOS DE CURSOR EXPLICITO:
 ---------------------------------
 
METODO			TIPO 		TIPOS DE COLLECTIONS 

%ISOPEN 		Boolean		Retorna TRUE se o cursor estiver aberto
%NOTFOUND		Boolean		Retorna TRUE se o último FETCH não retornou um linha
%FOUND 			Boolean		Retorna TRUE se o último FETCH retornou uma linha 
%ROWCOUNT		Number 		Retorna o número de linhas recuperadas por FETCH até o momento

 -- Exemplo Prático:
 -------------------
--
--
-- Seção 12 - Cursor Explícito
--
-- Aula 1 - Controlando um Cursor Explícito
--

-- Controlando um Cursor Explícito com LOOP Básico

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  CURSOR  employees_cursor  IS
  SELECT  *
  FROM    employees;  -- Declaração do Cursor
  
  employees_record  employees_cursor%rowtype; 
BEGIN
  /* Inicializa */
  
  OPEN  employees_cursor;  -- Abrindo o Cursor
  
  /* Loop */
  
  LOOP  -- Loop Básico
    FETCH  employees_cursor  
    INTO  employees_record; -- Fetch do Cursor
    
    EXIT WHEN employees_cursor%notfound;
    
    DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
    
  END LOOP;
  
  CLOSE employees_cursor; -- Close do Cursor
END;


-- Controlando um Cursor Explícito com WHILE LOOP

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  CURSOR  employees_cursor  IS
  SELECT  *
  FROM    employees; -- Declaração do Cursor
  employees_record  employees_cursor%rowtype; 
BEGIN
  /* Inicializa */
  
  OPEN  employees_cursor; -- Abrindo o Cursor
  
  FETCH  employees_cursor  
    INTO  employees_record; -- Fetch do Cursor
	
  /* Loop */
  
  WHILE  employees_cursor%found  LOOP  -- se tiver registro entra no loop
     DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
    FETCH  employees_cursor  
      INTO  employees_record;
  END LOOP;
  
  CLOSE employees_cursor; -- Close do Cursor, libera os recursos de memoria
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
41.Controlando um Cursor Explícito utilizando CURSOR FOR LOOP 


 * Cursor com FOR LOOP facilita muito controlar um cursor
 


--
--
-- Seção 12 - Cursor Explícito
--
-- Aula 2 - Controlando um Cursor Explícito utilizando CURSOR FOR LOOP
--

-- Controlando um Cursor Explícito utilizando CURSOR FOR LOOP

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  CURSOR  employees_cursor  IS
  SELECT  *
  FROM    employees;
BEGIN
  FOR employees_record IN  employees_cursor
  LOOP 						--> No FOR LOOP o Open e Fetch estao implicitos e o loop controla o notfoud e close
    DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));

  END LOOP;
END;

-- Cursor implícito
-- CURSOR FOR LOOP utilizando Sub-consulta

SET SERVEROUTPUT ON
SET VERIFY OFF
BEGIN
  FOR employees_record IN  (SELECT  * FROM    employees)
  LOOP
    DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));

  END LOOP;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
42.Cursor Explícito com Parâmetros

--
--
-- Seção 12 - Cursor Explícito
--
-- Aula 3 - Cursor Explícito com Parâmetros
--

-- CURSOR FOR LOOP com parâmetros

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  CURSOR  employees_cursor (pdepartment_id NUMBER,
							pjob_id VARCHAR2)
  IS
  SELECT  * FROM    employees
  WHERE   department_id = pdepartment_id  
  AND job_id = pjob_id;
  
BEGIN

  FOR employees_record IN  employees_cursor (60, 'IT_PROG')
  LOOP
     DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));

  END LOOP;
  
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
43.Cursor Explícito com SELECT FOR UPDATE

 * Na linguagem SQL quando vc faz um SELECT com a clausula FOR UPDATE, o SELECT vai fazer 
   Lock nas linhas recuperadas pelo SELECT. Se em uma outra sessão/transação alguém tentar
   fazer algum comando DML ou outro select for update nas linhas q estão locked, a outra sessão vai ficar 
   em waiting(aguardando) até que seja feito um commit ou rollback.
   O mesmo acontece quando se usa o CURSOR FOR UPDATE.



CURSOR nome_cursor
IS
SELECT ....
FROM   ....
FOR UPDATE OF nomecoluna[NOWAIT] -- A opção default é NOWAIT
	-- Ou seja se a linha estiver bloqueada vai ficar esperando.
	
/*	
 Observação: Vc so pode usar a cláusula WHERE CURRENT OF para os cursores com FOR UPDATE.	
 Tomar cuidado com esse tipo de cursor, porque pode degradar outras aplicações
*/ 
	
--
--
-- Seção 12 - Cursor Explícito
--
-- Aula 4 - Cursor Explícito com SELECT FOR UPDATE
--

-- Cursor Explícito com SELECT FOR UPDATE

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  CURSOR  employees_cursor (pjob_id VARCHAR2)
  IS
  SELECT  * FROM    employees
  WHERE   job_id = pjob_id
  FOR UPDATE;
  
BEGIN
  FOR employees_record IN  employees_cursor ('AD_VP')
  LOOP
      UPDATE employees
      SET salary = salary * (1 + 10 / 100)
      WHERE CURRENT OF employees_cursor; -- Vai deletar ou atualizar a linha corrente do Cursor
  END LOOP;
  COMMIT;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 13:PL/SQL Fundamentos - Tratamento de Exceções

44.Tratamento de Exceções 

 * Exceções são eventos(normalmente erros), que podem ser tratados designando ações a serem 
   tomadas quando uma exceção ocorre.

 * Quando um execução ocorre durante a execução do bloco PL/SQL, e não houver um tratamento
   para a Exceção, a Exceção se propagará para o ambiente chamador do bloco PL/SQL.

 * Se a exceção não for tratada no programa então propagará um Erro Oracle.

 -- TIPOS DE EXCEÇÕES :
 ----------------------
 
 * Esceções pré-definidas Oracle, tais como:
 TOO_MANY_ROWS, NO_DATA_FOUND, e etc.
 
 TOO_MANY_ROWS --> Recupera mais de uma linha 
 NO_DATA_FOUND --> Recupera nenhuma linha
 
 * Exceções definidas pelo desenvolvedor e disparadas utilizando o comando RAISE 
 
 * Exceções que interceptam erros Oracle não pré-definidos utilizando PRAGMA EXCEPTION_INIT

 * Um erro Oracle ocorre e a Exceção associada ao Erro é disparada automaticamente.
   Por exemplo, Erro ORA-01403, quando o SELECT no bloco PL/SQL não retorna linhas, a exceção
   pré-definida Oracle NO_DATA_FOUND é disparada.
   
 * Vc dispara uma exceção explicitamente executando o comando RAISE dentro do bloco.
   A exceção disparada pode ser uma exceção definida pelo desenvolvedor ou uma Exceção 
   Pré-definida Oracle.
   
   
 -- EXCEÇÃO PROPAGADA:
 --------------------- 
 
 * Se a Exceção disparada na seção BEGIN(executável) do bloco e não existir um tratamento de 
   exceção correspondente na seção EXCEPTION do respectivo bloco onde a Exceção ocorreu, a 
   Exceção será propagada para o ambiente chamador
   
 * A Exceção que foi propagada poderá ser tratada na seção EXCEPTION do ambiente chamador
   (Java, .C#, Python e etc)

 * É uma boa prática não deixar um exceção se propagar... (Exceção tratada, não é erro)
 
 * OTHERS deve ser o último tratamento de exceção definido na seção EXCEPTION 
 
 * Em caso de dúvidas pesquisar exceções pré-definidas pela Oracle

 -- RAISE_APPLICATION_ERRO:
 --------------------------
 
 * O número é o código de erro a ser mostrado, e deve estar no intervalo [-20000, -20999]
    Esse intervalo é o que o programador pode usar, não existe nenhuma exceção Oracle com
    esse intervalo...
 * A string contém o texto da mensagem de erro com até 2018 bytes de tamanho.
 
 SQLCODE A Função SQLCODE retorna o código de erro Oracle que disparou a Exceção
 
 SQLERRM A Função SQLERRM retorna a messagem do erro Oracle que disparou a Exceção 
 
 * Com essas duas funções, podemos identificar uma exceção e capturar sua mensagem.
 
 
 
--
--
-- Seção 13 - Tratamento de Exceções
--
-- Aula 1 - Tratamento de Exceções
--

-- Tratamento de Exceções Pré-definidas Oracle

SET SERVEROUTPUT ON
SET VERIFY OFF  -- Para não exeibir os comandos do bloco, após a execução do bloco
ACCEPT  pEmployee_id PROMPT 'Digite o Id do Empregado: '
DECLARE
  vFirst_name   employees.first_name%TYPE;
  vLast_name    employees.last_name%TYPE;
  vEmployee_id  employees.employee_id%TYPE := &pEmployee_id;
BEGIN
  SELECT first_name, last_name
  INTO   vfirst_name, vlast_name
  FROM   employees
  WHERE  employee_id = vEmployee_id;

  DBMS_OUTPUT.PUT_LINE('Empregado: ' || vfirst_name || ' ' || vlast_name);
 
EXCEPTION
  WHEN NO_DATA_FOUND 
  THEN
     --ROLLBACK;
     RAISE_APPLICATION_ERROR(-20001, 'Empregado não encontrado, id = '||TO_CHAR(vEmployee_id));
  WHEN OTHERS 
  THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle - ' || SQLCODE || SQLERRM);

END;
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
45.Exceções Definidas pelo Desenvolvedor

--
--
-- Seção 13 - Tratamento de Exceções
--
-- Aula 2 - Exceções Definidas pelo Desenvolvedor
--

-- Exceções Definidas pelo Desenvolvedor 

SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT  pEmployee_id PROMPT 'Digite o Id do Empregado: '
DECLARE
   vFirst_name    employees.first_name%Type;
   vLast_name     employees.last_name%Type;
   vJob_id        employees.job_id%type;
   vEmployee_id   employees.employee_id%TYPE := &pEmployee_id;
   ePresident     EXCEPTION;
BEGIN
   SELECT first_name, last_name, job_id
   INTO   vFirst_name, vLast_name, vJob_id
   FROM   employees
   WHERE  employee_id = vEmployee_id;

   IF   vJob_id = 'AD_PRES' 
   THEN
        RAISE ePresident;  
   END IF;

EXCEPTION
  WHEN NO_DATA_FOUND 
  THEN
     RAISE_APPLICATION_ERROR(-20001, 'Empregado não encontrado, id = '||TO_CHAR(vEmployee_id));
  WHEN ePresident 
  THEN
       UPDATE employees
       SET    salary = salary * 1.5
       WHERE  employee_id = vEmployee_id;
       COMMIT;
	   
  WHEN OTHERS 
  THEN
       RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
46.PRAGMA EXCEPTION INIT

 * Quando um erro não está mapeado pela Oracle pode ser criado um exception do tipo PRAGMA
   EXCEPTION INIT

--
--
-- Seção 13 - Tratamento de Exceções
--
-- Aula 3 - PRAGMA EXCEPTION INIT
--

-- PRAGMA EXCEPTION INIT

DECLARE
   vemployee_id    employees.employee_id%TYPE := 300;
   vfirst_name     employees.first_name%TYPE := 'Robert';
   vlast_name      employees.last_name%TYPE := 'Ford';
   vjob_id         employees.job_id%TYPE := 'XX_YYYY';
   vphone_number   employees.phone_number%TYPE := '650.511.9844';
   vemail          employees.email%TYPE := 'RFORD';
   efk_inexistente EXCEPTION; -- Associando exception ao ao pragma abaixo q eu criei 
   PRAGMA EXCEPTION_INIT(efk_inexistente, -2291); -- esse erro e uma violacao de FK da Oracle, estou tratando com a exceptio q criei

BEGIN
   INSERT INTO employees (employee_id, first_name, last_name, phone_number, email, hire_date,job_id)
   VALUES (vemployee_id, vfirst_name, vlast_name, vphone_number, vemail, sysdate, vjob_id);
EXCEPTION
   WHEN  efk_inexistente 
   THEN
         RAISE_APPLICATION_ERROR(-20003, 'Job inexistente!');
   WHEN OTHERS 
   THEN
         RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Forçando o Erro para descobrir o código de Erro a ser tratado

   INSERT INTO employees (employee_id, first_name, last_name, phone_number, email, hire_date, job_id)
   VALUES (employees_seq.nextval, 'Joseph', 'Smith', '3333333', 'JSMITH', sysdate, 'ZZZZ_XX');


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 14:PL/SQL Fundamentos - Procedures de Banco de Dados 

47.Criando Procedure de banco de dados 



--
--
-- Seção 14 - Procedures de Banco de Dados
--
-- Aula 1 - Criando Procedures de Banco de Dados
--

-- Criando uma Procedure de Banco de Dados

CREATE OR REPLACE PROCEDURE PRC_INSERE_EMPREGADO
  (pfirst_name    IN VARCHAR2,
   plast_name     IN VARCHAR2,
   pemail         IN VARCHAR2,
   pphone_number  IN VARCHAR2,
   phire_date     IN DATE DEFAULT SYSDATE,
   pjob_id        IN VARCHAR2,
   pSALARY        IN NUMBER,
   pCOMMICION_PCT IN NUMBER,
   pMANAGER_ID    IN NUMBER,
   pDEPARTMENT_ID IN NUMBER)
IS 
  -- Nenhuma váriável declarada
BEGIN
  INSERT INTO employees (
    employee_id,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id )
  VALUES (
    employees_seq.nextval,
    pfirst_name,
    plast_name,
    pemail,
    pphone_number,
    phire_date,
    pjob_id,
    psalary,
    pcommicion_pct,
    pmanager_id,
    pdepartment_id );
EXCEPTION
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20001, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando a Procedure pelo Bloco PL/SQL

BEGIN
  PRC_INSERE_EMPREGADO('David', 'Bowie','DBOWIE','515.127.4861',SYSDATE,'IT_PROG',15000,NULL,103,60);
  COMMIT;
END;

-- Consultando o empregado inserido
SELECT *
FROM   employees
WHERE  first_name = 'David' AND
       last_name = 'Bowie';

-- Executando a Procedure com o comando EXECUTE do SQL*PLUS

EXEC PRC_INSERE_EMPREGADO('Greg', 'Lake','GLAKE','515.127.4961',SYSDATE,'IT_PROG',15000,NULL,103,60)

COMMIT;

-- Consultando o empregado inserido
SELECT *
FROM   employees
WHERE  first_name = 'Greg' AND
       last_name = 'Lake';


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
48.Utilizando Parametros tipo IN 

--
--
-- Seção 14 - Procedures de Banco de Dados
--
-- Aula 2 - Utilizando Parametros tipo IN
--

-- Utilizando Parametros tipo IN

CREATE OR REPLACE PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
  (pemployee_id   IN NUMBER,
   ppercentual    IN NUMBER)
IS
  -- Nenhuma váriável declarada
BEGIN
  UPDATE employees 
  SET salary = salary * (1 + ppercentual / 100)
  WHERE employee_id = pemployee_id;

EXCEPTION
  WHEN OTHERS 
  THEN
     RAISE_APPLICATION_ERROR(-20001, 'Erro Oracle: ' || SQLCODE || ' - ' || SQLERRM);
END;

- Executando a Procedure pelo Bloco PL/SQL

BEGIN
  PRC_AUMENTA_SALARIO_EMPREGADO(109,10);
  COMMIT;
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
49.Utilizando Parametros tipo OUT e IN OUT 

 * Os parâmetros do tipo IN funcionam internamente por referência 
   Ou seja os parametros do tipo IN referenciam a mesma area de memoria utilizada pelo programa
   chamador.

 * Os parâmetros do tipo OUT e IN OUT por default funcionam por cópia 
   Portantos, as procedures que utilizam parametros OUT e IN OUT vai copiar o valor do parametro
   para uma area de memoria da procedure , e dessa forma vai consumir um pouco a mais de memoria.
   
    
 -- OPÇÃO NOCOPY:
 ----------------
 
 * É possível utilizarmos parâmetros OUT e IN OUT por referência, de modo que a área de memória 
   usada pela variável do ambiente chamador e pelo parâmetro do subprograma sejam a mesma.
  
 Em resumo parametros OUT e IN OUT podem funcionar em vez de copia por referencia atravez 
 do NOCOPY   
   


--
--
-- Seção 14 - Procedures de Banco de Dados
--
-- Aula 3 - Utilizando Parametros tipo OUT e IN OUT
--

-- Utilizando Parametros tipo OUT 

CREATE OR REPLACE PROCEDURE PRC_CONSULTA_EMPREGADO
  (pemployee_id   IN NUMBER,
   pfirst_name    OUT VARCHAR2,
   plast_name     OUT VARCHAR2,
   pemail         OUT VARCHAR2,
   pphone_number  OUT VARCHAR2,
   phire_date     OUT DATE,
   pjob_id        OUT VARCHAR2,
   pSALARY        OUT NUMBER,
   pCOMMISSION_PCT OUT NUMBER,
   pMANAGER_ID    OUT NUMBER,
   pDEPARTMENT_ID OUT NUMBER)
IS 
  -- Nenhuma variável declarada
BEGIN
  SELECT
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
  INTO 
    pfirst_name,
    plast_name,
    pemail,
    pphone_number,
    phire_date,
    pjob_id,
    psalary,
    pcommission_pct,
    pmanager_id,
    pdepartment_id
  FROM employees
  WHERE employee_id = pemployee_id;
  
EXCEPTION
  WHEN NO_DATA_FOUND THEN
     RAISE_APPLICATION_ERROR(-20001, 'Empregado Não existe: ' || pemployee_id);
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando procedure parametro Tipo OUT

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE 
  employees_record  employees%ROWTYPE;
BEGIN
  PRC_CONSULTA_EMPREGADO(100, employees_record.first_name, employees_record.last_name, employees_record.email,
    employees_record.phone_number, employees_record.hire_date, employees_record.job_id, employees_record.salary, 
    employees_record.commission_pct, employees_record.manager_id, employees_record.department_id);
    DBMS_OUTPUT.PUT_LINE(employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
END;






-- Utilizando Parametros tipo OUT com opção NOCOPY

CREATE OR REPLACE PROCEDURE PRC_CONSULTA_EMPREGADO
  (pemployee_id   IN NUMBER,
   pfirst_name    OUT NOCOPY VARCHAR2,
   plast_name     OUT NOCOPY VARCHAR2,
   pemail         OUT NOCOPY VARCHAR2,
   pphone_number  OUT NOCOPY VARCHAR2,
   phire_date     OUT NOCOPY DATE,
   pjob_id        OUT NOCOPY VARCHAR2,
   pSALARY        OUT NOCOPY NUMBER,
   pCOMMISSION_PCT OUT NOCOPY NUMBER,
   pMANAGER_ID    OUT NOCOPY NUMBER,
   pDEPARTMENT_ID OUT NOCOPY NUMBER)
IS 
BEGIN
  SELECT
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
  INTO 
    pfirst_name,
    plast_name,
    pemail,
    pphone_number,
    phire_date,
    pjob_id,
    psalary,
    pcommission_pct,
    pmanager_id,
    pdepartment_id
  FROM employees
  WHERE employee_id = pemployee_id;
  
EXCEPTION
  WHEN NO_DATA_FOUND THEN
     RAISE_APPLICATION_ERROR(-20001, 'Empregado Não existe: ' || pemployee_id);
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando procedure parametro Tipo OUT

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE 
  employees_record  employees%ROWTYPE;
BEGIN
  PRC_CONSULTA_EMPREGADO(100, employees_record.first_name, employees_record.last_name, employees_record.email,
    employees_record.phone_number, employees_record.hire_date, employees_record.job_id, employees_record.salary, 
    employees_record.commission_pct, employees_record.manager_id, employees_record.department_id);
    DBMS_OUTPUT.PUT_LINE(employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
END;


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			









