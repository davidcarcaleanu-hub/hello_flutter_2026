# Cum urmărești codul de la curs

La curs scriu codul pe laptopul meu, pe care îl vezi pe ecrane, și îl explic pe măsură ce îl scriu. Fac des commit (o salvare a modificărilor în istoricul Git) și push (trimiterea acestor salvări pe GitHub), așa că acest repository de pe GitHub ține pasul cu ce lucrăm la curs. Acest document arată cum aduci codul pe calculatorul tău și cum primești actualizările, fără să pierzi ce ai scris tu.

## Cuprins

- [Pe scurt](#pe-scurt)
- [Cele trei variante](#cele-trei-variante)
- [Regula de aur: folderele mele, copiile tale](#regula-de-aur-folderele-mele-copiile-tale)
- [Pregătirea, o singură dată](#pregătirea-o-singură-dată)
- [Fork, pas cu pas](#fork-pas-cu-pas)
- [Clone, pas cu pas](#clone-pas-cu-pas)
- [Download ZIP](#download-zip)
- [Ce faci dacă ai scris în folderele mele](#ce-faci-dacă-ai-scris-în-folderele-mele)
- [Dacă te-ai încurcat de tot](#dacă-te-ai-încurcat-de-tot)
- [Lecția pas cu pas, din istoricul de commit-uri](#lecția-pas-cu-pas-din-istoricul-de-commit-uri)

## Pe scurt

- Fă un **fork** al repository-ului și clonează fork-ul tău pe calculator.
- Ca să primești codul nou, apasă **Sync fork** pe GitHub, apoi **Sync Changes** în VS Code.
- Nu modifica aplicațiile mele. Ca să lucrezi la o aplicație, **copiază-i folderul** și lucrează în copie.

## Cele trei variante

| Varianta | Ce primești | Unde rămân modificările tale | Cum primești actualizările |
| --- | --- | --- | --- |
| **Fork** (recomandat) | O copie a repository-ului în contul tău de GitHub, plus o copie pe calculator | Pe calculator și, după commit și Sync Changes, în fork-ul tău de pe GitHub | Sync fork pe GitHub, apoi Sync Changes în VS Code |
| **Clone** | O copie pe calculator, legată direct de repository-ul meu | Doar pe calculatorul tău | Sync Changes în VS Code |
| **Download ZIP** | O copie pe calculator, fără nicio legătură cu GitHub | Doar pe calculatorul tău | Descarci din nou tot ZIP-ul |

- **Fork** este varianta recomandată. Ce scrii tu ajunge pe GitHub, după commit și Sync Changes, deci nu se pierde dacă se strică laptopul, poți continua lucrul pe alt calculator și mi-l poți arăta. Fork-ul unui repository public este și el public.
- **Clone** este o variantă bună dacă vrei doar să rulezi și să citești codul meu. Nu poți face push, pentru că nu ai drept de scriere în repository-ul meu, așa că tot ce scrii rămâne doar pe calculatorul tău.
- **Download ZIP** este varianta cea mai simplă, dar nu are nicio legătură cu GitHub. Pentru fiecare actualizare descarci din nou tot proiectul.

## Regula de aur: folderele mele, copiile tale

Folderele aplicațiilor, `hello_flutter_1`, `hello_flutter_2` și celelalte, sunt ale mele: eu le actualizez. Dacă scrii și tu în ele, actualizările mele și modificările tale ajung în aceleași fișiere, iar Git nu mai știe pe care să le păstreze. Asta se numește **conflict** și este greu de rezolvat la început.

De aceea:

- **Ca să lucrezi la o aplicație**, copiază-i folderul și lucrează în copie. De exemplu, copiază `hello_flutter_3` în `exercitii_hello_flutter_3`, în același folder `hello_flutter_2026`. În VS Code: clic dreapta pe folder, **Copy**, apoi clic dreapta pe spațiul gol din Explorer, **Paste**, apoi redenumește copia (**F2**).
- **Proiectele tale noi**, create cu `flutter create`, pune-le într-un folder al tău, de exemplu `proiectele_mele/`, tot în `hello_flutter_2026`.
- **Folderele mele** doar le citești și le rulezi.

Așa, actualizările mele nu ating niciodată fișierele tale, iar sincronizarea funcționează mereu fără probleme.

Dacă folosești clone, nu fork, ține copiile și proiectele tale **în afara** folderului `hello_flutter_2026`. În clone nu le poți salva într-un commit, iar așa nu le poate șterge din greșeală nicio comandă Git.

## Pregătirea, o singură dată

Înainte de primul commit, spune-i lui Git cum te cheamă și cum să combine codul tău cu al meu. În VS Code, deschide un terminal (meniul **Terminal**, apoi **New Terminal**) și rulează, pe rând:

```
git config --global user.name "Prenume Nume"
git config --global user.email "adresa-ta@exemplu.com"
git config --global pull.rebase false
```

- Primele două rânduri îți pun numele și adresa de email pe fiecare commit. Folosește adresa contului tău de GitHub.
- Al treilea rând îi spune lui Git ce să facă atunci când tu ai commit-uri noi și eu am commit-uri noi: să le combine (merge). Fără el, Sync Changes se poate opri cu un mesaj despre ramuri divergente (`divergent branches`).

Prima dată când trimiți ceva pe GitHub, VS Code îți cere să te autentifici cu contul de GitHub, în browser. Acceptă.

**Ce folder deschizi în VS Code.** Ca să rulezi o aplicație, deschizi folderul ei, de exemplu `hello_flutter_3`. Repository-ul Git este însă folderul de deasupra, `hello_flutter_2026`. Când deschizi folderul unei aplicații, VS Code te întreabă dacă să deschidă repository-ul găsit în folderul părinte (`A git repository was found in the parent folders...`). Răspunde **Yes** sau **Always**, ca panoul **Source Control** să funcționeze.

## Fork, pas cu pas

### Prima dată: fork și clone

1. Intră pe [github.com/eduhoratiu/hello_flutter_2026](https://github.com/eduhoratiu/hello_flutter_2026), după ce te-ai autentificat cu contul tău.
2. Apasă **Fork**, în dreapta sus, apoi **Create fork**. GitHub creează repository-ul `numele-tau/hello_flutter_2026`.
3. Pe pagina fork-ului tău, apasă butonul verde **Code** și copiază adresa (se termină cu `.git`).
4. În VS Code, deschide panoul **Source Control** (**Ctrl+Shift+G**) și apasă **Clone Repository**. Lipește adresa, apasă Enter și alege folderul în care se descarcă proiectul.

Din terminal, pasul 4 este:

```
git clone https://github.com/numele-tau/hello_flutter_2026.git
```

Clonează fork-ul tău, nu repository-ul meu: doar în fork-ul tău poți face push.

### Când vrei codul nou

1. Pe GitHub, deschide fork-ul tău. Dacă am adăugat cod nou, deasupra listei de fișiere scrie că fork-ul este în urmă (`commits behind`). Apasă **Sync fork**, apoi **Update branch**.
2. În VS Code, în panoul **Source Control**, apasă **Sync Changes**. Dacă butonul nu apare, apasă săgețile circulare din bara de jos, de lângă numele ramurii (`main`), sau alege **Pull** din meniul **...** al panoului. Codul nou ajunge pe calculatorul tău.

Din terminal, pasul 2 este `git pull`, rulat în folderul `hello_flutter_2026`. Dacă se deschide un editor cu un mesaj de tipul `Merge branch 'main'`, salvează și închide fișierul (în editorul vim, scrie `:wq` și apasă Enter).

Poți face asta și în timpul cursului, dacă ai rămas în urmă și nu ai scris în folderele mele: după câteva secunde ai exact codul pe care îl vezi pe ecrane.

### Când vrei să-ți salvezi munca pe GitHub

1. În panoul **Source Control**, la **Changes**, vezi fișierele modificate. Verifică întâi că apar doar fișiere din copiile și proiectele tale. Dacă apar și fișiere din folderele mele, vezi [ce faci dacă ai scris în folderele mele](#ce-faci-dacă-ai-scris-în-folderele-mele).
2. Scrie un mesaj scurt care spune ce ai făcut, de exemplu "Am rezolvat exercițiile 1-3 din hello_flutter_3", și apasă **Commit**. VS Code te poate întreba dacă vrei să incluzi automat în commit toate modificările (pasul acesta se numește stage). Răspunde **Yes**.
3. Apasă **Sync Changes**. Commit-ul tău ajunge în fork-ul tău de pe GitHub.

Din terminal: `git add .`, `git commit -m "mesajul tău"` și `git push`.

## Clone, pas cu pas

1. În VS Code, în panoul **Source Control**, apasă **Clone Repository** și lipește adresa repository-ului meu: `https://github.com/eduhoratiu/hello_flutter_2026.git`.
2. Ca să primești codul nou, apasă **Sync Changes** sau săgețile circulare din bara de jos (ori `git pull` în terminal).

În clone nu face commit: Sync Changes ar încerca apoi să trimită commit-ul pe GitHub și ar da eroare, pentru că nu ai drept de scriere în repository-ul meu. Dacă vrei să-ți păstrezi munca pe GitHub, treci la fork: fă un fork, clonează-l și mută în el copiile tale, ca în [Dacă te-ai încurcat de tot](#dacă-te-ai-încurcat-de-tot).

## Download ZIP

Pe pagina repository-ului, apasă butonul verde **Code**, apoi **Download ZIP**, și dezarhivează fișierul.

Ca să primești codul nou, descarcă din nou ZIP-ul și dezarhivează-l într-un folder nou. Dacă ai lucrat în folderul vechi, copiază-ți fișierele din el în cel nou.

## Ce faci dacă ai scris în folderele mele

Se întâmplă des: scrii la curs odată cu mine, direct în `hello_flutter_3`, iar apoi Sync Changes dă eroare sau apare un conflict. Soluția depinde de ce vrei să păstrezi.

### Nu vrei să păstrezi ce ai scris

Vrei doar codul meu, așa cum este pe GitHub:

1. În panoul **Source Control**, clic dreapta pe **Changes**, apoi **Discard All Changes**. Modificările tale dispar, inclusiv fișierele noi, iar fișierele mele revin la ultima versiune descărcată.
2. Apasă **Sync Changes**.

Atenție: **Discard All Changes** șterge tot ce nu ai salvat într-un commit, deci și copiile sau proiectele tale noi din `hello_flutter_2026`. Dacă ai așa ceva, urmează pașii de mai jos.

### Vrei să păstrezi ce ai scris

1. **Copiază folderul** în care ai scris, de exemplu `hello_flutter_3` în `exercitii_hello_flutter_3`. Copia conține tot ce ai scris tu.
2. **Salvează copia într-un commit.** În panoul **Source Control**, la **Changes**, apasă **+** în dreptul fișierelor din copie (sau clic dreapta pe folderul copiei, **Stage Changes**), scrie un mesaj și apasă **Commit**. Pasul acesta este important: altfel, pasul următor ar șterge și copia.
3. **Adu folderul meu la forma inițială.** Clic dreapta pe **Changes**, **Discard All Changes**.
4. Apasă **Sync Changes**. Primești codul meu, iar munca ta rămâne în copie.

Dacă folosești clone, nu face commit la pasul 2. Mută copia **în afara** folderului `hello_flutter_2026`, apoi continuă cu pașii 3 și 4.

### Ai făcut deja commit în folderele mele

Dacă ai făcut commit (poate și push) cu modificări în folderele mele, iar Sync fork de pe GitHub sau Sync Changes din VS Code anunță un conflict, cel mai simplu este să o iei de la capăt, ca în secțiunea următoare.

## Dacă te-ai încurcat de tot

Când nimic nu mai merge, începe din nou, fără să pierzi nimic:

1. Copiază **în afara** folderului `hello_flutter_2026`, de exemplu pe Desktop, tot ce ai scris tu: copiile, proiectele tale și fișierele mele în care ai scris ceva.
2. Pe GitHub, în fork-ul tău, apasă **Sync fork**. Dacă GitHub anunță conflicte, alege varianta care renunță la commit-urile tale (**Discard**): fork-ul tău devine identic cu repository-ul meu.
3. Șterge folderul `hello_flutter_2026` de pe calculator și clonează din nou fork-ul tău, ca la [prima dată](#prima-dată-fork-și-clone).
4. Pune înapoi ce ai scris tu, în copiile și proiectele tale (nu în folderele mele), apoi fă commit și Sync Changes.

Dacă folosești clone, nu fork, sari peste pasul 2, clonează din nou repository-ul meu la pasul 3 și păstrează-ți munca în afara lui.

Dacă nu ești sigur ce să faci, întreabă-mă înainte să ștergi ceva.

## Lecția pas cu pas, din istoricul de commit-uri

La curs fac des commit, așa că istoricul de commit-uri arată cum a crescut codul, pas cu pas. Îl poți parcurge în ritmul tău, mai ales dacă ai lipsit sau ai rămas în urmă. Mesajele commit-urilor nu descriu întotdeauna exact ce s-a schimbat, așa că uită-te la modificările din fiecare commit, nu doar la mesaj.

- **Pe GitHub:** intră în folderul unei aplicații, de exemplu `hello_flutter_3`, și apasă **History**, în dreapta sus. Vezi toate commit-urile care au schimbat acea aplicație, de la cel mai nou la cel mai vechi.
- **Ce s-a schimbat la un pas:** dă clic pe un commit. Rândurile adăugate apar cu verde, cele șterse cu roșu.
- **Codul de la un anumit pas:** în lista de commit-uri, butonul `<>` din dreapta unui commit îți arată tot proiectul așa cum era în acel moment.
- **În VS Code:** panoul **Source Control** are și secțiunea **Source Control Graph**, cu același istoric. Când deschizi un fișier, secțiunea **Timeline**, din partea de jos a Explorer-ului, arată commit-urile care l-au schimbat.

Un exercițiu bun: alege un commit, uită-te la ce s-a schimbat, apoi închide pagina și încearcă să scrii tu aceeași modificare, din memorie, în copia ta.
