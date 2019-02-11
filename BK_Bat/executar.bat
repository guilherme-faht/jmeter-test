REM use -n [This specifies JMeter is to run in non-gui mode]
REM use -t [name of JMX file that contains the Test Plan]
REM use -J [specifies JMeter arguments]

SET JMETER_HOME=C:\Programas\apache-jmeter-4.0
SET TEST_HOME=C:\Senior\Fontes\erp-man-teste-stress\erp\Testes
SET HOST=pcbnu002050.interno.senior.com.br
SET PORT=8243
SET USER=admin@manufatura-auto.com.br
SET PASS=Senha1!

REM remove todos os arquivos de log da pasta
DEL %TEST_HOME%\*.log

REM inicia suíte de testes
CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\apontamentoInicioFimOp.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\apontamentosOpQuantidade.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\gerarOrdemProducao.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\iniciarProducao.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\simularOrdemProducao.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\validarSkuVersao.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\gerarEtiquetasComWhile.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

CALL %JMETER_HOME%\bin\jmeter.bat -n -t %TEST_HOME%\liberarOrdemProducao.jmx -JHOST=%HOST% -JPORT=%PORT% -JUSER=%USER% -JPASS=%PASS% -JLOGDIR=%TEST_HOME%

PAUSE
