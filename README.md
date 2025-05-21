# dynamic_table

![ABAP](https://img.shields.io/badge/ABAP-OO-blue?style=flat)
![SAP](https://img.shields.io/badge/SAP-ECC%206.0-yellow?style=flat)
![Development](https://img.shields.io/badge/Development-ABAP-brightgreen?style=flat)
![Eclipse](https://img.shields.io/badge/Eclipse-ADT-purple?style=flat)
![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=flat)
![GitHub Commits](https://img.shields.io/github/commit-activity/t/edmilson-nascimento/dynamic_table?style=flat)
![SAP](https://img.shields.io/badge/SAP-On%20Premise-orange?style=flat)

## 📋 Sobre
Implementação de tabela dinâmica em ABAP, permitindo manipular estruturas de dados em tempo de execução.

## 🚀 Funcionalidades
- Criação dinâmica de estruturas de tabela
- Seleção flexível de dados
- Suporte a qualquer tabela do dicionário SAP
- Limite configurável de registros

## 🛠️ Tecnologias
- SAP ECC 6.0
- ABAP Object Oriented
- Eclipse ADT

## 📦 Estrutura do Código

### Principais Componentes
```abap
DATA:
  ref_table_des   TYPE REF TO cl_abap_structdescr,
  tabname         TYPE ddobjname VALUE 'T301',
  lt_components   TYPE abap_compdescr_tab.
```

### Como Usar
1. Clone o repositório
2. Importe o código para seu sistema SAP
3. Ajuste o parâmetro `tabname` para a tabela desejada
4. Execute o programa

## ⚙️ Pré-requisitos
- Sistema SAP ECC 6.0 ou superior
- Autorização para desenvolvimento ABAP
- Eclipse ADT ou SAP GUI

## 📚 Documentação Adicional
Para mais detalhes sobre implementação e uso, consulte a [Wiki](https://github.com/edmilson-nascimento/dynamic_table/wiki) do projeto.

## 🤝 Contribuindo
Contribuições são sempre bem-vindas! Para contribuir:
1. Fork o projeto
2. Crie uma branch para sua feature
3. Commit suas mudanças
4. Push para a branch
5. Abra um Pull Request

## 📝 Licença
Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## ✒️ Autor
* **Edmilson Nascimento** - [GitHub](https://github.com/edmilson-nascimento)
