import java.util.Scanner;

class Prestador {
    String nome;
    String cpf;
    String telefone;
    String endereco;
    String tipoVeiculo;
    String regiaoAtuacao;
    boolean fazFreteOutrasCidades;
    String formaCobranca;
    double capacidadeVeiculo;

    void cadastrar(Scanner scanner) {
        System.out.print("Nome: ");
        nome = scanner.nextLine();

        System.out.print("CPF: ");
        cpf = scanner.nextLine();

        System.out.print("Telefone: ");
        telefone = scanner.nextLine();

        System.out.print("Endere�o: ");
        endereco = scanner.nextLine();

        System.out.print("Tipo de ve�culo: ");
        tipoVeiculo = scanner.nextLine();

        System.out.print("Regi�o que prefere (ex: Sorocaba): ");
        regiaoAtuacao = scanner.nextLine();

        System.out.print("Pode fazer frete para outras cidades? (true/false): ");
        fazFreteOutrasCidades = Boolean.parseBoolean(scanner.nextLine());

        System.out.print("Como cobra o frete? (ex: por km, dificuldade da carga): ");
        formaCobranca = scanner.nextLine();

        System.out.print("Capacidade do ve�culo (em kg): ");
        capacidadeVeiculo = Double.parseDouble(scanner.nextLine());
    }

    void mostrarDados() {
        System.out.println("\n--- Dados do Prestador ---");
        System.out.println("Nome: " + nome);
        System.out.println("CPF: " + cpf);
        System.out.println("Telefone: " + telefone);
        System.out.println("Endere�o: " + endereco);
        System.out.println("Tipo de ve�culo: " + tipoVeiculo);
        System.out.println("Regi�o de atua��o: " + regiaoAtuacao);
        System.out.println("Faz frete para outras cidades? " + (fazFreteOutrasCidades ? "Sim" : "N�o"));
        System.out.println("Forma de cobran�a: " + formaCobranca);
        System.out.println("Capacidade do ve�culo: " + capacidadeVeiculo + " kg");
    }
}

