-- One
SELECT cliente.nome, cliente.email, conta.numero,conta.agencia FROM cliente 
join conta
on cliente.id = conta.cliente_id

-- Two
SELECT conta.numero,transferencia.valor from conta
join transferencia
on conta.id = transferencia.conta_destino_id

-- Three
SELECT conta.numero,transferencia.valor from conta
join transferencia
on conta.id = transferencia.conta_origem_id
