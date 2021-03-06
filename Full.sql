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
 
 * Pode ser indexado com qualquer valor númerico, o q significa valores negativos, positivos ou
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
50.Métodos de passagem de parâmetros 

 * Métodos Posicional
 * Método Nomeado (aqui pode ser passado em qualquer ordem)
 

--
--
-- Seção 14 - Procedures de Banco de Dados
--
-- Aula 4 - Métodos de Passagem de Parametros
--

-- Métodos de Passagem de Parametros

-- Método Posicional

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

-- Método Nomeado

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  VEMPLOYEE_ID NUMBER := 100;
  VFIRST_NAME VARCHAR2(200);
  VLAST_NAME VARCHAR2(200);
  VEMAIL VARCHAR2(200);
  VPHONE_NUMBER VARCHAR2(200);
  VHIRE_DATE DATE;
  VJOB_ID VARCHAR2(200);
  VSALARY NUMBER;
  VCOMMISSION_PCT NUMBER;
  VMANAGER_ID NUMBER;
  VDEPARTMENT_ID NUMBER;
BEGIN

  PRC_CONSULTA_EMPREGADO(PEMPLOYEE_ID => VEMPLOYEE_ID,
						 PFIRST_NAME => VFIRST_NAME,
						 PLAST_NAME => VLAST_NAME,
						 PEMAIL => VEMAIL,
						 PPHONE_NUMBER => VPHONE_NUMBER,
						 PHIRE_DATE => VHIRE_DATE,
						 PJOB_ID => VJOB_ID,
						 PSALARY => VSALARY,
						 PCOMMISSION_PCT => VCOMMISSION_PCT,
						 PMANAGER_ID => VMANAGER_ID,
						 PDEPARTMENT_ID => VDEPARTMENT_ID
						);

  DBMS_OUTPUT.PUT_LINE('PFIRST_NAME = ' || VFIRST_NAME);
  DBMS_OUTPUT.PUT_LINE('PLAST_NAME = ' || VLAST_NAME);
  DBMS_OUTPUT.PUT_LINE('PEMAIL = ' || VEMAIL);
  DBMS_OUTPUT.PUT_LINE('PPHONE_NUMBER = ' || VPHONE_NUMBER);
  DBMS_OUTPUT.PUT_LINE('PHIRE_DATE = ' || VHIRE_DATE);
  DBMS_OUTPUT.PUT_LINE('PJOB_ID = ' || VJOB_ID);
  DBMS_OUTPUT.PUT_LINE('PSALARY = ' || VSALARY);
  DBMS_OUTPUT.PUT_LINE('PCOMMISSION_PCT = ' || VCOMMISSION_PCT);
  DBMS_OUTPUT.PUT_LINE('PMANAGER_ID = ' || VMANAGER_ID);
  DBMS_OUTPUT.PUT_LINE('PDEPARTMENT_ID = ' || VDEPARTMENT_ID);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
51.Recompilando Procedures de Banco de Dados 

ALTER PROCEDURE nome_procedure COMPILE;

 Exemplo Prático Abaixo

--
--
-- Seção 14 - Procedures de Banco de Dados
--
-- Aula 5 - Recompilando Procedures de Banco de Dados
--

-- Recompilando Procedures de Banco de Dados

ALTER PROCEDURE PRC_INSERE_EMPREGADO COMPILE;


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
52.Removendo Procedures de Banco de Dados 

DROP PROCEDURE nome_procedure;

 -- Exemplo Prático abaixo:
 --------------------------

 * O Drop Procedure remove definitivamente, do contrario vai ter q pedir o restore do DB  
   para o DBA.
  

---
--
-- Seção 14 - Procedures de Banco de Dados
--
-- Aula 6 - Removendo Procedure de Banco de Dados
--

-- Removendo Procedure de Banco de Dados

DROP PROCEDURE PRC_CONSULTA_EMPREGADO;

-- Recriando a Procedure para manter o exemplo do Curso

create or replace PROCEDURE PRC_CONSULTA_EMPREGADO
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

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 15:PL/SQL Fundamentos - Funções de Banco de Dados

53.Criando Funções de Banco de Dados 

 * Uma função é uma sub-rotina que retorna sempre um valor
 
 * Utilize uma função ao invés de uma procedure quando a rotina retornar obrigatóriamente 
   um valor 
   
 * Se a rotina retornar nenhum ou mais de um valor, considere o uso de uma procedure 

 * O retorno de uma FUNCTION é definido pela cláusula RETURN

 * Funções tbm podem ter parâmetros OUT e IN OUT embora isto não seja muito utilizado em funções

 
 -- EXEMPLO PRÁTICO:
 -------------------

--
-- Seção 15 - Funções de Banco de Dados
--
-- Aula 1 - Criando Funções de Banco de Dados
--

-- Criando Funções de Banco de Dados

CREATE OR REPLACE FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
  (pemployee_id   IN NUMBER)
   RETURN NUMBER
IS 
  vSalary  employees.salary%TYPE;
BEGIN
  SELECT salary
  INTO   vsalary
  FROM   employees
  WHERE employee_id = pemployee_id;
  RETURN (vsalary);
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
    RAISE_APPLICATION_ERROR(-20001, 'Empregado inexistente');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || ' - ' || SQLERRM);
END;

-- Executando a Função pelo Bloco PL/SQL
-- Obs: Como a função tem um retorno, esse retorno t que ser atribuido p/ uma variável


SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT pemployee_id PROMPT 'Digite o Id do empregado: '
DECLARE
  vEmployee_id  employees.employee_id%TYPE := &pemployee_id;
  vSalary       employees.salary%TYPE;
BEGIN
  vsalary := FNC_CONSULTA_SALARIO_EMPREGADO(vEmployee_id); -- Atribuindo o retorno da funcao p/ variavel --> vsalary
  DBMS_OUTPUT.PUT_LINE('Salario: ' || vsalary);
END;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
54.Utilizando Funções em comandos SQL 

 -- REGRAS PARA O USO DE FUNÇÕES EM COMANDOS SQL:
 ------------------------------------------------
 
 * As funções devem ser armazenadas no servidor de banco de dados
 
 * A função deve ser do tipo Single-ROW
 
 * A função, não podem haver comandos DML 
 
 * A função deve conter apenas parâmetros do tipo IN 
 
 * Tipos PL/SQL, tais como BOOLEAN, RECORD ou TABLE não são aceitos como o tipo de retorno da
   função

 * NO corpo da função, não são permitidas chamadas à subrotinas que desobedeçam quaisquer das
   restrições anteriores
   
  
--
-- Seção 15 - Funções de Banco de Dados
--
-- Aula 2 - Utilizando Funções em comandos SQL
--

-- Utilizando Funções em comandos SQL

CREATE OR REPLACE FUNCTION FNC_CONSULTA_TITULO_CARGO_EMPREGADO
  (pjob_id   IN jobs.job_id%TYPE)
   RETURN VARCHAR2
IS 
  vJob_title jobs.job_title%TYPE;
BEGIN
  SELECT job_title
  INTO   vJob_title
  FROM   jobs
  WHERE  job_id = pjob_id;
  RETURN (vJob_title);
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
    RAISE_APPLICATION_ERROR(-20001, 'Job inexistente');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || ' - ' || SQLERRM);
END;

-- Utilizando Funções em comandos SQL

SELECT employee_id, 
	   first_name, 
	   last_name, 
	   job_id, 
	   FNC_CONSULTA_TITULO_CARGO_EMPREGADO(job_id) "JOB TITLE"
FROM   employees;

-- Executando a Função pelo comando SELECT

SELECT FNC_CONSULTA_TITULO_CARGO_EMPREGADO('IT_PROG')
FROM   dual;

-- Executando a Função pelo comando SELECT

SELECT FNC_CONSULTA_SALARIO_EMPREGADO(130)
FROM   dual;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
55.Recompilando Funções de Banco de Dados 

 -- SINTAXE:
 -----------
 
 ALTER FUNCTION nome_funcao COMPILE;


--
-- Seção 15 - Funções de Banco de Dados
--
-- Aula 3 - Recompilando Funções de Banco de Dados
--

-- Recompilando Funções de Banco de Dados

ALTER FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO COMPILE;


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
56.Removendo Funções de Banco de Dados 

 -- SINTAXE:
 -----------
 
DROP FUNCTION nome_funcao; 

--
-- Seção 15 - Funções de Banco de Dados
--
-- Aula 4 - Removendo Funções de Banco de Dados
--

--- Removendo Funções de Banco de Dados

DROP FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------			
Seção 16:PL/SQL Fundamentos - Gerenciando Procedures e Functions 

57.Gerenciando Procedure e Functions 


 * Após criar procedures e functions no banco de dados, obtenha informações sobre o código 
   fonte e os erros de compilação a partir de visões do Dicionário de dados e comandos 
   interativos.
   
 -- CONSULTANDO OBJETOS TIPO PROCEDURE E FUNCTION:
 -------------------------------------------------

 * Consulte informações sobre todas as procedures e funções armazenadas no banco de dados
   consultando as visões:
   
   USER_OBJECTS --> Contem informações(objetos) do usuário q esta conectado
   ALL_OBJECTS  --> Contem informações(objetos) do usuário q esta conectado mais os objetos q ele tem privilégio 
   DBA_OBJECTS  --> Acesso a todos os objetos do banco de dados, porém, somente o DBA tem acesso
   
   do Dicionário de Dados 
   
 -- CONSULTANDO NA PRATICA:
 -------------------------- 
 

--
-- Seção 16 - Gerenciando Procedures e Functions
--
-- Aula 1 - Gerenciando Procedures e Functions
--

-- Gerenciando Procedures e Functions

-- Consultando objetos tipo Procedure e Function do seu Usuário

DESC USER_OBJECTS

Nome              Nulo? Tipo          
----------------- ----- ------------- 
OBJECT_NAME             VARCHAR2(128) -- nome do objeto
SUBOBJECT_NAME          VARCHAR2(128) -- tipo do objeto
OBJECT_ID               NUMBER        
DATA_OBJECT_ID          NUMBER        
OBJECT_TYPE             VARCHAR2(23)  
CREATED                 DATE		  -- data da criacao do objeto          
LAST_DDL_TIME           DATE          -- data da ultima alteracao da estrutura do objeto
TIMESTAMP               VARCHAR2(19)  -- data da ultima compilacao
STATUS                  VARCHAR2(7)   -- vai mostra valid(se for proc ou func)se estiver compilado ok e invalid se tiver erros
TEMPORARY               VARCHAR2(1)   
GENERATED               VARCHAR2(1)   
SECONDARY               VARCHAR2(1)   
NAMESPACE               NUMBER        
EDITION_NAME            VARCHAR2(128) 
SHARING                 VARCHAR2(18)  
EDITIONABLE             VARCHAR2(1)   
ORACLE_MAINTAINED       VARCHAR2(1)   
APPLICATION             VARCHAR2(1)   
DEFAULT_COLLATION       VARCHAR2(100) 
DUPLICATED              VARCHAR2(1)   
SHARDED                 VARCHAR2(1)   
CREATED_APPID           NUMBER        
CREATED_VSNID           NUMBER        
MODIFIED_APPID          NUMBER        
MODIFIED_VSNID          NUMBER 




SELECT object_name, object_type, last_ddl_time, timestamp, status
FROM   user_objects
WHERE  object_type IN ('PROCEDURE', 'FUNCTION');

SELECT object_name, object_type, last_ddl_time, timestamp, status
FROM   all_objects
WHERE  object_type IN ('PROCEDURE', 'FUNCTION');

-- Consultando objetos Inválidos do schema do seu usuário 

DESC USER_OBJECTS (necessario se conectar como sys)

SELECT object_name, object_type, last_ddl_time, timestamp, status
FROM   user_objects
WHERE  status = 'INVALID';

------------------------------------------------------------------------------------------------
		-- Consultando o Código Fonte de Procedures e Funções  do seu usuário --
------------------------------------------------------------------------------------------------

 * Consulte o código fonte de uma Procedure ou Function armazenada no banco de dados 
   consultando as visões:
   
 USER_SOURCE -- Contém o fonte dos objetos do usuario q esta conectado 
 ALL_SOURCE  -- Contém o fonte dos objetos do usuario q esta conectado mais os objetos q ele tem privilégio 
 DBA_SOURCE  -- Contém o fonte dos objetos do banco de dados, porém, so o DBA tem acesso


DESC user_source

SELECT line, text
FROM   user_source
WHERE  name = 'PRC_INSERE_EMPREGADO' AND
       type = 'PROCEDURE'
ORDER BY line;

SELECT line, text
FROM   user_source
WHERE  name = 'FNC_CONSULTA_SALARIO_EMPREGADO' AND
       type = 'FUNCTION'
ORDER BY line;

-- Consultando a lista de parâmetros de Procedures e Funções 

DESC PRC_INSERE_EMPREGADO

DESC FNC_CONSULTA_SALARIO_EMPREGADO

-- Consultando Erros de Compilação

-- Forçando um erro de compilação

CREATE OR REPLACE FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
  (pemployee_id   IN NUMBER)
   RETURN NUMBER
IS 
  vsalary  employees.salary%TYPE;
BEGIN
  SELECT salary
  INTO   vsalary
  FROM   employees
  WHERE employee_id = pemployee_id
  RETURN (vsalary);
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
      RAISE_APPLICATION_ERROR(-20001, 'Empregado inexistente');
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Consultando Erros de Compilação - Comando SHOW ERRORS

SHOW ERRORS PROCEDURE FNC_CONSULTA_SALARIO_EMPREGADO

------------------------------------------------------------------------------------------------
			-- Consultando Erros de Compilação - Visão USER_ERRORS --
------------------------------------------------------------------------------------------------

 * Consultando erros de compilacao de uma procedure ou functions armazenada no banco de dados
   consultando as visoes:
   
 USER_ERROS
 ALL_ERRORS
 DBA_ERRORS 


DESC user_errors

COLUMN position FORMAT a4
COLUMN text FORMAT a60
SELECT line||'/'||position position, text
FROM   user_errors
WHERE  name = 'FNC_CONSULTA_SALARIO_EMPREGADO'
ORDER BY line;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
Seção 17:PL/SQL Fundamentos - Gerenciando Dependências de Objetos

58.Gerenciando Dependência de Objetos 


 * Sempre que um objeto do banco de dados for alterado, todos os objetos do mesmo banco de 
 dados que dependem diretamente ou indiretamente dele são invalidados(status INVALID) 
 automaicamente em cascata.
 
 * Quando um programa fizer uma chamada a uma Procedure ou Function com status (INVALID) 
   o Oracle automaticamente tentará recompilar o objeto.
   
 * Não é uma boa pratica deixar para o gerenciamento do Oracle resolver o problema 
   automaticamente, é sempre bom o desenvolvedor verificar.
   
 -- TIPOS DE DEPENDENCIAS:
 -------------------------

 * Dependência Direta -- Quando um objeto dependende diretamente de outro objeto 
 * Dependência Indireta -- Quando um objeto depende de um objeto q depende de um objeto e etc
 
 
  -- Dependência local:
  ---------------------
  
  * É uma dependência entre objetos que estão no mesmo Banco de dados 
  
  -- Dependência Remota:
  ----------------------
  
  * É uma dependência entre objetos que estão em banco de dados diferentes 
  
  -- TRATAMENTO DE DEPENDÊNCIAS LOCAIS DIRETAS:
  ---------------------------------------------
  
 * Faça os devidos ajustes e re-compile todos os objetos que possuem dependência direta ou 
   objetos que possuem dependência indireta do objeto.
   
 -- CONSULTANDO DEPENDENCIAS UTILIZANDO A VISÃO USER_DEPENDENCIES:
 -----------------------------------------------------------------
 
 * Consulte as Dependências Diretas e Indiretas utilizando as visões:
   
 USER_DEPENDENCIES
 ALL_DEPENDENCIES
 DBA_DEPENDENCIES


Nome                 Nulo?    Tipo          
-------------------- -------- ------------- 
NAME                 NOT NULL VARCHAR2(128) -- Nome do objeto q depende do obj q estou consultando
TYPE                          VARCHAR2(19)  -- Tipo do objeto q depende do obj q estou consultando
REFERENCED_OWNER              VARCHAR2(128) -- Dono do obj q estou analisando as dependencias
REFERENCED_NAME               VARCHAR2(128) -- Nome do obj q estou analisando as dependencias
REFERENCED_TYPE               VARCHAR2(19)  -- Tipo do obj q estou analisando as dependencias
REFERENCED_LINK_NAME          VARCHAR2(128) 
SCHEMAID                      NUMBER        
DEPENDENCY_TYPE               VARCHAR2(4)    
 
   --
-- Seção 17 - Gerenciando Dependências de Objetos
--
-- Aula 1 - Gerenciando Dependências de Objetos
--

-- Gerenciando Dependências de Objetos

-- Consultando Dependencias Diretas dos objetos do seu schema utilizando a visão USER_DEPENDENCIES 

DESC user_dependencies

SELECT *
FROM   user_dependencies
WHERE  referenced_name = 'EMPLOYEES' AND
       referenced_type = 'TABLE';
	   
	   
 O que deve ser feito, após analisar a dependencias do objeto consultado acima?
 Abrir o código fonte de cada objeto afetado, ajustar o código fonte, e testar.
	   
       
