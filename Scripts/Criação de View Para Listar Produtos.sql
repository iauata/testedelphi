CREATE OR REPLACE VIEW vw_Produtos AS
SELECT a.id_produto
     , a.ds_produto
     , a.preco_custo
     , a.preco_venda
     , a.unidade
	  , a.id_categoria
	  , b.ds_categoria
	  , CASE WHEN a.status = 1 THEN 'ATIVO'
	         ELSE 'INATIVO' END AS dsstatus
	  , a.qtd_estoque
    FROM testedb.tab_produtos a, 
	      testedb.tab_categorias b
    WHERE a.id_categoria = b.id_categoria
    ORDER BY a.ds_produto;