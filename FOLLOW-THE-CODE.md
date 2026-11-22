# Cum urmărești codul de la curs

La curs scriu codul pe laptopul meu, pe care îl vedeți pe ecrane, și îl explic pe măsură ce îl scriu. Fac des commit și push, așa că, în acest repository, codul de pe GitHub ține pasul cu ce lucrăm în clasă. Acest document arată cum îl aduci pe calculatorul tău și cum primești actualizările, fără să pierzi ce ai scris tu.

## Cuprins

- [Pe scurt](#pe-scurt)
- [Cele trei variante](#cele-trei-variante)
- [Regula de aur: folderele mele, copiile tale](#regula-de-aur-folderele-mele-copiile-tale)
- [Fork, pas cu pas](#fork-pas-cu-pas)
- [Clone, pas cu pas](#clone-pas-cu-pas)
- [Download ZIP](#download-zip)
- [Ce faci dacă ai scris în folderele mele](#ce-faci-dacă-ai-scris-în-folderele-mele)
- [Dacă te-ai încurcat de tot](#dacă-te-ai-încurcat-de-tot)
- [Lecția pas cu pas, din istoricul de commit-uri](#lecția-pas-cu-pas-din-istoricul-de-commit-uri)

## Pe scurt

- Fă un **fork** al repository-ului și clonează fork-ul tău pe calculator.
- Ca să primești codul nou: pe GitHub, **Sync fork**, apoi în VS Code, **Sync Changes**.
- Nu modifica aplicațiile mele. Ca să lucrezi la o aplicație, **copiază-i folderul** și lucrează în copie.

## Cele trei variante

| Varianta | Ce primești | Unde rămân modificările tale | Cum primești actualizările |
| --- | --- | --- | --- |
| **Fork** (recomandat) | O copie a repository-ului în contul tău de GitHub, plus o copie pe calculator | Pe calculator și în fork-ul tău de pe GitHub | Sync fork pe GitHub, apoi Sync Changes în VS Code |
| **Clone** | O copie pe calculator, legată direct de repository-ul meu | Doar pe calculatorul tău | Sync Changes în VS Code |
| **Download ZIP** | O copie pe calculator, fără nicio legătură cu GitHub | Doar pe calculatorul tău | Descarci din nou tot ZIP-ul |

- **Fork** este varianta recomandată. Ce scrii tu este salvat pe GitHub, deci nu se pierde dacă se strică laptopul, îl poți continua pe alt calculator și mi-l poți arăta. Fork-ul unui repository public este și el public.
- **Clone** este bun dacă doar vrei să rulezi și să citești codul meu. Poți face commit, dar nu poți face push: nu ai drept de scriere în repository-ul meu, așa că tot ce scrii rămâne doar pe laptopul tău.
- **Download ZIP** este cel mai simplu, dar nu are nicio legătură cu GitHub. Pentru fiecare actualizare descarci din nou tot proiectul.

## Regula de aur: folderele mele, copiile tale

Folderele aplicațiilor, `hello_flutter_1`, `hello_flutter_2` și celelalte, sunt ale mele: eu le actualizez. Dacă scrii și tu în ele, actualizările mele și modificările tale ajung în aceleași fișiere, iar Git nu mai știe pe care să le păstreze. Asta se numește **conflict** și este greu de rezolvat la început.

De aceea:

- **Ca să lucrezi la o aplicație**, copiază-i folderul și lucrează în copie. De exemplu, copiază `hello_flutter_3` în `exercitii_hello_flutter_3`, în același folder `hello_flutter_2026`. În VS Code: clic dreapta pe folder, **Copy**, apoi clic dreapta pe spațiul gol din Explorer, **Paste**, apoi redenumește copia (**F2**).
- **Proiectele tale noi**, create cu `flutter create`, pune-le într-un folder al tău, de exemplu `proiectele_mele/`, nu în folderele mele.
- **Folderele mele** doar le citești și le rulezi.

Așa, actualizările mele nu ating niciodată fișierele tale, iar sincronizarea funcționează mereu fără probleme.

## Fork, pas cu pas

### Prima dată: fork și clone

1. Intră pe [github.com/eduhoratiu/hello_flutter_2026](https://github.com/eduhoratiu/hello_flutter_2026), autentificat cu contul tău.
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
2. În VS Code, în panoul **Source Control**, apasă **Sync Changes** (sau săgețile circulare din bara de jos). Codul nou ajunge pe calculatorul tău.

Din terminal, pasul 2 este `git pull`, rulat în folderul `hello_flutter_2026`.

Poți face asta și în timpul cursului, dacă ai rămas în urmă: după câteva secunde ai exact codul pe care îl vezi pe ecrane.

### Când vrei să-ți salvezi munca pe GitHub

1. În panoul **Source Control**, la **Changes**, vezi fișierele modificate.
2. Scrie un mesaj scurt care spune ce ai făcut, de exemplu "Fac exercițiile 1-3 din hello_flutter_3", și apasă **Commit**. Dacă VS Code te întreabă dacă să includă automat toate modificările (stage), răspunde **Yes**.
3. Apasă **Sync Changes**. Commit-ul tău ajunge în fork-ul tău de pe GitHub.

Din terminal: `git add .`, `git commit -m "mesajul tău"` și `git push`.

## Clone, pas cu pas

1. În VS Code, în panoul **Source Control**, apasă **Clone Repository** și lipește adresa repository-ului meu: `https://github.com/eduhoratiu/hello_flutter_2026.git`.
2. Ca să primești codul nou, apasă **Sync Changes** (sau `git pull` în terminal).

Dacă ai modificat ceva în folderele mele, Sync Changes s-ar putea să nu funcționeze. Vezi mai jos [ce faci dacă ai scris în folderele mele](#ce-faci-dacă-ai-scris-în-folderele-mele). Ce scrii în copiile tale rămâne pe laptop și nu deranjează sincronizarea, dar nu este salvat nicăieri altundeva. Dacă vrei să-l păstrezi, trece la fork.

## Download ZIP

Pe pagina repository-ului, apasă butonul verde **Code**, apoi **Download ZIP**, și dezarhivează fișierul.

Pentru codul nou, descarcă din nou ZIP-ul, într-un folder nou. Dacă ai lucrat în folderul vechi, copiază-ți fișierele din el în cel nou.

## Ce faci dacă ai scris în folderele mele

Se întâmplă des: scrii la curs odată cu mine, direct în `hello_flutter_3`, iar apoi Sync Changes dă eroare sau apare un conflict. Cum rezolvi depinde de ce vrei să păstrezi.

### Nu vrei să păstrezi ce ai scris

Vrei doar codul meu, așa cum este pe GitHub:

1. În panoul **Source Control**, clic dreapta pe **Changes**, apoi **Discard All Changes**. Modificările tale dispar, iar fișierele revin la ultima versiune descărcată.
2. Apasă **Sync Changes**.

### Vrei să păstrezi ce ai scris

1. **Copiază folderul** în care ai scris, de exemplu `hello_flutter_3` în `exercitii_hello_flutter_3`. Copia conține tot ce ai scris tu.
2. **Salvează copia într-un commit.** În panoul **Source Control**, la **Changes**, apasă **+** în dreptul fișierelor din copie (sau clic dreapta pe folderul copiei, **Stage Changes**), scrie un mesaj și apasă **Commit**. Pasul este important: altfel, pasul următor ar șterge și copia.
3. **Readu folderul meu la forma lui.** Clic dreapta pe **Changes**, **Discard All Changes**.
4. Apasă **Sync Changes**. Primești codul meu, iar munca ta rămâne în copie.

### Ai făcut deja commit în folderele mele

Dacă ai făcut commit și poate push cu modificări în folderele mele, iar Sync fork de pe GitHub sau Sync Changes din VS Code anunță un conflict, cel mai simplu este să o iei de la capăt, ca mai jos.

## Dacă te-ai încurcat de tot

Când nimic nu mai merge, începe din nou, fără să pierzi nimic:

1. Copiază fișierele scrise de tine **în afara** folderului `hello_flutter_2026`, de exemplu pe Desktop.
2. Pe GitHub, în fork-ul tău, apasă **Sync fork**. Dacă GitHub anunță conflicte, alege **Discard commits**: fork-ul tău devine identic cu repository-ul meu.
3. Șterge folderul `hello_flutter_2026` de pe calculator și clonează din nou fork-ul tău, ca la [prima dată](#prima-dată-fork-și-clone).
4. Pune fișierele tale înapoi, într-un folder al tău (nu în folderele mele), apoi fă commit și Sync Changes.

Dacă folosești clone, nu fork, sari peste pasul 2 și clonează din nou repository-ul meu.

Dacă nu ești sigur ce să faci, întreabă-mă înainte să ștergi ceva.

## Lecția pas cu pas, din istoricul de commit-uri

La curs fac commit după fiecare pas mic, cu un mesaj care spune ce s-a schimbat, de exemplu "Add floating action button to HomeScreen for future functionality". Istoricul de commit-uri este, de fapt, lecția pas cu pas, și o poți parcurge în ritmul tău, mai ales dacă ai lipsit sau ai rămas în urmă.

- **Pe GitHub:** intră în folderul unei aplicații, de exemplu `hello_flutter_3`, și apasă **History**, în dreapta sus. Vezi toate commit-urile care au schimbat acea aplicație, de la primul la ultimul.
- **Ce s-a schimbat la un pas:** dă clic pe un commit. Rândurile adăugate apar cu verde, cele șterse cu roșu.
- **Codul de la un anumit pas:** în lista de commit-uri, butonul `<>` din dreapta unui commit îți arată tot proiectul așa cum era în acel moment.
- **În VS Code:** panoul **Source Control** are și secțiunea **Graph**, cu același istoric. Când deschizi un fișier, secțiunea **Timeline**, din partea de jos a Explorer-ului, arată commit-urile care l-au schimbat.

Un exercițiu bun: alege un commit, citește ce s-a schimbat și încearcă să scrii tu aceeași modificare, înainte să te uiți la cod.
