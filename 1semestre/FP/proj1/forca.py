# Preencha a lista com os números mecanográficos dos autores.
AUTORES = [120284 ,115696]

import random
import unicodedata # Importa a biblioteca unicodedata para lidar com caracteres acentuados.

# Função para remover acentos de uma string
def remove_acentos(input_str):
    # Normaliza a string para o formulário de composição (NFKD) para separar caracteres e marcas acentuadas
    nfkd_form = unicodedata.normalize('NFKD', input_str)
    # Usa uma compreensão de lista para criar uma nova string sem os caracteres acentuados
    return "".join([c for c in nfkd_form if not unicodedata.combining(c)])

# Função para exibir a palavra a ser adivinhada com letras adivinhadas e traços para letras não adivinhadas
def exibir_palavra(palavra, tentativas):
    display = ""
    for letra in palavra:
        if letra in tentativas or remove_acentos(letra) in [remove_acentos(t) for t in tentativas]:
            display += letra
        else:
            display += "_"
    return display

# Função para desenhar a forca com base no número de erros
def desenhar_forca(erros):
    # Lista de desenhos do boneco na forca
    partes_do_boneco = [
        "_____\n|   |\n|\n|\n|\n|_____",
        "_____\n|   |\n|   O\n|\n|\n|_____",
        "_____\n|   |\n|   O\n|   |\n|\n|_____",
        "_____\n|   |\n|   O\n|  /|\n|\n|_____",
        "_____\n|   |\n|   O\n|  /|\\\n|\n|_____",
        "_____\n|   |\n|   O\n|  /|\\\n|  /\n|_____",
        "_____\n|   |\n|   O\n|  /|\\\n|  / \\\n|_____"
    ]
    print(partes_do_boneco[erros])

# Função principal do jogo
def main():
    from wordlist import words1, words2

    # Descomente a linha que interessar para testar
    # words = words1              # palavras sem acentos nem cedilhas.
    words = words2             # palavras com acentos ou cedilhas.
    # words = words1 + words2    # palavras de ambos os tipos

    import sys                  # INCLUA estas 3 linhas para permitir
    if len(sys.argv) > 1:       # correr o programa com palavras dadas:
        words = sys.argv[1:]    #   python3 forca.py duas palavras

    secret = random.choice(words).upper()  # Escolhe aleatoriamente uma palavra em maiúsculas da lista
    guesses = []  # Inicializa a lista de letras adivinhadas
    letras_introduzidas = []  # Inicializa a lista de letras introduzidas
    max_erros = 7  # Número máximo de erros permitidos
    erros = 0

    # Função para remover uma letra da lista de letras disponíveis
    def remove_letra_disponivel(letra, alfabeto):
        if letra in alfabeto:
            alfabeto.remove(letra)

    alfabeto = list("ABCDEFGHIJKLMNOPQRSTUVWXYZ") # Inicializa uma lista de letras do alfabeto

    # Introdução do jogo
    print("Bem-vindo ao Jogo da Forca!")
    print("Uma palavra secreta vai ser escolhida aleatoriamente e o seu objetivo é adivinhar a palavra, apostando uma letra de cada vez.")
    print("Você terá um máximo de 7 erros permitidos. Cada erro adicionará uma parte ao desenho do boneco na forca.")
    print("Boa sorte e divirta-se! Vamos começar!")
    print("")

    while erros < max_erros:
        print_word_display = exibir_palavra(secret, guesses)
        print("Palavra: " + print_word_display) # Exibe a palavra atual com letras adivinhadas e traços para letras não adivinhadas
        print("Erros: ", erros) # Exibe os erros
        print("Letras disponíveis:", " ".join(alfabeto)) # Exibe as letras disponíveis
        print("Letras introduzidas:", " ".join(letras_introduzidas))  # Exibe as letras introduzidas
        desenhar_forca(erros) # Exibe o desenho da forca com base nos erros.
        guess = input("Aposta? ").upper() # Solicita uma letra ao jogador e converte para maiúsculas
        guess = remove_acentos(guess) # Remove acentos da letra adivinhada

        # Verifica se a letra é uma única letra válida
        if guess.isalpha() and len(guess) == 1:
            # Verifica se a letra já foi adivinhada anteriormente
            if guess in letras_introduzidas or remove_acentos(guess) in [remove_acentos(x) for x in letras_introduzidas]:
                print("Você já adivinhou essa letra.")
            elif guess in secret or remove_acentos(guess) in [remove_acentos(x) for x in secret]:
                guesses.append(guess) # Se a letra estiver na palavra secreta, adiciona-a à lista de letras adivinhadas
                remove_letra_disponivel(guess, alfabeto) # Remove a letra do alfabeto
            else:
                print("A letra introduzida não está na palavra.") 
                erros += 1 # Se a letra não estiver na palavra, aumenta o número de erros
                remove_letra_disponivel(guess, alfabeto) # Remove a letra do alfabeto
            if guess not in letras_introduzidas:
                letras_introduzidas.append(guess) # Adiciona a letra à lista de letras introduzidas.

        else:
            print("Por favor, insira uma única letra válida.") # Caso a entrada não seja uma letra válida

        # Verifica se todas as letras da palavra foram adivinhadas
        if all(letra in guesses or remove_acentos(letra) in guesses for letra in secret):
            print(f"Você ganhou! A palavra era '{secret}'.")
            break # Encerra o loop, o jogador ganha


    if erros >= max_erros:
        print(f"Você perdeu! A palavra era '{secret}'.") # Se o número de erros atingir o limite, o jogador perde

if __name__ == "__main__":
    main()


