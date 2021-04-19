package br.edu.unoesc.model.service;

import br.edu.unoesc.model.entity.Pessoa;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class PessoaService {

    private static final List<Pessoa> PESSOAS = new ArrayList<>();

    public void inserirAlterarPessoa(Pessoa pessoa) {
        if(pessoa.getCodigo() != null && buscarPessoaPeloCodigo(pessoa.getCodigo()).isPresent()){
            PESSOAS.replaceAll(p -> p.getCodigo().equals(pessoa.getCodigo()) ? pessoa : p);
        } else {
            pessoa.setCodigo(gerarCodigoPessoa());
            PESSOAS.add(pessoa);
        }
    }

    private Integer gerarCodigoPessoa(){
        return PESSOAS.stream().mapToInt(Pessoa::getCodigo).max().orElse(0) + 1;
    }

    public List<Pessoa> listarPessoas() {
        return PESSOAS;
    }

    public int contarPessoas(){
        return PESSOAS.size();
    }

    public Optional<Pessoa> buscarPessoaPeloCodigo(Integer codigo){
        return PESSOAS.stream().filter(p -> p.getCodigo().equals(codigo)).findFirst();
    }

    public void removerPessoaPeloCodigo(Integer codigo) {
        PESSOAS.removeIf(p -> p.getCodigo().equals(codigo));
    }
}