/apache-jmeter-4.0/bin/jmeter -n -t /var/jenkins_home/workspace/erp-man-teste-stress/erp/Testes/validarSkuVersao.jmx -l validarSkuVersao.jtl &&
/apache-jmeter-4.0/bin/jmeter -n -t /var/jenkins_home/workspace/erp-man-teste-stress/erp/Testes/simularOrdemProducao.jmx -l simularOrdemProducao.jtl &&
/apache-jmeter-4.0/bin/jmeter -n -t /var/jenkins_home/workspace/erp-man-teste-stress/erp/Testes/gerarOrdemProducao.jmx -l gerarOrdemProducao.jtl &&
/apache-jmeter-4.0/bin/jmeter -n -t /var/jenkins_home/workspace/erp-man-teste-stress/erp/Testes/iniciarProducao.jmx -l iniciarProducao.jtl &&
/apache-jmeter-4.0/bin/jmeter -n -t /var/jenkins_home/workspace/erp-man-teste-stress/erp/Testes/apontamentoInicioFimOp.jmx -l apontamentoInicioFimOp.jtl &&
/apache-jmeter-4.0/bin/jmeter -n -t /var/jenkins_home/workspace/erp-man-teste-stress/erp/Testes/apontamentosOpQuantidade.jmx -l apontamentosOpQuantidade.jtl