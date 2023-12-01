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



SELECT 
c1.numero as numero_origem, 
c1.agencia as agencia_origen, 
c2.numero as numero_desitno, 
c2.agencia as agencia_destinho,
transferencia.valor,
transferencia.data 

from transferencia 
join conta c1 on transferencia.conta_origem_id = c1.id
join conta c2 on transferencia.conta_destino_id = c2.id
