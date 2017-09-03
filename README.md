


### Aula 1 <br>
Encapsulamento de objetos. Dar o acesso correto para os atributos, evitar sempre liberar métodos modificadores, liberar apenas o que for necessário. <br>
Buscar empacapsular também os comportamentos pertencentes a aquele objeto, evitando que os comportamentos pertencentes a ele fiquem espalhados.
Para criar uma classe passando os valores no construtor, faz-se necessário criar um método nomeado 'initialize'.

### Aula 2
Usar o método select da classe array para realizar filtros. <br>
Se um objeto está sendo invocado e utilizado muitas vezes, talvez ele seja mais que um objeto. Nesses casos, é importante verificar se faz mais sentido transforma-lo em uma classe, encapsulando seus atributos e comportamentos.
<br>
<br>
Buscar sempre utilizar o princípio Tell, don't Ask.
Ou seja, no exemplo do estoque, não faz sentido o estoque ter acesso aos atributos do livro para escrever o csv. Nesse caso, diga ao livro para retornar a informação que o estoque precisa.
<br>
<br>
### Aula 3 <br>
O Ruby permite ao programador abrir e alterar o comportamento de classes existentes sobrescrevendo as mesmas. <br>
Entretanto, abrir e alterar classes que são comuns em todo o sistema não é indicado porque isso pode impactar diretamente no funcionamento dos objetos que usam essa classe. Mas, quando necessário atribuir um comportamento específico para um atributo de um tipo geral, o Ruby permite adicionar um comportamento/método apenas à aquele atributo.<br>
```
@livros.<<(livro)
      Faz_algo
end
```
<br>
Contudo, pode-se também criar módulos e fazer com que esse atributo estenda esse módulo. 
<br>
### Aula 4 <br>
Refatoração das classes em arquivos. <br>
Criação de métodos para verificar mais vendidos, utilizando funções como count e sort.<br>
Para comparação de mais vendidos foi usado o símbolo <=>.<br>
Utilização do símbolo & para passar um bloco adiante como parâmetro, pode ser uma função lambda, por exemplo.<br>
Utilização de lambda para otimizar e escrever menos código.
<br>
<br>
### Aula 5 <br>
Quando o Ruby não encontra um método, ele invoca o método chamado method_missing. É possível sobrescrever esse método e tomar alguma acao com base nisso, para mudar o comportamento de métodos que o objeto responde. Por exemplo, pode-se interpretar a mensagem, interpretar o tipo de dado que se está trabalhando e chamar o método passando os parâmetros corretos. <br>
Com isso, é possível agir de maneira diferente de acordo com o nome do método que foi invocado e não se sabe o nome de todos os nomes de métodos ou quer atender a inúmeros métodos. <br>
Toda vez que o method_missing for sobrescrito, deve-se sobrescrever o método respond_to também.
<br>
<br>
### Aula 6