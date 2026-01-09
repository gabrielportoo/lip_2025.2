# Trabalho de Linguagens de Programação (LIP) 🎓

Este repositório contém as soluções para os exercícios práticos da disciplina de **Linguagens de Programação (LIP)**, da **Universidade Federal do Ceará (UFC)**.

O objetivo do trabalho é colocar em prática os conceitos de **Programação Funcional** e **Programação Lógica**, seguindo regras estritas de implementação para garantir a pureza dos paradigmas.

## 🛠️ Tecnologias Utilizadas

- ![Python](https://img.shields.io/badge/Python-3.x-blue?style=for-the-badge&logo=python) **(Paradigma Funcional)**
- ![Prolog](https://img.shields.io/badge/SWI--Prolog-Logic-red?style=for-the-badge&logo=prolog) **(Paradigma Lógico)**

---

## 📂 Parte 1: Programação Funcional (Python)

Nesta etapa, o desafio foi resolver problemas algorítmicos utilizando Python, mas com **restrições severas** para simular uma linguagem puramente funcional.

### 🚫 Regras de Implementação

1.  **Proibido** o uso de laços de repetição (`for`, `while`).
2.  **Proibido** a atribuição de variáveis (ex: `x = 10`).
3.  Uso extensivo de funções de alta ordem: `map`, `filter`, `reduce` e `lambda`.
4.  Entrada e Saída (I/O) em uma única linha composta.

### 📝 Questões Resolvidas

| Arquivo | Descrição do Problema                                                                                           |
| :------ | :-------------------------------------------------------------------------------------------------------------- |
| `q1.py` | Recebe uma lista de inteiros e imprime o **produto** de todos os elementos (uso de `reduce`).                   |
| `q2.py` | Dado uma lista numérica, imprime uma tupla `(valor, indice)` contendo o **maior valor** e sua posição relativa. |
| `q3.py` | Recebe uma lista `L` e um número `p`, e **remove todas as ocorrências** de `p` em `L`.                          |
| `q4.py` | Recebe uma lista de inteiros e imprime o **maior** e o **menor** elemento.                                      |
| `q5.py` | Calcula o **Fatorial Duplo** de um número `n` (produto de todos os números de 1 ou 2 até `n`, com passo 2).     |

#### ▶️ Como Rodar (Python)

No terminal, execute o arquivo e insira os dados conforme solicitado (os números da lista devem ser separados por espaço):

```bash
python q3.py
# Entrada:
# 1 2 3 4 2
# 2
# Saída:
# 1 3 4
```

## 📂 Parte 2: Programação Lógica (Prolog)

Nesta etapa, a implementação foca na declaração de fatos e regras para construção de bases de conhecimento e sistemas de inferência.

### 📝 Questões Resolvidas

#### 1. Teoria dos Grafos (`grafo.pl`)

Implementação de um grafo simples não orientado.

- **Consultas disponíveis:**
  - `adjacente(X, Y)`: Verifica se dois vértices são vizinhos.
  - `caminho([A, B, C...])`: Verifica se uma lista de vértices forma um caminho válido.
  - `grau(V, G)`: Retorna o grau `G` (número de conexões) do vértice `V`.

#### 2. Manipulação de Listas (`listas.pl`)

Implementação de predicados de lista **sem utilizar** a biblioteca padrão `lists` do Prolog.

- **Predicados:**
  - `adiciona(X, L1, L2)`: Adiciona elemento à lista.
  - `apaga(X, L1, L2)`: Remove elemento da lista.
  - `concatena(L1, L2, L3)`: Junta duas listas.
  - `membro(X, L)`: Verifica pertinência.
  - `comprimento(N, L)`: Conta elementos.

#### 3. Árvore Genealógica - Família Pinheiro (`familia.pl`)

Modelagem de uma família com relações específicas baseadas em um texto narrativo ("O caso de Carlos, filho de primos").

- **Regras implementadas:** `pai`, `mae`, `irmao`, `irma`, `avo`, `avoa`, `tio`, `tia`, `primo`, `prima`, `descendente`.

### ▶️ Como Rodar (Prolog)

É necessário ter o **SWI-Prolog** instalado e adicionado ao PATH.

1. Abra o terminal na pasta do arquivo.
2. Inicie o interpretador:
   ```bash
   swipl familia.pl
   ```
3. Realize as consultas:
   ```bash
   ?- primo(mario, helena).
   true.
   ```
