-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Lug 16, 2016 alle 12:26
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_tim`
--
CREATE DATABASE IF NOT EXISTS `data_tim` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data_tim`;

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriadispositivo`
--

DROP TABLE IF EXISTS `categoriadispositivo`;
CREATE TABLE IF NOT EXISTS `categoriadispositivo` (
  `idcategoriadispositivo` int(11) NOT NULL AUTO_INCREMENT,
  `nomecategoriadispositivo` varchar(99) DEFAULT NULL,
  `descrizionecategoriadispositivo` text,
  `immaginecategoriadispositivo` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idcategoriadispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriadispositivo`
--

INSERT INTO `categoriadispositivo` (`idcategoriadispositivo`, `nomecategoriadispositivo`, `descrizionecategoriadispositivo`, `immaginecategoriadispositivo`) VALUES
(1, 'Smartphone', 'tutti i migliori smartphone ai migliori prezzi', 'smartphone.png'),
(2, 'Tablet', 'in mobilità utilizza i tablet con la nostra connessione 4G', 'tablet.png'),
(3, 'TV & SmartLiving', 'I più innovativi prodotti per la tua tv e la vita multimediale', 'tv.png'),
(4, 'Modem and Networking', 'Per rimanere sempre connesso da tuo notebook', 'modem.png'),
(5, 'Promozioni', 'Fantastici dispositivi a prezzi sensazionali!', 'promotions.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriaservizioassistenza`
--

DROP TABLE IF EXISTS `categoriaservizioassistenza`;
CREATE TABLE IF NOT EXISTS `categoriaservizioassistenza` (
  `idservizio` int(11) NOT NULL AUTO_INCREMENT,
  `nomeservizio` varchar(99) DEFAULT NULL,
  `descrizioneservizio` text,
  `immagineservizio` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idservizio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriaservizioassistenza`
--

INSERT INTO `categoriaservizioassistenza` (`idservizio`, `nomeservizio`, `descrizioneservizio`, `immagineservizio`) VALUES
(1, 'Costi e Pagamenti', 'Controlla i tuoi costi ', 'costs.png'),
(2, 'Configurazioni', 'Come configurare al meglio il tuo dispositivo', 'config.png'),
(3, 'Linea', 'Problemi con la tua linea?', 'line.png'),
(4, 'Highlights', 'Non sai in che categoria cercare? entra in highlights, ci sono i servizi più cliccati', 'highlights.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriasmartlifeservice`
--

DROP TABLE IF EXISTS `categoriasmartlifeservice`;
CREATE TABLE IF NOT EXISTS `categoriasmartlifeservice` (
  `idsmartlife` int(11) NOT NULL AUTO_INCREMENT,
  `nomesmartlife` varchar(99) DEFAULT NULL,
  `descrizionesmartlife` text,
  `immaginesmartlife` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`idsmartlife`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriasmartlifeservice`
--

INSERT INTO `categoriasmartlifeservice` (`idsmartlife`, `nomesmartlife`, `descrizionesmartlife`, `immaginesmartlife`) VALUES
(1, 'Tv & intrattenimento', 'intrattieniti con il meglio della tv in casa tua e sempre con te in giro', 'tv.png'),
(2, 'Salute e Benessere', 'Mantieniti in forma con le migliori app e gadget tim', 'healt.png'),
(3, 'Casa e famiglia', 'utilizza tutto ciò che offre tim per la tua famiglia', 'home.png'),
(4, 'Servizi personali', 'Un nuovo approccio al mondo dell''e-payment e dell''identità digitale', 'payment.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo`
--

DROP TABLE IF EXISTS `dispositivo`;
CREATE TABLE IF NOT EXISTS `dispositivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `promozione` tinyint(1) NOT NULL DEFAULT '0',
  `sconto` int(11) DEFAULT NULL COMMENT 'sconto dal prezzo originario in %',
  `prezzo` int(11) NOT NULL,
  `immagine` varchar(99) DEFAULT NULL,
  `os` varchar(99) DEFAULT NULL,
  `memoria` int(11) DEFAULT NULL,
  `schermo` varchar(99) NOT NULL,
  `ram` int(11) NOT NULL,
  `processore` varchar(99) NOT NULL,
  `dimensioni` varchar(99) NOT NULL,
  `peso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo`
--

INSERT INTO `dispositivo` (`id`, `nome`, `descrizione`, `categoria`, `promozione`, `sconto`, `prezzo`, `immagine`, `os`, `memoria`, `schermo`, `ram`, `processore`, `dimensioni`, `peso`) VALUES
(1, 'iPhone 6s', 'Inizi a usare iPhone 6s e ti rendi subito conto che non hai mai provato niente del genere. Con il 3D Touch ti basta premere una volta sul display perché si aprano tante nuove possibilità. Live Photos dà più vita ai tuoi ricordi. E questo è solo l’inizio. Continua a usare il tuo iPhone 6s e scoprirai tutte le innovazioni che racchiude, a ogni livello.\r\nCon il primo iPhone abbiamo introdotto il Multi-Touch, e il rapporto con la tecnologia si è completamente trasformato. Ora con il 3D Touch, puoi fare cose che non avresti nemmeno immaginato. iPhone 6s riconosce l’intensità  della pressione del tuo dito: tutto così diventa ancora più semplice e veloce. E grazie al nuovo Taptic Engine hai anche un feedback tattile immediato.\r\nDall’alto dei suoi 12MP, la fotocamera iSight è pronta a stupirti con immagini nitide e dettagliate e con fantastici video a 4K: una risoluzione quattro volte più alta del formato HD a 1080p. In più, iPhone 6s ha una videocamera FaceTime HD che scatta foto da 5MP, perfetta per i selfie. Anzi, per veri e propri autoritratti. E con iPhone 6s ora scoprirai anche la magia di Live Photos, un modo completamente nuovo di rivivere i tuoi ricordi: quando fai una foto, catturi anche l’istante prima e dopo lo scatto; poi basta premere sul display e l’immagine prende vita.', 1, 0, NULL, 799, 'iPhone6s.jpg', 'iOS', 64, 'Retina Display 4.6”', 2, 'Chip A9 con coprocessore di movimento M9 integrato', '138,1 mm. 67 mm. 6,9 mm', 122),
(2, 'iPhone 6s Plus', 'Con iPhone 6 e iPhone 6 Plus Apple ha completamente ripensato il suo storico smartphone. Si abbandonano le forme squadrate dei modelli precedenti – da iPhone 4 a iPhone 5S – per abbracciare un form factor arrotondato e sottilissimo. Il materiale di punta è sempre l’alluminio anodizzato, con una scocca dello spessore di 6,9 millimetri per il modello da 4,7 pollici e di 7,1 per quello da 5,5. Sul retro, una fotocamera lievemente sporgente per garantire una profondità così ridotta del terminale, quindi dei divisori che fungono sia da base d’appoggio per il device che da isolanti per le varie antenne WiFi, LTE e Bluetooth in dotazione.\r\nIl vetro frontale, dagli angoli avvolgenti e ammorbiditi, pur non essendo in cristallo di zaffiro garantisce un’estrema resistenza a urti e graffi grazie a un processo di rafforzamento agli ioni. Il jack per le cuffie si sposta sul fondo, così come nella linea iPod Touch, ed è accompagnato da un foro per la connessione Lightning nonché da una striscia per l’altoparlante integrata. Infine, una menzione anche per i tasti fisici, ora posti lateralmente, lievemente incassati nella scocca e dalle forme allungate.', 1, 0, NULL, 899, 'iPhone_6s_plus.jpg', 'iOS', 16, 'Retina Display 5.5”', 0, 'Chip A9X con architettura a 64 bit', '158.1x77.2x7.1 mm', 172),
(3, 'Galaxy S7', 'Stiamo cambiando completamente il modo in cui condividerai le tue esperienze e i tuoi ricordi più importanti. Cancelleremo i limiti di ciò che uno smartphone può fare per te. E sarà il più grande cambiamento visto fino ad ora nel mondo degli smartphone.\r\nAbbiamo fatto grandi progressi, superando i limiti odierni e rendendo possibile quello che finora era impossibile, ascoltando sempre i vostri suggerimenti. Abbiamo trovato un perfetto equilibrio tra forma e tecnologia, sviluppando funzioni mai viste nei Galaxy precedenti, e di cui non potrete più farne a meno. Galaxy S7 e S7 edge.\r\nNella progettazione di Galaxy S7 e S7 edge non siamo scesi a compromessi. Il risultato è una semplicità d''uso senza precedenti, grazie a funzionalità avanzate che si integrano alla perfezione nelle forme eleganti. Smartphone belli da guardare e piacevoli da usare.', 1, 1, 22, 499, 'galaxy_s7.jpg', 'android', 32, 'QuadHD/5.5pollici/534ppi', 3, 'SnapDragon 831', '143x70.5x7.2 mm', 174),
(4, 'Nexus 5x', 'LG Nexus 5X è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo LG Nexus 5X sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. \r\nDi tutto rispetto la fotocamera da 12 megapixel che permette al LG Nexus 5X di scattare foto con una risoluzione di 4608x2592 pixel e di registrare video in 4K alla risoluzione di 3840x2160 pixel. Lo spessore di 7.9mm è veramente contenuto e rende questo LG Nexus 5X ancora più spettacolare. ', 1, 0, NULL, 299, 'nexus_5x.jpg', 'android', 16, '1080 x 1920 pixel', 4, 'Quad core 1.44 GHz Cortex-A53 + Dual core 1.8 GHz Cortex-A57', '147 x 72.6 x 7.9 mm', 136),
(5, 'Lumia 950XL', 'Microsoft Lumia 950 XL è indubbiamente uno degli cellulare Touchscreen più avanzati e completi disponibili sul mercato, grazie alla ricca dotazione e all''elevata multimedialità. Dispone di un grande display da 5.7 pollici e di una risoluzione da 2560x1440 pixel che è fra le più elevate attualmente in circolazione. Le funzionalità offerte da questo Microsoft Lumia 950 XL sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. \r\nL''eccellenza di questo Microsoft Lumia 950 XL è completata da una fotocamera con un sensore da ben 20 megapixel che permette al Microsoft Lumia 950 XL di scattare foto di alta qualità con una risoluzione di 4992x3744 pixel e di registrare video in 4K alla risoluzione di 3840x2160 pixel. Lo spessore di 8.1mm è contenuto e rende questo Microsoft Lumia 950 XL molto interessante. ', 1, 0, NULL, 545, 'Lumia_950xl.jpg', 'Windows', 32, '5.7 pollici 1440 x 2560 pixel', 1, 'Quad core 1.5 GHz Cortex-A53 + Quad core 2.0 GHz Cortex-A57', '151.9 x 78.4 x 8.1 mm', 165),
(6, 'Huawei G7', 'Huawei Ascend G7 è un smartphone Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Dispone di un enorme display Touchscreen da 5.5 pollici con una risoluzione di 1280x720 pixel non particolarmente elevata. Sul versante delle funzionalità a questo Huawei Ascend G7 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. \r\nQuesto Huawei Ascend G7 è un prodotto con pochi competitor per ciò che riguarda la multimedialità grazie alla fotocamera da ben 13 megapixel che permette al Huawei Ascend G7 di scattare foto di alta qualità con una risoluzione di 4128x3096 pixel e di registrare video in fullHD alla risoluzione di 1920x1080 pixel. Lo spessore di 7.6mm è veramente contenuto e rende questo Huawei Ascend G7 ancora più spettacolare. ', 1, 0, NULL, 169, 'huawei_g7.jpg', 'android', 16, '5.5 pollici 720 x 1280 pixel', 0, '1.2 GHz Quad Core', '153.5 x 77.3 x 7.6 mm', 165),
(7, 'iPad Pro', 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi?Touch perfezionata, il suo grande display Retina da 12,9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, è pronto ad allargare ancora una volta i tuoi orizzonti. Non è solo più grande. È un iPad che ti permetterà di lavorare e creare in una dimensione tutta nuova, come non hai mai fatto prima.\r\n\r\nCon 5,6 milioni di pixel, iPad Pro ha il display Retina a più alta risoluzione mai visto su un dispositivo iOS. Montare video 4K, creare presentazioni, gestire un’azienda: sul display da 12,9" tutto è più facile, veloce e coinvolgente. E con il Multi?Touch riprogettato scoprirai nuovi modi per interagire con il tuo iPad.\r\n\r\nNonostante il suo grande display, iPad Pro è sorprendentemente sottile e leggero: solo 6,9 mm di spessore e appena 713 grammi. Grazie al guscio unibody, è anche resistente e ben bilanciato. Ma forse l’aspetto più incredibile di iPad Pro è un altro: è talmente comodo che quasi ti dimentichi di averlo in mano\r\n\r\n', 2, 0, NULL, 1249, 'ipad_pro.jpg', 'iOS', 128, 'Retina Display 12.9”', 4, '\r\nChip A9X con architettura a 64 bit\r\nCoprocessore M9', '305,7 mm x 220,6 mm x 6,9 mm', 723),
(8, 'Mediapad 10', 'HUAWEI MediaPad 10 Link+ è un tablet da 10,1 pollici con microprocessore quad-core HiSilicon Kirin 910 e supporto per le reti mobili 3G.\r\n\r\nCon un design unibody ultra-sottile di 9,9 millimetri in lega di alluminio, è elegante e portatile. MediaPad 10 Link+ ha uno schermo IPS HD con risoluzione di 1280×800 pixel.\r\n\r\nMonta una fotocamera frontale da 0,3 megapixel e una fotocamera posteriore da 3 megapixel. L''ottimo display in combinazione con la tecnologia audio DTS del MediaPad 10 Link+ offre una superba qualità audiovisiva, sia che si voglia scattare foto, giocare, guardare film in HD, o ascoltare musica', 2, 1, 20, 200, 'huawei_mediapad10.jpg', 'android', 8, '10.1" (1280x800) IPS 16M di colori', 1, 'Balon Cortex A9 Quad-Core 1.6GHz', '257.4x175.9x9.9mm', 630),
(9, 'Apple Watch', 'Apple Watch e'' disponibile in due dimensioni, una piu'' compatta dell''altra, e in tre varianti: Watch, Watch Sport e Watch Edition (in oro 18 carati). Ha due tasti laterali, uno schermo quadrato con bordi arrotondati ed e'' disponibile in alluminio anodizzato o acciaio inossidabile. Watch consente di usare il touchscreen in un modo nuovo attraverso il ''Force touch''. Inoltre a messaggi, email e quant''altro si puo'' rispondere sinteticamente con immagini, emoticon, inviando la frequenza cardiaca, con un disegno a mano libera o attraverso la funzione walkie talkie. Apple Watch non e'' autonomo: funziona solo in abbinamento a iPhone 6, iPhone 6 Plus, iPhone 5, iPhone 5C e iPhone 5S.', 3, 0, NULL, 399, 'apple_watch.jpg', 'iOS', 4, '1.32 pollici 272 x 340 pixel 326 ppi', 1, 'amd radeon ', '38.6 millimetri x 33.3 millimetri x 10.5 millimetri', 72),
(10, 'Samsung Smart TV 50"', 'Samsung Smart TV non solo è in grado di seguire le tue indicazioni vocali per cercare nei palinsesti qualcosa che ti piaccia, ma è anche capace di scoprire da solo i programmi che potrebbero piacerti, basandosi sulle tue abitudini e sui tuoi gusti Samsung ha creato la vera Smart TV, talmente intelligente da imparare i gusti dei propri spettatori in modo da soddisfare e addirittura anticipare ogni richiesta. La funzione S-Recommendation è uno dei punti di forza del nuovo rivoluzionario sistema Smart TV Samsung: il televisore capisce esattamente cosa l’utente vuole vedere e quando. Analizzando i gusti di ogni persona in base ai programmi visti e alle azioni compiute il TV è in grado di suggerire, basandosi su una evoluta Guida TV, trasmissioni e programmi che potrebbero interessare e piacere.\r\nIl riconoscimento vocale all’avanguardia, rende ancora più facile e naturale l’utilizzo della tua Samsung Smart TV. Tutto ruota interno a te: tutte le funzioni e le applicazioni sono anche accessibili semplicemente “parlando” al TV: l’evoluto sistema di controllo vocale in italiano dà accesso al menù e all’ambiente Smart TV senza che tu debba neppure muovere un dito.\r\n', 3, 0, NULL, 1459, 'samsung_tv.jpg', 'android', NULL, 'Ultra HD - 4K 3840 x 2160', 0, '', '50"', 3),
(11, 'ZTE SPRO 2', 'Un proiettore moderno e bello da vedere.', 3, 0, NULL, 699, 'zte_spro2.jpg', 'android', 16, ' 20” - 100”, Luminosità 200 Lumen, Contrasto 5000:1', 0, 'Qualcomm® Snapdragon™ 800 Quad-Core 2.0 GHz', '134x131x33 mm', 526),
(12, 'TIM Powerline Adapter', 'Colleghi PC, modem e console sfruttando la rete elettrica\r\n\r\nVuoi trasformare la rete elettrica di casa tua in una rete per navigare e trasmettere, dove il wi-fi non arriva, dati in formato digitale?\r\n\r\nCon Powerline Adpter puoi farlo.\r\n\r\nColleghi tra loro PC, modem e console senza problemi di copertura, distanza, né cablaggi: ti basta inserire Powerline Adapter nelle prese elettriche per creare una rete domestica che connette i vari apparati, con prestazioni fino a 200 Mbps.\r\n\r\nE la riservatezza dei dati che trasmetti e ricevi è garantita mediante un sistema di crittografia.\r\n\r\nAcquista Powerline Adapter in coppia direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', 4, 0, NULL, 49, 'tim_powerline_adapter.png', NULL, NULL, '', 0, '', '', 0),
(13, 'TIM Modem ADSL Wifi', 'Navigazione veloce e senza fili\r\n\r\nCon il Modem ADSL Wi-Fi navighi ad alta velocità e senza fili, utilizzando l''interfaccia Wi-Fi o attraverso le 4 porte Ethernet.\r\n\r\nNavigazione più veloce grazie alla tecnologia senza fili Wi-Fi e migliore copertura della rete Wi-Fi della tua abitazione(1).\r\nProtezione: la cifratura WPA e WPA2 impedisce l’accesso ai non autorizzati alla rete Wi-Fi. Disponibili anche funzionalità avanzate come il filtro degli indirizzi MAC ed il firewall integrato.\r\nTutta la famiglia connessa: collega tutti i PC, smartphone e tablet al nuovo modem ADSL Wi-Fi e inoltre condividi Hard Disk e stampanti collegati alla porta USB del modem.\r\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software.\r\nRisparmia sulla bolletta elettrica: il nuovo modem, rispetto ad un prodotto Telecom Italia di generazione precedente con le stesse funzionalità, consente di risparmiare fino al 40% di energia elettrica su un utilizzo medio annuo (2).\r\nIl Modem Wi-Fi opera solo su linea ADSL di Telecom Italia ed è compatibile con i principali sistemi operativi (Windows 7, Vista, XP - MacOS 10.3).\r\n\r\nAcquista il Modem ADSL Wi-Fi direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.\r\n\r\nNote:\r\n(1) La tecnologia Wi-Fi 802.11n migliora le prestazioni rispetto ai prodotti della generazione precedente 802.11b/g di Telecom Italia.Per utilizzare la rete senza fili è necessario disporre di un computer con interfaccia Wi-Fi. Le prestazioni effettive possono variare a seconda del computer, della distanza, della velocità di connessione ADSL e di altri fattori.\r\n(2) I valori sono misurati nei laboratori Telecom Italia. ', 4, 0, NULL, 69, 'tim_modem_adsl_wifi.jpg', NULL, NULL, '', 0, '', '', 0),
(14, 'Tecnoware ERA Plus 900', 'ERA PLUS 900 è un UPS (Uninterruptible Power Supply), cioè un gruppo di continuità, di tipo Line Interactive, realizzato appositamente per proteggere il Modem Fibra di TIM da qualsiasi avaria della rete elettrica (black-out, sottotensioni, sovratensioni, microinterruzioni), causa dei frequenti danneggiamenti di Hardware e Software.\r\n\r\nQuando è presente la tensione di rete elettrica, ERA PLUS 900 svolge le funzioni di stabilizzatore e filtra i disturbi frequentemente presenti sulla linea elettrica (transienti, spike, interferenze, etc.), preservando in tal modo il modem ed eventuali altri dispositivi collegati alla sua uscita ad esempio il telefono cordless acquistato insieme all’offerta Fibra di TIM; inoltre ricarica le batterie in modo ottimale.\r\n\r\nIn caso di avaria della rete elettrica o caduta di tensione, l’UPS continua ad alimentare il modem ed altre apparecchiature protette ad esempio il telefono cordless garantendo per un lasso di tempo variabile il servizio telefonico e la connettività che sono compromesse in caso di black-out.\r\n\r\nERA PLUS presenta tutte le moderne caratteristiche che garantiscono massima affidabilità e sicurezza:\r\n\r\nControllo a microprocessore di tutte le funzioni, garanzia di alta affidabilità.\r\nStabilizzazione in uscita tramite AVR (Automatic Voltage Regulation).\r\nProtezione da sovraccarico sia nel modo di funzionamento normale che in modo batterie.\r\nCarica batterie di alte prestazioni che prolunga il tempo medio di vita delle batterie e ne garantisce una ricarica ottimale.\r\nAccensione anche in condizioni di rete elettrica assente.\r\nRiaccensione automatica dopo lo spegnimento per fine autonomia al ritorno della tensione di rete.\r\nAdattabilità automatica alla frequenza d’ingresso 50 o 60 Hz. Segnalazioni acustiche di vario tipo durante il normale funzionamento e che evidenziano le eventuali condizioni di allarme.\r\nAlta affidabilità.\r\nElevato rendimento e basso costo d’esercizio.\r\nDimensioni compatte.\r\nDesign curato ed ergonomico.\r\nSemplicità d’uso.\r\nAcquista ERA Plus 900 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.\r\n\r\nCaratteristiche tecniche', 4, 0, NULL, 80, 'tecnoware_era_plus_900.jpg', NULL, NULL, '', 0, '', '', 0),
(15, 'Galaxy View 18.4', 'Dal punto di vista hardware, il Galaxy View integra un processore Exynos 7580, un octa-core da 1.6GHz con GPU Mali T720, 2GB di memoria RAM, 32/64GB di memoria integrata espandibile, doppio speaker stereo (4Wx2), Bluetooth 4.1 BLE, Wi-Fi ac, supporto alle reti LTE opzionale ed una fotocamera frontale da 2.1 megapixel. Come sensori e presente solo quello di luminosità. La batteria integrata da 5700mAh offre fino ad 8 ore di visualizzazioni di video.\r\n\r\nStiamo parlando quindi di un prodotto interessante e completo il cui unico limite è la memoria RAM. Inutile dire che per un prodotto del genere 3GB sarebbero stati perfetti ma Samsung probabilmente sa che questo strumento è indirizzato ad un pubblico non solo di nicchia ma che non è particolarmente smanettone e il ricaricamento di un''app di pochi istanti non viene considerato un problema.\r\nParlare di Ergonomia è impossibile per questo prodotto in quanto il peso e la dimensione lo collocano molto lontano da i parametri che fino ad oggi utilizziamo per definire Mobile un dispositivo. View è infatti un oggetto da scrivania che può essere portato da una stanza all''altra grazie ad un maniglione posteriore.\r\n\r\nProprio questo accorgimento è molto particolare in quanto il meccanismo posteriore non solo agevola il trasporto, ma consente anche si mantenere verticale il View o ancora di posizionarlo su un piano orizzontale con un''inclinazione tale da permetterne l''utilizzo in comodità.', 2, 0, NULL, 799, 'Samsung-Galaxy-View-White_Angle-1_760x760.jpg', 'android', 64, 'Display 18.4” TFT, 1920x1080 Full HD', 3, 'Processore OctaCore 1.6 GHz', '230x158x11 mm', 289),
(17, 'Galaxy TabPro S 12 ', 'DESIGN SOTTILE&LEGGERO\r\nGalaxy TabPro S rappresenta il perfetto connubio tra design e tecnologia. Estremamente sottile e leggero, stupisce per la ricercatezza dei dettagli e la qualità dei materiali.\r\nELEGANTE PROTEZIONE\r\nLa book cover protegge perfettamente Galaxy TabPro S, mantenendone intatta l''eleganza.\r\nDISPLAY SUPER AMOLED\r\nGalaxy TabPro S è il primo prodotto Windows 10 al mondo dotato di display SUPER AMOLED. Lavorare in mobilità è davvero comodo, grazie al display touchscreen da 12 pollici. Indipendentemente dal contenuto visualizzato, che sia una immagine o un video, i colori e la brillantezza delle immagini saranno esaltate dalla definizione e dalla qualità del display SUPER AMOLED di Galaxy TabPro S\r\nINTRATTENIMENTO XBOX ONE GAME STREAMING\r\nCon questa rivoluzionaria funzione, utilizzando la stessa connessione WiFi, potrai giocare in streaming ai giochi della tua XBOX ONE direttamente su Galaxy TabPro S.\r\nPERFORMANCE SENZA COMPROMESSI\r\nIl sistema operativo Windows 10, supportato dalla potenza del nuovo processore Intel Core M, sono una garanzia per lavorare professionalmente in qualunque situazione e in qualsiasi momento.\r\n2-IN-1\r\nNessun compromesso: potente come un PC e portatile come un tablet. Galaxy TabPro S è perfetto in qualunque situazione.\r\nDURATA BATTERIA & RICARICA\r\nLa batteria a lunga durata di Galaxy TabPro S permette di focalizzarsi solamente sulle proprie attività. Completamente carico in sole due ore e mezza, consente un uso continuativo di oltre 10 ore', 2, 0, NULL, 1300, '0_start_012_front3_black.jpg', 'Windows', 128, 'Display 12” FHD+, 2160x1440 SuperAmoled', 4, 'intel core i5', '290x120x22', 564),
(18, 'Galaxy Tab S2 9.7', 'Samsung Galaxy Tab S2 8.0 è un tablet Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Sorprende il display Touchscreen da 8 pollici che pone questo Samsung al vertice della categoria. Anche la risoluzione è fra le più elevate attualmente in circolazione: 2048x1536 pixel. Sul versante delle funzionalità a questo Samsung Galaxy Tab S2 8.0 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. \r\nOttima la fotocamera da 8 megapixel che permette al Samsung Galaxy Tab S2 8.0 di scattare foto con una risoluzione di 3264x2448 pixel e di registrare video in fullHD alla risoluzione di 2560x1440 pixel. Lo spessore di appena 5.6mm rende questo Samsung Galaxy Tab S2 8.0 un prodotto completo e tra i più sottili sul mercato. ', 2, 0, NULL, 550, 'samsung-t815_lte_black_front.jpg', 'android', 16, '1536 x 2048 pixel Super AMOLED', 1, 'Quad-core 1.9 GHz Cortex-A57 + Quad-core 1.3 GHz Cortex-A53', '134.8 x 198.6 x 5.6 mm', 272),
(19, 'Apple iPad mini 4 16GB', 'La mini superpotenza.\r\nA vederlo sembra davvero piccolo, ma è pronto a stupirti con prestazioni eccezionali: il nuovo iPad mini 4, più sottile e leggero che mai, ha tutta la potenza che ti serve per fare grandi cose.\r\nSottile come sempre. Leggero come mai.\r\niPad mini 4 contiene tutto quello che ami dell’iPad in un design ancora più leggero e portatile. Chiama gli amici con FaceTime o portati avanti con il lavoro: puoi farlo ovunque, in qualsiasi momento.\r\nPiccolo, ma con i superpoteri.\r\niPad mini 4 ha un chip A8 di seconda generazione con architettura a 64 bit di livello desktop, per gestire anche le app più elaborate. Puoi montare un film, sfogliare le tue foto o fare entrambe le cose contemporaneamente: tutto è fluido e immediato.\r\nDue fotocamere straordinarie. Abilmente camuffate da iPad.\r\nLa fotocamera iSight di iPad mini 4 ha un’ottica sofisticata, un sensore ancora più evoluto e un processore di immagine ISP progettato da Apple. Include comode funzioni come Panorama, Time-lapse, Moviola e le modalità scatto in sequenza e Timer. Anche la videocamera frontale FaceTime HD è stata riprogettata con un sensore perfezionato e pixel più grandi, per riprendere ancora meglio negli ambienti poco illuminati. Risultato? Le foto e i video, per non parlare delle videochiamate e dei selfie, saranno incredibilmente brillanti.\r\nAncora più sicuro. Ancora più alla mano.\r\nGrazie alla tecnologia Touch ID, iPad mini 4 è protetto da una password inattaccabile e a prova di memoria: la tua impronta digitale. Ti basterà un tocco per sbloccarlo, ma i tuoi dati non corrono alcun pericolo, anche se lo presti a un amico o un collega. E con Touch ID fare acquisti su iTunes, iBooks e App Store è ancora più facile e sicuro.\r\nWireless ultraveloce.\r\nCon iPad mini ti colleghi alle reti Wi?Fi e cellulari ad alta velocità, per scaricare contenuti, navigare il web e condividere documenti praticamente ovunque. Se non c’è il Wi?Fi, con il modello Wi?Fi + Cellular* puoi connetterti alle reti dati cellulari ad alta velocità in tutto il mondo. E con la Apple SIM puoi scegliere un piano dati a breve termine in oltre 90 Paesi e territori, in modo facile e veloce.\r\nTap dopo tap, lo amerai sempre di più.\r\nCon iPad mini 4 hai iOS 9, il sistema operativo mobile più intuitivo, evoluto e sicuro al mondo. iOS 9 è stato creato su misura per iPad. App ancora migliori e nuove funzioni come Slide Over, Split View e Picture in Picture ti aiutano a fare molto di più, più facilmente. Devi controllare un messaggio mentre rispondi a un’email? O preparare una presentazione dando un occhio alla partita? Con iOS 9, tu e il tuo iPad potete fare un mondo di cose in più.\r\nApp fatte per iPad. E per fare di tutto.\r\niPad mini 4 nasce con potenti app incluse per fare tutto quello che fai ogni giorno: navigare, controllare le email, modificare foto e video, prendere appunti o anche leggere un libro. E sull’App Store ne trovi tantissime altre che non si limitano a ingrandire la versione per iPhone, ma sono create apposta per lo splendido display Retina dell’iPad. Fotografia, giochi, viaggi, cucina, arredamento, hobby, sport: ci sono app per fare di tutto. E per farlo al meglio.\r\nCover fatte apposta per lui. Colori fatti apposta per te.\r\nLa Smart Cover e la custodia in silicone per iPad mini 4 proteggono il tuo dispositivo in ogni situazione. Sono progettate per essere usate insieme: la Smart Cover aderisce perfettamente allo schermo, mentre la custodia in silicone avvolge la parte posteriore. Ed entrambe sono disponibili in dieci splendidi colori.', 2, 0, NULL, 458, 'slider-ipad-mini-4-spacegrey-1.jpg', 'iOS', 32, 'Display Retina 7.9” (2048x1536) Led IPS', 2, 'A8 con architettura a 64bit a 1.6GHz', '203,2x134,8x6,1mm.', 304),
(21, 'Galaxy Tab S2 9.7', 'La linea Galaxy Tab S2 è facile da recensire. Riesce ad essere tutto quel che Samsung ha la pretesa di farla diventare e rappresenta l''alternativa più credibile, l''equivalente Android, ad iPad. I prezzi di listino restano alti per la categoria, ma le configurazioni sono più convenienti di quelle Apple.\r\n\r\nDa due settimane provo la versione da 8 pollici 32 GB LTE e credo, senza mezzi termini, che sia il miglior tablet Android in vendita. Anche il modello da 9.7 pollici merita, ma il confronto con Sony Xperia Z4 Tablet ha contorni molto meno nitidi e, comunque, ci sono differenze tecniche e funzionali che possono far preferire l''uno o l''altro senza per forza decidere.', 2, 1, 7, 540, 'samsung_galaxy_tab_S2_gold-1.png', 'android', 64, '9.7" 2048x1536 SAMOLED', 2, '4x Cortex A53 @ 1.3GHz', '169 x 237.3 x 5.6 mm', 389),
(23, 'Videocamera D-Link', 'La Videocamera cloud Wireless Pan/Tilt/Zoom (DCS-5010L) è una soluzione di monitoring versatile per la casa o il piccolo ufficio.\r\n\r\nGrazie alla funzione Pan/Tilt (motorizzazione), è possibile monitorare un’intera stanza a prescindere dalla posizione in cui viene collocata, perché ha un raggio d’azione pari a 360 gradi.\r\n\r\nLa DCS-5010L garantisce, immagini video VGA e audio, anche in completa oscurità, grazie ai LED a infrarossi.\r\n\r\nCon mydlink™ Home è, inoltre, possibile accedere alla maschera di gestione e configurazione della videocamera tramite Internet o tramite connessione 4G da tablet e smartphone, grazie all’app gratuita mydlink ™ Home, disponibile per iOS e Android.\r\n\r\nSpecifiche tecniche', 3, 0, NULL, 100, 'ipcam-motorizzata-01.jpg', NULL, NULL, '', 0, '', '', 0),
(24, 'TIMTag', 'TIMTag, il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\n\r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, un’ App dedicata intuitiva e semplice da utilizzare, inclusi 12 mesi di servizio TIMTag e una TIM Card!\r\nTutto a soli 129€!\r\n\r\n', 3, 0, NULL, 129, 'TIM-Tag-Device-new-logo.jpg', NULL, NULL, '', 0, '', '49 x 47 x 17 mm', 234),
(25, 'D-Link SmartHome Kit', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\r\nNel Kit sono inclusi:\r\n\r\nUn Monitor HD (DCS-935L) \r\nUn Wi-Fi Motion Sensor (DCH-S150)\r\nUna smart plug (DSP-W215) \r\nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.\r\n\r\nFacile configurazione e gestione dei tuoi dispositivi\r\n\r\nBasta semplicemente scaricare l’app mydlink Home e la configurazione guidata ti aiuterà a utilizzare al meglio tutti i dispositivi presenti nel kit in modo facile e intuitivo.\r\nCon l’app potrai creare tu stesso le regole per accendere e spegnere i tuoi elettrodomestici quando e ovunque vuoi. \r\n\r\nNotifiche automatiche e real time sul tuo smartphone\r\n\r\nL’app mydlink Home ti notificherà quando:\r\nUn movimento o un suono viene rilevato\r\nUn dispositivo è stato acceso o spento\r\nIl consumo elettrico è stato superato\r\nUn dispositivo non funziona correttamente o si surriscalda\r\nIl sensore di movimento a infrarossi passivo riduce di gran lunga i falsi allarmi garantendoti di essere avvisato solo quando necessario: rilevazione dei movimenti fino a 8 metri (100° orizzontale, 80° verticale).\r\n\r\nMonitor HD\r\n\r\nCon il Monitor HD, potrai controllare la tua casa in alta definizione (720p) e grazie alla visione notturna anche in assenza di luce (fino a 5 mt). Il Monitor HD ti avvisa mediante notifica push ogni volta che verrà rilevato un suono o un movimento.\r\nSensore di movimento\r\n\r\nGrazie alla tecnologia a infrarossi passiva saranno ridotti i falsi allarmi e verrai avvisato solo quando necessario. Con il sensore di movimento rileverai i movimenti fino a 8 metri (100° orizzontale, 80° verticale).\r\n\r\nSmart Plug\r\n\r\nPotrai accendere e spegnere i dispositivi dal tuo smartphone tablet, ovunque ti trovi. Essere avvisato se un elettrodomestico è stato acceso o spento. Impostare nuove regole di funzionamento in base alle tue esigenze.\r\nConnettività Mobile\r\n\r\nVuoi monitorare la tua casa al mare o in montagna quando non ci sei? Vuoi avere sempre sott’occhio la tua macchina quando è in garage? \r\nLa tua barca o il tuo camper nei mesi in cui non li utilizzi? \r\nAnche se non disponi di una connessione ADSL in questi luoghi puoi utilizzare D-Link Smart Home Starter Kit con una connessione mobile 3G o 4G Wi-Fi. ', 3, 1, 4, 160, 'DLinkHD.jpg', NULL, NULL, '', 0, '', '23x532x232 mm', 231),
(26, 'Cassa Nokia MD 12', 'Speaker bluetooth Nokia MD-12 colore bianco. NFC. Ascoltare la tua musica preferita è ora più semplice chemai. Con il suo design ultra - compatto ed una vasta gamma di bellissimi colori , MD -12 è abbastanza piccoloda stare in tasca. Grande esperienza bassi. Non lasciate che la sua piccola dimensione vi inganni . Questopiccolo altoparlante dispone di un grande carico di energia . Progettato con le ultime tecnologie , MD -12 èstato progettato con un attuatore integrato, creando un grande effetto dei bassi quando è impostato su quasiqualsiasi superficie . La durata della batteria superiore per un più divertente ascolto. Con NFC incluso , bastatoccare il tuo telefono cellulare abilitato NFC al diffusore e siete a posto. Oppure utilizzare il Bluetooth edascoltate in streaming i propri brani in modalità wireless e ballate tutta la notte con 15 ore di riproduzionemusicale garantite.', 3, 0, NULL, 50, 'Nokia-md-12_760x760.png', NULL, NULL, '', 0, '', '589x580x489', 934),
(27, 'Beats Solo2 On-Ear', 'Audio potenziato con la nuova qualità sonora Beats, il suono delle cuffie Solo2 è più nitido e più pulito e sprigiona una più vasta gamma di emozioni. Le cuffie Solo2 offrono un''ampia gamma di frequenze alte e bassi profondi per un''esperienza di ascolto equilibrata per tutti i generi musicali.\r\n\r\nVestibilità e stile: comfort, durevolezza e stile. Padiglioni curvati di 15 gradi per un comfort prolungato; la flessibilità rotazionale consente ai padiglioni di flettersi per una vestibilità ancor più personalizzata', 3, 0, NULL, 200, 'beats-solo2-on-ear-red-1.jpg', NULL, NULL, '', 0, '', '424x345x12 mm', 98),
(28, 'Samsung Galaxy Gear S', 'I materiali sono ottimi e la costruzione molto solida con elementi in plastica che si alternano ad una cornice in metallo che rende più elegante e solito il prodotto. L''ergonomia è discreta: si tratta di un prodotto indubbiamente grande ma che non risulta essere cosi esagerato come potrebbe apparire in video o foto. Il peso è di 84grammi e a lungo andare sicuramente pesa più di un Gear più piccolo o di un indossabile come le smartband e simili. Inoltre il cinturino largo e la connettività fa sudare un po'' il polso e se in inverso il problema è relativo, in estate diventa più fastidioso.\r\n\r\nMolto bello infine il display che risulta leggibile in tutte le condizioni di luminosità, con un ottimo sensore automatico e con la tecnologia Amoled che permette di contenere i consumi su schermate nere.', 3, 1, 50, 350, 'samsung-galaxy-gear-s-2_0.jpg', NULL, 4, '3,3 pollici', 1, '', '39,9 x 58,1 x 12,5 mm', 84),
(29, 'WLAN Repeater 1750E', 'Più rete wireless nel giro di secondi\r\nCon il nuovo FRITZ!WLAN Repeater 1750E si estende la portata delle reti wireless esistenti, creando connessioni veloci e stabili che arrivano a 1300 Mbit/s con lo standard AC sulla banda di frequenza da 5 GHz e a 450 Mbit/s con lo standard N su quella da 2,4 GHz.\r\nPer installarlo basta premere un pulsante\r\nI FRITZ!WLAN Repeater 1750E supportano la facile registrazione automatica con il cosiddetto metodo WPS come i router TIM, come il FRITZ!Box o la maggior parte dei router in commercio. Per la configurazione basta premere un pulsante: i ripetitori e i router WPS come il FRITZ!Box si collegano quindi automaticamente.\r\nLibertà senza fili\r\nCon la sua porta Gigabit LAN, questo ripetitore integra nella rete domestica perfino i dispositivi di rete senza funzione wireless. Il FRITZ!WLAN Repeater 1750E copre via radio la distanza fino al router senza richiedere i cavi anteriormente necessari. E se già esistono cavi, in alternativa si può collegare al router nella modalità "ponte LAN" con un cavo di rete. In questo modo, nemmeno le distanze considerevoli rappresentano più alcun problema.', 4, 0, NULL, 90, 'slider-repeater-fritz-1750e-01.jpg', NULL, NULL, '', 0, '', '76,5 x 155 x 62,6 mm', 151),
(33, 'Repeater Wi-Fi AC750', 'ZyXEL WRE6505 Wireless AC750 Range Extender consente di estendere facilmente reti esistenti wireless 802.11 b / g / n / ac in modo facile e veloce. Basta collegare il Repeater direttamente alla presa di corrente e l''indicatore di potenza del segnale LED consente di determinare la posizione di installazione ideale. Il one-click Wi-Fi Protected Setup (WPS Button a pagina 12), prevede l''installazione del client wireless senza frustrazione e completa in pochi passi la configurazione di accesso alla rete.\r\n\r\nTre funzionalità in 1 unico prodotto\r\nCon Zyxel AC750 puoi:\r\n\r\nestendere la rete Wi-Fi nella modalità Repeater\r\ncreare una rete Wi-Fi indipendente da quella, del modem, mediante la funzionalità Access Point\r\ntrasformare in Wi-Fi un device non dotato di tale feature, sfruttando la funzionalità di Terminal Adapter\r\nAcquista il repeater ZyXEL AC750 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', 5, 1, 34, 50, 'slider-repeater-zyxel-ac750-front.jpg', NULL, NULL, '1', 1, '1', '46,5 x 62,3 x 90,9 mm', 98),
(34, 'Wi-Fi Bridge Technicolor', 'Tre funzionalità in unico prodotto\r\n\r\nCon il multimedia connect puoi:\r\n\r\nCollegare al modem tramite il Wi-Fi AC a 5GHz una TV, un decoder od un altro apparato\r\nAssociarlo ad un altro Multimedia Connect (TG234) e creare un ponte Wi-Fi AC a 5GHz\r\nCreare una rete Wi-Fi AC a 5 GHz indipendente da quella del modem (funzionalità access point)', 4, 0, NULL, 80, 'wifi-bridge-technicolor_01.jpg', NULL, NULL, '', 0, '', '342x54x423', 343),
(35, 'Powerline Adapter', 'Colleghi PC, modem e console sfruttando la rete elettrica\r\n\r\nVuoi trasformare la rete elettrica di casa tua in una rete per navigare e trasmettere, dove il wi-fi non arriva, dati in formato digitale?\r\n\r\nCon Powerline Adpter puoi farlo.\r\n\r\nColleghi tra loro PC, modem e console senza problemi di copertura, distanza, né cablaggi: ti basta inserire Powerline Adapter nelle prese elettriche per creare una rete domestica che connette i vari apparati, con prestazioni fino a 200 Mbps.\r\n\r\nE la riservatezza dei dati che trasmetti e ricevi è garantita mediante un sistema di crittografia.\r\n\r\nAcquista Powerline Adapter in coppia direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', 4, 1, 9, 49, 'PowerlineAdapter-1.png', NULL, NULL, '', 0, '', '342x33x541', 754),
(36, 'Modem Wi-Fi 4GPLUS', 'L''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem wifi TIM 4G LTE consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.\r\n\r\nLe foto sul sito tim.it riportano tutti i tipi di Modem Wifi 4G: i Modem inclusi nelle confezioni possono essere diversi per forma, peso e colore ma hanno le stesse caratteristiche indicate nella scheda Dettaglio. Acquistando da questo sito, ti verrà spedito uno dei Modem riportati nelle foto secondo le disponibilità del momento', 4, 0, NULL, 100, 'TIM-Pack-M-Modem-4Gplus-760x760.jpg', NULL, NULL, '', 0, '', '64x346x643 mm', 643),
(37, 'Modem 4G WI-FI', 'L''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem wifi TIM 4G LTE consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.\r\n\r\nLe foto sul sito tim.it riportano tutti i tipi di Modem Wifi 4G: i Modem inclusi nelle confezioni possono essere diversi per forma, peso e colore ma hanno le stesse caratteristiche indicate nella scheda Dettaglio. Acquistando da questo sito, ti verrà spedito uno dei Modem riportati nelle foto secondo le disponibilità del momento', 4, 0, NULL, 80, 'TIM-Pack-M-Modem-4G-760x760_0.jpg', NULL, NULL, '', 0, '', '64x346x643 mm', 63),
(38, 'Sony XPERIA X', 'Il capolavoro\r\nUno smartphone dalle prestazioni inimitabili che integra una sensazionale fotocamera in grado di predire il prossimo movimento del soggetto..\r\nUna fotocamera senza rivali\r\nXperia X Performance integra la nuova fotocamera firmata Sony, più veloce e smart che mai. Tempi di risposta più rapidi, messa a fuoco più intelligente e rivoluzionaria velocità di otturazione adattiva: avrai tutto il necessario per scatti incredibilmente nitidi, in qualsiasi condizione. La messa a fuoco automatica ibrida intuitiva di Xperia X Performance utilizza le tecnologie delle fotocamere Sony e ti permette di cogliere qualsiasi movimento. Basta scegliere il soggetto da mettere a fuoco e la fotocamera lo seguirà automaticamente, anche quando si muove. La messa a fuoco è sempre chiara e il soggetto sempre nitido: non dovrai più preoccuparti di seguire la scena. Pensa a tutto il tuo smartphone.\r\nLa fotocamera da 23 MP che non teme i movimenti improvvisi\r\nLa nostra rapidissima fotocamera è in grado di passare dallo standby allo scatto in meno di 0,6 secondi. Grazie all''incredibile rapidità di avvio, messa a fuoco automatica ibrida ed elaborazione dell''immagine, potrai cogliere i momenti più inattesi.\r\n\r\nUn tocco di classe\r\nBasta prendere Xperia X Performance in mano per accorgersi di quanto sia speciale: lasciati conquistare dal display curvo e dalla parte posteriore monoblocco in metallo. Scegli fra Nero grafite o Bianco per un esclusivo effetto satinato. Oppure le versioni Oro lime e Oro rosa per un tocco di eleganza. Xperia X Performance riflette i tuoi gusti e il tuo stile di vita. L''ultima versione del classico modello Sony è caratterizzata da un design straordinariamente semplice, ancora più comodo grazie ai bordi ricurvi e al display da 5". E l''interfaccia utente non è da meno, con un look sempre più personalizzato e un approccio più intuitivo.\r\n\r\nInarrestabile potenza\r\nXperia X Performance è dotato di un rapidissimo processore Snapdragon 820 e di velocità di connessione Cat91 per prestazioni senza rivali. Preparati a restare a bocca aperta.\r\n\r\nStreaming alla velocità della luce\r\nConnettività ultra rapida per un intrattenimento ininterrotto. Vuoi guardare un film in streaming su Netflix o scaricare il tuo podcast preferito? Dì addio ai tempi di attesa. Grazie all''ultimo processore Snapdragon 820 e a una connettività senza rivali, Xperia X Performance ti permette di accedere ai contenuti multimediali desiderati in un batter d''occhio e con estrema facilità, senza buffering o ritardi.', 1, 1, 11, 629, 'sony-xperia-x-grphblk-double.jpg', 'android', 16, 'Full HD da 5” 1080p, Display TRILUMINOS', 2, 'Processore Snapdragon® 650 HexaCore 1.8+1.4 Ghz', '143,7 x 70,5 x 8,6 mm', 165),
(39, 'Huawei P9', 'PREMIUM. ELEGANT. STYLISH.\r\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d’arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed è disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\r\n\r\nDISPLAY LUMINOSO E DAI COLORI INTENSI\r\nCon una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2" porta alla scoperta di un mondo ricco di colori intensi e ancora più naturali.\r\n\r\nUN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA\r\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosità e nitidezza per foto e video sensazionali.\r\n\r\nINNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA\r\nHuawei P9 è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', 1, 1, 12, 599, 'huawei-p9-grey-01.jpg', 'android', 8, 'Display IPS Full HD da 5.2’’', 4, 'Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', '145 x 70,9 x 6,95 mm', 144),
(40, 'Samsung Galaxy J5', 'Samsung Galaxy J5 è un smartphone Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Dispone di un grande display Touchscreen da 5 pollici con una risoluzione di 1280x720 pixel non particolarmente elevata. Sul versante delle funzionalità a questo Samsung Galaxy J5 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. \r\nQuesto Samsung Galaxy J5 è un prodotto con pochi competitor per ciò che riguarda la multimedialità grazie alla fotocamera da ben 13 megapixel che permette al Samsung Galaxy J5 di scattare foto di alta qualità con una risoluzione di 4128x3096 pixel e di registrare video in fullHD alla risoluzione di 1920x1080 pixel. Lo spessore di 8.5mm è contenuto e rende questo Samsung Galaxy J5 molto interessante.', 1, 0, NULL, 269, 'sgh-galaxy-j5_6-blkfront.png', 'android', 32, ' 5.2” 16 Milioni colori Touch', 2, 'QuadCore 1.2 Ghz', '145,8x72,3x8,1 mm', 158),
(41, 'Huawei P9 Plus', 'DESIGN ELEGANTE, CURA NEI DETTAGLI\r\nL’esperienza di Huawei P9 si eleva ad un livello superiore con Huawei P9 Plus grazie al luminoso display da 5.5” e l’elegante corpo in metallo\r\n\r\nREINVENT SMARTPHONE PHOTOGRAPHY\r\nGrazie al perfetto connubio tra hardware e software di classe superiore della doppia fotocamera Leica, P9 Plus consente di catturare immagini di assoluta qualità senza rinunciare al design compatto ed elegante.\r\n\r\nUN INNOVATIVO SISTEMA A DOPPIA FOTOCAMERA\r\nP9 Plus è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di P9 Plus consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.La doppia fotocamera da 12MP con pixel da 1,25µm ottimizza gli scatti in condizioni di scarsa illuminazione, mentre la tecnologia IMAGEsmart 5.0 di P9 Plus garantisce la massima qualità di immagine in ogni circostanza.L’algoritmo sviluppato in collaborazione con Leica assicura una qualità di immagine propria di una macchina fotografica, anche in condizioni di scarsa illuminazione.\r\n\r\nUN DISPLAY FULL HD DA 5,5", PIÙ AMPIO E PIÙ LUMINOSO\r\nGrazie alla tecnologia AMOLED, l’ampio display Full HD da 5,5" offre una maggiore saturazione del colore e un contrasto più elevato, per un’esperienza visiva sempre più intensa.\r\n\r\nMAGGIORE AUTONOMIA E RICARICA RAPIDA\r\nLa batteria da 3400mAh con di ricarica rapida garantisce un’autonomia più elevata.\r\n\r\nAVANZATA TECNOLOGIA ‘PRESS TOUCH’\r\nP9 Plus è dotato dell’innovativa tecnologia ‘Press Touch’, basata sul riconoscimento della pressione effettuata sul display.La nuova e ottimizzata tecnologia ‘Press Touch’ rileva le più impercettibili variazioni di pressione sullo schermo garantendo la massima interattività e reattività dello smartphone.Visualizza le anteprime delle immagini, ingrandiscine i dettagli, ed accedi rapidamente alle applicazioni con il menu di scelta rapida a comparsa.\r\n\r\n', 1, 0, NULL, 749, 'huawei-p9-plus-qrtzgry-front.jpg', 'android', 64, 'Full HD Amoled da 5.5’’', 4, 'Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', '152.3 x 75.3 x 6.98 mm', 162),
(42, 'Friends of Hue Bloom', 'Colora il tuo mondo di luce, che siano i colori luminosi del giorno o le sfumature dorate dell''autunno, lo starter kit Philips Friends of hue Bloom bianco ti consente di creare l''illuminazione che desideri tramite smartphone o altri dispositivi.', 3, 0, NULL, 163, 'Philips_760x760.png', NULL, NULL, '', 0, '', '21,8x 22,8x 21,9 cm', 659),
(43, 'iPhone SE', 'Il telefono da 4" più potente di sempre. iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.\r\n\r\niPhone SE ha un display Retina da 4’’, chip A9 con archittetura a 64 bit di livello desktop, sensore di impronte digitali Touch ID, fotocamera iSight da 12MP, videocamera FaceTime HD con Retina flash, Live Photos e connessioni Wi-Fi e 4G veloci. E ancora, iOS 9 e iCloud.', 1, 1, 2, 509, 'APPLE_OIPHONE_SE_spacegrey_01.jpg', 'iOS', 16, 'Retina Multi-Touch 4" 1136x640 pixel a 326 ppi', 2, 'Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato', '11x120x23 mm', 111),
(44, 'iPhone 5s', 'Chip A7 con architettura a 64 bit, sensore di impronte digitali Touch ID,nuova fotocamera iSight da 8 megapixel e nuova videocamera FaceTime HD,reti 4G LTE1 ultraveloci, iOS 8 e iCloud: iPhone 5s è davvero all’avanguardia.Eppure è sottile e leggero come sempre.', 1, 1, 32, 479, 'iphone-5s-silver-1.jpg', 'iOS', 32, 'Display Retina da 4"', 2, 'Chip A7 con coprocessore di movimento M7', '123x12x12 mm', 232),
(45, 'iPhone 6', 'iPhone 6 non è solo più grande: è ancora migliore, da ogni punto di vista. Più grande, eppure più sottile. Più potente, ma attento nei consumi. È una nuova generazione di iPhone.', 1, 1, 10, 321, 'apple-iphone-6-16gb-silver-1.jpg', 'iOS', 16, 'Retina HD da 4,7"', 1, 'Chip A8 con coprocessore di movimento M8', '26x122x2 mm', 123),
(46, 'iPhone 6 Plus', 'iPhone 6 Plus non è solo più grande: è ancora migliore, da ogni punto di vista. Più grande, eppure più sottile. Più potente, ma attento nei consumi. È una nuova generazione di iPhone.', 1, 1, 10, 849, 'apple-iphone-6-plus-space-grey-1.jpg', 'iOS', 128, 'Display Retina HD da 5,5"', 1, 'Chip A8 con coprocessore di movimento M8', '5.9x127.2x120 mm', 392),
(47, 'Lumia 950', 'Funzionalità di livello superiore, design eccellente e la migliore esperienza con Windows 10: scegli Lumia 950 e trasforma un momento qualsiasi in una grande conquista.\r\n\r\nScopri tutto quello che puoi fare con il tuo Microsoft Lumia', 1, 0, NULL, 449, 'microsoft-LUMIA950_blk-1_0.jpg', 'Windows', 32, '5.2” 16 Milioni colori', 1, 'HexaCore 1.8 GHz', '45x73,2x8,25 mm', 150),
(48, 'Lumia 650', 'Design raffinato, prestazioni eccellenti e Windows 10 integrato. Lumia 650 offre un’esperienza unica su tutti i dispositivi con il nuovo sistema operativo: per una nuova straordinaria avventura. Ecco perché è la scelta giusta per ogni tuo progetto.\r\nLumia 650 sarà il tuo complice ideale. Perché il futuro può portarti ovunque, ma sul tuo compagno di viaggi devi poter contare. Così, abbiamo creato il nuovo Lumia 650: dotato del sistema operativo più avanzato, che offre un’esperienza unica su tutti i dispositivi Windows 10, e con tutte le app Microsoft Office preinstallate. Per essere sempre produttivo, connesso e pronto a tutto.', 1, 1, 12, 169, 'LUMIA650-black-front.jpg', 'Windows', 8, 'Display 5”', 1, 'Processore Snapdragon™ 212 QuadCore 1.3 Ghz', '142x70,9x6,9 mm', 112),
(49, 'Lumnia 550', 'Vivi tutta la potenza di Windows 10 a un prezzo conveniente. Con la connessione 4G LTE e il nuovo browser Microsoft Edge, puoi fare molto di più, più velocemente.', 1, 1, 21, 119, 'microsoft-LUMIA550_wht-1_4.jpg', 'Windows', 16, 'Display 4.7”', 4, 'Snapdragon™ 210 QuadCore 1.1 Ghz ', '136,1x67,8x9,9 mm', 141);

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo_servizioassistenza`
--

DROP TABLE IF EXISTS `dispositivo_servizioassistenza`;
CREATE TABLE IF NOT EXISTS `dispositivo_servizioassistenza` (
  `id_dispositivo_dsa` int(11) NOT NULL,
  `id_servizioassistenza_dsa` int(11) NOT NULL,
  PRIMARY KEY (`id_dispositivo_dsa`,`id_servizioassistenza_dsa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo_servizioassistenza`
--

INSERT INTO `dispositivo_servizioassistenza` (`id_dispositivo_dsa`, `id_servizioassistenza_dsa`) VALUES
(1, 1),
(1, 3),
(1, 10),
(1, 18),
(2, 1),
(2, 3),
(2, 18),
(2, 46),
(2, 47),
(3, 2),
(3, 17),
(3, 35),
(3, 42),
(3, 43),
(3, 51),
(3, 52),
(4, 4),
(4, 5),
(4, 12),
(4, 33),
(4, 42),
(5, 3),
(5, 5),
(5, 11),
(5, 28),
(5, 32),
(6, 2),
(6, 18),
(6, 22),
(6, 23),
(6, 30),
(6, 41),
(6, 44),
(6, 49),
(7, 1),
(7, 3),
(7, 4),
(7, 6),
(7, 19),
(7, 24),
(7, 49),
(7, 51),
(8, 4),
(8, 11),
(8, 14),
(8, 21),
(8, 31),
(8, 32),
(8, 42),
(9, 23),
(9, 31),
(9, 41),
(9, 49),
(9, 51),
(10, 14),
(10, 17),
(10, 39),
(10, 43),
(10, 52),
(11, 3),
(11, 13),
(11, 21),
(11, 40),
(12, 3),
(12, 6),
(12, 7),
(12, 22),
(12, 46),
(13, 8),
(13, 9),
(13, 12),
(13, 20),
(14, 36),
(14, 37),
(14, 42),
(14, 46),
(15, 17),
(15, 19),
(15, 20),
(15, 30),
(15, 31),
(16, 26),
(16, 27),
(16, 29),
(16, 50),
(16, 52),
(17, 3),
(17, 6),
(17, 9),
(17, 14),
(17, 29),
(18, 11),
(18, 21),
(18, 26),
(18, 42),
(18, 49),
(19, 15),
(19, 18),
(19, 33),
(19, 37),
(19, 47),
(20, 4),
(20, 5),
(20, 9),
(20, 27),
(20, 37),
(21, 6),
(21, 14),
(21, 19),
(21, 25),
(21, 34),
(21, 52),
(23, 7),
(23, 8),
(23, 20),
(23, 27),
(23, 30),
(23, 58),
(24, 26),
(24, 34),
(24, 39),
(24, 41),
(24, 61),
(25, 9),
(25, 23),
(25, 29),
(25, 34),
(25, 43),
(25, 48),
(26, 16),
(26, 30),
(26, 37),
(26, 40),
(26, 48),
(27, 11),
(27, 22),
(27, 28),
(27, 34),
(27, 39),
(27, 41),
(27, 51),
(28, 20),
(28, 38),
(28, 43),
(28, 44),
(28, 46),
(29, 26),
(29, 29),
(29, 30),
(29, 34),
(29, 48),
(29, 51),
(30, 19),
(30, 21),
(30, 41),
(30, 47),
(30, 48),
(33, 10),
(33, 12),
(33, 14),
(33, 17),
(33, 18),
(33, 19),
(34, 10),
(34, 12),
(34, 14),
(34, 17),
(34, 18),
(34, 19),
(35, 40),
(35, 41),
(35, 42),
(35, 47),
(35, 50),
(36, 37),
(36, 39),
(36, 43),
(36, 44),
(36, 47),
(36, 49),
(36, 52),
(37, 20),
(37, 23),
(37, 28),
(37, 41),
(37, 42),
(37, 45),
(38, 10),
(38, 18),
(39, 2),
(39, 4),
(39, 7),
(39, 31),
(40, 2),
(40, 4),
(40, 9),
(40, 36),
(40, 41),
(41, 2),
(41, 7),
(41, 9),
(41, 27),
(41, 29),
(42, 15),
(42, 17),
(42, 19),
(42, 46),
(43, 1),
(43, 9),
(43, 11),
(43, 29),
(43, 31),
(44, 1),
(44, 37),
(44, 47),
(44, 49),
(44, 52),
(45, 1),
(45, 21),
(45, 27),
(45, 50),
(45, 51),
(46, 1),
(46, 2),
(46, 5),
(46, 8),
(46, 22),
(47, 10),
(47, 29),
(47, 33),
(47, 41),
(47, 48),
(48, 3),
(48, 5),
(48, 20),
(48, 21),
(48, 26),
(49, 4),
(49, 26),
(49, 29),
(49, 30),
(49, 34),
(49, 39);

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo_smartlifeservice`
--

DROP TABLE IF EXISTS `dispositivo_smartlifeservice`;
CREATE TABLE IF NOT EXISTS `dispositivo_smartlifeservice` (
  `id_dispositivo_dss` int(11) NOT NULL,
  `id_smartlifeservice_dss` int(11) NOT NULL,
  PRIMARY KEY (`id_dispositivo_dss`,`id_smartlifeservice_dss`),
  KEY `id_smartlifeservice` (`id_smartlifeservice_dss`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo_smartlifeservice`
--

INSERT INTO `dispositivo_smartlifeservice` (`id_dispositivo_dss`, `id_smartlifeservice_dss`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 10),
(1, 12),
(1, 13),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(3, 1),
(3, 4),
(3, 6),
(3, 9),
(3, 10),
(4, 1),
(4, 4),
(4, 7),
(4, 12),
(4, 13),
(5, 3),
(5, 4),
(5, 6),
(5, 8),
(6, 4),
(6, 6),
(6, 7),
(6, 9),
(7, 2),
(7, 3),
(7, 4),
(7, 11),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 5),
(9, 7),
(10, 1),
(10, 4),
(10, 7),
(10, 12),
(11, 4),
(11, 7),
(11, 12),
(11, 13),
(12, 7),
(12, 12),
(12, 13),
(13, 7),
(13, 12),
(14, 7),
(14, 12),
(15, 1),
(15, 2),
(15, 4),
(15, 10),
(16, 6),
(16, 8),
(16, 10),
(17, 1),
(17, 6),
(17, 8),
(17, 11),
(17, 13),
(18, 1),
(18, 2),
(18, 4),
(18, 12),
(18, 13),
(19, 2),
(19, 3),
(19, 7),
(19, 8),
(19, 9),
(21, 3),
(21, 4),
(21, 11),
(21, 13),
(23, 7),
(23, 12),
(24, 6),
(24, 7),
(24, 12),
(25, 6),
(25, 7),
(25, 12),
(26, 7),
(26, 12),
(27, 13),
(38, 1),
(38, 3),
(39, 1),
(39, 4),
(39, 5),
(39, 7),
(39, 9),
(40, 1),
(40, 4),
(40, 7),
(40, 8),
(40, 11),
(40, 12),
(41, 1),
(41, 5),
(41, 10),
(41, 11),
(42, 11),
(42, 13),
(43, 1),
(43, 2),
(43, 3),
(43, 11),
(43, 13),
(44, 1),
(44, 2),
(44, 11),
(44, 12),
(44, 13),
(45, 1),
(45, 6),
(45, 11),
(45, 13),
(46, 5),
(46, 10),
(46, 11),
(46, 12),
(47, 8),
(47, 9),
(47, 10),
(47, 11),
(48, 4),
(48, 7),
(48, 8),
(48, 9),
(49, 1),
(49, 2),
(49, 10),
(49, 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `servizioassistenza`
--

DROP TABLE IF EXISTS `servizioassistenza`;
CREATE TABLE IF NOT EXISTS `servizioassistenza` (
  `idservizioassistenza` int(11) NOT NULL AUTO_INCREMENT,
  `nomeservizioassistenza` varchar(99) DEFAULT NULL,
  `descrizioneservizioassistenza` text,
  `categoriaservizioassistenza` int(11) DEFAULT NULL,
  `highlightservizioassistenza` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idservizioassistenza`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `servizioassistenza`
--

INSERT INTO `servizioassistenza` (`idservizioassistenza`, `nomeservizioassistenza`, `descrizioneservizioassistenza`, `categoriaservizioassistenza`, `highlightservizioassistenza`) VALUES
(1, 'Configurazione Mail iOS', 'Guida per la configurazione delle mail su sistemi operativi iOS', 2, 1),
(2, 'Configurazione Mail android', 'Guida per la configurazione delle mail su sistemi operativi android', 2, 0),
(3, 'Tutti i modi di ricaricare', 'Ricarica online\r\n\r\nCon autenticazione: se sei registrato al sito puoi scegliere l''importo da ricaricare, inserire i dati della tua carta di credito e la ricarica è subito effettuata! (Circuiti abilitati: American Express, Diners, Aura, Visa, Mastercard, PayPal).\r\n\r\nSenza autenticazione: ricarica il tuo telefonino senza bisogno di registrarti al sito. Usa la tua carta di credito personale e la ricarica è fatta! (Circuiti abilitati: Visa, Mastercard, American Express, Diners, carta Aura e PayPal).', 1, 0),
(4, 'Scopri come consultare i consumi della tua linea con abbonamento', 'Puoi consultare i consumi del tuo abbonamento\r\n \r\n\r\nDirettamente online\r\nRegistrandoti a MyTIM Mobile potrai verificare, aggiornate alla data riportata sul sito:\r\n\r\n   1. Traffico VOCE, che è composto da:\r\n\r\n"Traffico Voce Nazionale": è l''importo che comprende le chiamate effettuate dall’Italia verso numerazioni nazionali e verso numerazioni speciali.\r\n"Traffico Voce Internazionale": è l''importo che comprende le chiamate effettuate dall''Italia verso numeri esteri.\r\n"Traffico Voce PayForMe" : è l’importo complessivo del traffico voce effettuato utilizzando il servizio di addebito della chiamata "4088 PayForMe".\r\n"Traffico Roaming (Voce)": è l''importo delle chiamate effettuate e ricevute all’estero.\r\n   2. Traffico SMS/MMS, che include:\r\n\r\n"Traffico SMS": è l''importo che comprende i messaggi di testo inviati verso numerazioni mobili e di rete fissa.\r\n"Traffico MMS": è l''importo che comprende i messaggi multimediali (mms) inviati verso numerazioni mobili e di rete fissa.\r\n   3. Altro traffico dati / Servizi Interattivi, che comprende:\r\n\r\n"Navigazione wap" è l''importo che comprende il traffico effettuato per la trasmissione di dati/connessione ad internet utilizzando la modalità wap (punto di accesso alla rete dati per la connessione: wap.tim.it).\r\n"Altro traffico dati" è l''importo che comprende il traffico effettuato per la trasmissione di dati/connessione ad internet utilizzando tutti gli altri punti di accesso alla rete dati.\r\n"Wifi" è l’importo complessivo del traffico effettuato da accesso Wifi.\r\n"Servizi interattivi" è l’importo che comprende gli addebiti per la ricezione/invio di sms/mms da numerazioni brevi a contenuto speciale (esempio: logo, suoneria, sfondo), gli sms utilizzati attraverso il servizio "4088 PayForMe sms", e tutti i servizi supplementari non inclusi nei contatori precedenti.\r\n\r\nChiamando dal tuo telefonino il numero gratuito 40915: \r\nE'' importante sapere che il "traffico online" si riferisce ai consumi non inclusi nel costo di eventuali offerte e promozioni attive sulla tua linea. I consumi si riferiscono al periodo che intercorre dal primo giorno del bimestre di riferimento alla data comunicata dalla fonia. \r\nSe hai attivato una o più promozioni, al tasto 2 puoi verificare il residuo dei bonus corrispondenti e i numeri amici. Questo fa riferimento al periodo compreso tra il primo giorno del mese in corso e la data comunicata dalla fonia della voce guida. \r\n\r\nPuoi contattare il 40915 anche solo inviando un sms gratuito con le seguenti sintassi:\r\n\r\nSALTOT    per conoscere il saldo complessivo ed eventuale bonus.\r\nSALNAZ    per conoscere il saldo del traffico nazionale.\r\nSALITZ     per conoscere il saldo del traffico internazionale.\r\nSALROA   per conoscere il saldo del traffico roaming.\r\nSALSMS   per conoscere il saldo del traffico sms.\r\nSALMMS  per conoscere il saldo del traffico mms.\r\nSALWAP  per conoscere il saldo del traffico wap.\r\nSALDATI  per conoscere il saldo del traffico dati web (punto di accesso ibox.tim.it).\r\nSALWIFI  per conoscere il saldo del traffico wifi.\r\nSALVAS   per conoscere il saldo del traffico di tutti i servizi supplementari (esempio: sms interattivi).Riceverai un sms di risposta con le informazioni richieste.\r\n\r\nNavigando dal telefonino:\r\nSul sito TIM.it ottimizzato per il tuo smartphone, oppure attraverso l''App MyTIM Mobile , attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android.', 1, 1),
(5, 'Tariffa base per navigare da Smartphone, PC e Tablet - Flat Day', 'Flat Day è la tariffa base per la navigare in Internet da Smartphone, PC e Tablet per un massimo di 500MB al giorno al costo di 4€ (IVA inclusa).\r\n\r\nLa tariffa base Flat Day interviene in assenza di un’offerta dati attiva sulla tua linea. In questa circostanza se effettui una connessione Internet scatta un gettone giornaliero di 4€ per 500MB di traffico dati da utilizzare nell’arco della stessa giornata (fino alle 23:59).\r\n\r\nIl costo della Flat Day viene addebitato solo nei giorni di effettivo utilizzo al primo evento di connessione. Al raggiungimento di 500MB di traffico dati nella giornata, la velocità di navigazione si riduce a 32 Kbps senza ulteriori costi aggiuntivi. I MB di traffico a disposizione nel giorno vengono conteggiati a scatti unitari anticipati di 1KB. L''eventuale traffico Internet non consumato nella giornata viene azzerato.\r\n\r\nNota bene:\r\n\r\nLa tariffa base giornaliera è valida per la navigazione Internet in Italia su tutti gli APN (ibox.tim.it, wap.tim.it e blackberry.net).\r\nIl gettone di traffico acquistato è fruibile solo su territorio nazionale fino alle 23:59 della stessa giornata.\r\nSe hai attiva sulla tua linea un’offerta dati TIM per navigare da Smatphone, Tablet e PC, che prevede il rinnovo automatico settimanale o mensile, ricorda che il rinnovo avviene entro 4 ore dalla mezzanotte della data di scadenza, ma se effettui traffico dati prima che l’offerta si sia rinnovata, ti sarà applicata la Flat Day. Ricorda quindi di verificare sempre l’avvenuto rinnovo della tua offerta dati tramite il 40916 (per Clienti Ricaricabili) o il 40915 (clienti con Abbonamento), attraverso l''app MyTIM Mobile o via web accedendo alla sezione MyTIM Mobile.\r\nRicorda che TIM ti permette di proteggere la tua spesa mensile per navigare in Internet con Smartphone, PC e Tablet. Clicca qui per maggiori dettagli.\r\nSe pensi di utilizzare il servizio di navigazione Internet, in alternativa alla Flat Day, ti consigliamo di attivare una delle offerte dati TIM scegliendo quella più corrispondente alle tue esigenze. Per maggiori informazioni sulle offerte disponibili clicca qui o recati in un Negozio TIM.', 1, 1),
(6, 'Tariffa base per navigare da Smartphone, PC e Tablet - Flat Day', 'Flat Day è la tariffa base per la navigare in Internet da Smartphone, PC e Tablet per un massimo di 500MB al giorno al costo di 4€ (IVA inclusa).\r\n\r\nLa tariffa base Flat Day interviene in assenza di un’offerta dati attiva sulla tua linea. In questa circostanza se effettui una connessione Internet scatta un gettone giornaliero di 4€ per 500MB di traffico dati da utilizzare nell’arco della stessa giornata (fino alle 23:59).\r\n\r\nIl costo della Flat Day viene addebitato solo nei giorni di effettivo utilizzo al primo evento di connessione. Al raggiungimento di 500MB di traffico dati nella giornata, la velocità di navigazione si riduce a 32 Kbps senza ulteriori costi aggiuntivi. I MB di traffico a disposizione nel giorno vengono conteggiati a scatti unitari anticipati di 1KB. L''eventuale traffico Internet non consumato nella giornata viene azzerato.', 1, 0),
(7, 'Soglia di protezione e blocco del traffico dati', 'TIM ti permette di proteggere la tua spesa mensile per navigare su internet con il telefonino, tablet o chiavetta dandoti, inoltre, la possibilità di bloccare il traffico dati.\r\nIn caso tu non abbia attivato una delle nostre offerte dati ed effettui navigazione internet, la soglia di protezione, che è attiva automaticamente su tutte le linee, monitorerà la tua spesa mensile e in caso di raggiungimento dell’importo di 60€ (IVA inclusa) la linea verrà bloccata al traffico dati per tutelarti, mentre il servizio di fonia e sms continuerà a funzionare.', 1, 0),
(8, 'Le rateizzazioni: gli Sms informativi ed il recesso anticipato', 'Se hai attiva sulla tua linea un’offerta rateizzata domiciliata su carta di credito, riceverai periodicamente gli sms relativi al servizio Passepartout che ti daranno la conferma dell’addebito della rata e del canone.\r\n\r\nPer gli addebiti dei canoni relativi alle offerte domiciliate attivate sulla tua linea, il messaggio è il seguente:\r\n“L’importo di x Euro per la fruizione dell''offerta e’ stato addebitato sulla carta di credito. Info su MyTIM Mobile di TIM.it”.\r\n\r\nPer gli addebiti legati all’eventuale acquisto di un telefonino i messaggi sono i seguenti:\r\n“La rata del prodotto da te acquistato, pari a x Euro, e’ stata addebitata sulla carta di credito. Info su MyTIM Mobile di TIM.it”. \r\n“Il canone dell''offerta da te attivata, pari a x Euro, e’ stato addebitato sulla carta di credito. Info su MyTIM Mobile di TIM.it”. (questo tipo di sms sarà inviato ove il canone fosse previsto dall’offerta).\r\n\r\nGli sms servono ad informarti in merito agli addebiti periodici previsti dalle tue offerte. \r\n\r\nNel caso in cui un addebito non fosse andato a buon fine, ti verrà inviato un messaggio di "alert" con l’indicazione della possibile cessazione anticipata dell’offerta e con l’invito a chiamare il 119.\r\nE’ importante ricordare, infatti, che per tutte le offerte domiciliate su carta di credito che includono la rateizzazione di un prodotto (es. telefonino, tablet, pc) con un vincolo temporale (es. 24/30 mesi) è previsto, in caso di cessazione anticipata, l’addebito degli importi indicati sulle condizioni di offerta.', 1, 0),
(9, 'Cambio carta di credito offerte rateizzate su Ricaricabile', 'Se hai la necessità di cambiare la carta di credito utilizzata per il pagamento delle tue offerte domiciliate (ad es. se hai attiva una rateizzazione per l’acquisto di un telefonino) hai la possibilità di farlo direttamente online per le seguenti carte di credito: American Express, Cartasì, KeyClient, Bankamericard, Carta Aura-Findomestic, Unicredit, Banca Intesa-Setefi.\r\nPer le carte di credito dei circuiti Visa e Mastercard non presenti nell’elenco sopraindicato dovrai invece recarti in un Negozio TIM sia qualora tu voglia cambiare la carta di credito utilizzata per il pagamento delle offerte domiciliate (per es. se hai cambiato banca o gestore di carta di credito) sia nel caso cui la tua carta di credito sia stata rinnovata a seguito della scadenza del periodo di validità.\r\n\r\nPer effettuare la variazione online, completamente gratuita, è sufficiente seguire questi passaggi:\r\n\r\nAccedi a MyTIM Mobile con la tua username e password; se non sei ancora registrato al sito, puoi effettuare da qui la registrazione;\r\nAtterri nella sezione “Controllo Costi”; vai su “Addebiti Opzioni su carta di credito” e seleziona il tasto “Modifica Carta associata” in basso a sinistra;\r\nInserisci nella sezione superiore i dati della vecchia carta di credito e nella sezione inferiore i dati della nuova carta di credito. I dati che ti verranno richiesti sono: nome dell’emittente della carta (es. CartaSì) e il pan (numero di carta) della vecchia e della nuova carta di credito; inoltre il CVV e la data di scadenza della nuova carta di credito.\r\nPremi il tasto PROCEDI in basso a destra.\r\nIn seguito alla modifica dei dati della carta di credito riceverai, entro 48 ore, il seguente sms: “TIM ti conferma la modifica dei dati della tua carta di credito attiva su Passepartout”. In questo modo i successivi canoni e rate della tua offerta verranno addebitati sulla nuova carta di credito inserita.\r\n\r\nTi ricordiamo che l’operazione di cambio carta di credito è sempre gratuita e che deve essere eseguita nel periodo in cui l’offerta è attiva.', 1, 1),
(10, 'Verifica credito residuo e bonus disponibili per i clienti Prepagati', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalità:\r\n\r\nDirettamente dal tuo Smartphone, accedendo all’app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android.\r\nScarica da qui la APP MyTIM Mobile:\r\n\r\nIOS\r\nANDROID\r\n\r\nDirettamente online sul sito tim.it nella sezione MyTIM Mobile riservata ai nostri clienti che ti permette di verificare il credito residuo, le quantità di minuti, SMS, GB ancora disponibili, i bonus in euro  eventualmente presenti ed effettuare variazioni sulla tua linea telefonica;\r\nChiamando il numero gratuito 40916, per il credito residuo. Inoltre digitando il tasto 1 puoi conoscere le offerte attive, la quantità di minuti, SMS, GB ancora disponibili e i bonus in euro eventualmente presenti;\r\nAttraverso il servizio gratuito 119sms; inviando un sms al 119 “a testo libero”(ad esempio “qual è il mio credito residuo”) il servizio ti risponderà con un sms con le informazioni richieste;\r\nAttraverso l’attivazione del servizio gratuito "TIM Ti Avvisa - info sms" che ti permette di conoscere il costo dell’ultima chiamata nazionale effettuata e il credito residuo aggiornato in tempo reale grazie alla ricezione di un sms direttamente sul tuo telefonino oppure con il servizio “TIM Ti Avvisa – offerte” puoi essere informato con un sms gratuito quando il consumo delle tue offerte attive raggiunge la percentuale da te scelta;\r\n \r\nSe sulla tua linea sono presenti offerte e bonus in euro, la priorità di consumo segue generalmente il seguente criterio:\r\n\r\n1. Minuti, sms, GB inclusi nell’offerta attiva;\r\n\r\n2. Bonus in euro con scadenza;\r\n\r\n2. Bonus in euro senza scadenza;\r\n\r\n3. Credito residuo.\r\n\r\nIn presenza di due o più bonus è prioritario quello con scadenza più immediata.\r\n\r\nTi ricordiamo che il bonus in euro non può essere utilizzato per le chiamate internazionali, per le chiamate verso numerazioni non geografiche (in Italia e all’estero) e per il traffico roaming (ad eccezione del traffico roaming dati).\r\n\r\nPer ulteriori dettagli sulle condizioni di utilizzo dei bonus in euro presenti sulla tua linea, consulta la pagina dedicata nella sezione Offerte del sito tim.it.\r\n\r\nTi ricordiamo infine che per poter usufruire delle offerte e degli eventuali bonus in euro presenti sulla linea, il credito residuo della tua SIM deve essere maggiore di zero.', 1, 0),
(11, 'Assistenza tecnica specializzata con SOSsmartphone', 'SOSsmartphone è il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\r\n\r\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornirà tutta la consulenza e l’assistenza “premium” di cui necessiti e che soprattutto sarà in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.\r\n\r\nI servizi che potrai ricevere con SOSsmartphone sono:\r\n\r\nsupporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;\r\nconsulenza nell’utilizzo delle funzioni avanzate dello smartphone;\r\nassistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;\r\ngestione e sincronizzazione dei tuoi contenuti multimediali;\r\nsupporto per garantire il massimo della sicurezza;\r\nconservazione e protezione dei tuoi dati;\r\ntrasferimento di contenuti;\r\naggiornamento del tuo smartphone;\r\neffettuazione check up.\r\n\r\nPer richiedere il servizio SOSsmartphone potrai:\r\n\r\ncontattare il numero 0458214811 (chiamata a pagamento in base al proprio piano tariffario/offerta);\r\nscaricare l’App SOS Smartphone da APP Store (per iOS) e Google Play (per Android) e richiedere l’intervento.\r\nIl servizio SOSsmartphone prevede un costo ad intervento a partire da 3€ (IVA inclusa). L’importo sarà addebitato in fattura se sei un cliente con Abbonamento mentre sarà scalato dal credito residuo se sei un cliente Ricaricabile.\r\nDal 12 maggio inoltre il servizio SOSsmartphone è disponibile anche in abbonamento a 2€/mese. In questo modo avrai l’assistenza di cui hai bisogno sempre disponibile e completa per un anno.', 2, 0),
(12, 'Buono sconto per cambio telefono', 'Vuoi un nuovo smartphone?\r\n\r\nPortaci il tuo vecchio telefono, da oggi vale uno sconto sul nuovo!\r\n\r\nCon il servizio TIM Valuta puoi far valutare gratuitamente e senza impegno il tuo telefonino, smartphone o tablet.  Ricevi subito uno sconto da utilizzare come meglio desideri: per l’acquisto di un nuovo telefonino, smartphone, tablet, chiavetta, Internet Pack, oppure in Ricarica telefonica TIM. Il servizio è aperto a tutti!\r\n\r\n\r\nFar valutare il telefono è molto semplice. E’ sufficiente:\r\n\r\n• portare presso uno dei negozi TIM che aderiscono all’iniziativa il tuo vecchio telefono, smartphone o tablet\r\n• l’addetto del negozio procederà alla valutazione del prodotto, verificandone le condizioni e lo stato d’uso\r\n• se accetti la valutazione, riceverai uno sconto di pari valore che potrai utilizzare subito per l’acquisto di un nuovo smartphone, tablet, oppure Ricariche telefoniche TIM.', 2, 0),
(13, 'Connettersi a Internet col telefonino', 'Normalmente i telefoni commercializzati da TIM sono già predisposti per il collegamento Internet in maniera automatica, altrimenti dovrai eseguire la procedura di configurazione del servizio. \r\nDi seguito i passi da effettuare per capire se il tuo telefonino è configurato:\r\n\r\nSe hai un telefonino TIM, ti basterà cliccare sull’icona del Browser Internet;\r\nSe invece non hai un telefonino TIM, ti basterà cliccare sull’icona del Browser Internet e digitare l''indirizzo "wap.tim.it".\r\nSe non riesci a collegarti in questi modi, il tuo telefonino deve essere ancora configurato.\r\n\r\nPuoi farlo manualmente consultando le guide di configurazione specifiche per il tuo dispositivo, disponibili nella sezione “Configura online", selezionando dal menù a tendina la marca e il modello. \r\nSe non ricordi il modello specifico del tuo Smartphone o Tablet, puoi verificarlo entrando in  MyTIM Mobile. Il tuo dispositivo sarà automaticamente riconosciuto e potrai visualizzarne marca e modello.\r\n\r\nPer alcuni modelli puoi configurare in maniera automatica il tuo telefonino alla navigazione e agli MMS contattando il numero gratuito 40920, opzione 4.', 2, 0),
(14, 'TIM Mail - Password dimenticata o altri problemi di accesso', 'L’accesso al servizio TIM Mail è possibile tramite web o con programmi di posta (ad es. MS Outlook) inserendo indirizzo email (@tim.it o @alice.it) e la relativa password.\r\n\r\nPuò però succedere di dimenticare la password o di incorrere in altri problemi di accesso, come ad esempio l’account di posta bloccato per motivi di sicurezza e/o sospetto furto di credenziali.\r\n\r\nSe hai impostato un’opzione di recupero credenziali, puoi facilmente recuperare online la tua username o reimpostare la tua password. Per sapere come fare, consulta la nostra guida al recupero di username e password.\r\n\r\n \r\n\r\nPer evitare di incorrere in questi problemi, ti consigliamo sempre di:\r\n\r\nScegliere alla registrazione, o per le successive modifiche, delle password non banali, non uguali ad altre utilizzate in altri siti e provvedere a modificarle periodicamente. Ecco una guida per creare una password sicura.\r\nFare attenzione alle mail di “phishing”, cioè le mail fraudolente che sono inviate allo scopo di carpire dati personali, simulando il formato dei mailing di Banche o di operatori telefonici come la stessa TIM. In ogni caso non inviare mai via mail dati personali come la propria password e comunque non inserirli mai in siti diversi da quelli ufficiali. Inoltre fare attenzione a non scaricare allegati provenienti da mittenti sconosciuti. Per imparare a riconoscere queste mail ed evitare le truffe, consulta la nostra guida sul phishing\r\nImpostare un’opzione di recupero credenziali inserendo un cellulare di recupero. Verifica come inserire il numero del tuo cellulare dalle Impostazioni della webmail. In questo modo renderai più sicuro l’accesso alla tua TIM Mail (sia per indirizzi @tim.it o @alice.it).\r\n\r\nSe hai un indirizzo email @tim.it , puoi inoltre attivare un ulteriore livello di sicurezza per l’accesso alla tua webmail: l’Autenticazione a due step o Autenticazione sicura. Con questa funzionalità, oltre al consueto inserimento di indirizzo email e password, potrai decidere un ulteriore controllo per l’accesso inserendo un codice di verifica che riceverai via SMS. Per saperne di più consulta la FAQ “Autenticazione sicura” all’interno della Guida TIM Mail.', 2, 1),
(15, 'Avviso di Chiamata', 'Il servizio Avviso di Chiamata ti permette di sapere, attraverso un breve segnale acustico, se qualcuno ti sta chiamando mentre sei occupato in una conversazione.\r\n\r\nDopo il messaggio di avviso qui riprodotto , puoi decidere di sospendere momentaneamente la conversazione in corso e rispondere alla nuova chiamata,  per poi riprendere nuovamente quella che hai messo in attesa; oppure puoi chiudere la tua conversazione per prendere la nuova in arrivo.\r\n\r\nAttivazione\r\n\r\nDopo aver richiesto Avviso di Chiamata al Servizio Clienti 187:\r\n\r\nper attivare il servizio : digita *43#\r\nper disattivare il servizio : digita #43#\r\nUtilizzo e interrogazione\r\n\r\nper rispondere alla seconda chiamata o tornare alla prima : digita R2\r\nper concludere la conversazione in corso e continuare con l''altra : digita R1\r\nper controllare se il servizio è attivo oppure no : digita *#43#', 2, 0),
(16, 'Non chiamo e non ricevo telefonate', 'Se non riesci né a chiamare, né a ricevere telefonate, alza il ricevitore e verifica attentamente che tipo di segnale ascolti. In base alla fonia che hai ascoltato, segui le indicazioni consigliate per individuare le causa del problema riscontrato.', 2, 1),
(17, 'Ricevo ma non chiamo', 'Se non riesci a chiamare, ma ricevi le telefonate, alza il ricevitore e verifica attentamente che tipo di segnale ascolti. In base alla fonia che hai ascoltato, segui le indicazioni consigliate per individuare la causa del problema riscontrato.', 2, 0),
(18, 'Come riassegnare i numeri', 'Se hai necessità di riconfigurare i numeri per i diversi apparati (telefoni, fax o modem) collegati alle porte analogiche (a1/b1 e a2/b2) della borchia NT1 Plus, segui le indicazioni in base alla tipologia del tuo impianto.\r\n\r\nModalità ''Punto-Multipunto'' - configurazione del numero sulle porte a1/b1 e a2/b2 \r\n\r\nSe possiedi un solo numero e vuoi collegare uno o più telefoni sulle porte a1/b1 e a2/b2, componi il seguente codice con un telefono:\r\n\r\nCodice da comporre : *93*23#\r\nSe possiedi un solo numero e vuoi collegare uno o più telefoni e modem o fax sulle porte a1/b1 e a2/b2, componi il seguente codice con un telefono:\r\n\r\nCodice da comporre : *93*21#\r\nSe possiedi un solo numero e vuoi collegare modem o fax sulle porte a1/b1 e a2/b2, componi il seguente codice con un telefono:\r\n\r\nCodice da comporre : *93*25#\r\nSe possiedi un solo numero e vuoi collegare un centralino sulle porte a1/b1 e a2/b2, componi il seguente codice con un telefono:\r\n\r\nCodice da comporre : *93*26#\r\nModalità ''Punto-Multipunto'' - configurazione dei numeri sulle porte a1/b1 e a2/b2\r\n\r\nSe possiedi due numeri e vuoi collegare uno o più telefoni sulle porte a1/b1 e a2/b2, componi il seguente codice con un telefono.\r\n\r\nCodice da comporre : *93*24# numero telefono a1/b1 # numero telefono a2/b2 #\r\nSe possiedi due numeri e vuoi collegare uno o più telefoni e modem o fax sulle porte a1/b1 e a2/b2, componi il seguente codice con un telefono:\r\n\r\nCodice da comporre : *93*22# numero telefono modem/fax a2/b2 # numero telefono a1/b1 #', 2, 0),
(19, 'Prima installazione', 'Prima di collegare i telefoni al modem assicurati che i led siano accesi fissi. Ti ricordiamo che puoi collegare tramite cavo telefonico al modem Fibra fino a due telefoni fissi o cordless.Per il corretto funzionamento collega il cordless o telefono all''alimentazione elettrica\r\nCollega i cordless in dotazione direttamente alla porta Line1 o Line2 utilizzando il cavo telefonico in dotazione.\r\nPer completare l''attivazione del servizio Fibra è necessario seguire i seguenti passi:\r\n\r\nChiama dal cordless collegato al modem Fibra il Numero Verde 800.001.949 e conferma l’avvenuta installazione seguendo le indicazioni della voce registrata. \r\nEntro 4 giorni lavorativi dalla tua telefonata di conferma al Numero Verde, verrà completata l’attivazione della linea Fibra. Nel frattempo puoi continuare a navigare e ad utilizzare anche i tuoi vecchi telefoni collegati alle altre prese telefoniche di casa. \r\nAd attivazione avvenuta invece, continueranno a funzionare solo i telefoni collegati al modem Fibra, come ad esempio i cordless ricevuti. E’ quindi necessario staccare gli altri telefoni e altri filtri collegati all’impianto telefonicoper evitare un degrado delle prestazioni della tua linea fibra. \r\nSe hai più telefoni disposti per la tua abitazione puoi richiedere un intervento del tecnico per riutilizzare anche gli altri telefoni, ricordando però che tale assistenza è a pagamento: per richiedere un intervento di Assistenza a pagamento clicca sul pulsante SOS PC .\r\nDopo l’attivazione dell’offerta Fibra, tutti i telefoni collegati al tuo impianto telefonico non saranno più utilizzabili è necessario quindi scollegare subito tutti i telefoni e i filtri dalle prese a muro. \r\nAd attivazione avvenuta, puoi verificare in ogni momento i corretti collegamenti seguendo le indicazioni riportate in questa guida. ', 2, 0),
(20, 'Tutto sulla tua SIM', 'Tutto ciò che devi sapere per gestire al meglio la tua SIM:\r\n\r\nI codici PIN e PUK\r\nCosa fare in caso di furto o smarrimento\r\nSostituzione della tua SIM\r\nReintegro della numerazione prepagata', 3, 0),
(21, 'Passaggio da abbonamento a ricaricabile', 'Per passare la tua utenza TIM da abbonamento a servizio ricaricabile puoi compilare il modulo di “Richiesta di migrazione da abbonamento a ricaricabile”. Il modulo è disponibile in formato pdf nella sezione Moduli e può essere scaricato direttamente dalla sottosezione “clienti con abbonamento”.\r\nPotrai inviare il modulo compilato con la richiesta di cessazione del contratto di abbonamento e la specificata volontà di passare verso servizio ricaricabile (indicando il profilo e l''eventuale opzione) e la modalità di rimborso ACI (assegno/accredito su linea ricaricabile), al numero di fax dedicato 800600119.\r\n\r\nPuoi effettuare il passaggio scrivendoci o in alternativa presso un qualsiasi Negozio TIM.', 3, 1),
(22, 'Servizi a valore aggiunto: SMS/MMS/Internet', 'I servizi a valore aggiunto, detti anche ‘premium’ o ‘a contenuto’, sono servizi forniti da parte anche di società esterne attraverso SMS, MMS o connessione dati da rete fissa (WEB) o in mobilità (WAP) che puoi attivare, ricevere e/o fruire su Telefonino, Tablet o PC. \r\nSi tratta di servizi quali: loghi, suonerie, oroscopi, meteo, news, video, sfondi ed altri.\r\n\r\nLa TIM Card, già dalla sua attivazione, è abilitata a effettuare/ricevere chiamate e videochiamate, inviare e ricevere SMS/MMS, a navigare in Internet, pertanto, è anche possibile attivare i servizi a valore aggiunto (ad esclusione delle TIM Card intestate a minori per le quali i servizi a contenuto “Adult” sono disabilitati).\r\n\r\nL’attivazione del servizio può avvenire seguendo la procedura di attivazione prevista per ciascuno dei canali sopra indicati (SMS, MMS, WEB, WAP ecc.), ma sempre e solo con il tuo consenso.\r\n\r\nI servizi a valore aggiunto sono a pagamento e le modalità di tariffazione (per singolo messaggio e/o contenuto, giornaliera, settimanale, mensile) variano a seconda della tipologia di servizio che hai scelto di attivare sulla tua linea. Quando scarichi un contenuto è perciò sempre importante verificare se ciò comporta l’adesione a un servizio in abbonamento con addebito periodico sulla tua utenza.\r\n\r\nPuoi disattivare un servizio a valore aggiunto in uno dei modi seguenti:\r\n\r\nDirettamente online accedendo alla sezione MyTIM Mobile nel TAB Servizi all''interno della sezione dedicata “Servizi a contenuto ed Internet” in cui visualizzi i Servizi a contenuto attivi sulla tua linea previa registrazione/autenticazione alla sezione MyTIM Mobile;\r\nTramite la URL o la sintassi di disattivazione presente nell’sms di welcome notificato dal fornitore a seguito dell’attivazione del servizio;\r\nChiamando il Servizio Assistenza Clienti del fornitore del servizio;\r\nInviando un sms gratuito al 119 con il seguente testo “disattivazione servizi VAS”;\r\nChiamando il Servizio Clienti 119.\r\nPer conoscere nel dettaglio le numerazioni dei servizi disponibili, i fornitori dei contenuti e i numeri di Assistenza clicca qui.\r\n\r\nOltre alla possibilità di disattivare il singolo servizio attivo sulla tua linea, hai anche la facoltà di richiedere in qualunque momento il blocco selettivo dei servizi a valore aggiunto così da inibirne l’attivabilità e la fruizione sulla tua utenza mobile, chiamando gratuitamente il Servizio Clienti 119. Hai altresì la facoltà di chiedere in qualunque momento e con la stessa modalità l’inibizione di specifiche categorie di servizi a valore aggiunto:\r\n\r\nVM18 (servizi sexy vietati ai minori di 18 anni);\r\nCharity (sms per donazioni in beneficenza);\r\nAnonimi e Scherzi (sms anonimi);\r\nBL TuuTuuTIM (servizio di risponderia con suoneria);\r\nBlack List Ticketing (pagamento ticket autobus o altro mediante credito/conto telefonico);\r\nServizi Bancari (servizi di informazione/notifica bancaria);\r\noltre che di tutte le direttrici Decade 4 o di una singola di tali direttrici (Direttrice 44, 47 o 48) sempre chiamando gratuitamente il Servizio Clienti 119.\r\n\r\nPuoi inoltre richiedere di abilitare nuovamente la tua utenza mobile ai servizi a valore aggiunto chiamando gratuitamente il Servizio Clienti 119.\r\n\r\nIn aggiunta alle ordinarie procedure di reclamo, in caso di attivazione non richiesta di un servizio a valore aggiunto sulla tua utenza mobile TIM puoi altresì richiedere il rimborso delle somme addebitate sul tuo credito/conto telefonico nonché la disattivazione del servizio: chiamando il Servizio Clienti 119 oppure utilizzando la nuova modalità dell’invio di un sms gratuito al 119 con il seguente testo “reclamo servizi VAS non richiesti” (o similare) entro 12 giorni dalla suddetta attivazione ed in assenza di analogo rimborso per il servizio nei 30 giorni precedenti.', 3, 0),
(23, 'LoSai e ChiamaOra di TIM', 'LoSai di TIM, ti informa sulle chiamate ricevute mentre hai il telefonino spento, non raggiungibile, quando sei occupato in un''altra conversazione e negli altri casi in cui non è stato possibile contattarti.\r\nQuando torni disponibile riceverai un SMS di notifica, il cui mittente è il numero di chi ti ha cercato e nel testo è indicata la data e l''ora della chiamata ricevuta.\r\nSe il numero di chi ti ha cercato è salvato nella tua rubrica, vedrai direttamente il suo nome come mittente e potrai richiamare, o inviare un SMS, direttamente dopo aver letto il messaggio di notifica.\r\nCon LoSai di TIM ricevi un SMS per ogni chiamata persa, sia quando sei in Italia sia quando ti trovi all’Estero senza costi aggiuntivi rispetto al costo dell’abbonamento.', 3, 0),
(24, 'All''estero con TIM', 'Usare il telefonino all’estero è facilissimo!\r\nTutti i clienti TIM con una linea ricaricabile e con un abbonamento sono automaticamente abilitati a chiamare, ricevere telefonate, inviare e ricevere SMS dall’estero.\r\nEd è facile come in Italia!', 3, 1),
(25, 'Verifica il credito residuo mentre sei all''estero', 'Quando sei all’estero puoi controllare il credito residuo della tua ricaricabile TIM attraverso le seguenti modalità:\r\n\r\nSe il gestore locale supporta il servizio di Chiamata Diretta, puoi chiamare il 40916 anche se sei a credito zero.\r\nSe hai ancora credito residuo puoi utilizzare il servizio 40916 tramite SMS inviando un messaggio gratuito al 40916 con la sintassi ''CREDITO''.\r\nDirettamente da pc online entrando nella sezione MyTIM Mobile.\r\nDal telefonino sul sito TIM.it ottimizzato per il tuo smartphone, oppure attraverso l’App MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android. Se vuoi sapere quanto costa navigare in Internet quando sei all''estero, puoi consultare la sezione costi della navigazione in Internet col telefonino o col pc. In questo caso infatti, per la visualizzazione delle informazioni, sosterrai i costi e le condizioni normalmente applicate al traffico dati in roaming.\r\nInfine dall''estero, è possibile verificare il proprio credito digitando *123# seguito da INVIO laddove il gestore locale consenta questo servizio. Dopo alcuni istanti comparirà l''ammontare del tuo credito residuo direttamente sul display del telefonino.', 3, 0),
(26, 'Tutti i modi di ricaricare', 'Ricarica online\r\n\r\nCon autenticazione: se sei registrato al sito puoi scegliere l''importo da ricaricare, inserire i dati della tua carta di credito e la ricarica è subito effettuata! (Circuiti abilitati: American Express, Diners, Aura, Visa, Mastercard, PayPal).\r\n\r\nSenza autenticazione: ricarica il tuo telefonino senza bisogno di registrarti al sito. Usa la tua carta di credito personale e la ricarica è fatta! (Circuiti abilitati: Visa, Mastercard, American Express, Diners, carta Aura e PayPal).', 3, 0),
(27, 'Ricarica+', 'Ricarica+ ti permette, ad ogni operazione di ricarica da 6€ o da 12€ di avere, oltre al traffico telefonico, un bundle di MMS valido verso tutti, da consumare entro i 30 giorni successivi alla ricarica.\r\n\r\nDal 3/02/2014 la nuova offerta Ricarica+ si arricchisce di nuovi tagli di Ricarica!\r\n\r\nRicarica+ 17€\r\n\r\nRicarica+ 22€\r\n\r\nLa conferma dell’avvenuta attivazione del bundle per Ricarica ti sarà comunicata tramite SMS\r\n\r\nPer maggiori dettagli e informazioni clicca qui.', 3, 0),
(28, 'Come sostituire la tua SIM Card se sei all’estero', 'Il servizio di cambio SIM Card all’estero in caso di furto, smarrimento o mal funzionamento della carta, ti consente di essere sempre reperibile anche se non sei in Italia.\r\n\r\nTIM, infatti, ti offre la possibilità di richiedere la spedizione gratuita di una SIM Card da 128KB. Ti basterà contattare il Servizio Clienti 119 per richiedere il cambio SIM Card e poi di nuovo al momento della consegna per attivarla e tornare raggiungibile sempre con il tuo stesso numero.\r\nLa spedizione e l’attivazione della SIM Card all’estero è disponibile sia per clienti ricaricabili che con abbonamento ed è fruibile in diversi Stati e città Europee', 3, 0),
(29, 'Sicurezza traffico dati all''estero', 'Le promozioni che utilizzi abitualmente valgono esclusivamente all’interno del territorio nazionale, pertanto, quando sei all’estero, sarai soggetto ai costi previsti per il Paese in cui ti recherai.\r\n\r\nDovrai prestare particolare attenzione se possiedi un BlackBerry, un iPhone oppure uno Smartphone con Sistema Operativo Android: grazie alla funzione “ALWAYS ON” questi telefonini effettuano continui accessi ad Internet.\r\nPer alcuni terminali è prevista la possibilità di bloccare lo scambio dati all’estero; per maggiori informazioni clicca qui.\r\nPer gli altri telefonini sarà sufficiente non avviare nessuna connessione o disattivare, con l’ausilio del manuale o recandoti presso un Negozio TIM, il controllo periodico delle mail.\r\n\r\nInoltre, grazie al servizio gratuito Protezione dati dall’estero, sarà molto più facile tenere sotto controllo la spesa per il traffico dati generato fuori dal territorio nazionale. Questo servizio infatti ti permette di navigare quando sei all’estero in piena libertà con il tuo Smartphone o Tablet in quanto, al raggiungimento di una soglia di spesa massima di 61€ al mese, la connessione dati viene sospesa automaticamente. Sarà comunque possibile disabilitare temporaneamente il servizio ed avere una navigazione illimitata; basta farne richiesta al Servizio Clienti 119. Per tutti i dettagli sul servizio, leggi l’informativa alla pagina TIM Protezione dati dall’estero.', 1, 0),
(30, 'Recesso', 'Per potersi avvalere del diritto di ripensamento inerente a richieste di:\r\n\r\nATTIVAZIONE NUOVA LINEA\r\nPASSAGGIO DA ALTRO OPERATORE\r\nATTIVAZIONE OFFERTA/SERVIZIO SU LINEA GIA’ TIM\r\nACQUISTO/NOLEGGIO DI PRODOTTI\r\nPuoi contattare il servizio clienti 187 o scaricare direttamente da questo sito il modulo per la richiesta scritta:\r\n\r\nModulo di recesso (“ripensamento” entro 14 giorni)', 3, 0),
(31, 'Restituzione prodotti', 'Per cessare il noleggio di un prodotto, con la conseguente interruzione del relativo abbonamento, basta chiamare il Servizio Clienti linea fissa 187 e poi consegnare o spedire il prodotto insieme al modulo di accompagnamento che puoi scaricare da questa pagina.\r\n\r\nSe hai chiesto il recesso dal Contratto di Noleggio e Manutenzione devi restituire il prodotto in noleggio (fatta eccezione per i modem) entro e non oltre 30 giorni dalla data della richiesta di cessazione/recesso del contratto e consegnarlo, solo ed esclusivamente, presso uno dei seguenti Negozi TIM:\r\n\r\nROMA:           Viale Liegi, 31\r\nMILANO:        Piazza Cordusio snc - ang. Via Broletto\r\nNAPOLI:         Centro Direzionale - Isola A4\r\nPALERMO:     Via della libertà, 37/d\r\nTREVISO:       Via XX Settembre, 2\r\n(Nessun Negozio TIM al di fuori di quelli indicati in questa lista è abilitato alla riconsegna dei prodotti di cui si è chiesto il recesso del contratto di noleggio, pertanto, in nessun caso, potrà procedere al ritiro);\r\n\r\noppure spedirlo a mezzo pacco postale a: \r\n\r\n        Telecom Italia S.p.A. c/o Geodis Logistics\r\n        Magazzino Reverse A22\r\n        Piazzale Giorgio Ambrosoli snc\r\n        27015 Landriano PV\r\n\r\n\r\nAl pacco postale devi allegare il modulo di accompagnamento che puoi scaricare da questa pagina.\r\n\r\nScarica il modulo in formato pdf', 3, 0),
(32, 'Variazione Abbonamento', 'Se hai cessato la tua attività professionale, puoi richiedere la variazione del tuo contratto di abbonamento telefonico.\r\nPer richiedere la variazione chiama il Servizio Clienti 191.\r\n\r\nCon la richiesta della trasformazione del contratto dalla categoria Affari (“A”) alla categoria Residenziale (“B”) il costo del tuo abbonamento mensile passerà da:\r\n\r\n22,50 € (IVA esclusa) a 17,54 € (IVA al 22% inclusa), in caso di linea telefonica di base\r\n31,00 € (IVA esclusa) a 20,17 € (IVA al 22% inclusa), in caso di linea ISDN.', 3, 0),
(33, 'Passaggio da Ricaricabile ad Abbonamento', 'Se desideri migrare  la tua linea TIM dal servizio Ricaricabile ad un Abbonamento puoi farne richiesta presso un qualsiasi Negozio TIM. \r\nRicorda di portare con te il tuo documento di riconoscimento valido ed il codice fiscale. Nel caso tu voglia intestare il contratto d’Abbonamento ad una Persona Giuridica dovrai presentare il relativo certificato di iscrizione presso il Registro delle Imprese oppure, in alternativa, Certificato di vigenza rilasciato dalla Sezione Società Commerciali, Civile e Penale, entrambi rilasciati da non oltre 6 mesi, il documento d''identità, in corso di validità ed il codice fiscale del titolare/amministratore/legale rappresentante che ha sottoscritto la richiesta di migrazione).\r\n\r\n\r\nIl passaggio ad Abbonamento può essere effettuato soltanto entro il periodo di validità della linea ricaricabile, quindi prima della scadenza. Effettuando la migrazione potrai:\r\n\r\nrecuperare l''eventuale traffico acquistato non utilizzato sul primo rendiconto telefonico utile. Il traffico residuo presente sulla linea Ricaricabile sarà automaticamente riconosciuto sulla prima fattura della linea mobile utile, alla voce “REST. TRAFF. RES. TIM CARD”;\r\n \r\noptare, in caso di passaggio da linea ricaricabile con profilo tariffario non più commercializzato, per un nuovo profilo di abbonamento commercializzato.', 3, 0),
(34, 'I documenti necessari per attivare una TIM Card e l’anagrafica cliente', 'Quando acquisti una nuova TIM Card devono contestualmente essere associati alla stessa i tuoi dati anagrafici. Ti sarà pertanto richiesto di esibire un documento d’identità valido ed il codice fiscale.\r\n\r\nLa registrazione dei dati anagrafici e la certificazione degli stessi sui sistemi aziendali è vincolante per l’abilitazione della linea che, contrariamente, non sarà abilitata al traffico ed a tutte le altre operazioni.\r\n\r\nLa procedura di acquisizione dei tuoi dati anagrafici va effettuata esclusivamente attraverso i Negozi TIM con la presentazione di documenti in corso di validità (carta d’identità o documenti equivalenti rilasciati da un’amministrazione statale quali: passaporto, patente in formato cartaceo, porto d’armi e tessere degli ufficiali).\r\n\r\nTi ricordiamo che è consentita la vendita e l’intestazione di TIM Card anche a clienti minorenni che abbiano compiuto i 8 anni di età.', 3, 0),
(35, 'Gli MMS', 'Il servizio MMS (Multimedia Message Service) permette di inviare:\r\n\r\nTesto con più di 1000 caratteri.\r\nFoto, immagini e filmati.\r\nSuonerie e file audio.\r\nI telefonini brandizzati TIM hanno già al loro interno le impostazioni corrette per utilizzare il servizio. Se necessario, per configurare gli MMS o se vuoi semplicemente verificarne le impostazioni, puoi consultare i manuali di configurazione disponibili all’interno della sezione Assistenza del sito TIM.it, alla voce “Configura online”, che ti guideranno nell’impostare i paramentri necessari. \r\n\r\n \r\n\r\nN.B. Se non conosci il modello del tuo telefonino puoi accedere direttamente alla sezione MyTIM Mobile.\r\nDopo esserti autenticato con la tua username e password, avrai accesso alla tua area personale ed il tuo modello di telefonino sarà automaticamente riconosciuto. Se non hai un telefonino compatibile con la tecnologia MMS o se il tuo telefonino non è abilitato all’invio e alla ricezione di MMS, puoi visualizzare il Messaggio Multimediale ricevuto sulla tua linea, accedendo:\r\n\r\nSe sei già registrato alla sezione Mail, inserendo i tuoi dati (nome utente e password).\r\nSe non sei registrato, all’indirizzo WEB che trovi nell’SMS di notifica che riceverai, contenente anche la password momentanea per la visualizzazione.\r\nPer i clienti ricaricabili: è necessario avere sufficiente credito residuo per effettuare questo tipo di traffico telefonico. L’invio e la ricezione di MMS avviene tramite connessione dati, e questa è abilitata solo a fronte della presenza di credito residuo sull''utenza. In ogni caso la ricezione degli MMS sul territorio nazionale non comporta alcun addebito.\r\n\r\nPer i clienti con abbonamento: per poter inviare e ricevere MMS, la linea deve essere abilitata alla connessione dati; alcune linee con Abbonamento possono essere inibite a tale traffico.\r\nInviare e ricevere MMS dall''estero è facile come quando sei in Italia, scopri gli Operatori con cui TIM ha accordi.', 3, 0),
(36, 'Ibox diventa TIM Mail', 'A Novembre la tua Mail @tim.it diventa molto più capiente, efficiente e sicura.\r\n\r\nMolte sono le novità, fra cui:\r\n\r\nfino a 3 GB di spazio per archiviare i messaggi nella tua mailbox;\r\nla possibilità di inviare fino a 2 GB con il servizio di GigaAllegati ed una protezione automatica da virus e spam.\r\nPotrai inoltre accedere alla tua posta via webmail con una nuova interfaccia ricca di nuovi servizi, come la possibilità di navigare tra gli Allegati e di accedere ai servizi mobili, gestire una rubrica unificata con possibilità di importare contatti da Gmail, Outlook e altre rubriche.\r\n\r\nLa posta potrà inoltre essere gestita coi principali programmi di posta (come ad es. MS Outlook), continuando ad utilizzare le consuete impostazioni per la Posta in arrivo:\r\n\r\nServer POP3: box.posta.tim.it (porta 110)\r\noppure\r\n\r\nServer IMAP: box.posta.tim.it (porta 143).\r\n\r\nPer le impostazioni della Posta in uscita e per il Server SMTP potrai continuare ad utilizzare mail.posta.tim.it ma dovrai inserire la richiesta di autenticazione e specificare la porta 587.\r\n \r\n\r\nCon la tua mail @tim.it potrai continuare ad utilizzare la password abituale e, se necessario, recuperarla tramite cellulare in self-care dal link “recupera username e password” presente sulla webmail, poi nella pagina di recupero password dovrai inserire nel campo “username” il tuo numero di cellulare e scegliere il dominio @tim.it. Così potrai usufruire, fin dal primo cambio password, delle regole più sicure già valide per Alice Mail. Non sarà più possibile invece accedere al servizio di modifica password tramite SMS e l’ascolto in vocale delle mail sarà possibile dal numero 41919 (invece che 41901). Infine verrà conservato, se presente, un alias precedentemente configurato che potrai utilizzare per accedere alla posta elettronica ma non agli altri servizi.\r\n \r\n\r\nImportante: Ti ricordiamo che, se la tua mail @tim.it era utilizzata solo per l’inoltro automatico ad una mail @alice.it e non hai provveduto a disassociare quest’ultima dal numero di linea mobile entro i termini comunicati da TIM, la mail @tim.it è stata cancellata e non vi è più l’inoltro automatico dei messaggi alla casella @alice.it: ricorda quindi di comunicare ai tuoi corrispondenti come unica mail quella di Alice.', 3, 0),
(37, 'Sicurezza traffico dati', 'Le promozioni che utilizzi abitualmente valgono esclusivamente all’interno del territorio nazionale, pertanto, quando sei all’estero, sarai soggetto ai costi previsti per il Paese in cui ti recherai.\r\n\r\nDovrai prestare particolare attenzione se possiedi un BlackBerry, un iPhone oppure uno Smartphone con Sistema Operativo Android: grazie alla funzione “ALWAYS ON” questi telefonini effettuano continui accessi ad Internet.\r\nPer alcuni terminali è prevista la possibilità di bloccare lo scambio dati all’estero; per maggiori informazioni clicca qui.\r\nPer gli altri telefonini sarà sufficiente non avviare nessuna connessione o disattivare, con l’ausilio del manuale o recandoti presso un Negozio TIM, il controllo periodico delle mail.\r\n\r\nInoltre, grazie al servizio gratuito Protezione dati dall’estero, sarà molto più facile tenere sotto controllo la spesa per il traffico dati generato fuori dal territorio nazionale. Questo servizio infatti ti permette di navigare quando sei all’estero in piena libertà con il tuo Smartphone o Tablet in quanto, al raggiungimento di una soglia di spesa massima di 61€ al mese, la connessione dati viene sospesa automaticamente. Sarà comunque possibile disabilitare temporaneamente il servizio ed avere una navigazione illimitata; basta farne richiesta al Servizio Clienti 119. Per tutti i dettagli sul servizio, leggi l’informativa alla pagina TIM Protezione dati dall’estero', 3, 0),
(38, 'Ricarica su Misura', 'La Ricarica su Misura di TIM è una modalità di ricarica che consente di scegliere liberamente quanto credito acquistare sfruttando così anche la disponibilità di monete. Con la Ricarica su Misura infatti è possibile effettuare ricariche del taglio che preferisci, a partire da 5€, con flessibilità finanche di 1 cent.\r\n\r\nAd avvenuta ricarica, sarà inviato un SMS di notifica.\r\nLa Ricarica su Misura è disponibile presso i seguenti canali:\r\n\r\nNegozi TIM (a partire dal taglio di 5€ fino a quello di 200€ con flessibilità di 1 cent).\r\n\r\nPuntoLIS, Bar, Tabaccherie, Ricevitorie Lotto e Ricevitorie Sisal-Superenalotto, Edicole, Autogrill, Aree di Servizio, Phone Center ed Internet Point (a partire dal taglio di 5€ fino a quello di 200€ con flessibilità di 1 cent).\r\n\r\nTutti i valori sono da considerarsi IVA inclusa.\r\n\r\nIl servizio è completamente gratuito e tutto l''importo ricaricato potrà essere utilizzato come traffico telefonico senza scadenza.', 3, 0),
(39, 'Ricarica Veloce dal sito tim.it', 'Il servizio Ricarica Veloce dal sito tim.it ti permette di ricaricare il tuo telefonino senza bisogno di registrarti:\r\nè sufficiente inserire i tuoi dati e in 3 click la tua linea è ricaricata!\r\n\r\nI tagli di ricarica partono da un minimo di 6€ ad un massimo di 150€.\r\n\r\nTi verranno richieste alcune semplici informazioni quali:\r\n\r\nil numero TIM da ricaricare.\r\nun indirizzo mail al quale inviarti la notifica di operazione effettuata.\r\ni dati della tua carta di credito o di PayPal.\r\nSono accettate le principali carte di credito emesse in Italia aderenti ai circuiti Visa, Mastercard (tra cui CartaSì, Postepay, Clarima e Bankamericard Deutsche Credit Card), American Express, Diners e carta Aura.\r\n\r\nN.B. Ti ricordiamo che se scegli la ricarica da 6€ avrai a disposizione 5€ di credito e 500 MMS da inviare verso tutti entro 30 giorni. Per tutti i dettagli sulla Ricarica+ clicca qui.', 3, 0),
(40, 'Gestione Posta', 'Per consultare la tua casella di posta elettronica @tim.it o @alice.it accedi all''indirizzo https://mail.alice.it con qualsiasi collegamento ad Internet e qualsiasi browser ed inserisci il tuo indirizzo di posta elettronica e la relativa password.\r\n\r\nPer accedere ai tuoi messaggi clicca su POSTA IN ARRIVO  nel menu in alto della tua webmail o dall’indicazione dei messaggi da leggere nella pagina principale di TIM Mail.', 2, 0);
INSERT INTO `servizioassistenza` (`idservizioassistenza`, `nomeservizioassistenza`, `descrizioneservizioassistenza`, `categoriaservizioassistenza`, `highlightservizioassistenza`) VALUES
(41, 'Gestione Rubrica', 'La Rubrica  ti consente di avere a disposizione l''elenco dei tuoi contatti personali.\r\n\r\nPer ogni contatto puoi memorizzare uno o più indirizzi di posta elettronica , i numeri di telefono fisso e mobile , pagine web, etc. \r\nE'' possibile ordinare e raggruppare i contatti in gruppi e puoi effettuare la ricerca mediante informazioni parziali.\r\nPer creare un nuovo contatto, clicca sulla voce  Aggiungi accanto a Contatti nella colonna di sinistra oppure sul pulsante  Nuovo sulla barra in alto a sinistra, si aprirà una colonna a destra dove inserire le informazioni ralative al Nuovo contatto.  \r\nAl termine dell''inserimento, clicca sul pulsante Salva .', 2, 0),
(42, 'Gestione - Allegati', 'Dalla pagina principale di TIM Mail è possibile accedere al menu Allegati.\r\nIn alternativa è possibile accedere dal tab in alto presente sulla barra di navigazione.\r\nNella pagina Allegati sono presenti tutti i file allegati alle mail inviate e ricevute organizzati per tipologia (immagini, video, audio, documenti, archivi, altro) e rappresentati attraverso icone specifiche.\r\nL’anteprima del file allegato selezionato si aprirà in una nuova pagina e, in base alla modalità di visualizzazione consentita dal media server, verrà presentata nel caso di immagini, l’immagine nelle sue dimensioni reali, nel caso di documenti, il documento con la possibilità di sfogliare le pagine, mentre nel caso di file audio, il player audio con la possibilità di ascoltare il file. \r\nAnche da questa pagina è possibile salvare il file, condividerlo via mail e, per le immagini, condividerle su Facebook \r\nSi possono inoltre scorrere gli allegati attraverso i tasti allegato precedente e allegato successivo \r\n\r\nSe un messaggio di posta contiene allegati, sotto il corpo del messaggio è presente una sezione dedicata, in cui sono rappresentati i file con la possibilità di salvarli o, per quelli su cui è disponibile l’anteprima, visualizzarli in anteprima.', 2, 0),
(43, 'Gestione contatti Facebook', 'All''interno della tua TIM Mail puoi visualizzare gli aggiornamenti del tuo profilo Facebook , la tua bacheca, ed avere la notifica dell’arrivo di nuovi messaggi di posta e di inviti ad eventi.\r\n\r\nPer iniziare clicca su Connettiti a Facebook\r\nClicca su Procedi\r\nPer evitare accessi indesiderati al tuo account Facebook ti consigliamo di non selezionare l''opzione Resta Collegato nella schermata successiva, soprattutto se il PC che stai utilizzando è condiviso da più utenti.\r\n\r\nLeggi attentamente la richiesta alle autorizzazioni richieste e clicca su Consenti e poi sulla X in alto a destra nella finestra successiva\r\nNel riquadro visualizzerai tutte le notifiche di nuovi aggiornamenti dei tuoi amici, di messaggi privati ed inviti ad eventi.\r\nPer rimuovere il collegamento tra la tua TIM Mail ed il tuo account Facebook clicca su Impostazioni', 2, 0),
(44, 'Impostazioni Profilo', 'Nel menu Impostazioni della tua TIM Mail puoi gestire le funzionalità della tua casella di posta. \r\n\r\nPer accedere clicca sulla voce Impostazioni in alto sulla destra:\r\n\r\n\r\nScegli una delle voci seguenti e segui le indicazioni per conoscere e modificare le impostazioni di Sicurezza, attivare il servizio di Autenticazione sicura per le mail @tim.it, gestire le preferenze per la tua Mail e per la tua Rubrica, attivare o acquistare Servizi aggiuntivi e gestire i tuoi contatti Facebook.', 2, 0),
(45, 'Impostazione e modifica cellulare di recupero', 'Se al momento della registrazione della casella di posta non hai impostato il cellulare di recupero o vuoi modificarlo, accedi alla webmail su https://mail.alice.it , clicca in alto a destra nella sezione Impostazioni e seleziona Password e sicurezza\r\nNella sezione Per la tua sicurezza clicca sul tasto Inserisci in corrispondenza della voce Cellulare di recupero.   Se hai gia’ impostato un numero e intendi modificarlo, clicca sul pulsante Modifica\r\nInserisci il numero di cellulare da utilizzare per il recupero della password e clicca sul pulsante Salva .\r\nSul numero di cellulare inserito riceverai un sms con un codice di verica. Inserisci il codice nel pop up a video e clicca sul pulsante \r\nUn messaggio ti confermerà che il cellulare di recupero è stato correttamente salvato. ', 2, 0),
(46, 'Crea una password sicura', 'Nella scelta della password si tende spesso a scegliere un nome facile e breve. E'' invece indispensabile optare per un buon compromesso tra un codice sicuramente meno semplice da ricordare, ma che garantisca meglio la protezione dei dati .\r\n\r\nEcco alcuni buoni consigli da seguire nella scelta della password:\r\n\r\nnon utilizzare parole di senso compiuto usate comunemente : esistono infatti software freeware che, basandosi su dizionari internazionali, verificano tutte le parole caricate fino ad individuare quella corretta; \r\n\r\nevita informazioni personali ovvero nomi dei figli, del coniuge o di un animale domestico, date di nascita dei parenti più stretti, tutte facilmente accessibili da malintenzionati; \r\n\r\nnon usare password che contengano parte dell''ID utente o dell''indirizzo e-mail; \r\n\r\nnon utilizzare la stessa password per numerosi servizi on-line , nonostante rappresenti un buon modo per non dimenticarla aumentano infatti le probabilità che venga facilmente identificata.  \r\n\r\nscegli una password lunga  (comunque non inferiore agli 8 caratteri); \r\n\r\nutilizza combinazioni di: \r\n\r\n\r\ncaratteri minuscoli e maiuscoli\r\ncaratteri speciali\r\nnumeri\r\n', 2, 0),
(47, 'Modifica Password', 'Per una maggiore riservatezza delle proprie email, è importante scegliere una password sicura. Segui i consigli riportati nella Guida alla scelta della password.\r\nPer gestire la password di posta, entra nella tua email dal box MAIL del portale TIM .\r\nAll''interno della webmail  clicca in alto a destra su  Impostazioni e quindi su  Password e Sicurezza.\r\nPer  modificare la password entra nella sezione  Per la tua Sicurezza e clicca sul tasto Modifica a destra della voce Password. ', 2, 0),
(48, 'Recupera Username e Password', 'Se non ricordi la username o la password della tua mail @alice.it o @tim.it segui le informazioni presenti in questa pagina.  \r\n\r\nSeleziona il link recupera username e password  presente nella sezione di accesso alla tua webmail su https://mail.alice.it \r\n\r\nNella pagina successiva: \r\n\r\nper recuperare la password inserisci l''indirizzo di posta di cui non ricordi la relativa password e premi il tasto Recupera password\r\nper recuperare la username premi il tasto Recupera username . Questa funzionalità è disponibile solo per caselle di posta @alice.it.', 2, 0),
(49, 'Registrazione', 'Per registrare una casella di posta TIM Mail è necessario avere un abbonamento  ADSL o Fibra di TIM  o essere cliente TIM Mobile . \r\nTi ricordiamo che per utilizzare i servizi previsti dalla tua offerta ADSL o Fibra di TIM è necessario registrare la casella di posta associata al tuo abbonamento. Per procedere alla registrazione vai su http://mail.alice.it e clicca su Registrati all''interno del box di login:\r\n\r\n\r\n\r\nIn fase di registrazione della tua  TIM Mail , puoi scegliere la username, che corrisponde alla parte dell''indirizzo di posta elettronica che precede il dominio @alice.it o @tim.it, seguendo le regole riportate:\r\n\r\nMinimo 6 e massimo 24 caratteri.\r\nSi possono utilizzare lettere, numeri, trattini, trattini bassi e punti.\r\nIl primo carattere deve essere necessariamente una lettera.\r\nL’ultimo carattere deve essere necessariamente una lettera o un numero.\r\nNon puoi utilizzare due punti consecutivi.\r\nSe l''indirizzo di posta non è disponibile, visualizzerai il seguente messaggio:\r\nLa USERNAME scelta non è disponibile. Sono disponibili le seguenti username', 2, 0),
(50, 'Mail sul PC', 'Ti ricordiamo che, se la tua TIM Mail non è associata ad una linea ADSL/Fibra di TIM o ad un telefonino TIM, puoi consultare la tua casella @alice.it o @tim.it da client di posta coi protocolli POP3/IMAP solo ed esclusivamente se accedi ad Internet da reti di accesso TIM.\r\n\r\nL’accesso alla posta con un Operatore diverso da Telecom Italia/TIM è consentito solo tramite webmail. \r\n\r\nSegui le indicazioni delle guide riportate in questa pagina per configurare la tua TIM Mail con i principali programmi di posta.', 2, 0),
(51, 'Mail su Smartphone', 'Ti ricordiamo che, se la tua TIM Mail non è associata ad una linea ADSL di TIM o ad un telefonino TIM, puoi consultare la tua casella di posta da client di posta coi protocolli POP3/IMAP solo ed esclusivamente se accedi ad Internet da reti di accesso Telecom Italia o TIM. \r\n\r\nL’accesso alla posta con un Operatore diverso da Telecom Italia/TIM è consentito solo tramite webmail. \r\n\r\nSegui le indicazioni delle guide riportate in questa pagina per configurare la tua casella di posta @alice.it o @tim.it su smartphone e tablet.', 2, 0),
(52, 'Gestione opzioni posta', 'Per modificare le opzioni è necessario accedere al menu Strumenti e selezionare Opzioni.\r\nNella cartella Generale, tra le diverse opzioni, è possibile attivare un segnale acustico all''arrivo di ogni messaggio, eseguire un Invia e Ricevi all''apertura del programma di posta ed impostare i minuti per rilevare i nuovi messaggi.', 2, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlifeservice`
--

DROP TABLE IF EXISTS `smartlifeservice`;
CREATE TABLE IF NOT EXISTS `smartlifeservice` (
  `idsmartlifeservices` int(11) NOT NULL AUTO_INCREMENT,
  `immaginesmartlifeservices` varchar(99) DEFAULT NULL,
  `nomesmartlifeservices` varchar(99) DEFAULT NULL,
  `introduzionesmartlifeservices` text NOT NULL,
  `descrizionesmartlifeservices` text,
  `categoriasmartlifeservices` int(11) NOT NULL,
  `attivazionesmartlifeservices` text,
  `faqsmartlifeservices` text NOT NULL,
  PRIMARY KEY (`idsmartlifeservices`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `smartlifeservice`
--

INSERT INTO `smartlifeservice` (`idsmartlifeservices`, `immaginesmartlifeservices`, `nomesmartlifeservices`, `introduzionesmartlifeservices`, `descrizionesmartlifeservices`, `categoriasmartlifeservices`, `attivazionesmartlifeservices`, `faqsmartlifeservices`) VALUES
(1, 'tim_music.jpg', 'TIM Music', 'La colonna sonora della tua vita!\r\n\r\nAscolta milioni di brani in streaming, tutte le novità discografiche,\r\nanteprime esclusive e tante playlist di tutti i generi. Su smartphone\r\nsenza consumare GB, pc e tablet. Quando vuoi e quanto vuoi', 'Ascolta la tua musica in libertà', 1, 'attivalo gratis con la tua promozione internet', 'è meglio di spotify?&\r\nNon credo proprio&\r\nIl traffico internet che consumo usando TIM Music viene scalato dai miei GB in abbonamento?&\r\nNo, il suo traffico internet rimane invariato.'),
(2, 'tim_reading.jpg', 'TIM Reading', 'Leggi quando vuoi, cosa vuoi\r\n\r\nPorta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\r\nsegui tutte le tue passioni scegliendo tra i magazine più amati e sfoglia\r\nil tuo quotidiano dalle prime ore del mattino.', 'Porta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\r\nsegui tutte le tue passioni scegliendo tra i magazine più amati e sfoglia\r\nil tuo quotidiano dalle prime ore del mattino.\r\nSu TIMreading trovi ciò che ami leggere, dove e quando vuoi.', 1, 'Vuoi essere informato dalle prime ore del mattino? Con l’offerta Sfoglio Digitale TIM puoi leggere i tuoi giornali preferiti ogni giorno sul tuo PC, tablet o smartphone. Il meglio dell''informazione è sempre con te.\r\n\r\nScegli tra le principali testate giornalistiche italiane complete di allegati ed edizioni locali: Corriere della Sera, la Repubblica, Il Messaggero, La Gazzetta dello Sport, La Stampa, Il Mattino, Il Gazzettino, Il Corriere Adriatico,Il Nuovo Quotidiano di Puglia, La Nazione, Il Resto del Carlino e il Giorno.', 'I giornali escono in orario?&\r\nI giornali sono disponibili dalle prime ore del mattino.'),
(3, 'tim_games.jpg', 'TIM Games', 'Mettiti in gioco,\r\nuna nuova sfida ti aspetta!\r\nSparatutto, sport estremi, i migliori Classici e molto altro ancora...\r\nCon TIMgames hai a disposizione centinaia di giochi per il tuo\r\nsmartphone e tablet, per divertirti dove e quando vuoi.', 'Un servizio di giochi inedito che ti permette di avere sul tuo dispositivo tutti  i titoli del momento! Un fantastico supporto dalla nostra community e un divertimento garantito grazie a numerosi generi di giochi presenti!', 1, 'Per attivare il servizio TIM Games basta cliccare sul pulsante ''attiva servizio'' qui in basso. Istantaneamente verrai catapultato in un mondo di giochi vastissimo che ti farà passare in maniera allegra le tue giornate. Categorie di giochi diverse per accontentare anche gli utenti più difficili e se hai un abbonamento internet scopri anche il multiplayer e confrontati con milioni di giocatori come te sparsi in tutto il mondo.', 'Posso giocare su quasiasi dispositivo?&\r\nSi può giocare su tutti i dispositivi compatibili elencati in basso.'),
(4, 'seriea.jpg', 'Serie A TIM', 'Il calcio è di chi lo ama!\r\n\r\nVivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016\r\ncon tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet\r\ne senza consumare GB. L’unica App ufficiale della Serie A TIM.', 'Vivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016 con tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet e senza consumare GB. L’unica App ufficiale della Serie A TIM. Scarica l’App e vivi la magia del calcio!\r\nTutte le partite della tua squadra del cuore ovunque ti trovi, solo con TIM!', 1, 'Per attivare il servizio clicca sul pulsante in basso ''attiva servizio'' e catapultati in un mondo di goal e fantastiche partite con i tuoi idoli della serie A. ', 'Posso vedere tutte le partite in diretta?&\r\nSi.'),
(5, 'wellup.jpg', 'TIM Wellup', 'Un''app gratuita sviluppata come fosse un diario personale, per disporre in ogni momento di tutte le informazioni sui controlli medici preventivi da effettuare periodicamente per sé e per tutta la famiglia', 'Un''app gratuita sviluppata come fosse un diario personale, per disporre in ogni momento di tutte le informazioni sui controlli medici preventivi da effettuare periodicamente per sé e per tutta la famiglia. Con TIM wellup non hai più scuse per non allenarti e per restare in forma ed in salute. Potrai essere sempre tranquillo di avere tutta la situazione famigliare sotto controllo e liberare la mente da tutte le date delle visite che avete in programma. Tutta la famiglia in un''unica app! WELLUP TIM!', 2, 'Per attivare il servizio clicca il pulsante ''attiva servizio'' qui in basso e controlla se il tuo dispositivo è presente tra quelli compatibili! L''attivazione è veloce e gratuita, perchè noi teniamo alla salute dei nostri clienti!', 'Quante persone possono essere aggiunte nell''applicazione?&\r\nWELLUP ha spazio per tutti i tuoi cari, sicuramente.'),
(6, 'timtag.jpg', 'TIM TAG', 'TIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.', 'TIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care.\r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\n\r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!', 3, 'Acquista il Pack TIMTag\r\n\r\nAcquista subito online e ricevi direttamente a casa tua il pack oppure vai in uno dei negozi TIM.\r\n\r\nAttiva la TIM Card\r\n\r\nRegistra la TIM Card che trovi nel Pack in un negozio TIM (l''offerta TIMTag si attiverà automaticamente dopo la registrazione).\r\n\r\nScarica l''APP TIMTag sul tuo Smartphone\r\n\r\nInstalla l''app sul tuo smartphone ed associa il dispositivo di localizzazione (Android ed iOS).', 'Quali sono le caratteristiche di TIMTag?&\r\nÈ un''offerta TIM che ti offre un Tracker GPS con inclusi 12 mesi di servizio TIMTag. L’opzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e l’utilizzo dell’App TIMTag. Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.'),
(7, 'timhomeconnect.jpg', 'TIM Home Connect', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.\r\nTIM Home Connect è l’offerta pensata per essere utilizzata nei dispositivi di domotica presenti nella casa, la cui gestione prevede l''uso di una SIM\r\n\r\nCon Tim Home Connect infatti hai a disposizione minuti, MB e SMS da utilizzare per connettere e gestire il tuo antifurto, la tua caldaia o altri sistemi di domotica.\r\n', 3, 'Se sei già in possesso di una TIM Card, direttamente online cliccando sul tasto ''attiva servizio''\r\nPresso i Negozi TIM', 'L''offerta è compatibile con tutte le altre offerte?&\r\nL''offerta non prevede incompatibilità con altre opzioni. L''attivazione dell''offerta non comporta la disattivazione automatica di eventuali altre opzioni attive sul proprio numero; per gestire le opzioni presenti sulla linea basta accedere al Servizio Clienti 119 o chiamare il numero gratuito 409161.'),
(8, 'trasporti.jpg', 'Trasporti', 'Acquista i biglietti dei trasporti della tua città, attraverso il servizio SMS ticketing. Verifica subito se il servizio è già disponibile nella tua città!', 'Compra un biglietto via SMS e pagalo direttamente con il tuo credito telefonico.\r\nSCEGLI LA CITTA’\r\n\r\nEntra nella Vetrina dei servizi e scopri se il servizio è già attivo nella tua città\r\nACQUISTA IL BIGLIETTO\r\n\r\nSeleziona la tipologia di biglietto e acquistalo direttamente con il tuo credito telefonico\r\nVISUALIZZA IL BIGLIETTO\r\n\r\nTrovi subito il biglietto valido nella sezione Trasporti del tuo TIM Wallet\r\nCOME FUNZIONA\r\nApri TIM Wallet e accedi alla Vetrina Servizi. \r\nSe la città che ti interessa é abilitata, clicca e acquista il biglietto. \r\nPaghi direttamente con il tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento). \r\n\r\nAttenzione: ti verranno addebitati il costo del biglietto piu? il costo dell’SMS di richiesta (19,90 €cent IVA inclusa). \r\n\r\nRicevi un SMS, il biglietto è valido da quel momento senza necessità di ulteriori convalide. \r\nPuoi trovare il biglietto elettronico direttamente nel TIM Wallet nel tuo portafogli, puoi rinnovarlo quando scade. In caso di controllo, mostra l’SMS di conferma che hai ricevuto.\r\n\r\nA Milano puoi utilizzare anche la modalità QRCode. Dopo aver acquistato il biglietto della metropolitana e ricevuto l’SMS, ricevi anche il QRCode che permette di aprire i tornelli della metropolitana. E’ sufficiente visualizzare il QRCode e accostare il display dello smartphone all’apposito lettore.', 4, 'Il servizio sarà attivo non appena cliccherai su ''attiva servizio''. La tua sim sarà così abilitata all''acquisto di biglietti in maniera semplice, veloce e sicura.', 'Quanto costa il servizio?&\r\nL''utilizzo di TIM Wallet comporta il consumo di traffico Internet, per il quale si applica il tuo piano tariffario. Ti verranno inoltre addebitati il costo del biglietto più il costo dell’SMS di richiesta (19,90 € IVA inclusa).							Il costo totale verrà scalato dal tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento).'),
(9, 'phone-card-pagamenti.png', 'Pagamenti', 'Scegli le carte di pagamento di Intesa Sanpaolo, BNL o Mediolanum: pagare è semplice e conveniente!', 'Per utilizzare in pieno tutti i servizi offerti da TIM Wallet ti suggeriamo di utilizzare una TIM Card NFC.	Richiedi il cambio carta in un Negozio TIM, oppure diventa un cliente TIM acquistandone una nuova! Ricorda, il servizio di pagamenti è disponibile solo per le TIM Card NFC.\r\nScopri tutti gli smartphone che sono abilitati all’utilizzo dei servizi di pagamento. Controlla la lista dei terminali compatibili, certificati per garantire i requisiti di sicurezza di banche e circuiti di pagamento.\r\n', 4, 'Ricordati di scaricare l’app TIM Wallet e di attivarlo accedendo almeno una volta al servizio.', 'Quali sono i privilegi che si acquisiscono pagando con Tim?&\r\nPuoi ottenere molti sconti in vari negozi convenzionati, e al cinema entri gratis il lunedì'),
(10, 'fidelity-card.jpg', 'Fidelity Card', 'Salva nel TIM Wallet le tue carte fedeltà per averle sempre con te', 'Con TIM Wallet puoi virtualizzare le tue carte fedeltà e portarle sempre con te. \r\nAccedi alla Vetrina Servizi e in pochi passaggi puoi acquisire tutte le tue carte fedeltà. \r\nInquadra la carta nel riquadro e attendi che venga riconosciuta. \r\nIl riconoscimento della tessera é automatico, tuttavia se la tessera non viene riconosciuta tra le carte presenti puoi comunque aggiungerla utilizzando la fotocamera del tuo smartphone: seleziona il tipo di codice riportato sulla tessera (codice a barre, QRCode o codice numerico) e inquadralo. Se il codice non viene riconosciuto automaticamente, può essere inserito anche manualmente. \r\nIn breve puoi vedere la tessera nel portafogli. \r\nPuoi mostrarla nei punti vendita abilitati direttamente dal tuo smartphone: se clicchi sull''immagine della carta in automatico ruota e ti mostra il codice a barre (attenzione: non tutti i punti vendita hanno i lettori di codice a barre abilitati!)', 4, 'Utilizza la fotocamera per aggiungere una carta.\r\nLa tessera viene riconosciuta in automatico e la trovi nel tuo TIM Wallet.\r\nApri il wallet e mostra le carte fedeltà nei punti vendita.', 'Come si aggiunge una carta fedeltà?&\r\nAccedi alla Vetrina Servizi e inquadra la carta nel riquadro. Il riconoscimento della carta è automatico nella maggior parte dei casi. Se la carta non è riconosciuta tra quelle presenti puoi aggiungerla utilizzando la fotocamera del tuo smartphone.&\r\nDove vengono memorizzate le carte?&\r\nTutte le carte sono memorizzate sul tuo smartphone, puoi mostrarle nel punto vendita anche senza avere connessione Internet.'),
(11, 'coupon.jpg', 'Coupon', 'Risparmia su un’ampia gamma di prodotti e servizi selezionati da QUI! Group', 'Trova il collegamento al servizio “I coupon consigliati da TIM” dal menu laterale di TIM Wallet. Nella pagina informativa selezionando il tasto “SCOPRI” accedi al sito dove potrai scegliere tra tante offerte speciali. \r\n\r\nPuoi ricercare i prodotti delle migliori marche, viaggi da sogno e sconti sui locali piu? esclusivi della tua città navigando tra le categorie di offerte. \r\n\r\nUtilizzando il GPS del tuo smartphone puoi trovare sempre le migliori offerte intorno a te. ', 4, 'Il servizio è offerto ai clienti TIM da QUI! Group attraverso la propria rete commerciale. Il pagamento viene effettuato utilizzando il sistema di carta di credito di QUI! Group. In caso di necessità è necessario contattare il centro assistenza clienti di QUI! Group al numero 010/5389945 (opzione 3).', 'Come si attiva il servizio Coupon?&\r\nNel menu laterale di TIM Wallet trovi il collegamento al servizio “I Coupon consigliati da TIM”. Nella pagina informativa selezionando il tasto “SCOPRI” si accede al sito dove potrai scegliere tra tante offerte speciali.&\r\nTrovo solo le offerte della mia città?&\r\nSe imposti il GPS del tuo smartphone, automaticamente ti vengono mostrate le migliori offerte intorno a te, nella tua città.\r\nPuoi effettuare ricerche anche su altre città e categorie di tuo interesse e navigare tra le offerte.'),
(12, 'dlink-smarthome.jpg', 'D-Link SmartHome', 'D-Link SmartHome Starter Kit ti offre la possibilità di impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\r\nNel Kit sono inclusi:\r\n\r\nUn Monitor HD (DCS-935L) \r\nUn Wi-Fi Motion Sensor (DCH-S150)\r\nUna smart plug (DSP-W215) \r\nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.\r\n\r\nFacile configurazione e gestione dei tuoi dispositivi\r\n\r\nBasta semplicemente scaricare l’app mydlink Home e la configurazione guidata ti aiuterà a utilizzare al meglio tutti i dispositivi presenti nel kit in modo facile e intuitivo.\r\nCon l’app potrai creare tu stesso le regole per accendere e spegnere i tuoi elettrodomestici quando e ovunque vuoi. \r\n\r\nNotifiche automatiche e real time sul tuo smartphone\r\n\r\nL’app mydlink Home ti notificherà quando:\r\nUn movimento o un suono viene rilevato\r\nUn dispositivo è stato acceso o spento\r\nIl consumo elettrico è stato superato\r\nUn dispositivo non funziona correttamente o si surriscalda\r\nIl sensore di movimento a infrarossi passivo riduce di gran lunga i falsi allarmi garantendoti di essere avvisato solo quando necessario: rilevazione dei movimenti fino a 8 metri (100° orizzontale, 80° verticale).\r\n\r\nMonitor HD\r\n\r\nCon il Monitor HD, potrai controllare la tua casa in alta definizione (720p) e grazie alla visione notturna anche in assenza di luce (fino a 5 mt). Il Monitor HD ti avvisa mediante notifica push ogni volta che verrà rilevato un suono o un movimento.\r\nSensore di movimento\r\n\r\nGrazie alla tecnologia a infrarossi passiva saranno ridotti i falsi allarmi e verrai avvisato solo quando necessario. Con il sensore di movimento rileverai i movimenti fino a 8 metri (100° orizzontale, 80° verticale).\r\n\r\nSmart Plug\r\n\r\nPotrai accendere e spegnere i dispositivi dal tuo smartphone tablet, ovunque ti trovi. Essere avvisato se un elettrodomestico è stato acceso o spento. Impostare nuove regole di funzionamento in base alle tue esigenze.', 3, 'La configurazione è facilissima!\r\n\r\nBasta semplicemente scaricare la app mydlink Home e la configurazione guidata ti aiuterà a far funzionare tutti i dispositivi presenti nel kit.', 'Come s fa a configurare il dispositivo con la propria abitazione?&\r\nChiama il tecnico al 190 oppure controlla sul sito tim nel reparto assistenza tecnica'),
(13, 'livingcoloursbloom-zoom.jpg', 'Philips Livingcolours Bloom', 'Illumina la tua casa del colore delle tue emozioni', 'Lo starter kit Philips Friends of hue Bloom bianco ti consente di creare l''illuminazione che desideri tramite smartphone o altri dispositivi', 3, 'Per l''attivazione serve avere una smartHome, e potrai beneficiare di tutti i serivi offerti da questa nuova lampadina al led! Risparmierai anche sulle bollette', '&Come si configura?&La configurazione è facilissima! Basta semplicemente scaricare la app mydlink Home e la configurazione guidata ti aiuterà a far funzionare tutti i dispositivi presenti nel kit.&Quando riceverò delle notifiche?&L’app mydlink Home ti notificherà quando:\r\nUn movimento o un suono viene rilevato\r\nUn dispositivo è stato acceso o spento\r\nIl consumo elettrico è stato superato\r\nUn dispositivo non funziona correttamente o si surriscalda');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
