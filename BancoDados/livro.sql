-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Mai 24, 2012 as 03:33 PM
-- Versão do Servidor: 5.5.10
-- Versão do PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `pe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE IF NOT EXISTS `livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `editora` varchar(45) NOT NULL,
  `ano` int(11) DEFAULT NULL,
  `sinopse` text NOT NULL,
  `edicao` int(11) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `genero` varchar(50) NOT NULL,
  `nPaginas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `autor`, `editora`, `ano`, `sinopse`, `edicao`, `imagem`, `genero`, `nPaginas`) VALUES
(1, 'Um Homem de Sorte', 'Nicholas Sparks', 'Novo Conceito', 2011, 'Sinopse - Um Homem de Sorte - Nicholas Sparks\r\n“Mas não estava em outra época e lugar, e nada daquilo era normal. Trazia a fotografa dela consigo há mais de cinco anos. Atravessou o país por ela.” “Era estranho pensar nas reviravoltas que a vida de um homem pode dar. Até um ano atrás, Thibault teria pulado de alegria diante da oportunidade de passar um fm de semana ao lado de Amy e suas amigas. Provavelmente, era exatamente isso de que precisava, mas quando elas o deixaram na entrada da cidade de Hampton, com o calor da tarde de agosto em seu ápice, ele acenou para elas, sentindo-se estranhamente aliviado. Colocar uma carapuça de normalidade havia-o deixado exausto. Depois de sair do Colorado, há cinco meses, ele não havia passado mais do que algumas horas sozinho com alguém por livre e espontânea vontade. (...) Imaginava ter caminhado mais de 30 quilômetros por dia, embora não tivesse feito um registro formal do tempo e das distâncias percorridas. Esse não era o objetivo da viagem. Imaginava que algumas pessoas acreditavam que ele viajava para esquecer as lembranças do mundo que havia deixado para trás, o que dava à viagem uma conotação poética. prazer de caminhar. Estavam todos errados. Ele gostava de caminhar e tinha um destino para chegar.\r\n', 4, 'homemdesorte.jpg', 'Romance', 349),
(2, 'Para Sempre', 'Kim Carpenter e Krickitt Carpenter', 'Novo Conceito', 2011, 'Sinopse - Para Sempre - A história que inspirou o filme\r\nA vida que Kim e Krickitt Carpenter conheciam mudou completamente no dia 24 de novembro de 1993, dois meses após o seu casamento, quando a traseira do seu carro foi atingida por uma caminhonete que transitava em alta velocidade. Um ferimento sério na cabeça deixou Krickitt em coma por várias semanas. Quando finalmente despertou, parte da sua memória estava comprometida e ela não conseguia se lembrar de seu marido. Ela não fazia a menor ideia de quem ele era. Essencialmente, a "Krickitt" com quem Kim havia se casado morreu no acidente, e naquele momento ele precisava reconquistar a mulher que amava.', 1, 'paraSempre.jpg', 'Romance- Drama', 144),
(3, 'Julieta', 'Anne Fortier', 'Sextante', 2010, 'Sinopse - Julieta - Anne Fortier\r\nJulie Jacobs e sua irmã gêmea, Janice, nasceram em Siena, na Itália, mas desde os 3 anos foram criadas nos Estados Unidos por sua tia-avó Rose, que as adotou depois de seus pais morrerem num acidente de carro. Passados mais de 20 anos, a morte de Rose transforma completamente a vida de Julie. Enquanto sua irmã herda a casa da tia, para ela restam apenas uma carta e uma revelação surpreendente: seu verdadeiro nome é Giulietta Tolomei. A carta diz que sua mãe havia descoberto um tesouro familiar, muito antigo e misterioso. Mesmo acreditando que sua busca será infrutífera, Julie parte para Siena. Seus temores se confirmam ao ver que tudo o que sua mãe deixou foram papéis velhos – um caderno com diversos esboços de uma única escultura, uma antiga edição de Romeu e Julieta e o velho diário de um famoso pintor italiano, Maestro Ambrogio. Mas logo ela descobre que a caça ao tesouro está apenas começando. O diário conta uma história trágica: há mais de 600 anos, dois jovens amantes, Giulietta Tolomei e Romeo Marescotti, morreram vítimas do ódio irreconciliável entre os Tolomei e os Salimbeni. Desde então, uma terrível maldição persegue essas duas famílias. E, levando-se em conta a linhagem e o nome de batismo de Julie, ela provavelmente é a próxima vítima. Tentando quebrar a maldição, ela começa a explorar a cidade e a se relacionar com os sienenses. À medida que se aproxima da verdade, sua vida corre cada vez mais perigo. Instigante, repleto de romance, suspense e reviravoltas, Julieta – livro de estreia de Anne Fortier – nos leva a uma deliciosa viagem a duas Sienas: a de 1340 e a de hoje. É a história de uma lenda de mais de 600 anos que atravessou os séculos e foi imortalizada por Shakespeare. Mas é também a história de uma mulher moderna, que descobre suas origens, sua identidade e um sentimento devastador e completamente novo para ela: o amor.\r\n', 1, 'julieta.jpg', 'Romance', 448);