-- Consultando Dependencias Diretas e Indiretas dos objetos do seu schema utilizando a visão USER_DEPENDENCIES 
-- Consultando as dependencias de forma hierarquica...

SELECT      *
FROM        user_dependencies
START WITH  referenced_name = 'EMPLOYEES' -- START WITH --> Estou definindo que o obj EMPLOYEES esta no topo da hierarquia
AND referenced_type    = 'TABLE'
CONNECT BY PRIOR  name = referenced_name -- CONNECT BY PRIOR --> Faz um SQL Hierarquico
AND type 			   = referenced_type;
                  

-- Consultando Dependencias Diretas e Indiretas dos objetos de todos schemas utilizando a visão DBA_DEPENDENCIES        

-- Conecte-se como SYS

DESC DBA_DEPENDENCIES

SELECT      *
FROM        dba_dependencies
START WITH  referenced_owner = 'HR' AND
            referenced_name = 'EMPLOYEES' AND
            referenced_type = 'TABLE'
CONNECT BY PRIOR  owner = referenced_owner AND
                  name =  referenced_name   AND
                  type =  referenced_type;
                  
-- Consultando objetos Inválidos do schema do seu usuário 

DESC USER_OBJECTS

SELECT object_name, 
	   object_type, 
	   last_ddl_time, 
	   timestamp, 
	   status
FROM   user_objects
WHERE  status = 'INVALID';

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
59.Utilizando as Visões DEPTREE e IDEPTREE 

 -- EXECUTANDO O SCRIPT UTLDTREE:
 --------------------------------
 
 * Crie as visões DEPTREE e IDEPTREE executando o script utldtree.sql fornecido juntamente 
   com o banco de dados Oracle.
   
 * O Script utldtree.sql pode ser encontrado no diretório: ORACLE_HOME/rdbms/admin

 * Execute o Script utldtree.sql conectado com o usuário owner do objeto para o qual você
   deseja analisar as dependências.
   
   


--
-- Seção 17 - Gerenciando Dependências de Objetos
--
-- Aula 2 - Utilizando as Visões DEPTREE e IDEPTREE
--

-- Executando o script UTLDTREE

--@C:\app\Emilio\product\18.0.0\dbhomeXE\rdbms\admin\utldtree.sql  
@C:\app\aalima5\product\18.0.0\dbhomeXE\rdbms\admin\utldtree.sql -- F9 ou F5 para executar esse script no Sql Developer


-- Obs.: Substitua o caminho de pastas pelo sua instalação

-- Executando a procedure DEPTREE_FILL

exec DEPTREE_FILL('TABLE','HR','EMPLOYEES')

-- Utilizando as Visões DEPTREE

DESC deptree

Nome         Nulo? Tipo           
------------ ----- -------------- 
NESTED_LEVEL       NUMBER         -- Nivel de dependencia      
TYPE               VARCHAR2(23)   -- Tipo do obj dependente
SCHEMA             VARCHAR2(128)  -- Nome do schema do obj dependente
NAME               VARCHAR2(1002) -- nome do obj dependente
SEQ#               NUMBER         -- Uma coluna utilizada no sql p/ sair os dados de forma ordenada


SELECT   *
FROM     deptree
ORDER by seq#

-- No nivel 0 esta o obj q estamos analisando
-- Tudo q for nivel 1 tem dependencia direta com o nivel 0
-- Dependencia indireta apareceria no nivel 2 


-- Outra forma de analisar o resultado das dependencias e consultando a view abaixo: IDEPTREE
-- Utilizando as Visões IDEPTREE



-- Esta View exibe no formato de tabulação e identação:
desc ideptree
SELECT *
FROM ideptree;
-- Tudo q esta a direita tem relacao direta com o Obj da ultima linha a esquerda

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
Seção 18:PL/SQL Fundamentos - Debugando Procedures e Functions 

60.Debugando Procedures e Functions


 -- REQUISITOS NECESSÁRIOS PARA EXECUTAR O PL/SQL DEBUGER:
 ---------------------------------------------------------
 
 * Efetuar o GRANT dos privilégios DEBUG CONNECT SESSION e DEBUG ANY PROCEDURE para o usuário
   que vai debugar a procedure ou function
   
 * O usuário deve ser o owner ou possuir o privilégio de EXECUTE da procedore ou function a
   que deseja debugar 

 * A procedure ou function deve ser compilada para debug(Compiled dor Debug)   
 
 Conectando como SYS:
  * grant DEBUG CONNECT SESSION,
    DEBUG ANY PROCEDURE TO HR;


 * A partir do Oracle 12c, se vc deseja debugar proceudres ou functions no banco de dados de
   dados utilizando debuger baseado em Java Debug Wire Protocol(JDWP), como o SQL Developer
   ou JDevelopr, enão vc deve receber o grant para o privilégio jdwp ACL privilege para se 
   conectar a sua sessão de banco de dados em um host(sua máquina) em particular.
   
--
-- Seção 18 - Debugando Procedures e Functions
--
-- Aula 1 - Debugando Procedures e Functions
--

-- Debugando Procedures e Functions

-- Edite a function FNC_CONSULTA_SALARIO_EMPREGADO

-- Compilar a function FNC_CONSULTA_SALARIO_EMPREGADO para debug

-- Debugando Procedures e Functions

-- Tente debugar uma procedure ou funtion, ocorrerá o seguinte erro

Conectando ao banco de dados hr_XEPDB1.
Executando PL/SQL: CALL DBMS_DEBUG_JDWP.CONNECT_TCP( '127.0.0.1', '52091' )
ORA-01031: privilégios insuficientes
ORA-06512: em "SYS.DBMS_DEBUG_JDWP", line 68
ORA-06512: em line 1
Essa sessão exige os privilégios de usuário DEBUG CONNECT SESSION e DEBUG ANY PROCEDURE.
Processo encerrado.
Desconectando do banco de dados hr_XEPDB1.

-- Passando privilégios necessários para o usuário hr poder debugar procedures e functions

/*
  Requisitos necessários para executar o PL/SQL Debuger:

  . Efetuar o grant dos privilégios DEBUG CONNECT SESSION e DEBUG ANY PROCEDURE para o usuário que vai debugar a procedure ou function
  . O usuário deve ser o owner ou possuir o privilégio de  EXECUTE da procedure ou function a que deseja debugar
  . A procedure ou function deve ser compilada  para debug (Compiled for Debug)
	
*/

-- Conectado como SYS

grant DEBUG CONNECT SESSION, DEBUG ANY PROCEDURE to hr;

-- Tente debugar novamente, ocorrerá o seguinte erro

Conectando ao banco de dados hr_XEPDB1.
Executando PL/SQL: CALL DBMS_DEBUG_JDWP.CONNECT_TCP( '127.0.0.1', '52100' )
ORA-24247: acesso à rede negado pela ACL (access control list)
ORA-06512: em "SYS.DBMS_DEBUG_JDWP", line 68
ORA-06512: em line 1
Processo encerrado.
Desconectando do banco de dados hr_XEPDB1.


-- Conectado como SYS

Starting with Oracle 12c, if you want to debug PL/SQL stored procedures in the database through a Java 
Debug Wire Protocol (JDWP)-based debugger, such as SQL Developer or JDeveloper, then you must be granted 
the jdwp ACL privilege to connect your database session to the debugger at a particular host.

This is one way you can configure network access for JDWP operations:

	
BEGIN
 DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE
 (
 host => '127.0.0.1', -- colocar o ip do computador, se for local host e esse mesmo
 lower_port => null,
 upper_port => null,
 ace => xs$ace_type(privilege_list => xs$name_list('jdwp'),
 principal_name => 'hr',
 principal_type => xs_acl.ptype_db)
 );
END;


-- Tente debugar novamente, agora deve funcionar ok!

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
Seção 19:PL/SQL Fundamentos - Package de Banco de Dados 

61.Criando Packages de Banco de Dados - Conceito


 -- O QUE É UMA PACKAGE?
 -----------------------
 
 * Uma Package é um pacote composto de duas áreas (Package Specification)e um corpo 
  (Package Body) armazenados separadamente no banco de dados.
  
 * A especificação é a interface pública para a aplicação e declara as construções disponíveis
   para uso público.

 * O Corpo implementa a especificação 

 * Uma package assim como as procedures e function ficam armazenadas no banco de dados e podem
   ser compartilhadas com várias aplicações.
   
 * O maior benefício é que na primeira vez em que uma construção da package for referênciada, 
   toda a package é carregada em memória.
   * Organização
   * Performance, pq ficará em memória
   
 -- COMPONENTES DE UMA PACKAGE:
 ------------------------------
 
 Variáveis
 Constante
 Cursor
 Exceção
 Procedure
 Função 
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
62.Criando o Package Specification 

 -- VARIÁVEL GLOBAL:
 -------------------
 
 * Quando vc declara uma variável no Package Specification vc esta declarando uma variável 
 Global.
 
 * Uma variável Global terá valor durante toda a Sessão do Oracle, as variáveis normais 
   declaradas em uma função ou procedure deixa de existir quando termina o bloco.
 
 * Um Sessão do Oracle começa quando vc se conecta e termina quando vc se desconecta do banco
   de dados Oracle.

--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 2 - Criando o Package Specification 
--

-- Criando o Package Specification 

create or replace PACKAGE PCK_EMPREGADOS
IS  --> IS ou AS tanto faz!

	gMinSalary     employees.salary%TYPE; -- Variavel Global publica q tem valor durante toda a sessao

	PROCEDURE PRC_INSERE_EMPREGADO
	(pfirst_name    IN VARCHAR2,
	 plast_name     IN VARCHAR2,
	 pemail         IN VARCHAR2,
	 pphone_number  IN VARCHAR2,
	 phire_date     IN DATE DEFAULT SYSDATE,
	 pjob_id        IN VARCHAR2,
	 pSALARY        IN NUMBER,
	 pCOMMICION_PCT IN NUMBER,
	 pMANAGER_ID    IN NUMBER,
	 pDEPARTMENT_ID IN NUMBER);

	PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
	(pemployee_id   IN NUMBER,
	 ppercentual    IN NUMBER);

	FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
	(pemployee_id   IN NUMBER)
	RETURN NUMBER;

END PCK_EMPREGADOS;


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
63.Criando o Package Body 

--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 3 - Criando o Package Body
--

-- Criando o Package Body

create or replace PACKAGE BODY PCK_EMPREGADOS
IS 	--> IS ou AS tanto faz!
	PROCEDURE PRC_INSERE_EMPREGADO
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

	PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
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

	FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
	  (pemployee_id   IN NUMBER)
	   RETURN NUMBER
	IS 
	  vsalary  employees.salary%TYPE;
	BEGIN
	  SELECT salary
	  INTO   vsalary
	  FROM   employees
	  WHERE employee_id = pemployee_id;
	  RETURN (vsalary);
	EXCEPTION
	  WHEN NO_DATA_FOUND THEN 
		  RAISE_APPLICATION_ERROR(-20001, 'Empregado inexistente');
	  WHEN OTHERS THEN
		 RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
	END;

END PCK_EMPREGADOS;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
64.Referênciando Componentes de um Package 

--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 4 - Referenciando Componentes de uma Package 
--

-- Referenciando Componentes de uma Package 

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('Bob', 'Dylan','BDYLAN','515.258.4861',SYSDATE,'IT_PROG',20000,NULL,103,60);
  COMMIT;
END;

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('John', 'Lenon','JLENON','515.244.4861',SYSDATE,'IT_PROG',15000,NULL,103,60);
  COMMIT;
END;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
65.Procedimento de uma unica execução na Seção & Debuger


--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 5 - Procedimento de uma unica execução na Seção
--

-- Criando o Package Body

-- Procedimento de uma unica execução na Seção

create or replace PACKAGE BODY PCK_EMPREGADOS
IS
PROCEDURE PRC_INSERE_EMPREGADO
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
BEGIN
  IF  pSalary < PCK_EMPREGADOS.gMinSalary  -- essa variavel foi passada no package specification e esta sendo carregada no fina do codigo
  THEN
      RAISE_APPLICATION_ERROR(-20002, 'Salario não pode ser inferior ao menor salario dos empregados!');
  END IF;
      
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

PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
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

FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
  (pemployee_id   IN NUMBER)
   RETURN NUMBER
IS 
  vsalary  employees.salary%TYPE;
BEGIN
  SELECT salary
  INTO   vsalary
  FROM   employees
  WHERE employee_id = pemployee_id;
  RETURN (vsalary);
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
      RAISE_APPLICATION_ERROR(-20001, 'Empregado inexistente');
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Procedimento de uma unica execução na Seção
BEGIN 
  SELECT MIN(salary)
  INTO   PCK_EMPREGADOS.gMinSalary -- Carregando a variavel
  FROM   employees;
END PCK_EMPREGADOS;
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
66.Recompilando uma Package 

 * Se não quiser alterar o código fonte, pode apenas recompilar um package com o comando abaixo:

ALTER PACKAGE nome_package COMPILE SPECIFICATION
ou
ALTER PACKAGE nome_package COMPILE BODY

--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 6 - Recompilando uma  Package
--

-- Recompilando Package Specification de Banco de Dados

ALTER PACKAGE PCK_EMPREGADOS COMPILE SPECIFICATION;

-- Recompilando Package Body de Banco de Dados

ALTER PACKAGE PCK_EMPREGADOS COMPILE BODY;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
67.Removendo uma Package 

--
-- Seção 19 - Criando Packages de Banco de Dados
--
-- Aula 7 - Removendo uma Package
--

-- Removendo Package Body do Banco de Dados

DROP PACKAGE BODY PCK_EMPREGADOS;

-- Removendo Package Body e o Package Specification

DROP PACKAGE PCK_EMPREGADOS;

-- Recriando o Package Specification

create or replace PACKAGE PCK_EMPREGADOS
IS

	gMinSalary     employees.salary%TYPE;

	PROCEDURE PRC_INSERE_EMPREGADO
	(pfirst_name    IN VARCHAR2,
	plast_name     IN VARCHAR2,
	pemail         IN VARCHAR2,
	pphone_number  IN VARCHAR2,
	phire_date     IN DATE DEFAULT SYSDATE,
	pjob_id        IN VARCHAR2,
	pSALARY        IN NUMBER,
	pCOMMICION_PCT IN NUMBER,
	pMANAGER_ID    IN NUMBER,
	pDEPARTMENT_ID IN NUMBER);

	PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
	(pemployee_id   IN NUMBER,
	ppercentual    IN NUMBER);

	FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
	(pemployee_id   IN NUMBER)
	RETURN NUMBER;

END PCK_EMPREGADOS;

-- Recriando o Package Body

create or replace PACKAGE BODY PCK_EMPREGADOS
IS
PROCEDURE PRC_INSERE_EMPREGADO
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
BEGIN
  IF  pSalary < PCK_EMPREGADOS.gMinSalary  
  THEN
          RAISE_APPLICATION_ERROR(-20002, 'Salario não pode ser inferior ao menor salario dos empregados!');
  END IF;
      
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

PROCEDURE PRC_AUMENTA_SALARIO_EMPREGADO
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

FUNCTION FNC_CONSULTA_SALARIO_EMPREGADO
  (pemployee_id   IN NUMBER)
   RETURN NUMBER
IS 
  vsalary  employees.salary%TYPE;
BEGIN
  SELECT salary
  INTO   vsalary
  FROM   employees
  WHERE employee_id = pemployee_id;
  RETURN (vsalary);
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
      RAISE_APPLICATION_ERROR(-20001, 'Empregado inexistente');
  WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;

BEGIN 
  SELECT MIN(salary)
  INTO   PCK_EMPREGADOS.gMinSalary
  FROM   employees;
END PCK_EMPREGADOS;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
68.Vantagens e Benefícios do uso de Packages 

 * Organização de procedures e functions de banco de dados, agrupando procedures e funções
   relacionadas. 
   Ex. de organização --> No processo de ETL colocar todas as procedures daquele ETL em uma 
   package.
   
 * Modularidade do desenvolvimento da Aplicação

 * Possibilita a criação de identificadores globais que podem ser referenciados durante a 
  sessão.
  
 * Performance - toda package é colocada na memória na primeira chamada, redusindo acesso a 
   disco, visto q estatisticamente é muito provável que outros componentes package deverão ser
   referênciados.
   
 * Gerenciamento de procedures e funções mais simples 
 
 * Gerenciamento de segurança mais simples 
  Necessário somente o privilégio de execução para a package.
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
Seção 20:PL/SQL Fundamentos - Database DML Triggers 

