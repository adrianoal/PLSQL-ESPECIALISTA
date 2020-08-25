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
















