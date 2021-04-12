package br.edu.unoesc.model.service;

import br.edu.unoesc.model.entity.Produto;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ProdutoService {

    private static final List<Produto> PRODUTOS = new ArrayList<>();

    public void inserirAlterarProduto(Produto produto) {
        if(produto.getCodigo() != null && buscarProdutoPeloCodigo(produto.getCodigo()).isPresent()){
            PRODUTOS.replaceAll(p -> p.getCodigo().equals(produto.getCodigo()) ? produto : p);
        } else {
            produto.setCodigo(gerarCodigoProduto());
            PRODUTOS.add(produto);
        }
    }

    private Integer gerarCodigoProduto(){
        return PRODUTOS.stream().mapToInt(Produto::getCodigo).max().orElse(0) + 1;
    }

    public List<Produto> listarProdutos() {
        return PRODUTOS;
    }

    public Optional<Produto> buscarProdutoPeloCodigo(Integer codigo){
        return PRODUTOS.stream().filter(p -> p.getCodigo().equals(codigo)).findFirst();
    }

    public void removerProdutoPeloCodigo(Integer codigo) {
        PRODUTOS.removeIf(p -> p.getCodigo().equals(codigo));
    }
}