69.Database DML Triggers

 * Desenvolva uma Database DML Trigger p/ executar um bloco PL/SQL automaticamente quando um 
   comando de manipulação de dados (DML) for executado para uma determinada tabela.
   
 * Triggers(gatilhos) são disparadas automaticamente quando ocorrer um evento para o qual 
   elas foram declaradas 
   
 * Uma database DML Trigger é associada à uma Tabela ou Visão

 * Triggers podem implementar regras mais complexas de negócio para tabelas ou visões 


 -- ALGUMAS UTILIZADADES DE UMA DATABASE TRIGGER:
 ------------------------------------------------
 
 * Manter um nível mais elevado de integridade dos dados, mais complexos que a utilização de
   constraints.
   
 * Informações de auditoria de uma tabela, armazenando que informações sobre as modificações
   foram realizados.
   
 * Automaticamente fazer a chamada a outros programas para realizar ações complementares
   Uma vez criada um Trigger, ninguém consegue violar essa trigger.
   
 
 -- RESTRIÇÕES EM DATABASE DML TRIGGERS:
 ---------------------------------------
 
 * A trigger faz parte da mesma transação do comando que a disparou o Evento, então temos como
   restrição que uma trigger não pode fazer controle de transação, ou seja, não podem executar
   os comandos COMMIT, ROLLBACK ou SAVEPOINT a menos que seja declarado o 
   PRAGMA AUTONOMOUS_TRANSACTIONS(Neste caso seria disparado em outra sessão, aí sim seria 
   possível, fazer o controle da transação).
   
 * O corpo de um trigger não pode ser maior do que 32760 bytes, visto que o corpo de um 
   Trigger é armazenado em uma coluna do tipo LONG.

 -- ELEMENTOS DE UMA DATABASE DML TRIGGER:
 ----------------------------------------- 
 
 
 ELEMENTO		DESCRIÇÃO
		
 Tempo 			Valores Possíveis: BEFORE(antes), AFTER(depois), INSTEAD OF(ao invés de)
 
 
 Evento			Valores Possíveis: INSERT, UPDATE[OF coluna], DELETE
 
 Tipo 			Valores Possíveis: STATEMENT(Nível de comando - default)
								   FOR EACH ROW(Nível de linha)
								   
 Corpo			Bloco PL/SQL 


 * Obs: Tem 18 combinações distintas de Triggers possíveis  para uma tabela.
 
  
  Sequencia de uma Trigger se existeir todas estas para o mesmo objeto:
  
  BUC --> Before Update a nível de Comando
   BUL --> Before Update a nível de Linha 
    AUL --> After update a nível de Linha
	 AUC --> After update a nível de Comando

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
70.database DML Triggers a Nível de Comando


 * A Trigger a nível de coluna é disparado uma única vez, mesmo que o fetch manipule várias 
   linhas.
   
 * Crie uma DML trigger combinando o tratamento de vários eventos, conforme infomação abaixo:
 
 * Execute um tratamento específico para cada evento da trigger testando os predicados
   INSERTING, UPDATING e DELETING para identificar o tratamento específico.
   
    
 Demostração prática da Trigger nível de comando:
 ------------------------------------------------
 ------------------------------------------------
 
--
-- Seção 20 - Database DML Triggers
--
-- Aula 2 - Database DML Triggers a Nível de Comando
--

-- Database DML Triggers a Nível de Comando

CREATE OR REPLACE TRIGGER B_I_EMPLOYEES_S_TRG
BEFORE INSERT
ON employees
BEGIN
  IF  (TO_CHAR(SYSDATE, 'DAY') IN ('SABADO', 'DOMINGO') OR
       TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) NOT BETWEEN 8 AND 18) 
  THEN
       RAISE_APPLICATION_ERROR( -20001,'O cadastramento de Empregados só é permitido em dias de semana dentro do horário comercial');
  END IF;
END;

-- Testando a validação da Trigger

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('George', 'Harrison','GHARRISON','515.258.5690',SYSDATE,'IT_PROG',25000,NULL,103,60);
  COMMIT;
END;

-- Criando uma Trigger Combinando Vários Eventos

CREATE OR REPLACE TRIGGER B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG
BEFORE INSERT OR UPDATE OR DELETE -- COMBINA VÁRIOS EVENTOS
ON employees
BEGIN
  IF  (TO_CHAR(SYSDATE, 'DAY') IN ('SABADO', 'DOMINGO') OR
       TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) NOT BETWEEN 8 AND 18) 
  THEN
      CASE
        WHEN INSERTING 
        THEN 
             RAISE_APPLICATION_ERROR( -20001,'O cadastramento de Empregados só é permitido em dias de semana, dentro do horário comercial');
        WHEN DELETING
        THEN 
             RAISE_APPLICATION_ERROR( -20002,'A deleção de Empregados só é permitido em dias de semana, dentro do horário comercial');
        ELSE
             RAISE_APPLICATION_ERROR( -20003,'A atualização de Empregados só é permitido em dias de semana, dentro do horário comercial');
        END CASE;
  END IF;
END;

-- Testando a validação da Trigger

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('George', 'Harrison','GHARRISON','515.258.5690',SYSDATE,'IT_PROG',25000,NULL,103,60);
  COMMIT;
END;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
71.Database DML Triggers a Nível de Linha 

 * Triggers a nível de linha podem ser disparadas antes ou depois da manipulação da linha, para
   cada linha afetada pelo comando.
   
 * Se o comando não afetar nehuma linha, a trigger a nível de linha não será disparada.

 * A claúsula FOR EACH ROW --> Significa q é uma trigger a nível de linha 
 
 
 -- PSEUDO CAMPOS :OLD e :NEW 
 ----------------------------
 
 * Dentro de triggers em nível de linhas é possível referenciar os valores existentes antes da 
   manipulação de dados através do qualificador :OLD, e os valores a serem aplicados pela
   manipulação de dados com o qualificador :NEW
   
 * Os qualificadores :OLD e :NEW podem ainda ser substituídos por outros qualificadores através
   da cláusula opcional REFERENCING


 -- PSEUDOCAMPOS :OLD e :NEW 
 --------------------------- 
 
 Operação		Valor :old.coluna		Valor :new.coluna 

INSERT 			NULL 					Valor inserido para a coluna 

UPDATE 			Valor da coluna			Valor da coluna após o update 
				antes do UPDATE 		

DELETE 			Valor da coluna			NULL
				antes do DELETE

 * Obs: Caso não queira usar as palavras :OLD e :NEW, podem ser substituídas pela cláusula 
   REFERENCING, porém, isso não faz muito sentido, mas é possível.
   

 -- Exemplo Prático:
 -------------------
   
--
-- Seção 20 - Database DML Triggers
--
-- Aula 3 - Database DML Triggers a Nível de Linha
--

-- Database DML Triggers a Nível de Linha

-- Criando a Tabela de  Log de Auditoria para a Tabela EMPLOYEES para a coluna SALARY

DROP TABLE employees_log;

CREATE TABLE employees_log
(employees_log_id NUMBER (11) NOT NULL,
 dt_log    DATE DEFAULT SYSDATE NOT NULL ,
 usuario   VARCHAR2(30),
 evento    CHAR(1) NOT NULL,
 employee_id  NUMBER(6) NOT NULL,
 salary_old  NUMBER(8,2),
 salary_new  NUMBER(8,2));
 
ALTER TABLE employees_log
ADD CONSTRAINT employees_log_pk PRIMARY KEY (employees_log_id);

CREATE SEQUENCE employees_log_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE
NOMAXVALUE;

-- Criando uma Trigger que gera Log de Auditoria para a Tabela EMPLOYEES para a coluna SALARY 

CREATE OR REPLACE TRIGGER A_IUD_EMPLOYESS_R_TRG
  AFTER INSERT OR UPDATE OF SALARY OR DELETE 
  ON EMPLOYEES
  FOR EACH ROW
DECLARE
	vevento       employees_log.evento%TYPE;
	vemployee_id  employees_log.employee_id%TYPE;
BEGIN
	CASE
		WHEN INSERTING 
        THEN
			vevento      := 'I';
			vemployee_id := :new.employee_id;
		WHEN UPDATING 
        THEN
			vevento      := 'U';
			vemployee_id := :new.employee_id;
		ELSE
			vevento      := 'D';
			vemployee_id := :old.employee_id;
	END CASE;
	INSERT INTO employees_log
		(employees_log_id, 
         dt_log, 
         usuario, 
         evento, 
         employee_id, 
         salary_old, 
         salary_new)
	VALUES
		(employees_log_seq.nextval,
		 SYSDATE,
		 USER,
		 vevento,
		 vemployee_id,
		 :old.salary,
		 :new.salary);
END A_IUD_EMPLOYESS_R_TRG;

-- Testando o disparo da Trigger

UPDATE employees 
SET    salary = salary * 1.5;

-- Desabilitando a Trigger B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG para poder testar a Trigger fora do horário comercial

alter trigger B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG disable;
alter trigger B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG enable;

-- Testando a TRIGGER

UPDATE employees 
SET    salary = salary * 1.5;

-- Consultando a Tabela employees_log

SELECT *
FROM   employees_log;

COMMIT;
 
-- Limpando a tabela de Log

DELETE FROM employees_log;

COMMIT;

SELECT *
FROM   employees_log;

-- Cláusula WHEN

CREATE OR REPLACE TRIGGER A_IUD_EMPLOYESS_R_TRG
  AFTER INSERT OR UPDATE OF SALARY OR DELETE 
  ON EMPLOYEES
  FOR EACH ROW
  WHEN (new.job_id <> 'AD_PRES') -- Ou seja, nao vai guardar log p/ o presidente da empresa
DECLARE
	vevento       employees_log.evento%TYPE;
	vemployee_id  employees_log.employee_id%TYPE;
BEGIN
	CASE
		WHEN INSERTING THEN
			vevento      := 'I';
			vemployee_id := :new.employee_id;
		WHEN UPDATING THEN
			vevento      := 'U';
			vemployee_id := :new.employee_id;
		ELSE
			vevento      := 'D';
			vemployee_id := :old.employee_id;
	END CASE;
	INSERT INTO employees_log
		(employees_log_id, dt_log, usuario, evento, employee_id, salary_old, salary_new)
	VALUES
		(employees_log_seq.nextval,
		 SYSDATE,
		 USER,
		 vevento,
		 vemployee_id,
		 :old.salary,
		 :new.salary);
END A_IUD_EMPLOYESS_R_TRG;

-- Testando a TRIGGER

UPDATE employees 
SET    salary = salary * 1.5;

SELECT *
FROM   employees_log;

COMMIT;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
72.Regras de Multating Tables 

 * São chamadas Multating Tables aquelas tabelas q estão sofrendo alterações durante a execução
   da Trigger.
   
 * A tabela à qual a trigger está associada é sempre uma multating Table, assim como qualquer
   tabela ligada à essa através de chave estrangeira FK.

 * Essas características impedem que uma trigger em nível de linha enxergue um conjunto de 
   dados inconsistentes(alterados, mas não confirmados).

 -- O QUE NÃO PODE SER FEITO EM UM TRIGGER?   
 ------------------------------------------
 
 REGRA 1 DE MULTANTING TABLE 
 
 * Regra 1 de Multating Tables:
   Não altere dados em colunas de chaves primárias, chaves estrangeiras ou chaves únicas de 
   tabelas relacionadas àquela na qual a trigger disparada está associada.
   
 * Essa restriçõa é válida para todas triggers em nível de linhas.

 * Essa restrição é válida para todas as triggers em nível de comando disparada como resultado 
   de uma operação DELETE CASCADE.
   Obs: Se vc não usa delete cascade, então não se aplica em nível de comando.
   
   

 REGRA 2 DE MULTANTING TABLE 
 
 * Regra 2 de Multating Tables: 
   Não leia informações de tabelas q estejam sendo modificadas.
   
 * Essa restrição é válida para todas triggers em nível de linhas

 * Essa restrição é válida para todas triggers em nível de comando disparada como resultado 
   de uma operação DELETE CASCADE.
   Obs: Se vc não usa delete cascade, então não se aplica em nível de comando.
   
   
 -- EXEMPLO PRATICO:
 ------------------- 
   
--
-- Seção 20 - Database DML Triggers
--
-- Aula 4 - Regras de Mutating Tables
--

-- Regras de Mutating Tables

-- Violação da Regra 1 de Mutating Table

/*
Regra 1 de Mutating Tables: não altere dados em colunas de chaves primárias, 
chaves estrangeiras ou chaves únicas de tabelas relacionadas àquela na qual 
a trigger disparada está associada
*/

CREATE OR REPLACE TRIGGER A_I_EMPLOYEES_R_TRG
AFTER INSERT 
ON employees
FOR EACH ROW
BEGIN
  UPDATE employees
  SET    email = UPPER(SUBSTR(:new.first_name,1,1) || :new.last_name)
  WHERE  employee_id = :new.employee_id;
END;

-- Testando Violação da Regra 1 

SET VERIFY OFF
BEGIN
  PRC_INSERE_EMPREGADO('Eric', 'Clapton','ECLAPTON','515.188.4861',SYSDATE,'IT_PROG',15000,NULL,103,60);
  COMMIT;
END;

-- Corrigindo a Trigger para que não viole a Regra 1

CREATE OR REPLACE TRIGGER A_I_EMPLOYEES_R_TRG
BEFORE INSERT 
ON employees
FOR EACH ROW
BEGIN
  :new.email := UPPER(SUBSTR(:new.first_name,1,1) || (:new.last_name)); -- Funcionou, pq nao usei um comando DML q viola a regra Nº1
END;

-- Testando a correção da Violação da Regra 1 
SET VERIFY OFF
BEGIN
  PRC_INSERE_EMPREGADO('Eric', 'Clapton','ECLAPTON','515.188.4861',SYSDATE,'IT_PROG',15000,NULL,103,60);
  COMMIT;
END;

-- Violação da Regra 2 de Mutating Table

/*
Regra 2 de Mutating Tables: Não leia informações de tabelas que estejam sendo modificadas
*/

CREATE OR REPLACE TRIGGER B_U_VALIDATE_SALARY_EMPLOYEES_R_TRG
BEFORE UPDATE OF salary
ON  employees
FOR EACH ROW
DECLARE
  vMaxSalary  employees.salary%TYPE;
BEGIN
  SELECT MAX(salary)
  INTO   vMaxSalary
  FROM   employees;

  IF  :new.salary > vMaxSalary * 1.2 
  THEN  
      RAISE_APPLICATION_ERROR(-20001, 'Salario não pode ser superior ao maior salario + 20%');
  END IF;
END;

-- Testando Violação da Regra 2 

SET VERIFY OFF
UPDATE employees
SET    salary = 70000
WHERE  employee_id = 100;

COMMIT;

DROP TRIGGER A_I_EMPLOYEES_R_TRG;

DROP TRIGGER B_U_VALIDATE_SALARY_EMPLOYEES_R_TRG;

-- Resolvendo o problema de Mutating Tables

CREATE OR REPLACE PACKAGE PCK_EMPLOYEES_DADOS 
AS
  TYPE max_salary_table_type IS TABLE OF NUMBER(10,2)
  INDEX BY BINARY_INTEGER;
  
  gMaxSalary  max_salary_table_type;

END PCK_EMPLOYEES_DADOS;

CREATE OR REPLACE TRIGGER B_IU_VALIDATE_SALARY_EMPLOYEES_S_TRG
BEFORE INSERT OR UPDATE OF salary
ON  employees
DECLARE
  vMaxSalary  employees.salary%TYPE;
BEGIN
  SELECT MAX(salary)
  INTO   PCK_EMPLOYEES_DADOS.gMaxSalary(1)-- variavel global pq foi declarado no package specification, q é um assossiative array, na ocorrencia 1, da package --> PCK_EMPLOYEES_DADOS
  FROM   employees;
END;

CREATE OR REPLACE TRIGGER B_IU_VALIDATE_SALARY_EMPLOYEES_R_TRG
BEFORE INSERT OR UPDATE OF salary
ON  employees
FOR EACH ROW
DECLARE
  vMaxSalary  employees.salary%TYPE;
BEGIN
  IF  :new.salary  > PCK_EMPLOYEES_DADOS.gMaxSalary(1) * 1.2 -- Ou seja, para nao violar a regra, basta referenciar a variavel global
  THEN  
      RAISE_APPLICATION_ERROR(-20001, 'Novo salario não pode ser superior ao maior salario + 20%');
  END IF;
END;

-- Testando Violação da Regra 2 

SET VERIFY OFF
UPDATE employees
SET salary = 70000
WHERE employee_id = 100;

COMMIT;

 * A solução para não violar as regras de Multanting Table a nível de comando vc de criar arrays
   definidos em uma package Spacification, conforme vimos nos exempos acima.
   
 * Para a triggers a nível de linha, vc deve ler os valores colocados no array da package
   specification, pra fazer o que vc deseja fazer. Dessa forma não viola as regras de 
   Multating Table.

 * Obs: Sempre observar se não vai honerar a performace da aplicação.
        A melhor solução criar procedures ou functions...
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
73.Desabilitando e Habilitando Database DML Triggers

 -- SINTAXE:
 
ALTER TRIGGER nome_trigger DISABLE; 
ALTER TRIGGER nome_trigger ENABLE;

-- Desabilita/Habilita todas as triggers relacionada a um objeto:

ALTER TABLE nome_tabela DISABLE ALL TRIGGERS;
ALTER TABLE nome_tabela ENABLE ALL TRIGGERS;

--
-- Seção 20 - Database DML Triggers
--
-- Aula 5 - Desabilitando e Habilitando Database DML Triggers
--

-- Desabilitando Database DML Triggers

ALTER TRIGGER B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG disable;

-- Habilitando Database DML Triggers

ALTER TRIGGER B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG enable;

-- Desabilitando todas Database DML Triggers da tabela employees

ALTER TABLE employees DISABLE ALL TRIGGERS;

-- Habilitando todas Database DML Triggers da tabela employees

ALTER TABLE employees ENABLE ALL TRIGGERS;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
74.Consultando Database DML Triggers pelo Dicionário de Dados 

 * Consultando as Triggers através das visões do dicionário de dados:
   
 USER_TRIGGERS
 ALL_TRIGGERS
 DBA_TRIGGERS


