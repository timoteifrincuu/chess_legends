import '../models/player_model.dart';

class MockData {
  static List<ChessPlayer> players = [
    // --- ERA MODERNĂ ---
    
    ChessPlayer(
      id: 'm1',
      name: 'Magnus Carlsen',
      imagePath: 'assets/images/carlsen.png',
      country: 'Norvegia',
      era: PlayerEra.modern,
      age: 33,
      maxElo: 2882,
      description:
          'Sven Magnus Øen Carlsen, născut pe 30 noiembrie 1990 în Tønsberg, Norvegia, este considerat de majoritatea experților și istoricilor șahului drept cel mai complet jucător din toate timpurile. A început să atragă atenția internațională încă de la o vârstă fragedă, devenind Mare Maestru la doar 13 ani, 4 luni și 27 de zile, la acea vreme al doilea cel mai tânăr din istorie.\n\n'
          'Ascensiunea sa a fost meteorică. Spre deosebire de alți copii minune care se bazau exclusiv pe calcul tactic, Carlsen a demonstrat o înțelegere pozițională profundă, fiind adesea comparat cu Anatoly Karpov, dar cu o tenacitate superioară. În 2013, l-a învins pe Viswanathan Anand pentru a deveni Campion Mondial, titlu pe care l-a apărat cu succes de patru ori: de două ori împotriva lui Anand, o dată împotriva lui Sergey Karjakin și o dată împotriva lui Fabiano Caruana.\n\n'
          'Stilul lui Carlsen este universal. El nu caută neapărat cele mai spectaculoase mutări de la început, ci preferă să "stoarcă" apă din piatră seacă. Este renumit pentru capacitatea sa inumană de a juca poziții egale sau cu un avantaj microscopic timp de ore întregi, fără a comite nicio inexactitate, până când adversarul, epuizat psihic, cedează. Această strategie i-a adus cel mai mare rating ELO din istoria șahului, 2882, atins în 2014.\n\n'
          'În 2023, Carlsen a luat decizia șocantă de a nu-și mai apăra titlul mondial la șah clasic, invocând lipsa de motivație, deși continuă să fie numărul 1 mondial detașat și să domine turneele de șah rapid și blitz. Impactul său asupra șahului este imens, transformând jocul într-un sport comercial veritabil.',
    ),
    ChessPlayer(
      id: 'm2',
      name: 'Hikaru Nakamura',
      imagePath: 'assets/images/nakamura.jpg',
      country: 'SUA',
      era: PlayerEra.modern,
      age: 36,
      maxElo: 2816,
      description:
          'Hikaru Nakamura s-a născut în Japonia dar s-a mutat în Statele Unite la vârsta de doi ani, devenind unul dintre cei mai mari jucători americani de la Bobby Fischer încoace. A doborât recordul lui Fischer devenind cel mai tânăr Mare Maestru american la vârsta de 15 ani. Nakamura a fost întotdeauna un jucător cu un stil agresiv, neconvențional, care nu se teme să scoată adversarul din teorie încă de la primele mutări.\n\n'
          'Ceea ce îl face unic pe Nakamura în istoria șahului este adaptabilitatea sa incredibilă la formatele de timp rapid. Este considerat, alături de Magnus Carlsen, cel mai bun jucător de Blitz și Bullet din istorie. Viteza sa de gândire și reflexele sale sunt legendare; poate juca partide de 1 minut la un nivel la care alți mari maeștri nu ajung nici în 10 minute.\n\n'
          'În ultimii ani, Nakamura a revoluționat modul în care șahul este perceput de publicul larg, devenind cel mai mare streamer de șah din lume. Prin transmisiunile sale pe Twitch și YouTube, a adus șahul în atenția a milioane de tineri. Mulți critici credeau că cariera sa de streamer îi va afecta performanța la tablă, dar Hikaru le-a dovedit contrariul, având în 2023 și 2024 unele dintre cele mai bune rezultate din cariera sa la șah clasic, calificându-se din nou în Turneul Candidaților și menținându-se în top 3 mondial.',
    ),
    ChessPlayer(
      id: 'm3',
      name: 'Fabiano Caruana',
      imagePath: 'assets/images/caruana.jpg',
      country: 'SUA',
      era: PlayerEra.modern,
      age: 31,
      maxElo: 2844,
      description:
          'Fabiano Luigi Caruana este un model de profesionalism și dedicare totală în șah. Născut în Miami, a crescut jucând șah în New York înainte de a se muta în Europa pentru a-și perfecționa jocul. Caruana este arhetipul jucătorului modern: o pregătire a deschiderilor asistată de calculator la un nivel de profunzime înfricoșător, combinată cu o putere de calcul concret (tactic) extrem de precisă.\n\n'
          'Momentul său de glorie absolută a fost turneul Sinquefield Cup din 2014, unde a realizat o performanță istorică de 7 victorii consecutive împotriva celor mai buni jucători din lume, terminând cu un scor de 8.5/10 și un rating de performanță de peste 3100, ceva nemaiîntâlnit.\n\n'
          'În 2018, Caruana l-a provocat pe Magnus Carlsen pentru titlul mondial. Meciul a fost unul dintre cele mai echilibrate din istorie, toate cele 12 partide de șah clasic terminându-se la egalitate, Caruana demonstrând că este singurul jucător capabil să îi facă față norvegianului de la egal la egal pe terenul logicii pure. Deși a pierdut la tie-break-ul de șah rapid, Fabiano rămâne o forță dominantă, fiind constant numărul 2 sau 3 mondial și câștigând numeroase super-turnee precum Tata Steel sau campionatul SUA.',
    ),
    ChessPlayer(
      id: 'm4',
      name: 'Ding Liren',
      imagePath: 'assets/images/ding.jpg',
      country: 'China',
      era: PlayerEra.modern,
      age: 31,
      maxElo: 2816,
      description:
          'Ding Liren a scris istorie devenind primul Campion Mondial la șah din China. Este un jucător care se distinge printr-o modestie rară și un calm imperturbabil la masa de joc. Stilul său este unul clasic pozițional, dar spre deosebire de alți jucători solizi, Ding nu evită riscurile calculate. Este capabil să apere poziții extrem de dificile, o calitate care i-a adus o serie record de 100 de partide consecutive fără înfrângere la nivel de elită între 2017 și 2018.\n\n'
          'Drumul său spre titlul mondial a fost unul plin de neprevăzut. S-a calificat în Turneul Candidaților doar datorită descalificării unui alt jucător, iar apoi a ajuns să joace meciul pentru titlu după ce Magnus Carlsen a abdicat. În meciul dramatic împotriva lui Ian Nepomniachtchi din 2023, Ding a revenit de mai multe ori după ce a fost condus, câștigând în ultima partidă de șah rapid într-un moment de tensiune maximă.\n\n'
          'Deși după câștigarea titlului a avut o perioadă de pauză și rezultate fluctuante, Ding Liren rămâne un simbol al perseverenței. El calculează variantele cu o precizie chirurgicală și preferă jocul strategic complex, unde înțelegerea pe termen lung primează în fața trucurilor tactice ieftine.',
    ),
    ChessPlayer(
      id: 'm5',
      name: 'Alireza Firouzja',
      imagePath: 'assets/images/firouzja.jpg',
      country: 'Franța',
      era: PlayerEra.modern,
      age: 20,
      maxElo: 2804,
      description:
          'Alireza Firouzja este considerat "Alesul" noii generații. Născut în Iran, a avut o ascensiune fulminantă, devenind campion al Iranului la doar 12 ani. Din cauza restricțiilor politice din țara natală, a ales să reprezinte Franța, mutare care i-a permis să concureze liber la cel mai înalt nivel. La vârsta de 18 ani, a doborât recordul lui Magnus Carlsen devenind cel mai tânăr jucător care a depășit pragul ratingului de 2800 ELO.\n\n'
          'Stilul lui Firouzja este extrem de dinamic și agresiv. El caută mereu complicații tactice, chiar și cu riscul de a pierde. Această abordare curajoasă pune o presiune imensă pe adversari, care adesea cedează sub avalanșa de calcule necesare pentru a se apăra. Magnus Carlsen a declarat public că Firouzja este singurul jucător din noua generație care îl motivează să joace.\n\n'
          'Deși a avut momente controversate și perioade în care a părut mai interesat de design vestimentar decât de șah, talentul său brut este incontestabil. Când este în formă, Alireza joacă un șah "de pe altă planetă", combinând creativitatea romantică a vechilor maeștri cu precizia computerelor moderne.',
    ),
    ChessPlayer(
      id: 'm6',
      name: 'Ian Nepomniachtchi',
      imagePath: 'assets/images/nepo.jpg',
      country: 'Rusia',
      era: PlayerEra.modern,
      age: 33,
      maxElo: 2795,
      description:
          'Ian Nepomniachtchi, cunoscut în lumea șahului drept "Nepo", este unul dintre cele mai mari talente naturale produse vreodată de școala rusă de șah. A învățat să joace la 4 ani și i-a învins pe Carlsen și Caruana în competițiile de juniori. Nepo este un jucător de dispoziție: când este într-o zi bună, joacă incredibil de rapid și pune probleme insolubile adversarilor; când moralul îi este afectat, poate claca spectaculos.\n\n'
          'Este singurul jucător din istoria recentă care a câștigat Turneul Candidaților de două ori consecutiv, o performanță rară ce denotă o mare putere de luptă. Stilul său este agresiv, direct, bazat pe o viziune tactică rapidă. Nu îi place să piardă timpul și adesea își surprinde adversarii prin viteza cu care mută în poziții critice.\n\n'
          'Deși a pierdut două meciuri pentru titlul mondial (unul cu Carlsen și unul dramatic cu Ding Liren), Nepomniachtchi rămâne o figură centrală a elitei. Este, de asemenea, un fost jucător semi-profesionist de Dota 2, ceea ce explică poate afinitatea sa pentru ecrane și calcule complexe în timp real.',
    ),
    ChessPlayer(
      id: 'm7',
      name: 'Anish Giri',
      imagePath: 'assets/images/giri.jpg',
      country: 'Olanda',
      era: PlayerEra.modern,
      age: 29,
      maxElo: 2802,
      description:
          'Anish Giri este un mare maestru olandez născut în Rusia, cu origini nepaleze. Este recunoscut drept unul dintre cei mai solizi și greu de învins jucători din lume. Timp de mulți ani, reputația sa a fost aceea a unui jucător care face multe remize, dar această percepție ascunde faptul că Giri joacă un șah de o corectitudine teoretică impecabilă. Este o enciclopedie vie a deschiderilor.\n\n'
          'Giri a fost un copil minune care a îndeplinit normele de Mare Maestru la 14 ani. Stilul său s-a maturizat de-a lungul anilor, devenind mai incisiv. A câștigat turnee majore precum Tata Steel Masters, demonstrând că poate învinge pe oricine. Rivalitatea sa prietenească, desfășurată mai mult pe Twitter decât pe tablă, cu Magnus Carlsen, a adus multă popularitate șahului.\n\n'
          'În afara tablei, Giri este extrem de carismatic, poliglot (vorbește fluent rusa, engleza, olandeza, japoneza și altele) și un comentator excelent. El reprezintă tipul intelectualului modern în șah, care îmbină pregătirea riguroasă cu o prezență socială activă.',
    ),
    ChessPlayer(
      id: 'm8',
      name: 'Gukesh D',
      imagePath: 'assets/images/gukesh.jpg',
      country: 'India',
      era: PlayerEra.modern,
      age: 17,
      maxElo: 2794,
      description:
          'Dommaraju Gukesh este senzația momentului în șahul mondial. La vârsta de 17 ani, a câștigat Turneul Candidaților 2024, devenind cel mai tânăr pretendent la titlul mondial din istorie, depășind recorduri vechi de decenii. Ascensiunea sa a fost liniștită dar necruțătoare. Spre deosebire de alți tineri care joacă "foc și pară", Gukesh impresionează printr-o maturitate înfricoșătoare.\n\n'
          'Stilul său este extrem de calculat, rece și precis. Nu se teme de poziții complexe, dar le abordează cu o logică de fier, refuzând să intre în complicații inutile dacă poziția nu o cere. A reușit să îl depășească pe mentorul său, legendarul Viswanathan Anand, devenind numărul 1 în India, o schimbare de ștafetă istorică.\n\n'
          'Gukesh este cunoscut pentru etica sa de muncă incredibilă și pentru faptul că își păstrează cumpătul în momente de presiune maximă. Performanța sa de la Olimpiada de Șah, unde a avut o serie lungă de victorii consecutive, a arătat lumii că este pregătit să domine șahul pentru anii ce vor urma.',
    ),
    ChessPlayer(
      id: 'm9',
      name: 'Praggnanandhaa R',
      imagePath: 'assets/images/pragg.jpg',
      country: 'India',
      era: PlayerEra.modern,
      age: 18,
      maxElo: 2757,
      description:
          'Rameshbabu Praggnanandhaa, alintat "Pragg", este unul dintre cei mai iubiți șahiști din lume. Sora sa este și ea o mare maestră, făcând din familia lor una unică în lume. Pragg a devenit celebru la nivel global în timpul turneelor online din pandemie, când l-a învins pe Magnus Carlsen de mai multe ori la șah rapid, demonstrând că noua generație nu are niciun complex de inferioritate.\n\n'
          'Jocul lui Pragg este caracterizat prin creativitate și o reziliență defensivă extraordinară. Este capabil să găsească resurse de salvare în poziții care par pierdute. Parcursul său până în finala Cupei Mondiale, unde s-a calificat în Turneul Candidaților, a fost urmărit de milioane de indieni, transformându-l într-un erou național.\n\n'
          'Deși încă foarte tânăr, Pragg dă dovadă de o înțelegere universală a șahului. Este modest, muncește enorm și are sprijinul mentorului său Vishy Anand. Viitorul său pare strălucit, fiind unul dintre pilonii principali ai dominației indiene în șahul secolului 21.',
    ),
    ChessPlayer(
      id: 'm10',
      name: 'Viswanathan Anand',
      imagePath: 'assets/images/anand.jpeg',
      country: 'India',
      era: PlayerEra.modern,
      age: 54,
      maxElo: 2817,
      description:
          'Viswanathan Anand este o legendă vie. El nu este doar un fost Campion Mondial, ci omul care a pus India pe harta șahului. În tinerețe, era poreclit "Copilul Fulger" datorită vitezei incredibile cu care juca; putea termina o partidă clasică folosind doar câteva minute de pe ceas. A deținut titlul mondial între 2007 și 2013, apărându-l împotriva unor giganți precum Kramnik, Topalov și Gelfand.\n\n'
          'Anand este unul dintre puținii jucători care au excelat în două ere distincte: era pre-computerelor și era dominată de motoarele de șah. Stilul său este fluid, intuitiv și extrem de dinamic. Are un simț tactic natural care îi permite să vadă combinații instantaneu.\n\n'
          'Chiar și la peste 50 de ani, Anand continuă să joace la cel mai înalt nivel, fiind o prezență constantă în top 10 sau top 15 mondial, concurând cu succes împotriva jucătorilor care au vârsta copiilor săi. Astăzi, el are și rolul de mentor, ghidând "Generația de Aur" a șahului indian (Gukesh, Pragg, Erigaisi) către vârful ierarhiei mondiale.',
    ),

    // --- ERA CLASICĂ ---

    ChessPlayer(
      id: 'c1',
      name: 'Garry Kasparov',
      imagePath: 'assets/images/kasparov.jpg',
      country: 'Rusia',
      era: PlayerEra.classic,
      age: 60,
      maxElo: 2851,
      description:
          'Garry Kimovich Kasparov este, pentru mulți, cel mai mare șahist din istorie. A devenit cel mai tânăr Campion Mondial din istorie în 1985, la 22 de ani, învingându-l pe Anatoly Karpov, și a deținut titlul timp de 15 ani. Dominanța sa a fost absolută: a fost numărul 1 mondial timp de 255 de luni (peste 20 de ani), un record greu de imaginat astăzi.\n\n'
          'Stilul lui Kasparov era o forță a naturii. Combina o pregătire a deschiderilor revoluționară (era faimos pentru noutățile teoretice aduse în Siciliana Najdorf sau Indiana Regelui) cu un stil de atac brutal și calcul profund. Prezența sa la tablă era intimidantă; mulți adversari pierdeau psihologic înainte de a muta prima piesă.\n\n'
          'Kasparov a fost și protagonistul celebrului meci împotriva supercomputerului Deep Blue de la IBM, un moment de cotitură în relația om-mașină. După retragerea din șah în 2005, a devenit un activist politic proeminent și autor, dar moștenirea sa șahistă rămâne etalonul după care sunt judecați toți campionii.',
    ),
    ChessPlayer(
      id: 'c2',
      name: 'Bobby Fischer',
      imagePath: 'assets/images/fischer.jpg',
      country: 'SUA',
      era: PlayerEra.classic,
      age: 64, // Decedat
      maxElo: 2785,
      description:
          'Robert James "Bobby" Fischer este probabil cel mai faimos șahist care a trăit vreodată. Un geniu singuratic, paranoic și sclipitor, Fischer a reușit imposibilul: a învins de unul singur, fără echipă de secunzi, întreaga mașinărie de șah sovietică ce domina lumea de decenii. Apogeul carierei sale a fost Meciul Secolului din 1972, la Reykjavik, împotriva lui Boris Spassky, un eveniment urmărit de întreaga planetă în contextul Războiului Rece.\n\n'
          'În drumul spre titlu, Fischer a avut o serie de 20 de victorii consecutive împotriva marilor maeștri de elită, o performanță statistică ce nu a mai fost egalată. Stilul său era de o claritate cristalină; Fischer nu căuta complicații inutile, ci juca mutarea cea mai logică, cea mai activă și cea mai precisă. Avea o voință de a câștiga maniacală, luptând până la ultimul pion în poziții de remiză.\n\n'
          'După ce a devenit campion, s-a retras misterios, refuzând să își apere titlul în 1975. Viața sa ulterioară a fost marcată de controverse, dar contribuția sa la șah este inestimabilă, inclusiv prin inventarea ceasului cu increment ("Fischer delay") care este standard astăzi.',
    ),
    ChessPlayer(
      id: 'c3',
      name: 'Anatoly Karpov',
      imagePath: 'assets/images/karpov.jpg',
      country: 'Rusia',
      era: PlayerEra.classic,
      age: 72,
      maxElo: 2780,
      description:
          'Anatoly Karpov a fost campion mondial timp de 10 ani (1975-1985) și apoi campion FIDE până în 1999. Este considerat unul dintre cei mai mari jucători poziționali din istorie. Stilul său a fost supranumit "Boa Constrictor". Karpov nu te ataca direct; el își îmbunătățea poziția milimetric, restricționând opțiunile adversarului până când acesta nu mai avea nicio mutare bună și se sufoca strategic.\n\n'
          'Karpov era un maestru al profilaxiei – arta de a preveni planurile adversarului înainte ca acestea să înceapă. Duelurile sale cu Kasparov (cinci meciuri pentru titlul mondial!) sunt legendare și au definit șahul modern. Deși Kasparov era mai dinamic, Karpov era un zid impenetrabil.\n\n'
          'Palmaresul său este uluitor: a câștigat peste 160 de turnee internaționale de elită, un record care probabil nu va fi niciodată doborât. Chiar și în era modernă, studiul partidelor lui Karpov este obligatoriu pentru orice jucător care vrea să înțeleagă șahul strategic.',
    ),
    ChessPlayer(
      id: 'c4',
      name: 'Mikhail Tal',
      imagePath: 'assets/images/tal.jpg',
      country: 'Letonia',
      era: PlayerEra.classic,
      age: 55, // Decedat
      maxElo: 2705, // Rating istoric ajustat
      description:
          'Mikhail Tal, "Magicianul din Riga", este cel mai iubit jucător de atac din istorie. A devenit Campion Mondial în 1960, învingându-l pe rigidul și științificul Botvinnik. Tal juca șah ca nimeni altul: intuitiv, artistic și incredibil de riscant. El sacrifica piese nu pentru că calculase victoria până la capăt, ci pentru a crea haos pe tablă, trăgându-și adversarii în poziții iraționale unde doar el se simțea confortabil.\n\n'
          'Privirea sa hipnotică și stilul său de joc fascinau publicul. Se spunea că Tal vedea mutări pe care nimeni altcineva nu le putea imagina. Deși a avut probleme grave de sănătate toată viața (ceea ce i-a scurtat domnia ca și campion), a rămas un jucător de top decenii la rând.\n\n'
          'Partidele lui Tal sunt considerate opere de artă. El a demonstrat că șahul nu este doar logică și știință, ci și psihologie și creativitate pură. A deținut recordul pentru cea mai lungă serie de partide fără înfrângere (95) până când a fost doborât de Ding Liren și apoi de Carlsen.',
    ),
    ChessPlayer(
      id: 'c5',
      name: 'Jose Raul Capablanca',
      imagePath: 'assets/images/capablanca.jpg',
      country: 'Cuba',
      era: PlayerEra.classic,
      age: 53, // Decedat
      maxElo: 2725, // Estimare istorica
      description:
          'Jose Raul Capablanca a fost geniul natural suprem al șahului. Născut în Cuba, a învățat șahul la 4 ani doar privind partidele tatălui său. A fost Campion Mondial între 1921 și 1927. Capablanca juca incredibil de repede și făcea foarte puține greșeli; a fost poreclit "Mașinăria umană de șah".\n\n'
          'Stilul său era simplu, elegant și letal. Se spunea că el nu calculează variante, ci pur și simplu "știe" unde trebuie să meargă piesele. A fost invincibil timp de 8 ani (1916-1924), perioadă în care nu a pierdut nicio partidă oficială, o performanță uluitoare. Era expertul suprem în finalurile de partidă.\n\n'
          'Capablanca nu studia șahul intens, bazându-se pe talentul său pur. Pierderea titlului în fața lui Alekhine în 1927 a fost un șoc, fiind rezultatul subestimării adversarului și lipsei de pregătire. Cu toate acestea, el rămâne etalonul pentru talentul nativ în șah.',
    ),
    ChessPlayer(
      id: 'c6',
      name: 'Alexander Alekhine',
      imagePath: 'assets/images/alekhine.jpg',
      country: 'Franța', // Nascut Rusia
      era: PlayerEra.classic,
      age: 53, // Decedat
      maxElo: 2690, // Estimare
      description:
          'Alexander Alekhine a fost unul dintre cei mai complecși și muncitori campioni mondiali. Născut în Rusia aristocrată, a emigrat în Franța. El l-a detronat pe "invincibilul" Capablanca în 1927 printr-o pregătire fanatică și o voință de fier. Alekhine este singurul Campion Mondial care a murit deținând titlul (în 1946).\n\n'
          'Stilul lui Alekhine era caracterizat prin combinații profunde, agresivitate și o imaginație debordantă. Îi plăcea să creeze complicații tactice din nimic și să atace regele advers cu orice preț. Este autorul unora dintre cele mai frumoase partide din istorie (ex: partida împotriva lui Reti la Baden-Baden).\n\n'
          'Alekhine a scris numeroase cărți de șah, iar analizele sale sunt studiate și astăzi. A dus pregătirea deschiderilor la un nou nivel și a arătat că munca asiduă și analiza profundă pot învinge talentul pur (referire la rivalitatea cu Capablanca).',
    ),
    ChessPlayer(
      id: 'c7',
      name: 'Paul Morphy',
      imagePath: 'assets/images/morphy.jpg',
      country: 'SUA',
      era: PlayerEra.classic,
      age: 47, // Decedat
      maxElo: 2600, // Estimare relativa la era sa
      description:
          'Paul Morphy este adesea numit "Mândria și Tristețea Șahului". Deși cariera sa activă a durat doar doi ani (1857-1859), impactul său a fost colosal. Venit din New Orleans, a călătorit în Europa și i-a zdrobit pe cei mai buni maeștri ai vremii, inclusiv pe Adolf Anderssen, într-o manieră care părea magie.\n\n'
          'Morphy a fost primul care a înțeles cu adevărat importanța dezvoltării rapide a pieselor și a controlului centrului. În timp ce contemporanii săi lansau atacuri premature, Morphy își pregătea piesele armonios și apoi livra combinații devastatoare. Partida sa de la Operă este cea mai faimoasă partidă de șah din istorie.\n\n'
          'S-a retras din șah la 22 de ani pentru a practica dreptul, dar nu a profesat niciodată cu succes și a suferit de probleme mentale. Deși neoficial (titlul mondial nu exista atunci), este considerat de toți marii campioni, inclusiv Fischer și Kasparov, ca fiind cel mai mare talent care a atins vreodată o piesă de șah.',
    ),
    ChessPlayer(
      id: 'c8',
      name: 'Emanuel Lasker',
      imagePath: 'assets/images/lasker.jpg',
      country: 'Germania',
      era: PlayerEra.classic,
      age: 72, // Decedat
      maxElo: 2720, // Estimare
      description:
          'Emanuel Lasker a fost un gigant intelectual. Matematician, filozof și prieten cu Albert Einstein, Lasker a deținut titlul de Campion Mondial timp de 27 de ani (1894-1921), un record care nu va fi egalat niciodată. El a fost primul care a înțeles aspectul psihologic al șahului.\n\n'
          'Lasker nu căuta întotdeauna mutarea "cea mai bună" din punct de vedere obiectiv, ci mutarea care îl punea pe adversar în cea mai incomodă situație. Își studia rivalii și le exploata slăbiciunile de caracter. Putea juca defensiv, agresiv sau plictisitor, în funcție de ce detesta adversarul său cel mai mult.\n\n'
          'Longevitatea sa a fost incredibilă. Chiar și la vârsta de 60 de ani, concura cu succes împotriva noii generații de hipermoderniști. A scris manuale de șah și cărți de filozofie, fiind un adevărat om al Renașterii în secolul 20.',
    ),
    ChessPlayer(
      id: 'c9',
      name: 'Mikhail Botvinnik',
      imagePath: 'assets/images/botvinnik.jpg',
      country: 'Rusia',
      era: PlayerEra.classic,
      age: 83, // Decedat
      maxElo: 2730, // Estimare
      description:
          'Mikhail Botvinnik este "Patriarhul" șahului sovietic. Inginer de profesie, el a abordat șahul ca pe o știință exactă. A fost primul care a introdus o metodologie riguroasă de antrenament, incluzând pregătire fizică, regim strict și analiză sistematică a propriilor partide. A deținut titlul mondial (cu întreruperi) între 1948 și 1963.\n\n'
          'Botvinnik era un jucător universal, extrem de puternic strategic și tenace. Când pierdea un titlu, studia jocul adversarului, își adapta stilul și câștiga titlul înapoi în meciul revanșă (a făcut asta cu Smyslov și cu Tal).\n\n'
          'Moștenirea sa cea mai mare este însă Școala de Șah Botvinnik. El i-a antrenat personal pe cei trei mari campioni care l-au urmat: Anatoly Karpov, Garry Kasparov și Vladimir Kramnik. Practic, dominanța rusă în șah din secolul 20 i se datorează lui. Tot el a fost un pionier în dezvoltarea algoritmilor pentru șahul pe calculator.',
    ),
    ChessPlayer(
      id: 'c10',
      name: 'Boris Spassky',
      imagePath: 'assets/images/spassky.jpg',
      country: 'Rusia',
      era: PlayerEra.classic,
      age: 87,
      maxElo: 2715, // Estimare
      description:
          'Boris Spassky, al 10-lea Campion Mondial, a fost un gentleman desăvârșit și un jucător cu un talent natural imens. Stilul său era "universal": nu avea puncte slabe. Putea conduce atacuri sacrificiale spectaculoase (ca în tinerețe) sau putea naviga finaluri tehnice cu precizie. Avea un simț al inițiativei extraordinar.\n\n'
          'Spassky este cel mai bine cunoscut pentru rolul său în meciul din 1972 împotriva lui Bobby Fischer. Deși a pierdut titlul și a fost presat de autoritățile sovietice să câștige cu orice preț, Spassky s-a comportat cu o sportivitate exemplară, aplaudând chiar o victorie a lui Fischer.\n\n'
          'Mai târziu, s-a mutat în Franța și a continuat să joace la nivel înalt mulți ani. Este respectat nu doar pentru șahul său, ci și pentru integritatea și caracterul său. A fost puntea de legătură între vechea gardă sovietică și șahul modern.',
    ),
  ];
}