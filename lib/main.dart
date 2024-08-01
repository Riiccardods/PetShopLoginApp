// Importa a biblioteca de widgets do Flutter
import 'package:flutter/material.dart';
// Importa a biblioteca para manipulação de SVGs
import 'package:flutter_svg/flutter_svg.dart';

// Função principal que é o ponto de entrada do aplicativo Flutter
void main() {
  runApp(const MyApp()); // Executa o aplicativo, iniciando a classe MyApp
}

// Classe principal do aplicativo que herda de StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Construtor da classe MyApp

  @override
  Widget build(BuildContext context) {
    // Retorna um MaterialApp, que é o widget raiz do aplicativo
    return MaterialApp(
      title: 'Pet Shop Login', // Define o título do aplicativo
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors
                .deepPurple), // Define o esquema de cores do aplicativo com base em uma cor semente
        useMaterial3: true, // Habilita o uso do Material Design 3
      ),
      home: const MyHomePage(), // Define a página inicial do aplicativo
      debugShowCheckedModeBanner:
          false, // Remove a marca d'água "DEBUG" no canto superior direito
    );
  }
}

// Define um widget com estado (stateful) chamado MyHomePage
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // Construtor da classe MyHomePage

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); // Cria o estado associado a este widget
}

// Classe de estado para MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Retorna um Scaffold que é a estrutura básica de layout do Material Design
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 202, 243, 247), // Define a cor de fundo da tela
      body: SingleChildScrollView(
        // Permite a rolagem quando o conteúdo excede o tamanho da tela
        child: Container(
          // Contêiner para organizar o layout dos widgets filhos
          child: Column(
            // Organiza os widgets filhos em uma coluna
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0,
                    right: 0.0), // Adiciona preenchimento (padding) no topo
                child: Align(
                  alignment:
                      Alignment.topRight, // Alinha o conteúdo ao topo direito
                  child: SvgPicture.asset(
                    'assets/patinha.svg', // Caminho para a imagem SVG local
                    height: 90, // Define a altura da imagem SVG
                    width: 90, // Define a largura da imagem SVG
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(
                          30.0), // Adiciona preenchimento (padding) ao contêiner
                      child:
                          const CircularProgressIndicator(), // Mostra um indicador de progresso enquanto a imagem carrega
                    ),
                  ),
                ),
              ),
              const SizedBox(
                  height: 8), // Adiciona um espaço vertical de 8 pixels
              const SizedBox(
                  height: 8), // Adiciona outro espaço vertical de 8 pixels
              const Text(
                'Pet Shop',
                style: TextStyle(
                  fontSize: 50, // Define o tamanho da fonte
                  fontFamily: 'MoreSugar', // Define a família da fonte
                  fontWeight: FontWeight.normal, // Define o peso da fonte
                  color: Colors.orange, // Define a cor do texto
                ),
              ),
              const SizedBox(
                  height: 30), // Adiciona um espaço vertical de 30 pixels
              Stack(
                // Permite sobreposição de widgets
                alignment:
                    Alignment.topCenter, // Alinha o conteúdo ao centro superior
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 110), // Define a margem superior de 110 pixels
                    padding: const EdgeInsets.all(
                        16), // Adiciona preenchimento (padding) de 16 pixels ao contêiner
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 121,
                          3), // Define a cor de fundo do contêiner
                      borderRadius: BorderRadius.circular(
                          40), // Define bordas arredondadas com raio de 40 pixels
                    ),
                    child: Column(
                      // Organiza os widgets filhos em uma coluna
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Alinha o conteúdo ao centro horizontalmente
                      children: [
                        const SizedBox(
                            height:
                                100), // Adiciona um espaço vertical de 100 pixels (para a imagem do gato)
                        const Text(
                          'Fazer login',
                          style: TextStyle(
                            fontSize: 24, // Define o tamanho da fonte
                            fontWeight:
                                FontWeight.bold, // Define o peso da fonte
                            color: Colors.white, // Define a cor do texto
                          ),
                        ),
                        const SizedBox(
                            height:
                                25), // Adiciona um espaço vertical de 25 pixels
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email', // Texto do rótulo (label)
                            labelStyle: TextStyle(
                                color: Colors
                                    .white), // Define a cor do texto do rótulo
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white, // Define a cor do ícone
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30.0)), // Define bordas arredondadas com raio de 30 pixels
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Define a cor da borda quando habilitado
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30.0)), // Define bordas arredondadas com raio de 30 pixels
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Define a cor da borda quando focado
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30.0)), // Define bordas arredondadas com raio de 30 pixels
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                16), // Adiciona um espaço vertical de 16 pixels

                        const SizedBox(
                            height:
                                16), // Adiciona um espaço vertical de 16 pixels

                        // Campo de texto (TextField) para senha com obscurecimento de texto
                        const TextField(
                          obscureText:
                              true, // Oculta o texto digitado (útil para campos de senha)
                          decoration: InputDecoration(
                            labelText:
                                'Senha', // Texto do rótulo (label) do campo de texto
                            labelStyle: TextStyle(
                                color: Colors
                                    .white), // Define a cor do texto do rótulo como branco
                            prefixIcon: Icon(
                              Icons
                                  .lock, // Ícone de cadeado (lock) para indicar campo de senha
                              color: Colors
                                  .white, // Define a cor do ícone como branco
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30.0)), // Define bordas arredondadas com raio de 30 pixels
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Define a cor da borda quando o campo está habilitado
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30.0)), // Define bordas arredondadas com raio de 30 pixels
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Define a cor da borda quando o campo está focado
                              borderRadius: BorderRadius.all(Radius.circular(
                                  30.0)), // Define bordas arredondadas com raio de 30 pixels
                            ),
                          ),
                        ),

                        const SizedBox(
                            height:
                                16), // Adiciona um espaço vertical de 16 pixels

                        // Botão elevado (ElevatedButton) para enviar o formulário de login
                        // Cria um botão elevado que permite uma ação ao ser clicado
                        ElevatedButton(
                          // Define a função que será executada quando o botão de texto for pressionado
                          onPressed: () {},
                          // A propriedade onPressed recebe uma função anônima (neste caso, uma função vazia).
                          // Quando o botão é pressionado, a função é executada. Você pode substituir esta função
                          // por qualquer lógica necessária, como navegar para outra página, enviar dados, etc.
                          // Exemplo:
                          // onPressed: () {
                          //   print('Botão pressionado');
                          // },

                          // Define o estilo visual do botão
                          style: ElevatedButton.styleFrom(
                            // Define a cor de fundo do botão
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            // Define a cor de fundo do botão como branco.
                            // O método fromARGB define uma cor usando valores de Alpha, Red, Green e Blue (ARGB).

                            // Define o preenchimento (padding) interno do botão
                            padding: const EdgeInsets.symmetric(
                              horizontal:
                                  50, // Preenchimento horizontal (esquerda e direita) de 50 pixels
                              vertical:
                                  15, // Preenchimento vertical (topo e base) de 15 pixels
                            ),
                            // O EdgeInsets.symmetric cria um espaço interno simétrico,
                            // garantindo que o botão tenha uma área clicável maior e uma melhor aparência visual.

                            // Define o estilo do texto do botão
                            textStyle: const TextStyle(
                              fontSize:
                                  18, // Define o tamanho da fonte do texto do botão como 18 pixels
                            ),
                            // O TextStyle define como o texto dentro do botão será estilizado.
                            // Neste caso, apenas o tamanho da fonte é especificado, mas outras propriedades podem ser adicionadas,
                            // como cor, peso da fonte, etc.
                          ),

                          // Define o widget filho que será exibido dentro do botão
                          child: const Text('Entrar'),
                          // O widget Text exibe uma string ('Entrar') como seu conteúdo.
                          // Esta string é o texto que o usuário verá no botão elevado.

                          // Observação: O texto pode ser personalizado conforme necessário, incluindo a tradução para outros idiomas
                          // ou ajustes de estilo para se adequar ao design do aplicativo. Por exemplo:
                          // const Text(
                          //   'Entrar',
                          //   style: TextStyle(
                          //     color: Colors.black, // Define a cor do texto
                          //     fontSize: 18, // Define o tamanho da fonte
                          //     fontWeight: FontWeight.bold, // Define o peso da fonte
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  // Posição da imagem SVG do gato
                  // Widget Positioned usado para posicionar um widget filho em uma posição específica dentro do Stack
                  Positioned(
                    // Define a altura da imagem SVG
                    height: 200,
                    // Define a altura do widget filho (imagem SVG) dentro do Positioned.
                    // Aqui, a altura é definida como 200 pixels, o que significa que a imagem terá uma altura fixa de 200 pixels.

                    // Define a largura da imagem SVG
                    width: 200,
                    // Define a largura do widget filho (imagem SVG) dentro do Positioned.
                    // Aqui, a largura é definida como 200 pixels, o que significa que a imagem terá uma largura fixa de 200 pixels.

                    // Define a posição superior da imagem SVG
                    top: 0,
                    // Define a distância entre o topo do widget filho (imagem SVG) e o topo do contêiner pai.
                    // Aqui, a distância é definida como 0 pixels, o que significa que a parte superior da imagem estará alinhada com a parte superior do contêiner pai.

                    // O widget filho que será posicionado dentro do widget Positioned
                    child: SvgPicture.asset(
                      'assets/gatinho.svg',
                      // Caminho para o arquivo SVG local que será exibido.
                      // O caminho é relativo ao diretório de ativos do projeto, e 'assets/gatinho.svg' deve existir no projeto.
                      // Certifique-se de que a pasta 'assets' e o arquivo 'gatinho.svg' estejam corretamente configurados no pubspec.yaml.

                      // Comentário sobre o pubspec.yaml:
                      // No arquivo pubspec.yaml, você deve declarar os ativos da seguinte forma:
                      // flutter:
                      //   assets:
                      //     - assets/gatinho.svg
                    ),
                  )
                ],
              ),
              const SizedBox(
                  height: 18), // Adiciona um espaço vertical de 18 pixels

              // Botão de texto para recuperação de senha
              // Cria um botão de texto que permite uma ação ao ser clicado
              TextButton(
                // Define a função que será executada quando o botão de texto for pressionado
                onPressed: () {},
                // A propriedade onPressed recebe uma função anônima (neste caso, uma função vazia).
                // Quando o botão é pressionado, a função é executada. Você pode substituir esta função
                // por qualquer lógica necessária, como navegar para outra página, exibir um diálogo, etc.
                // Exemplo:
                // onPressed: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => RecuperacaoSenhaPage()));
                // },

                // Define o widget filho que será exibido dentro do botão de texto
                child: const Text(
                  'Esqueceu a senha?',
                  // O widget Text exibe uma string ('Esqueceu a senha?') como seu conteúdo.
                  // Esta string é o texto que o usuário verá no botão de texto.

                  // Observação: O texto pode ser personalizado conforme necessário, incluindo a tradução para outros idiomas
                  // ou ajustes de estilo para se adequar ao design do aplicativo. Por exemplo:
                  // const Text(
                  //   'Esqueceu a senha?',
                  //   style: TextStyle(
                  //     color: Colors.blue, // Define a cor do texto
                  //     fontSize: 16, // Define o tamanho da fonte
                  //     fontWeight: FontWeight.bold, // Define o peso da fonte
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
