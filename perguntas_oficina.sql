
use oficina;

-- Nome do cliente com veiculo(s) e marca(s)
select nome_cliente_pf, marca, modelo from cliente_pf
inner join cliente on cliente_pf.id_cliente_pf = cliente.id_cliente
inner join veiculo on cliente.id_cliente = veiculo.id_veiculo_cliente
order by nome_cliente_pf;
        
-- Quais clientes twm motos?
select nome_cliente_pf, tipo_veiculo, placa, modelo from cliente_pf
inner join cliente on cliente_pf.id_cliente_pf = cliente.id_cliente
inner join veiculo on cliente.id_cliente = veiculo.id_veiculo_cliente
having tipo_veiculo = "Moto"
order by placa;
        
-- Quais clientes twm carro?
select nome_cliente_pf, tipo_veiculo, placa, modelo from cliente_pf
inner join cliente on cliente_pf.id_cliente_pf = cliente.id_cliente
inner join veiculo on cliente.id_cliente = veiculo.id_veiculo_cliente
having tipo_veiculo = "Carro"
order by placa;
        
-- Quais clientes twm caminhão?
select nome_cliente_pf, tipo_veiculo, placa, modelo from cliente_pf
inner join cliente on cliente_pf.id_cliente_pf = cliente.id_cliente
inner join veiculo on cliente.id_cliente = veiculo.id_veiculo_cliente
having tipo_veiculo = "Caminhão"
order by placa;
        
-- Quantas OS foram Concluidas?
select count(status) from ordem_servico where status = 'Concluida'; 

-- Informações dos funcionários da equipe 2:
select * from funcionario
where id_funcionario_equipe = 2;