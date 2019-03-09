# Unitex/GramLab Language Resources

> [Unitex/GramLab][unitexgramlab] is the open source, cross-platform, multilingual, lexicon- and grammar-based corpus processing suite

This repository contains the Language Resources which are distributed within
[Unitex/GramLab][unitexgramlab].

## Languages

| Language name                 | Native name         | Language Family   | IETF    | ISO 639-2 | ISO 639-1 |
| ----------------------------- | ------------------- | ----------------- | :-----: | :-------: | :-------: |
| [Arabic](ar)                  | العربية             | Afro-Asiatic      | ar      | ara       | ar        |
| [Chinese](zh)                 | 汉语/漢語           | Sino-Tibetan      | zh      | chi/zho   | zh        |
| [English](en)                 | English             | Indo-European     | en      | eng       | en        |
| [Finnish](fi)                 | Suomi               | Uralic            | fi      | fin       | fi        |
| [French](fr)                  | Français            | Indo-European     | fr      | fra       | fr        |
| [Georgian (Ancient)](oge)     | ქართული             | South Caucasian   | oge     |           |           |
| [German](de)                  | Deutsch             | Indo-European     | de      | deu       | de        |
| [Greek (ancient)](grc)        | Αρχαία  Ελληνικα    | Indo-European     | grc     | grc       |           |
| [Greek (modern)](el)          | Ελληνικά            | Indo-European     | el      | ell       | el        |
| [Italian](it)                 | Italiano            | Indo-European     | it      | ita       | it        |
| [Korean](ko)                  | 한국어                  |  Koreanic          | ko      | kor       | ko        |
| [Latin](la)                   | Latine              | Indo-European     | la      | lat       | la        |
| [Malagasy](mg)                | Malagasy            | Austronesian      | mg      | mlg       | mg        |
| [Norwegian Bokmål](no)        | Norsk bokmål        | Indo-European     | no      | nob       | nb        |
| [Norwegian Nynorsk](nn)       | Norsk nynorsk       | Indo-European     | nn      | nno       | nn        |
| [Polish](pl)                  | Polski              | Indo-European     | pl      | pol       | pl        |
| [Portuguese (Portugal)](pt-BR)| Português (Portugal)| Indo-European     | pt-BR   |           |           |
| [Portuguese (Brazil)](pt-PT)  | Português (Brasil)  | Indo-European     | pt-PT   |           |           |
| [Russian](ru)                 | Русский             | Indo-European     | ru      | rus       | ru        |
| [Serbian-Cyrillic](sr-Cyrl)   | Српски              | Indo-European     | sr-Cyrl | sro       | sr        |
| [Serbian-Latin](sr-Latn)      | Serbian (Latin)   | Indo-European     | sr-Latn | srm       |           |
| [Spanish](es)                 | Español             | Indo-European     | es      | spa       | es        |
| [Thai](th)                    | ไทย                 | Tai–Kadai         | th      | tha       | th        |

## Contributing