--
-- Seção 20 - Database DML Triggers
--
-- Aula 6 - Consultando Database DML Triggers pelo Dicionário de Dados
--

-- Consultando Database DML Triggers pelo Dicionário de Dados

SELECT *
FROM   user_triggers
WHERE  table_name = 'EMPLOYEES'  AND
       table_owner = 'HR';

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
75.Removendo uma Database DML Trigger

 -- SINTAXE:
 
DROP TRIGGER nome_trigger;


--
-- Seção 20 - Database DML Triggers
--
-- Aula 7 - Removendo uma Database DML Trigger
--

-- Removendo uma Database DML Trigger

DROP TRIGGER B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
76.Apresentação do Curso 

Bem vindo ao curso!!!
 O professor Emílio, inverteu a ordem, deveria estar no início...

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 21:PL/SQL Avançado - Instalação do Oracle Database 18c XE

77.Download e Instalação do Oracle Database 18c XE


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
78.Startup e Shutdown da instalação e Serviços de Oracle Database 18c XE 


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
79.ConfigurandoServiços Listener e Oracle no Windows 


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
80.Criando e Testando uma conexão com o Oracle Database 18c XE


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 22:PL/SQL Avançado - Instalação do Oracle SQL Developer 

81.Download instalação e Configuração de conexões do Oracle SQL Developer 

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 23:PL/SQL Avançado Utilizando SYS_REFCURSOR 

82.Utilizando SYS_REFCURSOR 


 * SYS_REFCURSOR é um tipo declarado no pacote STANDARD(pacote default do PL/SQL)
 
 * É uma declaração "fraca" do Tipo Cursor IS REF CURSOR 
 
 * Uma variável Cursor é uma variável que aponta para um cursor ou para um result set.
 
 * Você pode passar/receber uma variável cursor como argumento para uma procedure ou function
 
 -- Exemplo Prático:
 -------------------
 
 
--
-- Seção 23 - PL/SQL Avançado - Utilizando SYS_REFCURSOR
--
-- Aula 1 - Utilizando SYS_REFCURSOR
--

-- Utilizando SYS_REFCURSOR

CREATE OR REPLACE PROCEDURE PRC_CURSOR_EMPLOYEES
  (pemployees_cursor OUT SYS_REFCURSOR) -- retorna como saida um cursor
IS
BEGIN
  OPEN pemployees_cursor 
  FOR
	SELECT first_name, last_name -- retorna como saida o result set do cursor. Ou seja, as linhas resultantes do SELECT
	FROM employees;
	
END PRC_CURSOR_EMPLOYEES;

-- Procedure referenciando o Parametro OUT SYS_REFCURSOR

CREATE OR REPLACE PROCEDURE PRC_DISPLAY_EMPOYEES
IS
  employees_cursor  SYS_REFCURSOR;
  vfirst_name  employees.first_name%TYPE;
  vlast_name   employees.last_name%TYPE;
BEGIN
  PRC_CURSOR_EMPLOYEES(employees_cursor);
  
  LOOP
    FETCH  employees_cursor
    INTO   vfirst_name, vlast_name;
    EXIT   WHEN employees_cursor%NOTFOUND;
	
    DBMS_OUTPUT.PUT_LINE(vfirst_name || ' ' || vlast_name);

  END LOOP;
  
  CLOSE employees_cursor;
  
END PRC_DISPLAY_EMPOYEES;

-- Executando a Procedure PRC_DISPLAY_EMPOYEES

SET SERVEROUTPUT ON
SET VERIFY OFF -- Nao exie o codigo fonte, quando executa o objeto.
execute PRC_DISPLAY_EMPOYEES;

-- Variável Cursor e Reference Cursor 

CREATE OR REPLACE FUNCTION FNC_GET_EMPOYEES
  (pemployee_id  IN NUMBER)
  RETURN SYS_REFCURSOR -- retorna um cursor do tipo sys_refcursor
IS
  employees_cursor  SYS_REFCURSOR;
BEGIN
  OPEN employees_cursor  
  FOR
    SELECT first_name, last_name
    FROM   employees
    WHERE  employee_id = pemployee_id;
    
  RETURN employees_cursor;
  
END FNC_GET_EMPOYEES;

-- Procedure que Referenciando a Função

CREATE OR REPLACE PROCEDURE PRC_DISPLAY_EMPOYEES2
  (pemployee_id IN NUMBER)
IS
  employees_cursor  SYS_REFCURSOR; -- retornara o result set do cursor
  vfirst_name  employees.first_name%TYPE;
  vlast_name   employees.last_name%TYPE;
BEGIN
  employees_cursor := FNC_GET_EMPOYEES(pemployee_id);
  
  LOOP
    FETCH  employees_cursor
    INTO   vfirst_name, vlast_name;
    EXIT WHEN employees_cursor%NOTFOUND;
	
    DBMS_OUTPUT.PUT_LINE(vfirst_name || ' ' || vlast_name);

  END LOOP;
  
  CLOSE employees_cursor;
END PRC_DISPLAY_EMPOYEES2;

-- Executando a procedure 

SET SERVEROUTPUT ON
SET VERIFY OFF
execute PRC_DISPLAY_EMPOYEES2(100)


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 24:PL/SQL Avançado - Bulk Collect 

83.Bulk Collect 

 -- CONTEXT SWITCH e PERFORMANCE:
 --------------------------------

 * A maioria dos programas PL/SQL incluem comandos PL/SQL e comandos SQL 

 * Comandos PL/SQL são executados pelo PL/SQL Statement executador

 * Comandos SQL são executados pelo SQL Statement executador 

 -- RESUMO:
 ----------
 PL/SQL --> Executado pelo PL/SQL Statement executador
 SQL 	--> Executado pelo SQL Statement executador

-- Runtime -- Tempo de Execução
-- Engine --> mecanismo/Motor
 
 * Quando O PL/SQL runtime engine(tempo de execução do mecanismo) encontra um comando SQL, 
   ele para e passa o comando SQL para o SQL Engine.
   
 * O SQL Engine executa o comando SQL e retorna a informação de volta para o PL/SQL Engine

 * Esta tranferência de controle é chamada de CONTEXT SWITCH, e cada uma destas trocas de 
   contexto gera(incorre) em sobrecarga(overhead) que deteriora a performance do seu programa.

   
 -- Como podemos diminuir está perda de performance?
 ---------------------------------------------------
 
 Bull Collect 
 
 * Comando SELECT que recupera múltiplas linhas com um único FETCH, incrementando a performance
   da recuperação dos dados. 
   
 Para isso  
  
 * Utilizamos a funcionalidade BULK COLLECT para realizar o FETCH das linhas recuperadas pelo
   comando SELECT e armazenar em uma Collection.
  
   
 O SELECT utilizando o Bulk Collect vai preencher uma collect com todas as linhas recuperadas
 pelo SELECT e o programa vai poder tratar essas linhas recuperadas lendo o Array q está em 
 memória, dessa forma vai ter um ganho de performance, porque, vai reduzir as trocas de contexto 
 entre 
 PL/SQL Engine 
 SQL Engine
 
 
 Obs: Mesmo assim, é necessário utilizar o Bulk Collect com muita moderação, se o SELECT 
 lê muitas linhas exemplo(Milhões de linhas), essa collect vai ser muito grande, e com isso
 vai acontecer um consumo muito grande de memória, e essa memória é compartilhada com todas
 as sessões que utilizam o Oracle, e com isso vai deteriorar a performance inteira da empresa
 em relação ao Oracle.
 
 Este preblema pode ser resolvido utilizando a cláusula LIMITED q veremos na seção a seguir
 onde vamos aprender sobre o FOR ALL com BULK COLLECT e a cláusula LIMITED.
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
84.Associative Array of records - Bulk Collect

 -- SINTAXE:
 
DECLARE 
TYPE employees_table_type IS TABLE OF employees%ROWTYPE;

employees_table employees_table_type;

 Obs: toda ocorrencia do Associative Array vai conter todos os campos da tabela.
 

 -- EXEMPLO PRÁTICO:
 -------------------
 
--
-- Seção 24 - PL/SQL Avançado - Bulk Collect
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
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
85.Nested Table of Reocrds - Bulk Collect 


 -- SINTAXE:
 
DECLARE
TYPE employees_table_type IS TABLE OF employees%ROWTYPE;
	-- Quando n tem a cláusula INDEX BY, e é inicializado, sig. q é uma collect Nasted Table
employees_table employees_table_type := employees_table_type();


--
-- Seção 24 - PL/SQL Avançado - Bulk Collect
--
-- Aula 3 - Nested Table of Records - Bulk Collect
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

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
86.Varray of Records - Bulk Collect 

-- SINTAXE:

DECLARE 
TYPE employees_table_type IS VARRAY(200) OF employees%rowtype; 
		-- a diferença do Nested Table p/ Varray --> Precisa definir um limite...
employees_table employees_table_type := employees_table_type();

--
-- Seção 24 - PL/SQL Avançado - Bulk Collect
--
-- Aula 4 - Varray of Records - Bulk Collect
--

-- Varray of Records - Bulk Collect

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  TYPE employees_table_type IS VARRAY(200) OF employees%rowtype; -- A tabela tem q ter menos de duzentos registro, do contrario preciso alterar o valor definido no Varray
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

 Essa é a desvantagem, precisa saber quantos registros tem na tabela, pra poder usar o Varray
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
87.Utilizando Métodos para controlar Collections 

 -- SINTAXE
 
nome_collection.nomemetodo[(parametros)] -- Alguns métodos possuem parametros
 
--
-- Seção 24 - PL/SQL Avançado - Bulk Collect
--
-- Aula 5 - Utilizando Métodos para controlar Collections
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


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 25:PL/SQL Avançado - Bulk Collect - FOR ALL e LIMIT

88.Bulk Collect e For ALL


 * FOR ALL é um recurso utilizado para diminuir significativamente a troca de contexto 
   (CONTEXT SWITCH), e com isso se tem um ganho de performance.
   
 
 * Comandos INSERT, UPDATE e DELETE utilizam Collections para modificar múltiplas linhas de 
   dados muito rapidamente.
   
 * Nós utilizaremos a funcionalidade FOR ALL para executar comandos DML para todas as linhas de
   uma Collection.
   
 * FOR ALL empacota as atualizações para o SQL Engine com um único context switch.
  Com isso tem um grande ganho de performance em relação a um FOR normal.
  
   Obs: O FOR ALL só permite um comando DML, se tiver um processamento q não seja um único 
        comando DML, aí precisa usar um FOR normal.
 


--
-- Oracle PL/SQL Avançado 
--
-- Seção 25 - Bulk Collect e FOR ALL
--
-- Aula 1 - Bulk Collect - FOR ALL

-- Bulk Collect 

SELECT count(*)
FROM   employees;

SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY(ppercentual IN NUMBER)
AS
  TYPE employee_id_table_type IS TABLE OF employees.employee_id%TYPE 
  INDEX BY BINARY_INTEGER;  -- Type Associative Array
  employee_id_table  employee_id_table_type;
BEGIN
  SELECT DISTINCT employee_id 
    BULK COLLECT INTO employee_id_table  
  FROM employees;
  
  DBMS_OUTPUT.PUT_LINE('Linhas recuperadas: ' || employee_id_table.COUNT);
  
  FOR indice IN 1..employee_id_table.COUNT  LOOP 
    UPDATE employees e
    SET    e.salary = e.salary * (1 + ppercentual / 100)
    WHERE  e.employee_id = employee_id_table(indice);   -- para cada UPDATE dentro do FOR LOOP Ocorrerá troca de contexto (Context Switch) 
	--
    -- outro comandos - se tivesse outros comandos, teria q usar o FOR normal
    --
  END LOOP;
	
END;

-- Consultando antes

SELECT *
FROM employees;

--- Executando PRC_UPDATE_TAX 

exec PRC_UPDATE_SALARY(10)

-- Consultando depois

SELECT *
FROM employees;

ROLLBACK;

-- Bulk Collect - FOR ALL

SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY(ppercentual IN NUMBER)
AS
  TYPE employee_id_table_type IS TABLE OF employees.employee_id%TYPE 
  INDEX BY BINARY_INTEGER;  -- Type Associative Array
  employee_id_table  employee_id_table_type;
BEGIN

  SELECT DISTINCT employee_id 
    BULK COLLECT INTO employee_id_table  
  FROM employees;
  
  DBMS_OUTPUT.PUT_LINE('Linhas recuperadas: ' || employee_id_table.COUNT);
  
  FORALL indice IN 1..employee_id_table.COUNT  -- FOR ALL empacota todos os UPDATES e envia o pacote em 1 única troca de contexto (Context Switch)
    UPDATE employees e
    SET    e.salary = e.salary * (1 + ppercentual / 100)
    WHERE  e.employee_id = employee_id_table(indice); -- Obs; O ., é o proprio end do FORALL
	     
END;

-- Consultando

SELECT *
FROM employees;

--- Executando PRC_UPDATE_TAX 

exec PRC_UPDATE_SALARY(10)

-- Consultando

SELECT *
FROM employees;

ROLLBACK;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
89.Bulk Collect com LIMIT 

 * Collections PL/SQL são essencialmente arrays em memória.
   
   Obs. Quando um collection tem muitas(milhões) de linhas, vai consumir muita memória e essa 
   memória fica no instância do Banco de Dados Oracle, ou seja, essa memória está sendo 
   compartilhada por todos os usuário que estão conectados ao banco de dados, portanto, se 
   vc consome muita memória, vai sobrar pouca memória para outros programas que estão rodando
   simultâneamente.
   
 * Collections muito grandes consomem grandes quantidades de memória o que pode degradar o
   sistema.
   
 * Em algumas situações, pode ser necessário dividir os dados processados em pedaços para  
   tornar o código mais eficiente quanto ao consumo de memória.
   
 * Está divisão pode ser alcançada utilizando a cláusula LIMIT para a sintaxe do BULK COLLECT


 -- EXEMPLO PRÁTICO:
 ------------------- 

--
-- Oracle PL/SQL Avançado 
--
-- Seção 25 - Bulk Collect e FOR ALL
--
-- Aula 2 - Bulk Collect - FOR ALL e LIMIT

-- Bulk Collect - FOR ALL

SELECT COUNT(*)
FROM employees;

SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY2(ppercentual IN NUMBER)
AS
  vLimit CONSTANT INTEGER(2) := 30;
  
  TYPE employee_id_table_type IS TABLE OF employees.employee_id%TYPE 
  INDEX BY BINARY_INTEGER;  -- Type Associative Array
  employee_id_table  employee_id_table_type;
  
  CURSOR employees_cursor IS
    SELECT employee_id 
    FROM employees;
    
BEGIN

  OPEN employees_cursor;
  
      LOOP
        FETCH employees_cursor 
            BULK COLLECT INTO employee_id_table LIMIT vlimit;    
        EXIT WHEN employee_id_table.COUNT = 0;
        
        DBMS_OUTPUT.PUT_LINE('Linhas recuperadas: ' || employee_id_table.COUNT);
        
        FORALL indice IN 1..employee_id_table.COUNT 
          
          UPDATE employees e
          SET    e.salary = e.salary * (1 + ppercentual / 100)
          WHERE  e.employee_id = employee_id_table(indice);  -- FORALL termina com ;
        
      END LOOP;
  
  CLOSE employees_cursor;
  -- COMMIT;
  
END;

 * Embora possa ter muitos UPDATES só vai haver uma troca de contexto (CONTEXT SWITCH).
   Se fosse o FOR normal, faria várias mudanças de contexto.

SELECT *
FROM employees;

--- Executando PRC_UPDATE_SALARY2 

exec PRC_UPDATE_SALARY2(10)

-- Consultando

SELECT *
FROM employees;

ROLLBACK;

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 26: PL/SQL Avançado - SQL Dinâmico - Execute Immediate e variáveis Bind 

90.SQL Dinâmico - Execute immediate

 * Quando usar SQL Dinâmico?
	Quando eu precisar executar um SQL DML em tempo de execução dentro do programa ou até 
	mesmo um DDL.
	
 * Geração e execução de comandos SQL em tempo de execução
 
 * Quando vc precisa executar um comando SQL DDL dentro do seu programa PL/SQL 
 
 * O número ou tipo de dados de entradas e saídas é variável 
 
 
 -- SINTAXE - EXECUTE IMMEDIATE 
 ------------------------------
 
EXECUTE IMMEDIATE 'SQL string'
[INTO {variável[,variável]...
	|record
	|collection}];
	
	
 -- EXEMPLO PRÁTICO:
 -------------------

--
-- Oracle PL/SQL Avançado 
--
-- Seção 26 - SQL Dinâmico - Execute Immediate e variáveis Bind
--
-- Aula 1 - SQL Dinamico - EXECUTE IMMEDIATE

-- SQL Dinamico - EXECUTE IMMEDIATE

SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_FETCH_EMPLOYEES_DYNAMIC (pmanager_id IN employees.manager_id%TYPE DEFAULT NULL,
                                                         pdepartment_id IN employees.department_id%TYPE DEFAULT NULL)
AS
  vemployees_record  employees%ROWTYPE; -- variavel record c/ a mesma estrutura da tb employees
  vsql               VARCHAR2(600) := 'SELECT * FROM employees WHERE 1=1 ';  -- quardando o comando seq dentro da variavel vsql
  TYPE  employees_table_type IS TABLE OF employees%ROWTYPE   -- Associative Array de record
  INDEX BY PLS_INTEGER;
  employees_table            employees_table_type;
  
