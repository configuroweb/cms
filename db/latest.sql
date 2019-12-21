-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2019 a las 00:15:43
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `latest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(4) NOT NULL,
  `title` varchar(225) NOT NULL,
  `author` varchar(225) NOT NULL,
  `postdate` date NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(225) NOT NULL,
  `tag` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `postdate`, `image`, `content`, `updated_on`, `status`, `tag`) VALUES
(39, 'Un chat inteligente que conversa en lenguaje financiero', 'usuario', '2019-12-18', '780652.png', '&iexcl;Brinde una experiencia de usuario bajo un modelo de autoservicio! Nuestros chat bots son customizables y conversan en lenguaje financiero. De esta forma podr&aacute; proporcionar informaci&oacute;n relacionada a su instituci&oacute;n, requisitos para solicitar un cr&eacute;dito, consultar saldos y movimientos, fechas de pago, etc. &iexcl;Usted decide!&nbsp;https://www.youtube.com/watch?v=Mok8lGTwtK8&amp;feature=youtu.be', '2019-12-17 23:04:28', 'published', 'Negocios'),
(37, 'CuÃ¡ndo construir y cuÃ¡ndo comprar; el sueÃ±o del software desde casa', 'Mauricio', '2019-12-17', '196531.jpg', 'D&eacute;jeme darle un consejo: a menos que de que sea realmente una empresa &#34;tecnol&oacute;gica&#34;, casi siempre deber&iacute;a comprar, en lugar de construir. La creaci&oacute;n de un software es invariablemente la respuesta incorrecta para la mayor&iacute;a de las empresas. &nbsp; EL CANTO DE SIRENALos inversionistas ver&aacute;n a los equipos de desarrollo ocupados creando una fuente de valor, los gerentes del producto estar&aacute;n entregando sistemas &uacute;nicos y emocionantes para tener a clientes satisfechos. Los ingenieros construir&aacute;n cosas y los ejecutivos ver&aacute;n la entrega del producto como un signo de capacidad &uacute;nica y con valor estrat&eacute;gico.&nbsp; D&eacute;jeme decirle que no, desafortunadamente no, as&iacute; no funciona. Existen muchas razones por las que la creaci&oacute;n de software, o creaci&oacute;n de una instancia de desarrollo, es una decisi&oacute;n equivocada para muchas empresas. &iquest;Por qu&eacute; quiere construir algo? &iquest;Su requerimiento es tan &uacute;nico como para tolerar el costo tan significativo, o es solo su ego hablando? Tomar la decisi&oacute;n de construirlo usted mismo requiere de evidencias s&oacute;lidas que se justifiquen como ventajas competitivas o comerciales significativas. &nbsp; RAZONES PARA NO CONSTRUIRExisten muchas razones: Construir software es caro, muy caro. Si lo sabemos, pareciera que es mucho m&aacute;s barato que construir algo f&iacute;sico como productos farmac&eacute;uticos o casas, pero no es as&iacute;, est&aacute; lleno de complejidad. Es posible que contemple el costo de construir un producto, pero es casi seguro tambi&eacute;n que no presupueste lo suficiente como para poder respaldarlo en el futuro y es que los productos de software no se ejecutan por s&iacute; solos pues requieren estar soportados, mejorados, parcheados y adaptados a nuevas tecnolog&iacute;as que se requieran. Si realmente desea construir planifique sus costos de &#34;ejecuci&oacute;n&#34; con cuidado. Contemple al menos el doble de la cifra que tenga en mente y agregue una n (en donde la n representa un entero muy grande). Los desarrollos comenzar&aacute;n a costar a medida que crezca el uso del producto. Incluso si est&aacute; contemplado para usuarios internos en los que potencialmente puedan obtener algunas caracter&iacute;sticas agradables (como lo son seguridad y UX *) pues esos costos tambi&eacute;n aumentar&aacute;n si su instituci&oacute;n crece. Raramente he visto un producto de software interno bien construido, mantenible, seguro o &uacute;til como un producto de software empresarial &#34;bueno&#34;. Es poco probable que pueda competir con otra soluci&oacute;n tecnol&oacute;gica del mercado, digamos, Salesforce construyendo un CRM. Es extremadamente improbable que el equipo de desarrollo pueda llegar a construir un producto equivalente de forma rentable, inclusive compr&aacute;ndolo con una soluci&oacute;n costosa. Es f&aacute;cil ser superado. Frente a un gigante de la industria ser&iacute;a como estornudar y lanzar accidentalmente un producto que pone en peligro a todo su modelo de negocio. Ya ha pagado much&iacute;simo a sus desarrolladores y sus competidores tienen acceso a una mejor soluci&oacute;n tecnolog&iacute;a.Alcanzar el valor esperado ser&aacute; un proceso lento. No solo ser&aacute; m&aacute;s caro, sino que tambi&eacute;n tomar&aacute; m&aacute;s tiempo del que esperaba. Mientras se da una palmadita en la espalda por su inteligencia y contrata a un equipo de ingenieros, dise&ntilde;adores y arquitectos, apenas usted habr&aacute; entregado su p&aacute;gina de inicio de sesi&oacute;n cuando su competidor (que compr&oacute; un producto SaaS de una empresa tecnol&oacute;gica) tendr&aacute; usuarios reales en su sistema. Asuma que va a ser hackeado seriamente. La creaci&oacute;n de software en estos d&iacute;as no solo es compleja, sino que invariablemente expone su producto al mundo. No asuma que va a ser seguro. Supongamos que alguien va a intentar robar sus datos valiosos. Presupueste en desarrollar defensivamente desde el principio (lo que aumentar&aacute; a&uacute;n m&aacute;s el costo) y en caso de que falle, obtenga alguna capacitaci&oacute;n en Relaciones P&uacute;blicas para cuando necesite explicar por qu&eacute; perdi&oacute; todos los detalles de sus clientes. &nbsp; RAZONES PARA CONSTRUIREn ocasiones, cuando las estrellas se alinean y los datos lo admiten, puede ser la elecci&oacute;n correcta el construir su propio sistema y una gran idea, cuando: No existe un producto disponible para solucionar su problema. Si no puede comprar un producto o mezclar otras soluciones parciales, probablemente tendr&aacute; que crear su propio software Su IP es rara o &uacute;nica, y hay un valor considerable para usted como empresa que posea la capacidad &uacute;nica (por ejemplo, los algoritmos de citas en eHarmony) o la propiedad intelectual (por ejemplo, la combinaci&oacute;n secreta de especias del Coronel) Planea crear un negocio o una l&iacute;nea de productos, suministrar el software y podr&aacute; brind&aacute;rselo a una serie de clientes, aprovechando as&iacute; su inversi&oacute;n Puede solicitar apoyo financiero para su construcci&oacute;n a trav&eacute;s de incentivos gubernamentales que respalden el desarrollo de una propiedad intelectual realmente novedosa Tiene un mont&oacute;n de desarrolladores inteligentes sentados a la espera de que hagan el trabajo ** &nbsp; SOBRE LA CAPITALIZACI&Oacute;N DEL DESARROLLO DEL SWMencionar&eacute; brevemente otro &#34;beneficio&#34; que puede ser acreditado para construir lo cual me resulta muy dif&iacute;cil de justificar pero es usado (mal) regularmente por compa&ntilde;&iacute;as m&aacute;s grandes; puede capitalizar los costos del desarrollo de software. Puede llegar a ser una inversi&oacute;n financiera atractiva, especialmente para las empresas que cotizan en bolsa, donde los accionistas analizan las cuentas de la instituci&oacute;n y los mercados reaccionan con alarma ante cualquier cambio en las finanzas esperadas en las llamadas de ganancias. La capitalizaci&oacute;n de los costos de desarrollo pueden ayudar a compensar el impuesto sobre las ganancias. Existen algunos beneficios contables que prefieren costos de Capital sobre los Operativos, sin embargo hay un incremento de ellos y una reducci&oacute;n de eficiencia con poco beneficio a largo plazo. Los productos de software que se tratan como un Activo generalmente no exceden el valor de su ingenier&iacute;a, trat&aacute;ndose m&aacute;s de un juego de contabilidad de tontos que una raz&oacute;n genuina para capitalizar. Prefiera la simplicidad de los gastos operativos siempre que sea posible.&nbsp; Puede parecer que estoy evitando por completo el valor del desarrollo en casa y apoyando el uso de un SW de un fabricante. Perm&iacute;tame aclarar que no lo estoy, ya que el desarrollo en casa puede (en &nbsp; condiciones correctas) ofrecer un beneficio masivo a la empresa. Piense que en compra de un software como si tuviera una gama de colores para pintar. El valor y el posicionamiento estrat&eacute;gico no se derivan del &#34;software construido&#34;, sino el conjunto de capacidades &uacute;nicas que ofrecen valor a sus clientes. El Quid de mi argumento es que normalmente es m&aacute;s pragm&aacute;tico y econ&oacute;mico almacenar su paleta con soluciones puntuales y luego combinarlas para adaptarlas a su negocio y clientes. A veces tendr&aacute; que echar un poco de polvo de hada mezclada con ingenier&iacute;a. &iquest;Recolecta y procesa datos de usuarios para predecir resultados y brindar a los clientes un flujo de trabajo rico e inteligente que les ayuda directamente a tomar mejores decisiones? Eso es valioso, y ciertamente no necesita construir cada parte de &eacute;l. Para utilizar realmente la tecnolog&iacute;a, debe tomar decisiones sensatas sobre qu&eacute; construir y cu&aacute;ndo. Debe asegurarse que est&aacute; mezclando la paleta de forma exclusiva para su organizaci&oacute;n.', '2019-12-17 20:25:11', 'published', 'Negocios'),
(38, '3 nuevas soluciones tecnolÃ³gicas que cubren las necesidades crÃ­ticas del Sector Financiero', 'Mauricio', '2019-12-17', '220066.jpeg', 'El evento perfecto para lanzar nuestras nuevas soluciones financieras. Siendo Foromic el evento maÌs importante para la Industria Microfinanciera de AmeÌrica Latina, al profundizar con temas relacionados al desarrollo empresarial y el impacto que generan soluciones disruptivas soportadas por la TI (TecnologiÌa de la InformacioÌn), representoÌ un marco ideal para que la empresa Formiik diera a conocer sus tres nuevos productos que transformaraÌn la operacioÌn del Sector Financiero, a traveÌs de la Inteligencia Artificial, el Cloud Computing y la TecnologiÌa MoÌvil, representados en: Formiik Bot: Chat inteligente que a traveÌs de su inteligencia artificial interactuÌa con clientes y prospectos para aclarar dudas e informacioÌn relacionada al negocio. Formiik Engine: Sistema Operativo de OriginacioÌn para acelerar y mejorar los costos de los procesos de una forma agradable, faÌcil, intuitiva y cumpliendo en todo momento con la regulacioÌn vigente. Formiik Mobile: Oficina moÌvil que mejora la productividad del personal en campo, al mismo tiempo que acelera los procesos de atencioÌn a los clientes finales MaÌs de 15 mil analistas y ejecutivos de instituciones financieras gestionan al mes maÌs de 3 millones de sus operaciones, en 7 paiÌses de LatinoameÌrica, a traveÌs de Formiik, TecnologiÌa Financiera.', '2019-12-17 22:30:12', 'published', 'Negocios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(225) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(36, 'usuario', 'usuario', 'usuario', 'user@cw.com', '$2y$10$WGiJTJjo.sAZhvpjH6.WG.jMMePFRSCP6QzF7dKQc17bq/ya4.I0i', 'user'),
(35, 'configuroweb', 'Mauricio', 'Sevilla', 'admin@cw.com', '$2y$10$/KsGaLwpzrbXJIBJi.7qWOQ9ujccfZjIkQNKhtJf28A6KfAmW0t4i', 'superadmin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
