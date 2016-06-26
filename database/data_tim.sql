-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 26, 2016 alle 12:16
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

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriadispositivo`
--

CREATE TABLE `categoriadispositivo` (
  `idcategoriadispositivo` int(11) NOT NULL,
  `nomecategoriadispositivo` varchar(99) DEFAULT NULL,
  `descrizionecategoriadispositivo` text,
  `immaginecategoriadispositivo` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `categoriaservizioassistenza` (
  `idservizio` int(11) NOT NULL,
  `nomeservizio` varchar(99) DEFAULT NULL,
  `descrizioneservizio` text,
  `immagineservizio` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `categoriasmartlifeservice` (
  `idsmartlife` int(11) NOT NULL,
  `nomesmartlife` varchar(99) DEFAULT NULL,
  `descrizionesmartlife` text,
  `immaginesmartlife` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriasmartlifeservice`
--

INSERT INTO `categoriasmartlifeservice` (`idsmartlife`, `nomesmartlife`, `descrizionesmartlife`, `immaginesmartlife`) VALUES
(1, 'Tv & intrattenimento', 'intrattieniti con il meglio della tv in casa tua e sempre con te in giro', 'tv.png'),
(2, 'Salute e Benessere', 'Mantieniti in forma con le migliori app e gadget tim', 'healt.png'),
(3, 'Casa e famiglia', 'utilizza tutto ciò che offre tim per la tua famiglia', 'home.png'),
(4, 'Servizi personali', 'non so che scrivere qui :D', 'payment.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo`
--

CREATE TABLE `dispositivo` (
  `id` int(11) NOT NULL,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `promozione` tinyint(1) NOT NULL DEFAULT '0',
  `prezzo` int(11) NOT NULL,
  `immagine` varchar(99) DEFAULT NULL,
  `os` varchar(99) DEFAULT NULL,
  `memoria` int(11) DEFAULT NULL,
  `schermo` varchar(99) NOT NULL,
  `ram` int(11) NOT NULL,
  `processore` varchar(99) NOT NULL,
  `dimensioni` varchar(99) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo`
--

INSERT INTO `dispositivo` (`id`, `nome`, `descrizione`, `categoria`, `promozione`, `prezzo`, `immagine`, `os`, `memoria`, `schermo`, `ram`, `processore`, `dimensioni`, `peso`) VALUES
(1, 'iPhone 6s', '', 1, 0, 799, 'iPhone6s.jpg', 'iOS', 64, '', 0, '', '', 0),
(2, 'iPhone 6s Plus', '', 1, 0, 899, 'iPhone_6s_plus.jpg', 'iOS', 16, '', 0, '', '', 0),
(3, 'Galaxy S7', '', 1, 1, 499, 'galaxy_s7.jpg', 'android', 32, '', 0, '', '', 0),
(4, 'Nexus 5x', '', 1, 0, 299, 'nexus_5x.jpg', 'android', 16, '', 0, '', '', 0),
(5, 'Lumia 950XL', '', 1, 0, 545, 'Lumia_950xl.jpg', 'Windows', 32, '', 0, '', '', 0),
(6, 'Huawei G7', '', 1, 0, 169, 'huawei_g7.jpg', 'Android', 16, '', 0, '', '', 0),
(7, 'iPad Pro', 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi?Touch perfezionata, il suo grande display Retina da 12,9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, è pronto ad allargare ancora una volta i tuoi orizzonti. Non è solo più grande. È un iPad che ti permetterà di lavorare e creare in una dimensione tutta nuova, come non hai mai fatto prima.\r\n\r\nCon 5,6 milioni di pixel, iPad Pro ha il display Retina a più alta risoluzione mai visto su un dispositivo iOS. Montare video 4K, creare presentazioni, gestire un’azienda: sul display da 12,9" tutto è più facile, veloce e coinvolgente. E con il Multi?Touch riprogettato scoprirai nuovi modi per interagire con il tuo iPad.\r\n\r\nNonostante il suo grande display, iPad Pro è sorprendentemente sottile e leggero: solo 6,9 mm di spessore e appena 713 grammi. Grazie al guscio unibody, è anche resistente e ben bilanciato. Ma forse l’aspetto più incredibile di iPad Pro è un altro: è talmente comodo che quasi ti dimentichi di averlo in mano\r\n\r\n', 2, 0, 1249, 'ipad_pro.jpg', 'iOS', 128, 'Retina Display 12.9”', 4, '\r\nChip A9X con architettura a 64 bit\r\nCoprocessore M9', '305,7 mm x 220,6 mm x 6,9 mm', 723),
(8, 'Huawei Mediapad 10', 'HUAWEI MediaPad 10 Link+ è un tablet da 10,1 pollici con microprocessore quad-core HiSilicon Kirin 910 e supporto per le reti mobili 3G.\r\n\r\nCon un design unibody ultra-sottile di 9,9 millimetri in lega di alluminio, è elegante e portatile. MediaPad 10 Link+ ha uno schermo IPS HD con risoluzione di 1280×800 pixel.\r\n\r\nMonta una fotocamera frontale da 0,3 megapixel e una fotocamera posteriore da 3 megapixel. L''ottimo display in combinazione con la tecnologia audio DTS del MediaPad 10 Link+ offre una superba qualità audiovisiva, sia che si voglia scattare foto, giocare, guardare film in HD, o ascoltare musica', 2, 1, 200, 'huawei_mediapad10.jpg', 'Android 4.4.2', 8, '10.1" (1280x800) IPS 16M di colori', 1, 'Balon Cortex A9 Quad-Core 1.6GHz', '257.4x175.9x9.9mm', 630),
(9, 'Apple Watch', '', 3, 0, 399, 'apple_watch.jpg', 'iOS', NULL, '1.32 pollici 272 x 340 pixel 326 ppi', 0, '', '38.6 millimetri x 33.3 millimetri x 10.5 millimetri', 72),
(10, 'Samsung Smart TV 50"', '', 3, 0, 0, 'samsung_tv.jpg', NULL, NULL, 'Ultra HD - 4K 3840 x 2160', 0, '', '50"', 0),
(11, 'ZTE SPRO 2', 'Un proiettore moderno e bello da vedere.', 3, 0, 699, 'zte_spro2.jpg', 'Android 4.4', 16, ' 20” - 100”, Luminosità 200 Lumen, Contrasto 5000:1', 0, 'Qualcomm® Snapdragon™ 800 Quad-Core 2.0 GHz', '134x131x33 mm', 526),
(12, 'TIM Powerline Adapter', 'Colleghi PC, modem e console sfruttando la rete elettrica\r\n\r\nVuoi trasformare la rete elettrica di casa tua in una rete per navigare e trasmettere, dove il wi-fi non arriva, dati in formato digitale?\r\n\r\nCon Powerline Adpter puoi farlo.\r\n\r\nColleghi tra loro PC, modem e console senza problemi di copertura, distanza, né cablaggi: ti basta inserire Powerline Adapter nelle prese elettriche per creare una rete domestica che connette i vari apparati, con prestazioni fino a 200 Mbps.\r\n\r\nE la riservatezza dei dati che trasmetti e ricevi è garantita mediante un sistema di crittografia.\r\n\r\nAcquista Powerline Adapter in coppia direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.', 4, 0, 49, 'tim_powerline_adapter.png', NULL, NULL, '', 0, '', '', 0),
(13, 'TIM Modem ADSL Wifi', 'Navigazione veloce e senza fili\r\n\r\nCon il Modem ADSL Wi-Fi navighi ad alta velocità e senza fili, utilizzando l''interfaccia Wi-Fi o attraverso le 4 porte Ethernet.\r\n\r\nNavigazione più veloce grazie alla tecnologia senza fili Wi-Fi e migliore copertura della rete Wi-Fi della tua abitazione(1).\r\nProtezione: la cifratura WPA e WPA2 impedisce l’accesso ai non autorizzati alla rete Wi-Fi. Disponibili anche funzionalità avanzate come il filtro degli indirizzi MAC ed il firewall integrato.\r\nTutta la famiglia connessa: collega tutti i PC, smartphone e tablet al nuovo modem ADSL Wi-Fi e inoltre condividi Hard Disk e stampanti collegati alla porta USB del modem.\r\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software.\r\nRisparmia sulla bolletta elettrica: il nuovo modem, rispetto ad un prodotto Telecom Italia di generazione precedente con le stesse funzionalità, consente di risparmiare fino al 40% di energia elettrica su un utilizzo medio annuo (2).\r\nIl Modem Wi-Fi opera solo su linea ADSL di Telecom Italia ed è compatibile con i principali sistemi operativi (Windows 7, Vista, XP - MacOS 10.3).\r\n\r\nAcquista il Modem ADSL Wi-Fi direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.\r\n\r\nNote:\r\n(1) La tecnologia Wi-Fi 802.11n migliora le prestazioni rispetto ai prodotti della generazione precedente 802.11b/g di Telecom Italia.Per utilizzare la rete senza fili è necessario disporre di un computer con interfaccia Wi-Fi. Le prestazioni effettive possono variare a seconda del computer, della distanza, della velocità di connessione ADSL e di altri fattori.\r\n(2) I valori sono misurati nei laboratori Telecom Italia. ', 4, 0, 69, 'tim_modem_adsl_wifi.jpg', NULL, NULL, '', 0, '', '', 0),
(14, 'Tecnoware ERA Plus 900', 'ERA PLUS 900 è un UPS (Uninterruptible Power Supply), cioè un gruppo di continuità, di tipo Line Interactive, realizzato appositamente per proteggere il Modem Fibra di TIM da qualsiasi avaria della rete elettrica (black-out, sottotensioni, sovratensioni, microinterruzioni), causa dei frequenti danneggiamenti di Hardware e Software.\r\n\r\nQuando è presente la tensione di rete elettrica, ERA PLUS 900 svolge le funzioni di stabilizzatore e filtra i disturbi frequentemente presenti sulla linea elettrica (transienti, spike, interferenze, etc.), preservando in tal modo il modem ed eventuali altri dispositivi collegati alla sua uscita ad esempio il telefono cordless acquistato insieme all’offerta Fibra di TIM; inoltre ricarica le batterie in modo ottimale.\r\n\r\nIn caso di avaria della rete elettrica o caduta di tensione, l’UPS continua ad alimentare il modem ed altre apparecchiature protette ad esempio il telefono cordless garantendo per un lasso di tempo variabile il servizio telefonico e la connettività che sono compromesse in caso di black-out.\r\n\r\nERA PLUS presenta tutte le moderne caratteristiche che garantiscono massima affidabilità e sicurezza:\r\n\r\nControllo a microprocessore di tutte le funzioni, garanzia di alta affidabilità.\r\nStabilizzazione in uscita tramite AVR (Automatic Voltage Regulation).\r\nProtezione da sovraccarico sia nel modo di funzionamento normale che in modo batterie.\r\nCarica batterie di alte prestazioni che prolunga il tempo medio di vita delle batterie e ne garantisce una ricarica ottimale.\r\nAccensione anche in condizioni di rete elettrica assente.\r\nRiaccensione automatica dopo lo spegnimento per fine autonomia al ritorno della tensione di rete.\r\nAdattabilità automatica alla frequenza d’ingresso 50 o 60 Hz. Segnalazioni acustiche di vario tipo durante il normale funzionamento e che evidenziano le eventuali condizioni di allarme.\r\nAlta affidabilità.\r\nElevato rendimento e basso costo d’esercizio.\r\nDimensioni compatte.\r\nDesign curato ed ergonomico.\r\nSemplicità d’uso.\r\nAcquista ERA Plus 900 direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.\r\n\r\nCaratteristiche tecniche', 4, 0, 80, 'tecnoware_era_plus_900.jpg', NULL, NULL, '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo_servizioassistenza`
--

CREATE TABLE `dispositivo_servizioassistenza` (
  `id_dispositivo_dsa` int(11) NOT NULL,
  `id_servizioassistenza_dsa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo_servizioassistenza`
--

INSERT INTO `dispositivo_servizioassistenza` (`id_dispositivo_dsa`, `id_servizioassistenza_dsa`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo_smartlifeservice`
--

CREATE TABLE `dispositivo_smartlifeservice` (
  `id_dispositivo_dss` int(11) NOT NULL,
  `id_smartlifeservice_dss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo_smartlifeservice`
--

INSERT INTO `dispositivo_smartlifeservice` (`id_dispositivo_dss`, `id_smartlifeservice_dss`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(2, 4),
(3, 1),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(8, 1),
(8, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `servizioassistenza`
--

CREATE TABLE `servizioassistenza` (
  `idservizioassistenza` int(11) NOT NULL,
  `nomeservizioassistenza` varchar(99) DEFAULT NULL,
  `descrizioneservizioassistenza` text,
  `categoriaservizioassistenza` int(11) DEFAULT NULL,
  `highlightservizioassistenza` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `servizioassistenza`
--

INSERT INTO `servizioassistenza` (`idservizioassistenza`, `nomeservizioassistenza`, `descrizioneservizioassistenza`, `categoriaservizioassistenza`, `highlightservizioassistenza`) VALUES
(1, 'Configurazione Mail iOS', 'Guida per la configurazione delle mail su sistemi operativi iOS', 2, 1),
(2, 'Configurazione Mail android', 'Guida per la configurazione delle mail su sistemi operativi android', 2, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlifeservice`
--

CREATE TABLE `smartlifeservice` (
  `idsmartlifeservices` int(11) NOT NULL,
  `immaginesmartlifeservices` varchar(99) DEFAULT NULL,
  `nomesmartlifeservices` varchar(99) DEFAULT NULL,
  `introduzionesmartlifeservices` text NOT NULL,
  `descrizionesmartlifeservices` text,
  `categoriasmartlifeservices` int(11) NOT NULL,
  `attivazionesmartlifeservices` text,
  `faqsmartlifeservices` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `smartlifeservice`
--

INSERT INTO `smartlifeservice` (`idsmartlifeservices`, `immaginesmartlifeservices`, `nomesmartlifeservices`, `introduzionesmartlifeservices`, `descrizionesmartlifeservices`, `categoriasmartlifeservices`, `attivazionesmartlifeservices`, `faqsmartlifeservices`) VALUES
(1, 'tim_music.jpg', 'TIM Music', 'La colonna sonora della tua vita!\r\n\r\nAscolta milioni di brani in streaming, tutte le novità discografiche,\r\nanteprime esclusive e tante playlist di tutti i generi. Su smartphone\r\nsenza consumare GB, pc e tablet. Quando vuoi e quanto vuoi', 'Ascolta la tua musica in libertà', 1, 'attivalo gratis con la tua promozione internet', 'è meglio di spotify?\r\nNon credo proprio'),
(2, 'tim_reading.jpg', 'TIM Reading', 'Leggi quando vuoi, cosa vuoi\r\n\r\nPorta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\r\nsegui tutte le tue passioni scegliendo tra i magazine più amati e sfoglia\r\nil tuo quotidiano dalle prime ore del mattino.\r\nSu TIMreading trovi ciò che ami leggere, dove e quando vuoi.', 'Porta sempre con te su Smartphone e Tablet i tuoi eBook preferiti,\r\nsegui tutte le tue passioni scegliendo tra i magazine più amati e sfoglia\r\nil tuo quotidiano dalle prime ore del mattino.\r\nSu TIMreading trovi ciò che ami leggere, dove e quando vuoi.', 1, 'Vuoi essere informato dalle prime ore del mattino? Con l’offerta Sfoglio Digitale TIM puoi leggere i tuoi giornali preferiti ogni giorno sul tuo PC, tablet o smartphone. Il meglio dell''informazione è sempre con te.\r\n\r\nScegli tra le principali testate giornalistiche italiane complete di allegati ed edizioni locali: Corriere della Sera, la Repubblica, Il Messaggero, La Gazzetta dello Sport, La Stampa, Il Mattino, Il Gazzettino, Il Corriere Adriatico,Il Nuovo Quotidiano di Puglia, La Nazione, Il Resto del Carlino e il Giorno.', 'Q: I giornali escono in orario?\r\nR: I giornali sono disponibili dalle prime ore del mattino.'),
(3, 'tim_games.jpg', 'TIM Games', 'Mettiti in gioco,\r\nuna nuova sfida ti aspetta!\r\nSparatutto, sport estremi, i migliori Classici e molto altro ancora...\r\nCon TIMgames hai a disposizione centinaia di giochi per il tuo\r\nsmartphone e tablet, per divertirti dove e quando vuoi.', 'Un servizio di giochi inedito che ti permette di avere sul tuo dispositivo tutti  i titoli del momento! Un fantastico supporto dalla nostra community e un divertimento garantito grazie a numerosi generi di giochi presenti!', 1, 'Per attivare il servizio TIM Games basta cliccare sul pulsante ''attiva servizio'' qui in basso. Istantaneamente verrai catapultato in un mondo di giochi vastissimo che ti farà passare in maniera allegra le tue giornate. Categorie di giochi diverse per accontentare anche gli utenti più difficili e se hai un abbonamento internet scopri anche il multiplayer e confrontati con milioni di giocatori come te sparsi in tutto il mondo.', 'Q: Posso giocare su quasiasi dispositivo?\r\nR: Si può giocare su tutti i dispositivi compatibili elencati in basso.'),
(4, 'seriea.jpg', 'Serie A TIM', 'Il calcio è di chi lo ama!\r\n\r\nVivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016\r\ncon tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet\r\ne senza consumare GB. L’unica App ufficiale della Serie A TIM.\r\nScarica l’App e vivi la magia del calcio!', 'Vivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016 con tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet e senza consumare GB. L’unica App ufficiale della Serie A TIM. Scarica l’App e vivi la magia del calcio!\r\nTutte le partite della tua squadra del cuore ovunque ti trovi, solo con TIM!', 1, 'Per attivare il servizio clicca sul pulsante in basso ''attiva servizio'' e catapultati in un mondo di goal e fantastiche partite con i tuoi idoli della serie A. ', 'Q: Posso vedere tutte le partite in diretta?\r\nR: Si.'),
(5, 'wellup.jpg', 'TIM Wellup', 'Un''app gratuita sviluppata come fosse un diario personale, per disporre in ogni momento di tutte le informazioni sui controlli medici preventivi da effettuare periodicamente per sé e per tutta la famiglia', 'Un''app gratuita sviluppata come fosse un diario personale, per disporre in ogni momento di tutte le informazioni sui controlli medici preventivi da effettuare periodicamente per sé e per tutta la famiglia. Con TIM wellup non hai più scuse per non allenarti e per restare in forma ed in salute. Potrai essere sempre tranquillo di avere tutta la situazione famigliare sotto controllo e liberare la mente da tutte le date delle visite che avete in programma. Tutta la famiglia in un''unica app! WELLUP TIM!', 2, 'Per attivare il servizio clicca il pulsante ''attiva servizio'' qui in basso e controlla se il tuo dispositivo è presente tra quelli compatibili! L''attivazione è veloce e gratuita, perchè noi teniamo alla salute dei nostri clienti!', 'Q: Quante persone possono essere aggiunte nell''applicazione? R: WELLUP ha spazio per tutti i tuoi cari, sicuramente.'),
(6, 'timtag.jpg', 'TIM TAG', 'TIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.', 'TIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care.\r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\n\r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare!', 3, 'Acquista il Pack TIMTag\r\n\r\nAcquista subito online e ricevi direttamente a casa tua il pack oppure vai in uno dei negozi TIM.\r\n\r\nAttiva la TIM Card\r\n\r\nRegistra la TIM Card che trovi nel Pack in un negozio TIM (l''offerta TIMTag si attiverà automaticamente dopo la registrazione).\r\n\r\nScarica l''APP TIMTag sul tuo Smartphone\r\n\r\nInstalla l''app sul tuo smartphone ed associa il dispositivo di localizzazione (Android ed iOS).', 'Q: Quali sono le caratteristiche di TIMTag?\r\n\r\nR: È un''offerta TIM che ti offre un Tracker GPS con inclusi 12 mesi di servizio TIMTag. L’opzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e l’utilizzo dell’App TIMTag. Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.'),
(7, 'timhomeconnect.jpg', 'TIM Home Connect', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.\r\nTIM Home Connect è l’offerta pensata per essere utilizzata nei dispositivi di domotica presenti nella casa, la cui gestione prevede l''uso di una SIM\r\n\r\nCon Tim Home Connect infatti hai a disposizione minuti, MB e SMS da utilizzare per connettere e gestire il tuo antifurto, la tua caldaia o altri sistemi di domotica.\r\n', 3, 'Se sei già in possesso di una TIM Card, direttamente online cliccando sul tasto ''attiva servizio''\r\nPresso i Negozi TIM', 'Q: L''offerta è compatibile con tutte le altre offerte? R: L''offerta non prevede incompatibilità con altre opzioni. L''attivazione dell''offerta non comporta la disattivazione automatica di eventuali altre opzioni attive sul proprio numero; per gestire le opzioni presenti sulla linea basta accedere al Servizio Clienti 119 o chiamare il numero gratuito 409161.'),
(8, 'trasporti.jpg', 'Trasporti', 'Acquista i biglietti dei trasporti della tua città, attraverso il servizio SMS ticketing. Verifica subito se il servizio è già disponibile nella tua città!', 'Compra un biglietto via SMS e pagalo direttamente con il tuo credito telefonico.\r\nSCEGLI LA CITTA’\r\n\r\nEntra nella Vetrina dei servizi e scopri se il servizio è già attivo nella tua città\r\nACQUISTA IL BIGLIETTO\r\n\r\nSeleziona la tipologia di biglietto e acquistalo direttamente con il tuo credito telefonico\r\nVISUALIZZA IL BIGLIETTO\r\n\r\nTrovi subito il biglietto valido nella sezione Trasporti del tuo TIM Wallet\r\nCOME FUNZIONA\r\nApri TIM Wallet e accedi alla Vetrina Servizi. \r\nSe la città che ti interessa é abilitata, clicca e acquista il biglietto. \r\nPaghi direttamente con il tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento). \r\n\r\nAttenzione: ti verranno addebitati il costo del biglietto piu? il costo dell’SMS di richiesta (19,90 €cent IVA inclusa). \r\n\r\nRicevi un SMS, il biglietto è valido da quel momento senza necessità di ulteriori convalide. \r\nPuoi trovare il biglietto elettronico direttamente nel TIM Wallet nel tuo portafogli, puoi rinnovarlo quando scade. In caso di controllo, mostra l’SMS di conferma che hai ricevuto.\r\n\r\nA Milano puoi utilizzare anche la modalità QRCode. Dopo aver acquistato il biglietto della metropolitana e ricevuto l’SMS, ricevi anche il QRCode che permette di aprire i tornelli della metropolitana. E’ sufficiente visualizzare il QRCode e accostare il display dello smartphone all’apposito lettore.', 4, 'Il servizio sarà attivo non appena cliccherai su ''attiva servizio''. La tua sim sarà così abilitata all''acquisto di biglietti in maniera semplice, veloce e sicura.', 'Q: Quanto costa il servizio?\r\nR: L''utilizzo di TIM Wallet comporta il consumo di traffico Internet, per il quale si applica il tuo piano tariffario. Ti verranno inoltre addebitati il costo del biglietto più il costo dell’SMS di richiesta (19,90 &euro;cent IVA inclusa).\r\n								Il costo totale verrà scalato dal tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento).');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categoriadispositivo`
--
ALTER TABLE `categoriadispositivo`
  ADD PRIMARY KEY (`idcategoriadispositivo`);

--
-- Indici per le tabelle `categoriaservizioassistenza`
--
ALTER TABLE `categoriaservizioassistenza`
  ADD PRIMARY KEY (`idservizio`);

--
-- Indici per le tabelle `categoriasmartlifeservice`
--
ALTER TABLE `categoriasmartlifeservice`
  ADD PRIMARY KEY (`idsmartlife`);

--
-- Indici per le tabelle `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dispositivo_servizioassistenza`
--
ALTER TABLE `dispositivo_servizioassistenza`
  ADD PRIMARY KEY (`id_dispositivo_dsa`,`id_servizioassistenza_dsa`);

--
-- Indici per le tabelle `dispositivo_smartlifeservice`
--
ALTER TABLE `dispositivo_smartlifeservice`
  ADD PRIMARY KEY (`id_dispositivo_dss`,`id_smartlifeservice_dss`),
  ADD KEY `id_smartlifeservice` (`id_smartlifeservice_dss`);

--
-- Indici per le tabelle `servizioassistenza`
--
ALTER TABLE `servizioassistenza`
  ADD PRIMARY KEY (`idservizioassistenza`);

--
-- Indici per le tabelle `smartlifeservice`
--
ALTER TABLE `smartlifeservice`
  ADD PRIMARY KEY (`idsmartlifeservices`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categoriadispositivo`
--
ALTER TABLE `categoriadispositivo`
  MODIFY `idcategoriadispositivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `categoriaservizioassistenza`
--
ALTER TABLE `categoriaservizioassistenza`
  MODIFY `idservizio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `categoriasmartlifeservice`
--
ALTER TABLE `categoriasmartlifeservice`
  MODIFY `idsmartlife` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `dispositivo`
--
ALTER TABLE `dispositivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT per la tabella `servizioassistenza`
--
ALTER TABLE `servizioassistenza`
  MODIFY `idservizioassistenza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `smartlifeservice`
--
ALTER TABLE `smartlifeservice`
  MODIFY `idsmartlifeservices` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;