BEGIN

  IF  pmanager_id IS NOT NULL THEN
      vsql := vsql || ' AND manager_id = ' || pmanager_id;
  END IF;
  
  IF  pdepartment_id IS NOT NULL THEN
      vsql := vsql || ' AND department_id = ' || pdepartment_id;
  END IF;
    
  DBMS_OUTPUT.PUT_LINE(vsql);
  DBMS_OUTPUT.NEW_LINE;
  
  EXECUTE IMMEDIATE vsql -- c o retorno do meu select q esta na variavel vsql vou popular a variavel employees_table atraves do BULK COLLECT INTO
  BULK COLLECT INTO employees_table; 
  
  FOR i IN 1..employees_table.COUNT  LOOP
  
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' ||
                         employees_table(i).first_name || ' - ' ||
                         employees_table(i).last_name || ' - ' ||
                         employees_table(i).email || ' - ' ||
                         employees_table(i).manager_id || ' - ' ||
                         employees_table(i).department_id);
    
  END LOOP;
  
EXCEPTION
  WHEN OTHERS THEN 
       RAISE_APPLICATION_ERROR(-20001,'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando a procedure

exec PRC_FETCH_EMPLOYEES_DYNAMIC(pmanager_id => 103, pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_DYNAMIC(pmanager_id => 103)

exec PRC_FETCH_EMPLOYEES_DYNAMIC(pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_DYNAMIC; 

 * Só se usa o SQL Dinâmico quando precisa montar o comando em tempo de execução, do contrario
   se usa o SQL fixo, normal.
   A primeira regra na programação é não complicar...
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
91.SQL Dinâmico - Execute Immediate e Variáveis Bind 

 Bind Variáveis e Conseito de Parsing
  
 O Oracle tem uma arquitetura bastante complexa e eficiente de gerenciamento de memória.
 
 * Quando se executa um comando SQL o Oracle consulta a shared pool, que é uma área de memória,
   uma parte da SGA(System Global Área) para verificar se o comando já foi submetido antes.
   
 * Se o comando já está na shared pool, o plano de execução para o comando é recuperado, e 
   o comando SQL é executado.
   
 * Cada vez que um comando é submetido (pela primeira vez desde quando a instância) do Oracle 
  subiu, o Oracle verifica se está na Shared pool, quando isso acontece, é maravilhoso.
  
 * Se o comando não for encontrado na shared pool, o Oracle terá q executar o processo de 
   parsing do comando, 
   (no processo de parsing o Oracle através de um processo chamado optmize)vai escolher o 
   melhor plano de execução, antes de executar o comando. Feito isso, ele vai salvar esse 
   plano de execução na Shared Pool e executar o comando.
   
 * Este processo é conhecido como "hard parse" e em aplicações OLTP realizam milhares ou 
   milhões de "hard parse" podem causar perda de performance.
   
  Uma forma de melhorar isso, é usar variáveis do tipo Bind.  
    
 * Utilizando BIND variáveis, nós reutilizamos o SQL parsing q foi feito na primeira vez q
   o comando foi executado, evitando o Hard Parse.
   
   
 * Quando se evita o Hard Parse isso é chamado de Soft Parse(Soft Parse, antecede o Hard Parse).
 
 
 -- Como fazer isso com SQL Dinâmico?
 ------------------------------------
 
 * Geração e execução de comandos SQL em tempo de execução
 
 * Quando vc precisa executar um comando SQL DDL dentro do seu programa PL/SQL
 
 * O Número ou tipo de dados de entrada e saídas é variável
 
 
 -- SINTAXE - EXECUTE IMMEDIATE 
 ------------------------------
 
EXECUTE IMMEDIATE 'SQL string'
[INTO{variável[,variável]...
		|record
		|collection}]
	[USING bind_argument
		   [,bind_argument]...];
	
	
--
-- Oracle PL/SQL Avançado 
--
-- Seção 26 - SQL Dinâmico - Execute Immediate e variáveis Bind
--
-- Aula 2 - SQL Dinamico com EXECUTE IMMEDIATE e variáveis Bind

-- SQL Dinamico - EXECUTE IMMEDIATE e variáveis Bind


SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_FETCH_EMPLOYEES_DYNAMIC_BIND
							(pmanager_id    IN employees.manager_id%TYPE DEFAULT NULL,
							 pdepartment_id IN employees.department_id%TYPE DEFAULT NULL)
AS
  vemployees_record  employees%ROWTYPE;
  vsql               VARCHAR2(600) := 'SELECT *
                                       FROM employees
                                       WHERE 1=1 ';
  TYPE  employees_table_type IS TABLE OF employees%ROWTYPE   -- Associative Array
  INDEX BY PLS_INTEGER;
  employees_table            employees_table_type;
  
BEGIN

  IF  pmanager_id IS NOT NULL THEN
      vsql := vsql || ' AND manager_id = :manager_id'; -- esta referenciando a variavel Bind
  END IF;
  
  IF  pdepartment_id IS NOT NULL THEN
      vsql := vsql || ' AND department_id = :department_id'; -- esta referenciando a variavel Bind
  END IF;
  
  DBMS_OUTPUT.PUT_LINE(vsql);
  
  CASE
    WHEN pmanager_id IS NOT NULL AND pdepartment_id IS NOT NULL THEN
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table USING pmanager_id, pdepartment_id;
    WHEN pmanager_id IS NOT NULL AND pdepartment_id is NULL THEN
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table USING pmanager_id;
    WHEN pmanager_id IS NULL AND pdepartment_id IS NOT NULL THEN
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table USING pdepartment_id;
    ELSE
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table;
  END CASE;    
  
  FOR i IN 1..employees_table.COUNT  LOOP
  
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' ||
                         employees_table(i).first_name || ' - ' ||
                         employees_table(i).last_name || ' - ' ||
                         employees_table(i).email || ' - ' ||
                         employees_table(i).manager_id || ' - ' ||
                         employees_table(i).department_id);
    
  END LOOP;
  
EXCEPTION
  WHEN OTHERS THEN 
       RAISE_APPLICATION_ERROR(-20001,'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando a procedure

exec PRC_FETCH_EMPLOYEES_DYNAMIC_BIND(pmanager_id => 103, pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_DYNAMIC_BIND(pmanager_id => 103)

exec PRC_FETCH_EMPLOYEES_DYNAMIC_BIND(pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_DYNAMIC_BIND;	
 
 
 Usando a variável Bind é melhor porque não precisa fazer o Hard Parse, apenas o Soft parse.
 Obs: Se o objeto(procedure ou outro objeto) for utilizado pelo programa chamador com muita 
 frequencia o ideal é usar com variável Bind. Performance é detalhes, nunca significa q é um 
 problema, sempre são vários detalhes.
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 27: PL/SQL Avançado - SQL Dinâmico - DBMS_SQL 


92.SQL Dinâmico - DBMS_SQL 

 * A Package DBMS_SQL foi introduzida no Oracle a partir da versão 7, protanto, nessa época 
   não existia o comando execute immediate, então para fazer um programa com SQL Dinâmico
   era preciso utilizar essa package --> DBMS_SQL...
   
 * Nas versões > 7 vc pode usar a package DBMS_SQL, porém, usar o SQL dinâmico
   (em tempo de execução) execute immediate é muito mais fácil.
   
 * Geração e execução de comandos SQL em tempo de execução.

 * Quando vc precisa executar um comando SQL DDL dentro do seu programa PL/SQL.
   -- A únicas forma de executar um comando DDL dentro do bloco é através do SQL Dinâmico..
 * O número ou tipo de dados de entradas e saídas é variável.

 
--
-- Oracle PL/SQL Avançado 
--
-- Seção 27 - SQL Dinâmico -  DBMS_SQL

-- Aula 1 - SQL Dinamico - DBMS_SQL

-- SQL Dinamico - DBMS_SQL

-- Comando DML

SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY_EMPLOYEE (pemployee_id IN employees.employee_id%TYPE,
                                                        ppercentual  IN NUMBER)
IS
  vcursor_id       INTEGER; -- Vai receber o ID de um cursor
  vrows_processed  INTEGER; -- Essa variavel vai receber o n de linhas processadas pelo cursor 
BEGIN

  -- OPEN Cursor
  vcursor_id  := DBMS_SQL.OPEN_CURSOR;
  
  -- Parsing comando SQL
  DBMS_SQL.PARSE(vcursor_id, 'UPDATE employees
                              SET    salary = salary * (1 + (:gpercentual/100))
                              WHERE  employee_id = :gemployee_id', DBMS_SQL.NATIVE);

  -- Binding Variáveis
  DBMS_SQL.BIND_VARIABLE(vcursor_id, ':gpercentual', ppercentual);
  DBMS_SQL.BIND_VARIABLE(vcursor_id, ':gemployee_id', pemployee_id);
  
  -- Executando o Cursor
  vrows_processed := DBMS_SQL.EXECUTE(vcursor_id);
  
  -- CLOSE Cursor
  DBMS_SQL.CLOSE_CURSOR(vcursor_id);
  
  --COMMIT;
  
EXCEPTION
   WHEN OTHERS THEN 
       RAISE_APPLICATION_ERROR(-20001,'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando a procedure

SELECT *
FROM   employees;

exec PRC_UPDATE_SALARY_EMPLOYEE(pemployee_id => 109, ppercentual => 10)

SELECT *
FROM   employees;

ROLLBACK;		
--------------
-- 2º exemplo

-- SQL Dinamico - DBMS_SQL

-- Comando SELECT

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE

  vcursor_id   INTEGER;
  vrowcount    NUMBER;
  vfirst_name  VARCHAR2(30);
  vlast_name   VARCHAR2(30);

BEGIN

  vcursor_id  :=  DBMS_SQL.OPEN_CURSOR; -- OPEN_CURSOR é uma funcao q esta sendo aberta

  DBMS_SQL.PARSE(vcursor_id,'SELECT first_name,last_name FROM employees', DBMS_SQL.NATIVE);

  DBMS_SQL.DEFINE_COLUMN(vcursor_id,1,vfirst_name,30);

  DBMS_SQL.DEFINE_COLUMN(vcursor_id,2,vlast_name,30);

  vrowcount := DBMS_SQL.EXECUTE_AND_FETCH(vcursor_id);

  LOOP

    EXIT WHEN DBMS_SQL.FETCH_ROWS(vcursor_id) = 0;

    DBMS_SQL.COLUMN_VALUE(vcursor_id,1,vfirst_name);

    DBMS_SQL.COLUMN_VALUE(vcursor_id,2,vlast_name);

    DBMS_OUTPUT.PUT_LINE(vlast_name||', '||vfirst_name);

   END LOOP;

   DBMS_SQL.CLOSE_CURSOR(vcursor_id);

END;
	  
 Essa aila sobre a Package DBMS_SQL é ultilizadas apenas nas versões antigas do DB Oracle 
 versão 7, foi importante conhecer, mas dificilmente será usado, para SQL dinâmico usar 
 Execute immediate.
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 28:pl/SQL Avançado - Cursor Explícito com SQL Dinâmico 

93.Cursor Explícito com SQL Dinâmico 

 DECLARAÇÃO DO CURSOR TIPO REF CURSOR 


 * Para utilizar o SQL Dinâmico em cursor, é necessário delrarar o cursor tipo REF Cursor 
 
 -- SINTAXE:
 -----------
-- É um tipo p/ referenciar um cursor q não está atrelado a nenhum select.
TYPE nome_do_cursor IS REF CURSOR;
nome_do_cursor nome_do_tipo;


--
-- Oracle PL/SQL Avançado 
--
-- Seção 28 - Cursor Explícito com SQL Dinâmico
--
-- Aula 1 - Cursor Explícito com SQL Dinâmico

-- SQL Dinamico com Cursor

SET SERVEROUTPUT ON
SET VERIFY OFF
CREATE OR REPLACE PROCEDURE PRC_FETCH_EMPLOYEES_CURSOR_DYNAMIC
  (pmanager_id         IN employees.manager_id%TYPE DEFAULT NULL,
   pdepartment_id      IN employees.department_id%TYPE DEFAULT NULL)
AS
  TYPE employees_cursor_type IS REF CURSOR;
  employees_cursor           employees_cursor_type;
  vemployees_record          employees%ROWTYPE;
  vsql                       VARCHAR2(600) := 'SELECT *
                                               FROM employees
                                               WHERE 1=1 ';
BEGIN

  IF  pmanager_id IS NOT NULL THEN
      vsql := vsql || ' AND manager_id = :manager_id';
  END IF;
  IF  pdepartment_id IS NOT NULL THEN
      vsql := vsql || ' AND department_id = :department_id';
  END IF;
  
  DBMS_OUTPUT.PUT_LINE(vsql);
  
  CASE
    WHEN pmanager_id IS NOT NULL AND pdepartment_id IS NOT NULL THEN
         OPEN employees_cursor FOR vsql USING pmanager_id, pdepartment_id;
    WHEN pmanager_id IS NOT NULL AND pdepartment_id is NULL THEN
         OPEN employees_cursor FOR vsql USING pmanager_id;
    WHEN pmanager_id IS NULL AND pdepartment_id IS NOT NULL THEN
         OPEN employees_cursor FOR vsql USING pdepartment_id;
    ELSE
         OPEN employees_cursor FOR vsql; -- Após dar o Open do cursor ela fica no result SET da SGA Shared Pool
  END CASE;  
  
  LOOP
    FETCH  employees_cursor
    INTO   vemployees_record;
    
    EXIT WHEN employees_cursor%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE(vemployees_record.employee_id || ' - ' ||
                         vemployees_record.first_name || ' - ' ||
                         vemployees_record.last_name || ' - ' ||
                         vemployees_record.email || ' - ' ||
                         vemployees_record.manager_id || ' - ' ||
                         vemployees_record.department_id);
    
  END LOOP;
  
  CLOSE employees_cursor;
  
EXCEPTION
   WHEN OTHERS THEN 
       RAISE_APPLICATION_ERROR(-20001,'Erro Oracle ' || SQLCODE || SQLERRM);
END;

-- Executando a procedure

exec PRC_FETCH_EMPLOYEES_CURSOR_DYNAMIC(pmanager_id => 103, pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_CURSOR_DYNAMIC(pmanager_id => 103)

exec PRC_FETCH_EMPLOYEES_CURSOR_DYNAMIC(pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_CURSOR_DYNAMIC;


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 29:PL/SQL Avançado - PACKAGE DBMS_SCHEDULER

94.Visão Geral da Package DBMS_SCHEDULER 



 -- OBJETIVO:
 
 * Aprender a usar a PAckage DBMS_SCHEDULER para agendar tarefas.
   Ou seja, executar jobs de acordo com uma agenda.
   
 * A Package DBMS_SCHEDULER possui um grande número de funções e procedimentos.
   Coletivamente estas funções são chamadas de Scheduler.
   
 * O Scheduler fornece grandes funcionalidades para as necessidades de agendamento de processos
 
 
 1º Componente da PACKAGE DBMS_SCHEDULER --> É o PROGRAM 
 
 * Program: É uma coleção de metadados sobre o qual será executado pelo Scheuler
 
 * Um programa pode ser uma procedure PL/SQL, um programa externo, tais como:
   um executável C, um script Shell, uma aplicação Java e etc.
   
 * Vc pode especificar um lista de argumentos para um programa
 
 
 2º Componente da PACKAGE DBMS_SCHEDULER --> É o SCHEDULER 

 * Scheduler: É o agendamento, especifica quando e por quanto tempo o job será executado.
 
 
 3º Componente da PACKAGE DBMS_SCHEDULER --> É o JOB
 
 * JOB: É o trabalho que precisa ser executado, ou seja a associação do Program mais o Scheduler
        Especifica o que será executado (Program) e em que período (Scheduler)

 		
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
95.Criando um Programa 

 -- CRIANDO E HABILITANDO UM PROGRAMA
 
 * Para criar um programa utilize o procedimento CREATE_PROGRAM 
 
 * Um programa é uma coleção de metadados sobre o que será executado pelo SCHEDULER
 
 * Para executar um programa basta registrar o programa em job juntamente com um SCHEDULER
 
 * Para criar um programa no seu próprio schema, é necessário o privilégio CREATE JOB
 
 * Para criar um programa no schema de outro usuário, é necessário o privilégio CREATE ANY JOB
 
 * Um programa por default é criado com estado desabilitado, um job não pode ser executado até
   que o programa seja habilitado.
 
 
  -- SINTAXE DE UM PROGRAMA
  
DBMS_SCHEDULER.CREATE_PROGRAM -- PACKAGEM + PROCEDURE 
(program_name IN VARCHAR2,
 program_type IN VARCHAR2,
 program_action IN VARCHAR2, -- codigo do programa
 number_of_arguments IN PLS_INTEGER default 0, -- numeros de parâmatros
 enable 		IN BOLLEAN, -- P/ criar o programa habilitado, o default ér falso.
 comments 		IN VARCHAR2 default NULL);  -- Uma descricao do programa, p/ documentacao

	
 -- QUAIS OS TIPOS DE PROGRAMAS QUE PODEM SER CRIADOS?
 
 * O parâmetro tipo_programa inclui os seguintes valores:
 
 plsql_block 	  --> P/ blocos anonimos, raramente se agenda um bloco anônimo
 stored_procedure --> p/ procedures
 executable		  --> p/ executaveis externos, um executável C, um script Shell, uma aplicação Java e etc.
	
	
 Se o programa não foi criado habilitado, isso pode ser feito através do código abaixo:
 
DBMS_SCHEDULER.ENABLE(name in VARCHAR2); -- Informar o nome do objeto a ser habilitado
 -- Lembrado q o job só executa se o programa estiver habilitado, do contrario, dará erro.
 
 
-- Habilitar/ Desabilitar 
DBMS_SCHEDULER.ENABLE(name in VARCHAR2); -- Habilita
DBMS_SCHEDULER.DISABLE(name in VARCHAR2); -- Desabilita  
 

-- Para remover um programa:
DBMS_SCHEDULER.DROP_PROGRAM(program_name IN VARCHAR2,
							force IN BOOLEAN); -- Vai forcar p/ remover com valores TRUE/FALSE
/*
 Com a opção force true, vai remover o programa mesmo se ele tiver jobs que referenciam o 
 programa. Se a opção force estiver false, ele não vai deixar remover um programa que é 
 referenciado jobs.
*/

--
-- Oracle PL/SQL Avançado 
--
-- Seção 29 - Package DBMS_SCHEDULLER
--
-- Aula 2 - Criando um Programa

-- Criando e Habilitando um Programa

-- Conectar como SYS

grant CREATE JOB to hr;

-- Conectar como sales

DROP TABLE AGENDA;

CREATE TABLE AGENDA
(agenda_id    NUMBER,
 agenda_data  DATE);

-- SELECT * FROM AGENDA; 
DROP SEQUENCE AGENDA_SEQ;
 
CREATE SEQUENCE AGENDA_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOMAXVALUE -- Quando nao tem valor maximo, o maximo é 10 elevado a 26
NOCYCLE;

CREATE OR REPLACE PROCEDURE PRC_INSERE_DATA_AGENDA
IS
BEGIN
  INSERT INTO hr.agenda
  VALUES (agenda_seq.NEXTVAL, sysdate);
  COMMIT;
END;

-- Criando e Habilitado um Programa

BEGIN
    DBMS_SCHEDULER.create_program(
        program_name => 'HR.PRC_INSERE_AGENDA', -- pode colocar o nome q quiser
        program_action => 'HR.PRC_INSERE_DATA_AGENDA',
        program_type => 'STORED_PROCEDURE',
        number_of_arguments => 0, -- nao tem parametros, entao é 0
        comments => 'Insere dados na agenda',
        enabled => TRUE); -- estou criando já habilitado
/*
    DBMS_SCHEDULER.ENABLE(name=>'HR.PRC_INSERE_AGENDA');   -- Para habilitar, só rodar esse comando 
*/
END;

-- Removendo um Programa

BEGIN
    DBMS_SCHEDULER.drop_program(
        program_name => 'HR.PRC_INSERE_AGENDA',
        force => TRUE);
END;

-- Criando e Habilitado um Programa

BEGIN
    DBMS_SCHEDULER.create_program(
        program_name => 'HR.PRC_INSERE_AGENDA',
        program_action => 'HR.PRC_INSERE_DATA_AGENDA',
        program_type => 'STORED_PROCEDURE',
        number_of_arguments => 0,
        comments => 'Insere dados na agenda',
        enabled => TRUE);

    -- DBMS_SCHEDULER.ENABLE(name=>'HR.PRC_INSERE_AGENDA');    

END;
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
96.Criando uma Agenda 

 -- SINTAXE PARA A CRIAÇÃO DE UMA AGENDA:
 
DBMS_SCHEDULER.CREATE_SCHEDULER(scheduler_name  IN VARCHAR2,
								start_date 	    IN VARCHAR2 DEFAULT NULL,
								repeat_interval IN VARCHAR2, -- criterio de repeticao desse agendamento
								end_date 		IN TIMESTAMP WITH TIMEZONE DEFAULT NULL, --encerramento desse scheduler
								comments 		IN VARCHAR2 DEFAULT NULL
								);

 -- DBMS_SCHEDULER.CREATE_SCHEDULER:
 
 * Start_date especifica quando que o schedule se tornará ativo.
 * end_date especifica quando que o schedule ficará inativo.
 * repeat_interval é uma expressão que se utiliza de dados do calendário ou sintaxe PL/SQL
   onde especifica qual a frequência de execução do job.
   
   
 --  A EXPRESSÃO REPEAT_INTERVAL:
 
 *  A expressão repeat_nterval possui três partes:
    * A cláusula frequência
	* A intervalo de repetição
	* A outra cláusula de frequencia 
	
	
	-- A cláusula frequência é composta pelos seguintes elementos:
	--------------------------------------------------------------
	
		 * YEARLY   --> Anoalmente
		 * MONTHLY  --> Mensalmente 
		 * WEEKLY   --> Semanalmente 
		 * DAILY    --> Diariamente
		 * HOURLY	--> De hora em Hora
		 * MINUTELY --> De minuto em minuto
		 * SECONDLY --> De segundo em segundo
 
 
	-- O intervalo de repetição
	---------------------------
	
		* O intervalo de repetição é configurado entre 1 e 99.
	
	
	-- A outra cláusula de frequência
	---------------------------------	
	
		A outra cláusula de frequência é composta pelos seguintes elementos:
		
		* BYMONTH 	 --> Por mês 
		* BYWEEKNO   --> Por dia da semanda
		* BYYEARDAY  --> Por dia do ano
		* BYMONTHDAY -->  Por dia do mês
		* BYDAY 	 --> Por dia do mês
		* BYHOUR	 --> Por hora
		* BYMINUTE   --> Por minuto 
		* BYSECOND   --> Por segundo
		
		
-- Exemplo, se eu quiser todo dia 20 do mês
REPEAT_INTERVAL => 'FREQ=MONTHLY; -- Mensalmente
BYMONTHDAY = 20'				  -- todo dia 20

-- Como não foi definido o intervalo de repetição, por default é 1
 
 
-- Se eu quisesse a cada 60 dias?
REPEAT_INTERVAL => 'FREQ=DAILY;
INTERVAL=60'
 
 
-- EXEMPLO PRÁTICO: 

--
-- Oracle PL/SQL Avançado 
--
-- Seção 29 - Package DBMS_SCHEDULLER
--
-- Aula 3 - Criando uma Agenda

-- Criando uma Agenda

-- Conectar como SYS

grant CREATE JOB to hr;
 
-- Criando um Schedule (a cada 10 segundos)
 
BEGIN
    DBMS_SCHEDULER.CREATE_SCHEDULE 
                        (schedule_name  => 'SCH_A_CADA_10_SEGUNDOS',
                         start_date     => SYSTIMESTAMP, -- data atual no formato timestamp
                         --start_date => TO_TIMESTAMP_TZ('2020-03-17 15:17:36.000000000 AMERICA/SAO_PAULO','YYYY-MM-DD HH24:MI:SS.FF TZR'), -- se eu fosse usar uma data fixa, teria que usar esse formato
                         repeat_interval  => 'FREQ=SECONDLY;INTERVAL=10', -- A cada segundo de Dez em Dez segundos
                         end_date => TO_TIMESTAMP_TZ('2020-10-14 20:00:00.000000000 AMERICA/SAO_PAULO','YYYY-MM-DD HH24:MI:SS.FF TZR'),
                         comments => 'A cada 10 segundos'
                         );
END;
 
--Removendo um Schedule 
BEGIN
    DBMS_SCHEDULER.DROP_SCHEDULE (schedule_name  => 'SCH_A_CADA_10_SEGUNDOS',
                                  force    => FALSE -- False ele nao remove se estiver sendo refernciado por um job
                                  );
END;


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
97.Criado um JOB

 * Assim como um programa, um job é criado com status desabilitado. É necessário habilitá-los
   explicitamente para que ele se torne ativo e agendado.
   
   
 * Um job pode ser criado com os seguintes formatos:
  
	* Com um program, com um scheduler
	* Com um program, sem um scheduler
	* Sem um program, com um agendamento
	* Sem um program, sem um agendamento
	
-- A SINTAXE PARA A CRIAÇAO DE JOB QUANDO SE TEM O PROGRAM E O SCHEDULER:
DBMS_SCHEDULER.CREATE_JOB(job_name IN VARCHAR2,
						  program_name IN VARCHAR2,
						  scheduler_name IN VARCHAR2
						  ); 



-- A SINTAXE PARA A CRIAÇAO DE JOB QUANDO NÃOSE  TEM O PROGRAM E NÃO SE TEM O SCHEDULER:
DBMS_SCHEDULER.CREATE_JOB(job_name IN VARCHAR2,
						  program_type IN VARCHAR2,
						  program_action IN VARCHAR2, -- pode ser um caminho 
						  number_of_arguments IN PLS_INTEGER DEFAULT  0,
						  start_date IN TIMESTAMP WITH TIMEZONE DEFAULT NULL,
						  repeat_interval IN VARCHAR2,
						  end_date IN TIMESTAMP WITH TIMEZONE FEDAULT NULL);


 -- PARA ENTERROMPER A EXECUÇÃO DO JOB:
 
DBMS_SCHEDULER.STOP_JOB(job_name IN VARCHAR2,
						force IN BOOLEAN); -- Pode ser true ou false


-- views do dicionário de dados que vão conter informações sobre Jobs

USER_SCHEDULER_JOB_ARGS 		--> Agumentos configurados para todos os jobs
USER_SCHEDULER_JOB_LOG 			--> Informações de log de todos os jobs
USER_SCHEDULER_JOB_RUN_DETAILS	--> Detalhes de execuções de jobs
USER_SCHEDULER_JOBS				--> Lista dos jobs agendados
USER_SCHEDULER_PROGRAM_ARGS		--> Argumentos de todos os programas agendados
USER_SCHEDULER_PROGRAMS 		--> Lista dos programas agendados
USER_SCHEDULER_SCHEDULES		--> Agendamentos pertencentes ao usuário 


-- EXEMPLO PRÁTICO PARA CRIAÇÃO DO JOBS	 


--
-- Oracle PL/SQL Avançado 
--
-- Seção 29 - Package DBMS_SCHEDULLER
--
-- Aula 4 - Criando um Job

-- Criando um Job

-- Conectar como SYS

grant CREATE JOB to hr;

BEGIN
    DBMS_SCHEDULER.CREATE_JOB (job_name => '"HR"."JOB_INSERE_DATA_AGENDA"', -- nome do job
                               program_name => '"HR"."PRC_INSERE_AGENDA"', -- ja temos o programa, so informar o nome
                               schedule_name => '"HR"."SCH_A_CADA_10_SEGUNDOS"', -- ja temos o scheduler, so informar o nome
                               enabled => TRUE,
                               auto_drop => FALSE, -- se estivesse TRUE e apos a execuçao o job falhasse, ele removeria o job, nao quero isso
                               comments => 'Job Insere Data na Agenda',             
                               job_style => 'REGULAR' -- 
                               );



/*
-- se eu nao tivesse habilitado o job, poderia utilizar ese comando para habilitá-lo
    DBMS_SCHEDULER.enable(
             name => '"HR"."JOB_INSERE_DATA_AGENDA"');
*/
END;

-- Consultando a tabela AGENDA

SELECT agenda_id, TO_CHAR(agenda_data,'dd/mm/yyyy hh24:mi:ss') AGENDA_DATA
FROM   agenda
ORDER BY agenda_id;

-- Conectar como SYS

-- Remover o job

BEGIN
	DBMS_SCHEDULER.DROP_JOB (
	     job_name => '"HR"."JOB_INSERE_DATA_AGENDA"',
	     force => TRUE);
END;


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 30:PL/SQL Avançado - Package UTL_FILE

98.Utilizando a Package UTL_FILE para ler e gravar arquivos


 * A PACKAGE UTL_FILE possue os comandos necessários para o desenvolvimento de rotinas para 
   ler e escrever dados em arquivos no sistema de arquivo do sistema operacional, esse sistema 
   de arquivos fica no servidor onde o DB está instalado, e não na minha máquina client.
   
 * A PACKAGE UTL_FILE está disponível desde a versão 7.3 do Oracle.
   Com ela vc pode ler tabelas e gerar um arquivo texto, ou ao contrário, ler um arquivo texto
   e carregar os dados em tabelas.
   
   Muito utilizado para fazer carga em sistemas de BUSINESS INTELIGENCE.
   
 * Para utilizar a PACKAGE UTL_FILE, é preciso criar um diretório no sistema operacional.
 
-- Conectar como SYS 

-- Sintaxe para criar um diretório:

CREATE OR REPLACE DIRECTORY
NOME_DIRECTORIO AS 
'C:\NOME_DIRETORIO_SO';


 * Uma vez criado o objeto DIRECTORY o DBA vai passar o privilégio para ler ou gravar ou os 
   dois para os usuários que vão poder usar esse diretório.
   
    
-- Conectar como SYS 

GRANT READ, WRITE ON DIRECTORY
NOME_DIRECTORIO TO usuario;



--
-- Oracle PL/SQL Avançado 
--
-- Seção 30 - Package UTL_FILE
--
-- Aula 1 - Package UTL_FILE

-- Package Package UTL_FILE

-- Criar o diretorio 'C:\ARQUIVOS' no Windows

-- Conectar como SYS

CREATE OR REPLACE DIRECTORY ARQUIVOS AS 'C:\ARQUIVOS'; -- se tivese sub-pastas teria que informa todo o caminho

GRANT READ, WRITE ON DIRECTORY ARQUIVOS TO hr;

-- Gravando um arquivo Texto

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  vfile  UTL_FILE.FILE_TYPE; -- essa variavel vai ser do tipo FILE_TYPE da package UTL_FILE
  CURSOR employees_c IS
  SELECT employee_id, first_name, last_name, job_id, salary FROM employees;

-- FOPEN é uma funcao da package UTLFILE  q é utilizada para abrir o arquivo

-- 'ARQUIVOS' --> Referesse ao ARQUIVOS DIRECTORY 
-- 'employees.txt' --> Nome que eu quero dar para o aquivo de escrita
-- w --> Pq eu quero escreve, se fosse leitura seria r
-- 32767 Buffer do arquivo 32767 bytes

BEGIN
  vfile := UTL_FILE.FOPEN('ARQUIVOS', 'employees.txt','w',32767); -- necessario informar esses parametros
  FOR  employees_r IN employees_c LOOP
    UTL_FILE.PUT_LINE(vfile, employees_r.employee_id || ';' || 
                             employees_r.first_name || ';' || 
                             employees_r.last_name || ';' ||
                             employees_r.job_id || ';' || 
                             employees_r.salary);
  END LOOP;
  UTL_FILE.FCLOSE(vfile);
  DBMS_OUTPUT.PUT_LINE('Arquivo Texto employees.txt gerado com sucesso');
EXCEPTION
  WHEN UTL_FILE.INVALID_PATH THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Diretório Inválido');
  WHEN UTL_FILE.INVALID_OPERATION THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Operação invalida no arquivo'); -- ou seja, nao foi Read ou Write
  WHEN UTL_FILE.WRITE_ERROR THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Erro de gravação no arquivo'); -- Se nao conseguir gravar
  WHEN UTL_FILE.INVALID_MODE THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Modo de acesso inválido');
  WHEN OTHERS THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Erro Oracle:' || SQLCODE || SQLERRM);
END;

------------------------------------------------------------------------------------------------
-- Lendo um arquivo Texto

SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  vfile  UTL_FILE.FILE_TYPE;
  vregistro  VARCHAR2(400); -- cada registro vai ter no maximo 400 caracter por registro
BEGIN
  vfile := UTL_FILE.FOPEN('ARQUIVOS', 'employees.txt','r',32767); -- 3 parametros:  Nome do objeto DIRECTRY, nome do arquivo q vai ler, o modo de leitra r 
  LOOP  
    UTL_FILE.GET_LINE(vfile, vregistro); -- GET_LINE lê um registro por vez e guarda na variavel --> vregistro
    DBMS_OUTPUT.PUT_LINE(vregistro); -- Para fins didático vou imprimir o registro, mas podera fazer o q eu quiser
  END LOOP;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Arquivo Texto employees.txt lido com sucesso');
  WHEN UTL_FILE.INVALID_PATH THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Diretório Inválido');
  WHEN OTHERS THEN
      UTL_FILE.FCLOSE(vfile);
      DBMS_OUTPUT.PUT_LINE('Erro Oracle:' || SQLCODE || SQLERRM);
END;
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 31:PL/SQL Avançado - FLASHBACK

99.Package DBMS_FLASHBACK 


 * A package DBMS_FLASHBACK foi introduzida no Oracle 9i
 
 * A Package DBMS_FLASHBACK permite ao usuário uma imagem consistente do banco de dados até
   um ponto específico no passado.
   
 * Esta imagem é recriada utilizando os segmentos de undo e somente está disponível se os 
   blocos de undo ainda estiverem disponíveis.
   
   
 -- Você pode utilizar a package DBMS_FLASHBACK para a seguinte utilidade:
 -------------------------------------------------------------------------
  
 * Você efetivou a transação(COMMIT) e quer ver como os dados estavam anteriormente.
 
 * Você pode utilizar os resultados da consulta de flashback para ajustar os dados para a 
   situação anterior se necessário.
   
 * Por exemplo, vc removeu acidentalmente linhas de uma tabela, vc pode recuperar as linhas 
   removidas.
   Com essa package. não precisa parar todas a empresa, para restaurar o DB.
   
 
 -- EXISTEM DOIS MÉTODOS PARA UTILIZAR A PACKAGE DBMS_FLASHBACK:
 --------------------------------------------------------------- 
 
 * Definimos um momento no tempo no passado p/ recuperação dos dados
								ou 
 * Utilizamos o valor do SYSTEM CHANGE NUMBER(SCN) p/ retornarmos os dados para o passado.
 
 Obs: Difícil saber o (SCN), normalmente se usa baseado no tempo...
 
 * O DBA deve conceder o privilégio de execução da package DBMS_FLASHBACK

-- Comando p/ conceder privilégio
GRANT EXECUTE ON DBMS_FLASHBACK TO nome_usuário;

 * Para voltar ao passado utilizando a package DBMS_FLASHBACK vc utilizar a PROCEDURE 
   ENABLE_AT_TIME.
   
   -- EXEMPLO:

DBMS_FLASHBACK.ENABLE_AT_TIME para posicionar no passado.


DBMS_FLASHBACK.ENABLE_AT_TIME(data); -- Informar a data q deseja voltar no passado
 -- O resultado da consulta e armazenado na memória.
 
-- Para voltar P/ o presente:
DBMS_FLASHBACK.DISABLE para retornar ao presente.

 Obs. Nunca vc vai poder mexer no passado, vc só pode arrumar o presente.
 
 -- SINTAXE:
DBMS_FLASHBACK.DISABLE; -- Volta para o presente.

 

 -- EXEMPLO PRÁTICO:
 -------------------
 
 
--
-- Oracle PL/SQL Avançado 
--
-- Seção 31 - FLASHBACK
--
-- Aula 1 - Package DBMS_FLASHBACK

-- Package DBMS_FLASHBACK

-- Conectar como SYS

--
-- Oracle PL/SQL Avançado 
--
-- Seção 31 - FLASHBACK
--
-- Aula 1 - Package DBMS_FLASHBACK

-- Package DBMS_FLASHBACK

-- Conectar como SYS

grant execute on DBMS_FLASHBACK to hr;

-- Conectar como hr

-- Causando um problema 

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees
WHERE  job_id = 'IT_PROG';

UPDATE employees
SET    salary = salary * 2
WHERE  job_id = 'IT_PROG';

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees
WHERE  job_id = 'IT_PROG';

COMMIT;

-- Utilizando a Package DBMS_FLASHBACK

DECLARE
  CURSOR c_employees IS
    SELECT *
    FROM   employees
    WHERE  job_id = 'IT_PROG';
    
   r_employees  c_employees%ROWTYPE;
BEGIN
  
  DBMS_FLASHBACK.enable_at_time(sysdate - 10 / 1440);  -- Posicionando 10 minutos no passado (um dia 24h.. por isso --> 24 x 60 = 1440)
  
  -- Abriu o cursor no passado
  OPEN c_employees; -- Quando vc abre o cursor a linhas recuperadas vao para a Shared Pool (Result Set)
  
  -- voltou p/ o presente
  DBMS_FLASHBACK.disable;  -- Posicionando de volta ao presente

  LOOP 
    FETCH c_employees INTO r_employees; 
    
    EXIT WHEN c_employees%NOTFOUND; 
    
    UPDATE employees 
    SET    salary = r_employees.salary  -- Setando de acordo com os dados do passado novamente
    WHERE  employee_id = r_employees.employee_id;
    
  END LOOP; 
  
  CLOSE c_employees;
  COMMIT;
END;

-- Consultando após a correção do problema

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees
WHERE  job_id = 'IT_PROG';

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
100.Flashback Query 

 * O FLASHBACK QUERY é uma evolução da PACKAGE DBMS_FLASHBACK.
   Essa é a forma mais fácil de consultar o passado sem ter que usar a PACKAGE DBMS_FLASHBACK.
   
-- EXEMPLO:
TIMESTAMP --> Para data, hora, minuto e segundo atual


SELECT coluna|expressão [,coluna|expressão]...
FROM tabela
		AS OF TIMESTAMP -- Como os dados estavam no passado 
		to_timenstamp('dd/mm/yyyy hh24:mi:ss','data hora no formato');
   
   OUTRA FORMA DE FAZER A MESMA COISA
   
SELECT coluna|expressão [,coluna|expressão]...
FROM tabela 
		AS OF TIMESTAMP 
		(systimestamp - interval '5' minute);
 
 
 Obs: INTERVAL pode ser utilizado não somente em minutos, veja a lista abaixo:
 
 
 -- INTERVAL:
 ------------
 
 * INTERVAL 'X' 	YEAR 
 * INTERVAL 'X' 	MONTH 
 * INTERVAL 'X' 	DAY
 * INTERVAL 'X' 	HOUR
 * INTERVAL 'X' 	MINUTE
 * INTERVAL 'X' 	SECOND
 * INTERVAL 'X-Y' 	YEAR TO MONTH  -- Anos para mes 
 * INTERVAL 'X Y:Z' DAY TO MINUTE  -- Dia para minito
 * INTERVAL 'X:Y' 	HOUR TO MINUTE -- Hora para minuto 
 * INTERVAL 'X:Y.Z' MINUTE TO SECOND -- Minuto para segundo   

 -- DEMONSTRAÇÃO PRÁTICA:
 ------------------------

--
-- Oracle PL/SQL Avançado 
--
-- Seção 31 - FLASHBACK
--
-- Aula 2 - Flashback Query

-- Utilizando Flashback Query

-- Causando um problema 

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees
WHERE  job_id = 'FI_ACCOUNT';

UPDATE employees
SET    salary = salary * 2
WHERE  job_id = 'FI_ACCOUNT';

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees
WHERE  job_id = 'FI_ACCOUNT';

COMMIT;


DECLARE
  CURSOR c_employees IS
    SELECT *
    FROM   employees as of timestamp (systimestamp - interval '15' minute);
    
  r_employees  c_employees%ROWTYPE;
  
BEGIN  
  OPEN c_employees;

  LOOP 
    FETCH c_employees INTO r_employees; 
    
    EXIT WHEN c_employees%NOTFOUND; 
    
    UPDATE employees 
    SET    salary = r_employees.salary -- r_employees.salary tem o salario anterior a 15 minutos atras
    WHERE  employee_id = r_employees.employee_id;
    
  END LOOP; 
  
  CLOSE c_employees;
  
  COMMIT;
END;

-- Consultando após a correção do problema

SELECT employee_id, first_name, last_name, job_id, salary
FROM   employees
WHERE  job_id = 'FI_ACCOUNT';

 * A única coisa q precisa se preocupar é com o tempo que foi feito a transação indevida, porque
   no seguimento de undo os dados são sobre postos, e isso depende de como o DBA configurou 
   o segmento de undo e do movimento de transação para preencher a table pace do segmento de 
   undo e o parêmetro UNDO_RETENTION.
   
   SELECT NAME, VALUE FROM V$PARAMETER WHERE NAME  LIKE '%undo%'
   
   SELECT 900/60 FROM DUAL; -- 900/60 (60 -- Corresponde a uma hora)
   
   O que importa é o tamnho da tablespace de UNDO, o comando acima é apenas o parametro que
   foi configurado pelo DBA.
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
101.Flashback Drop 

 -- LIXEIRA:
 -----------
 
 * A única forma de usar o comando Flashback Drop dentro de um programa PL/SQL é itilizando o 
   SQL dinâmico,porém, isso não faz sentido, é apenas para fins didático.
   
 * O objetivo é recuperar um objeto que foi dropado indevidamente.
 
 A lixeira contém todos os objetos dropados até que:
  * Vc elimine o objeto com o comando PURGE (Não tem porque fazer isso, se usar o comando PURGE,
    não tem mais como recuperar da lixeira). Só se faz o PURGE se precisar de espaço em disco.
  
  -- RESTAURAÇÃO DE OBJETO:
  * Vc restaure o objeto dropado com o comando BEFORE DROP 
  
 * A tablespace necessita ser extendida
   Qundo um objeto é dropado indevidamente, é preciso restaurar o mais rapidamente, porque, se
   o Oracle precisar extender a tablespace, ele pode remover esse objeto, não tem jeito.
   
 Você pode visualizar os objetos que estão na lixeira utilizando a seguinte visão do dicionário
 de dados:
 
 USER_RECYCLEBIN -- Todos os objetos dropados
 ALL_RECYCLEBIN  -- Todos os meus objetos + o que tenho permissão
 DBA_RECYCLEBIN  -- Privilégio Full, todos os objetos do DB 
 RECYCLEBIN (Sinônimo)
 
-- Para restaurar uma tabela a partir da lixeira:
FLASHBACK TABLE nome_tabela TO BEFORE DROP;


-- Remover um objeto da lixeira definitivamente:
PURGE TABLE nome_tabela; -- Não vai ter como restaurar depois 

-- Removendo todos os objetos do schema do meu usuário que estão na lixeira, definitivamente:
PURGE user_recyclebin;

 -- EXEMPLO PRÁTICO:
 -------------------

--
-- Oracle PL/SQL Avançado 
--
-- Seção 31 - FLASHBACK
--
-- Aula 3 - Flashback Drop

-- Flashback Drop

-- Conecte-se como HR

CREATE TABLE employees_copia 
AS
SELECT *
FROM employees;

SELECT *
FROM   user_objects
WHERE  object_name = 'EMPLOYEES_COPIA';

SELECT *
FROM employees_copia;

-- Removendo um objeto

DROP TABLE employees_copia; -- DROP é um DDL, os comandos DDL tem commit automático

SELECT *
FROM   user_objects
WHERE  object_name = 'EMPLOYEES_COPIA';

SELECT *
FROM employees_copia;

-- Consultando a Lixeira

SELECT *
FROM   user_recyclebin
WHERE  original_name = 'EMPLOYEES_COPIA';

-- Confimando que o objeto foi removido

SELECT *
FROM   user_objects
WHERE object_name = 'EMPLOYEES_COPIA';

-- Restaurando o Objeto a partir da Lixeira

FLASHBACK TABLE EMPLOYEES_COPIA TO BEFORE DROP;

 Obs: Qunado reciclamos uma tabela, se tiver índices, o Oracle recicla os índices tbm, porém,
      vem com nomes bem estranhos, neste caso é só renomear o índice.
	  
 -- O QUE O ORACLE NÃO TRAS DE VOLTA AO RECICLAR UMA TABELA?
 
  * O Oracle 'não' tras as constraints de Foreign Key.
  
    * As constraints de Primary Key, Unique e Check ele trás tudo.
  
 

-- Confimando que o objeto foi restaurado

SELECT *
FROM user_objects
WHERE object_name = 'EMPLOYEES_COPIA';

SELECT *
FROM employees_copia;

SELECT *
FROM   user_recyclebin
WHERE  original_name = 'EMPLOYEES_COPIA';

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
102.Flashback Table 

 * Flashback table é mais um tipo de FLASHBACK.
	-- Esse é o menos utilizado, só deve utilizar quando não tiver outra opção.
	
 * O Flashback Table permite fazer uma recuperação de uma ou mais tabelas para uma determinda
   posição do tempo do passado sem a necessidade de se restaurar um backup do banco de dados.
	Ex: Se alguém fez algum DML em uma tabela e efetivou a transação(commit), não tem mais 
	    como recuperar. Então o Flashback Table volta a tabela ou as tabelas p/ um posição 
		no passado.
		Obs: O problema aqui é que se perde todas as referências de constraints.
			 Esse recurso é mais para fins didático, não compesa usar hoje em dia.
			 
 			 
 * Quando vc utiliza o Flashback Table, todos os objetos associados, como índices, constraints
   e triggers tbm são restauradas.
   
 -- Observação as Regras:
 ------------------------
 
 Se um dos seguintes comandos abaixo forem executados, o comando de flashback Table não poderá 
 mais ser utilizado:
 
 * ALTER TABLE... DROP COLUMN
 * ALTER TABLE... DROP PARTITION
 * CREATE CLUSTER
 * TRUNCATE TABLE
 * ALTER TABLE... MOVE 
 
 -- QUAIS PRIVILÉGIOS VC DEVE POSSUIR PARA UTILIZAR FLASHBACK TABLE?
 -------------------------------------------------------------------
  
 * Vc deve possuir o privilégio FLASHBACK TABLE ou FLASHBACK ANY TABLE para poder utilizar 
   o Flashback Table.
   
 * Antes de executar um flashback table vc deve executar o seguinte comando, para habilitar a
   movimentação das linhas da tabela:

-- Conectado como SYS:
GRANT FLASHBACK ON schema.nome_table TO usuário;
        -- OU    
GRANT FLASHBACK ANY TABLE TO usuário;

		
-- Conectado cmo SYS ou usuário OWNER da tabela:
ALTER TABLE schema.nome_tabela ENABLE row movement;

 -- EXEMPLO PRÁTICO:

 
--
-- Oracle PL/SQL Avançado 
--
-- Seção 31 - FLASHBACK
--
-- Aula 4 - Flashback Table

-- Utilizando Flashback Table

CREATE TABLE employees_copia2
AS
SELECT *
FROM employees;

--Conectado como SYS 
GRANT FLASHBACK ON hr.employees_copia2 TO hr;

--Conectado como SYS ou HR
ALTER TABLE hr.employees_copia2 ENABLE ROW MOVEMENT; -- Esse comando e para nao mudar os rowid das linhas...

-- Conectado como HR
SELECT *
FROM hr.employees_copia2 ;

DELETE FROM hr.employees_copia2 ;

COMMIT;

-- Consultando a Tabela

SELECT *
FROM hr.employees_copia2 ;

-- Resaurando a Tabela para posição de 5 minutos atras
FLASHBACK TABLE hr.employees_copia2 TO TIMESTAMP systimestamp - interval '5' minute;

-- Consultando a Tabela

SELECT *
FROM hr.employees_copia2;  
 
 Essa solução é muito difícil ser utilizada porque contem perdas, apenas a título de 
 conhecimento.
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 32:PL/SQL Avançado - LOBs - Large Objects 

103.LOBs - Introdução (Referente a objetos grandes)

 * LOBs(Large Objects) permite armazenar objetos muito grandes no banco de dados.
 
 * LOBs(Large Objects) permite armazenar no banco de dados, dados destruturados, tais com 
   vídeos, áudios, fotografias, imagens, arquivos PDF, arquivos doc, arquivos de planilha excel
   e etc.
   
 * LOBs(Large Objects) podem ser lidos por linhuagens de programação, tais como Java, C#, 
   Python, e etc.
   
 
 -- DUAS CATEGORIAS TEÓRICAS DE CLASSIFICAÇÃO DE LOBS: 
 -----------------------------------------------------
 
 * LOB Interno --> São LOBs que ficam dentro do Banco de Dados 
   * LOBs internos são armazenados no Banco de Dados, como colunas em uma tabela.
     Participam de transações do banco de dados. 
 
	-- TIPO DE LOBS INTERNO: 
  
	CLOB:(CHARACTER LARGE OBJEC)
	* Utilizado p/ armazenar dados do tipo caracter single-byte.(Na lingua q o DB esta configurado)
	* Tamanho máximo(4GB - 1)* definido pelo parâmetro DB_BLOCK_SIZE 
		-- O resultado dessa expressão vai ser o resultado do CLOB
    * Tamanho máximo entre 8TB e 128TB
	* DB_BLOCK_SIZE é o parâmetro de inicialização q define o tamanho do bloco do banco de dados,
	  que pode variar de 2KB e 32KB
	  
	NCLOB:(National Character Large Object)  
	É uma variante do CLOB, porém, permite armazenar multiplos dados, ou seja, qualquel lingua 
	do mundo, dados universal.
		  
	* Utilizado para armazenar dados tipo caracter multiple-byte   
	  
	* Tamanho máximo(4GB - 1)* definido pelo parâmetro DB_BLOCK_SIZE 
		-- O resultado dessa expressão vai ser o resultado do CLOB
    * Tamanho máximo entre 8TB e 128TB
	* DB_BLOCK_SIZE é o parâmetro de inicialização q define o tamanho do bloco do banco de dados,
	  que pode variar de 2KB e 32KB 
	  
	  
	
	BLOB:(binary large object)
	* Utilizados para armazenar dados grandes do tipo binário.
	  (vídeos, áudios, fotografias, imagens, arquivos PDF, arquivos doc, arquivos de planilha 
	  excel e etc).
	  
	* Tamanho máximo(4GB - 1)* definido pelo parâmetro DB_BLOCK_SIZE 
		-- O resultado dessa expressão vai ser o resultado do CLOB
    * Tamanho máximo entre 8TB e 128TB
	* DB_BLOCK_SIZE é o parâmetro de inicialização q define o tamanho do bloco do banco de dados,
	  que pode variar de 2KB e 32KB
	
	
  --------------------------------------------------------------------------------------------	
  --------------------------------------------------------------------------------------------	
 
 * LOBs Externo --> Lobs que ficam fora do Banco de Dados

	-- TIPO DE LOBS EXTERNO: 
 
	* LOBs Externos são armazenados externamente ao Banco de Dados, como arquivos do sistema
	  de arquivos do S.O.
	  
	* São somente uma referência(um ponteiro) aos arquivos externos.
    
    * Não participam de transações do Banco de Dados.

	
 BFILE
 
  * Referência um arquivo binário
  * O BFILE(na coluna BFILE tem um ponteiro q aponta p/ o sistema de arquivo do S.O) 
    armazena no sistema de arquivos do S.O...
	
  * Tamanho máximo do LOB: 4GB
  * Tamanho máximo do nome do arquivo: 255
  * Tamanho máximo do nome do diretório: 30 caracteres
  
 -- RESTRIÇÕES PARA LOBs
 -----------------------
 
 * LOBs não podem fazer parte de uma clustered table
 
 * LOBs não podem ser analisados utilizando o comando ANALYZE
												(Comando ANALYZE é para coletar estatísticas)
 
 * LOBs não podem ser incluídos em um índice particionado de uma index-organized table
 
 * LOBs não podem ser utilizados em um VARRY
 
 * LOBs não podem ser utilizados em uma das seguintes partes de um comando SQL:
   * GROUP BY
   * ORDER BY
   * SELECT DISTINCT
   * JOINS
   * Funções de agregação(Funções de Grupo)
   
   
 -- LOB LOCATOR - LOCALIZADOR:
 -----------------------------
 
  * Todo LOB está associado com um LOB Locator(Locolizador)
  
  * Um LOB Locator é um ponteiro para a localização atual do valor LOB
  
  * O Locator associado LOB interno é chamado de LOB Locator, enquanto que o Locator associado 
    a um arquivo externo é chamado BFILE Locator.
	
  * O LOB Locator é retornado quando vc realiza um SELECT de uma coluna LOB

  * O valor atual do LOB pode ser recuperado utilizando o LOCALIZADOR
  
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
104.Utilizando CLOBs 

 * Utilizado para armazenar string de caracteres unicode
  (Letras, Numeros, Caracteres especiais, pontuação e etc).
  
 Para criar uma coluna do tipo CLOB, na criação da tabela é só dar o nome para a coluna
 e informar o tipo CLOB, é simples assim. Exemplo abaixo:
 
 
CREATE TABLE job_resumes(resume_id NUMBER,
						 first_name VARCHAR2(200),
						 LAST_NAME VARCHAR2(200),
						 resume CLOB
						 );
						 
 Obs: você não deve colocar NULL no CLOB, ao invés de NULL você deve colocar EMPTY_CLOB,
 exemplo abaixo:


INSERT INTO job_resumes
VALUES(1,'Jones',EMPTY_CLOB()); --> Lo lugar de Nulo: EMPTY_CLOB abre parenteses e fecha sem passar argumentos
 
 
  
 -- Qual a função EMPTY_CLOB? 
 ----------------------------
 
 EMPTY_CLOB:

 A função EMPTY_CLOB ela inicializa o CLOB, ou seja ela cria o localizador para o CLOB, e 
 o CLOB fica sem nenhum valor, porém o ponteiro(endereço) já fica criado.
 
 
 EXEMPLO:
 
INSERT INTO job_resumes VALUES(1,'Jones',EMPTY_CLOB());


 -- CLOBs - DBMS_LOB.WRITE 
 -------------------------
 
 * Para incluir uma string de caracteres na coluna CLOB precisa utilizar a package 
   DBMS_LOB.WRITE (WRITE é a procedure)...
   
   
 SINTAXE PARA UTILIZAR ESSA PACKAGE:

-- É necessário passar quatro argumentos: 
DBMS_LOB.WRITE(lob_destino IN OUT BLOB | CLOB, --> Localizador(endereço) do lob destino
			   tamanho IN OUT BINARY_INTEGER,  --> O tamanho do Buffer q vc quer gravar 
			   deslocamento IN INTEGER,		   --> A posição inicial onde vc quer gravar
			   buffer IN RAW | VARCHAR2);	   --> O Buffer de gravação

			   
 

 -- CLOBs - DBMS_LOB.READ 
 ------------------------
 
 * Para ler um LOB vc utiliza a PACKAGE DBMS_LOB.READ 
 
 -- SINTAXE:
-- É necessário passar quatro argumentos: 
DBMS_LOB.READ(lob_origem IN OUT BLOB | CLOB, --> localizados do CLOB origem
			  tamanho IN OUT BINARY_INTEGER, --> O tamanho do String q está lendo
			  deslocamento IN INTEGER,		 --> Pra ler a primeira posição, por exemplo
			  buffer IN RAW | VARCHAR2); 	 --> é o resultado da leitura
			  
			  
 

 -- CLOBs - RECUPERANDO
 
 * Vc pode utilizar várias funções SQL em CLOBs
 * Quando a coluna CLOB for maior do que 100k(bytes), vc deve utilizar a package DBMS_LOB


 -- OPERAÇÕES COM CLOB
 ---------------------
 
SELECT SUBSTR(resume,1,30) FROM job_resumes;

SELECT LENGTH(resume) FROM job_resumes;


 -- Se os CLOBs tiver mais de 100k, vc deve usar a package DBMS_LOB, exemplo, abaixo:
 -- O ideal é sempre usar a package DBMS_LOB, porque, vc não precisa se preocupar com o tamanho
 
 
SELECT DBMS_LOB.SUBSTR(resume,30,1) FROM job_resumes; --Quando se usa a package DBMS_LOB, tem q inverter os argumentos

SELECT DBMS_LOB.GETLENGTH(resume) FROM job_resumes;


 Uma vantega de utilizar um CLOB ao invés de uma coluna LONG é que eu só posso ter uma coluna
 LONG por tabela, já LOBs eu posso ter quantas eu quiser.
 
 Outra vantagem, é a performance, quando eu utilizo LOBs os dados da coluna LOB vão ficar em 
 outra área,(outra tablaspace), e quando eu utilizo uma coluna LON ou LONG ROW, os dados
 ficam dentro dos blocos de dados onde estão os dados da tabela.
 
 O que é mais crítico no Oracle de performance é o I/O (Leitura e gravação).
 O segredo de performance é diminuir o I/O(Leitura e gravação em disco), e fazer o máximo disso
 em memória.
 
 Por isso é mais eficiente usar CLOB ao invés de LONG e o BLOB ao invés do LONG ROW, a nível 
 de performance.
 
 -- VAMOS AO EXEMPLO PRÁTICO:
 ----------------------------
 
--
-- Oracle PL/SQL Avançado 
--
-- Seção 32 - LOBs
--
-- Aula 2 - CLOBs

-- Criando tabela com CLOBs

DROP TABLE job_resumes;
CREATE TABLE job_resumes(resume_id   NUMBER,
                         first_name  VARCHAR2(200),
                         last_name   VARCHAR2(200),
                         resume      CLOB);
 
 
INSERT INTO job_resumes VALUES (1, 'Paul', 'Jones', EMPTY_CLOB()); --Ultimo campo vai ser NULL necessário usar  EMPTY_CLOB
COMMIT;
-- EMPTY_CLOB --> Cria o localizador p/ a coluna CLOB
 
SELECT resume_id, first_name, last_name, SUBSTR(resume,1,30) FROM   job_resumes; --SUBSTR --> pq esse campo tem menos de 100k


-- Um exemplo usando a package DBMS_LOB, quando eu nao sei o tamanho:
SELECT LENGTH(resume), DBMS_LOB.GETLENGTH(resume) FROM   job_resumes;

SELECT DBMS_LOB.SUBSTR(resume,DBMS_LOB.GETLENGTH(resume),1) 
FROM   job_resumes;

-- Inserindo dados na coluna CLOB

INSERT INTO job_resumes 
VALUES  (2, 'Robert','Johnson' , 'Project Manager - Scrum Master, Porto Alegre, RS, Brasil');

SELECT resume_id, first_name, last_name, SUBSTR(resume,1,30)
FROM   job_resumes;

SELECT LENGTH(resume), DBMS_LOB.GETLENGTH(resume)
FROM   job_resumes;

SELECT DBMS_LOB.SUBSTR(resume,DBMS_LOB.GETLENGTH(resume),1) 
FROM   job_resumes;

COMMIT;

-- Exemplo de procedure que escreve usando CLOB com a package -->  DBMS_LOB.WRITE
CREATE OR REPLACE PROCEDURE PRC_INSERE_RESUME (presume_id IN job_resumes.resume_id%TYPE, 
                                               presume IN VARCHAR2) 
IS
   vresume_localizador    CLOB; -- Essa variável vai receber o localizador do CLOB e nao o conteudo
   vTamanho_Texto         NUMBER; -- Pra definir o tamnho da Buffer
   vDeslocamento          NUMBER;
BEGIN
   SELECT resume
   INTO   vresume_localizador -- traz so localizador da coluna CLOB e nao o conteudo
   FROM   job_resumes
   WHERE  resume_id = presume_id
   FOR UPDATE; -- Para fazer um lock na linha q eu quero gravar atraves da package --> DBMS_LOB

   vDeslocamento := 1; -- quero gravar a partir do 1º byte
   vTamanho_Texto := LENGTH(presume); -- o tamanho do string q quero gravar
   
   -- Utilizando a package para gravar: e informando os quatro parametros obrigatorio...
   DBMS_LOB.WRITE(vresume_localizador,
                  vTamanho_Texto,
                  vDeslocamento,
                  presume); -- Buffer que quero gravar, q e o curriculo que foi passado como parametro
   COMMIT;
END;

exec PRC_INSERE_RESUME(1,'DBA - Database administrator , Porto Alegre, RS, Brasil')

SELECT resume_id, first_name, last_name, SUBSTR(resume,1,30)
FROM   job_resumes;

SELECT LENGTH(resume), DBMS_LOB.GETLENGTH(resume)
FROM   job_resumes;

SELECT DBMS_LOB.SUBSTR(resume,DBMS_LOB.GETLENGTH(resume),1) -- a partir da posicao 1
FROM   job_resumes;

SELECT resume_id, 
       first_name, 
       last_name, 
       LENGTH(resume), -- usando a funcao
       DBMS_LOB.GETLENGTH(resume) -- usando a package
FROM job_resumes;


-- Exemplo de procedure que lê um CLOB, utilizando a package --> DBMS_LOB.READ
CREATE OR REPLACE PROCEDURE PRC_EXIBE_RESUME(presume_id IN job_resumes.resume_id%TYPE) 
IS
   vresume_localizador    CLOB;
   vTamanho_Texto         NUMBER; -- define o tamanho do buffer q quero ler
   vDeslocamento          NUMBER; -- que vai ser a posição de onde eu quero ler
   vTexto                 VARCHAR2(32767); -- vou ler um texto no máximo desse tamanho
   vLoop                  NUMBER; -- para controlar as interações p/ controlar meu CLOB
   vQuantidade            NUMBER := 1; -- a posicao do deslocamento da minha leitura
   vExibe                 VARCHAR2(240); -- a string que quero imprimir, vou ler um CLOB, mas vou imprimir em partes
BEGIN
   SELECT resume
   INTO   vresume_localizador
   FROM   job_resumes
   WHERE  resume_id = presume_id
   FOR UPDATE;

   vDeslocamento := 1;  -- A posicao inicial do meu deslocamento
   vTamanho_Texto := DBMS_LOB.GETLENGTH(vresume_localizador);
   DBMS_LOB.READ(vresume_localizador,vTamanho_Texto,vDeslocamento,vTexto); -- fazendo a leitura
   vLoop := TRUNC((LENGTH(vTexto))/240)+1; -- p/ imprimir o texto em partes de 240
   FOR i IN 1 .. vLoop LOOP
     vExibe := SUBSTR(vTexto,vQuantidade,240);
     vQuantidade := vQuantidade + 240;
     DBMS_OUTPUT.PUT_LINE(vExibe);
   END LOOP;
   COMMIT;
END;

SET SERVEROUTPUT ON
exec PRC_EXIBE_RESUME(1)

exec PRC_EXIBE_RESUME(2)
 
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
Seção 33:PL/SQL Avançado - Table Functions 

107.Criação de Objetos 

Tipo Record 

 * Tipo Record é uma estrutura na memória composta de campos, ou seja tem a mesma estrutura de 
uma tabela física, porém, um tipo Record é definido na seção Declare de um bloco anônimo ou
de uma procedure ou de uma Function, e o escopo é só pode ser referenciado dentro do 
Objeto(bloco anônimo,procedure ou function)ou sub-blocos.

 Eu posso criar um tipo que seja permanente no Banco de dados:
 
 Para isso eu crio um tipo Object, exemplo:

--DROP TYPE employees_row;
CREATE TYPE employees_row AS OBJECT( e_employee_id   NUMBER  (6),
									 e_first_name    VARCHAR2(20),
									 e_last_name     VARCHAR2(25),
									 e_email         VARCHAR2(25),
									 e_phone_number  VARCHAR2(20),
									 e_hire_date     DATE,
									 e_job_id        VARCHAR2(10),
									 e_salary        NUMBER  (8,2),
									 e_commission_pct NUMBER (2,2),
									 e_manager_id     NUMBER (6,0),
									 e_department_id  NUMBER (4,0)
									);
									 
									 
  
-- Criação de Table utilizando Tipos no Banco de Dados
--DROP TYPE employees_table;
CREATE TYPE employees_table IS TABLE OF employees_row;


 Esse tipo object eu posso referenciar através de qualquer procedure function...
 
 Uma vez criado um tipo Record Object que é semelhante ao tipo IS RECORD, eu posso criar tbm
uma colection do tipo tabela:  Is Table Of.(A mesma coisa q a Nested Table)

 Exemplo:
 
CREATE TYPE employees_row IS TABLE OF employees_row;  
  Vai ser uma collection de RECORDS armazenada permanentemente no DB Oracle, para cada linha 
  eu vou ter todos os campos da tabela...
  

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
108.Table Functions 

--
-- Oracle PL/SQL Avançado 
--
-- Seção 33 - Table Functions
--
-- Aula 2 - Table Functions

-- Table Functions

CREATE OR REPLACE FUNCTION FNC_FETCH_EMPLOYEES_TABLE
  (pdepartment_id IN NUMBER)
   RETURN employees_table  -- Referece ao tipo table q criamos na aula anterior(Retorna uma collection inteira pq esta armazenada no DB)
IS 
  v_employees_table  employees_table := employees_table();
BEGIN
  FOR e IN 
    (SELECT employee_id, first_name, last_name, email, phone_number, hire_date, job_id, 
            salary, commission_pct, manager_id, department_id
     FROM   employees
     WHERE  department_id = pdepartment_id)
  LOOP
    v_employees_table.EXTEND; -- Eu vou estender uma ocorrencia da minha collection, pq ela é uma Nested Table, então antes de atribuir um valor eu preciso alocar a ocorrencia com Extend.
    v_employees_table(v_employees_table.LAST) := employees_row(e.employee_id, e.first_name, e.last_name, e.email, e.phone_number,
                                                                e.hire_date, e.job_id, e.salary, e.commission_pct, e.manager_id, 
                                                                e.department_id);
  END LOOP;
  RETURN v_employees_table;
END;

-- Utilizando a Table Function

SELECT *
FROM   TABLE(FNC_FETCH_EMPLOYEES_TABLE(60));

 Note que isso é uma collection, os dados não ficam armazenados no banco de dados, só a 
definição do tipo que fica armazenado no banco de dados.


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  
109.Pipeline Table Functions 

 Pipelined Functions
 
 É uma alternativa para as Tables Functions, as Table Functions retornam uma collections, 
 só que quando vc retorna uma collections, se essa collections for muito grande ela vai 
 consumir muita memória e trafegando muitos dados no retorno.

 Como podemos melhorar isso?
 
 Podemos usar --> Pipelined Functions
 
 * Utilizando Pipeline não há necessidade de criar grandes collections
 
 * Pipeline retorna as linhas para a saída da function(Cada linha criada é retornada, uma de 
   cada vez) com isso se economiza memória(pq não preciso criar grandes collections) e permite 
   processamento subsequente iniciando logo após a linha ser gerada.

--
-- Oracle PL/SQL Avançado 
--
-- Seção 33 - Table Functions
--
-- Aula 3 - Pipeline Table Functions

-- Pipeline Functions

CREATE OR REPLACE FUNCTION FNC_FETCH_EMPLOYEES_TABLE_PIPELINE
  (pdepartment_id IN NUMBER)
   RETURN employees_table
   PIPELINED -- Preciso colocar esse argumento, p dizer q vou retornar uma linha por vez
IS 
  v_employees_table  employees_table := employees_table();
BEGIN
  FOR e IN 
    (SELECT employee_id, first_name, last_name, email, phone_number, hire_date, job_id, 
            salary, commission_pct, manager_id, department_id
     FROM   employees
     WHERE  department_id = pdepartment_id)
  LOOP
    PIPE ROW(employees_row(e.employee_id,   -- PIPE ROW --> Sig. q vai retornar uma linha
						   e.first_name, 
						   e.last_name, 
						   e.email, 
						   e.phone_number,
                           e.hire_date, 
						   e.job_id, 
						   e.salary, 
						   e.commission_pct, 
						   e.manager_id, 
                           e.department_id)
			 );
  END LOOP;
END;

 Obs: Note q para cada interação é retonado um alinha com o PIPE ROW, a funcionalidade é a 
 mesma, porém, em vez de popular um collection que poderia ser bem grande, e retornar toda
 a collection, o Pipelined Function vai retornando uma linha de cada vez, ou seja, o programa
 economiza memória ao retornar linha a linha.
 
 
-- Utilizando a Pipelined Function

SELECT *
FROM   TABLE(FNC_FETCH_EMPLOYEES_TABLE_PIPELINE(60));
  
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------  





 




