We welcome everyone to contribute to improve the Unitex/GramLab Language Resources by
[forking this repository](https://help.github.com/articles/fork-a-repo/)
and [sending a pull request](https://help.github.com/articles/using-pull-requests/)
with their changes.

### How to add a new language support in Unitex

To add a new language to Unitex:

- Copy the folder template [`zxx-t-Skel`](zxx-t-Skel) and rename it according to the ISO 639-1 code of the new language
- Use the IETF language tag if the ISO 639-1 code is not available for your language.

Your new language must provide at least: 

 - An alphabet file (`Alphabet.txt`) and optionally a sorted alphabet (`Alphabet_sort.txt`)
 - A sample corpus (`Corpus/Corpus.txt`). Make sure you have the rights to share this resource and provide the author information on `Corpus/Corpus.info`
 - A sample dictionary (`Dela/lang-CODE.dic`) containing at least the words of the sample text
 - A sentence delimitation graph (`Graphs/Preprocessing/Sentence/Sentence.grf`)

Before share your contribution, make sure that:

- File names only use 7-bits ASCII characters.
- For each compiled graph `fst2` you are also proving the `.grf` version.
- For each dictionary `.dic` you are also providing a `.info` file describing the dictionary content (codes used in it, number of entries, authors, etc).
- You accept the [LGPLLR](unitexgramlab.org/lgpllr) license.

# RELEX network

Language Resources are mainly built and maintained by the members of the
[RELEX][RELEX] network, an international network of laboratories specialized
in Computational Linguistics that was created by [Maurice Gross][Gross] and
his [LADL][LADL] (*Laboratoire d'Automatique Documentaire et Linguistique*) team.

| Country         | Partner                                                                              |
| --------------- | ------------------------------------------------------------------------------------ |
| Belgium         | [Catholic University of Leuven](http://www.kuleuven.ac.be)                           |
| Belgium         | [CENTAL](http://www.uclouvain.be/cental)                                             |
| Brazil          | [Federal University of Goias](http://www.letras.ufg.br)                              |
| Brazil          | [NILC](http://www.nilc.icmc.usp.br/nilc)                                             |
| Brazil          | [Projeto Relex](http://ladl.univ-mlv.fr/brasil)                                      |
| Brazil          | [PUC RIO](http://www.puc-rio.br)                                                     |
| Canada          | [University of Montréal](http://www.fas.umontreal.ca)                                |
| Denmark         | [University of Copenhagen](http://www.ku.dk)                                         |
| England         | [Research and Development Unit for English Studies](http://rdues.bcu.ac.uk)          |
| France          | [CRISCO](http://www.crisco.unicaen.fr)                                               |
| France          | [EHESS](http://www.ehess.fr)                                                         |
| France          | [LDI](https://www.univ-paris13.fr/Tout/ldi-2)                                        |
| France          | [LIGM](http://infolingu.univ-mlv.fr/)                                                |
| France          | [LIMSI](http://www.limsi.fr)                                                         |
| France          | [LIP6](http://www.lip6.fr)                                                           |
| France          | [LORIA](http://www.loria.fr)                                                         |
| France          | [UFRL](http://www.linguist.univ-paris-diderot.fr)                                    |
| France          | [Université de Tours](http://www.li.univ-tours.fr)                                   |
| France          | [University Bordeaux 3](http://www.u-bordeaux3.fr)                                   |
| France          | [University Grenoble 3](http://www.u-grenoble3.fr)                                   |
| France          | [University of Franche-Comté](http://www.univ-fcomte.fr)                             |
| France          | [University of Paris-Est Marne-la-Vallée](http://www.univ-mlv.fr)                    |
| France          | [University of Rouen](http://www.univ-rouen.fr)                                      |
| France          | [University of Strasbourg](http://www.unistra.fr)                                    |
| France          | [University Paris 8](http://www.univ-paris8.fr)                                      |
| France          | [University Paris-Sorbonne](http://www.paris-sorbonne.fr)                            |
| Germany         | [CIS, University of Munich](http://www.cis.uni-muenchen.de)                          |
| Germany         | [University of Heidelberg](http://www.cl.uni-heidelberg.de)                          |
| Greece          | [ILSP](http://www.ilsp.gr)                                                           |
| Greece          | [University of Thessaloniki](http://www.frl.auth.gr)                                 |
| Hong Kong       | [City University of Hong Kong](http://www.cityu.edu.hk)                              |
| Hungaria        | [Research Institute for Linguistics](http://www.nytud.hu/eng/index.html)             |
| Israel          | [University of Tel Aviv](http://www.tau.ac.il)                                       |
| Italy           | [University of Bari](http://www.uniba.it)                                            |
| Italy           | [University of Salerno](http://www.linguistics.unisa.it)                             |
| Japan           | [Information Science Research Center](http://www.cc.aoyama.ac.jp)                    |
| Korea           | [Hankuk University of Foreign Studies](http://www.hufs.ac.kr)                        |
| Madagascar      | [University of Antananarivo](http://www.univ-antananarivo.mg)                        |
| Norway          | [University of Bergen](http://www.uib.no)                                            |
| Poland          | [Adam Mickiewicz University](http://www.amu.edu.pl)                                  |
| Portugal        | [LabEL](http://label.ist.utl.pt/pt/apresentacao.php)                                 |
| Portugal        | [University of Algarve](http://www.ualg.pt/pt)                                       |
| Serbia          | [University of Belgrad](http://poincare.matf.bg.ac.rs)                               |
| Slovakia        | [The Faculty of Economics](http://www.ef.umb.sk)                                     |
| Spain           | [Autonomous University of Barcelona](http://www.uab.cat )                            |
| Spain           | [University of Alicante](http://www.ua.es)                                           |
| Switzerland     | [University of Genève](http://www.unige.ch)                                          |
| Switzerland     | [University of Zürich](http://www.uzh.ch)                                            |
| United States   | [Florida International University](http://www.fiu.edu)                               |
| United States   | [New York University](http://www.nyu.edu)                                            |
| United States   | [University of California San Diego](http://www.ucsd.edu)                            |
| United States   | [University of North Texas](http://www.unt.edu)                                      |

## Documentation

User's Manual (in PDF format) is available in English and French (more
translations are welcome). You can view and print them with Evince,
downloadable [here](https://wiki.gnome.org/Apps/Evince/Downloads). The
latest version of the User's Manual is accessible
[here](http://releases.unitexgramlab.org/latest-stable/man/).

## Support

Support questions can be posted in the [community support
forum](http://forum.unitexgramlab.org). Please feel free to submit any
suggestions or requests for new features too. Some general advice about
asking technical support questions can be found
[here](http://www.catb.org/esr/faqs/smart-questions.html).

## Reporting Bugs

See the [Bug Reporting
Guide](https://unitexgramlab.org/how-to-report-a-bug) for information on
how to report bugs.

## Governance Model

Unitex/GramLab project decision-making is based on a community
meritocratic process, anyone with an interest in it can join the
community, contribute to the project design and participate in
decisions. The [Unitex/GramLab Governance
Model](http://governance.unitexgramlab.org) describes
how this participation takes place and how to set about earning merit
within the project community.

## Spelling

Unitex/GramLab is spelled with capitals "U" "G" and "L", and with
everything else in lower case. Excepting the forward slash, do not put
a space or any character between words. Only when the forward slash
is not allowed, you can simply write “UnitexGramLab”.

It's common to refer to the Unitex/GramLab Core as "Unitex", and to the
Unitex Project-oriented IDE as "GramLab". If you are mentioning the
distribution suite (Core, IDE, Linguistic Resources and others bundled
tools) always use "Unitex/GramLab".

## License

Language Resources are distributed under the terms of the
[Lesser General Public License For Linguistic Resources](/LICENSE) (LGPLLR).
Contact unitex-devel@univ-mlv.fr for further inquiries.

---

Copyright (C) 2019 Université Paris-Est Marne-la-Vallée

[Gross]:          https://en.wikipedia.org/wiki/Maurice_Gross
[LADL]:           http://infolingu.univ-mlv.fr/LADL/Historique.html
[LGPLLR]:         http://spdx.org/licenses/LGPLLR
[RELEX]:          http://infolingu.univ-mlv.fr/english/Relex/Relex.html
[unitexgramlab]:  https://unitexgramlab.org
