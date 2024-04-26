# Views

A maior parte dos arquivos de Views para o projeto são disponibilizados pelo livro:
    
    show.html.erb
    index.html.erb
    new.html.erb

A forma como o rails identifica qual View será mostrada é por convenção (é possível configurar). Isso significa
que ao rodar o método de controle de index, por exemplo, o programa espera que exista um
arquivo de view nessa pasta, cujo nome seja index.

Alguns métodos de controle não possuem views próprias mas direcionam à outras views.

Em edit.html.erb temos uma view que não foi disponibilizada no livro.
Portanto ela foi desenvolvida com base em nas implementações das outras 
Views no livro.
Nela temos um título assim como duas funções: 'destroy' e 'update' onde a primeira 
é um botão de deletar o filme e a segunda são campos com as informações do filme que podem ser modificadas.