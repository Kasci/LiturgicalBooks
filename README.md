# Liturgical Books

Respository for my implementation of liturgical books for Orthodox and Byzantine Catholic church

I decided to open this repo as public, for anyone to use.

GR texts are compiled from [https://glt.goarch.org/](GOA).

CU texts are compiled from [https://www.ponomar.net/](Ponomar).

CSL texts are created by transcription of CU texts. It is work in progress, but we are moving in some good direction. 	There were temporarily old texts, they are compiled from texts from OSBM monks, that they published long time ago on their former web page. They are here just as test data and will be replaced later by original transcription. Do not use without their permision.

SK texts are mostly from various sources, especially from [https://casoslov.sk/](Casoslov.sk). They also serve as test texts and will be replaced by original translation. Do not use without their permision. There is a plan to create automatic translation later.

Other texts are here just as test data, and will be removed or replaced in later versions.

## Prerequisites

This repository uses [https://typst.app/docs](Typst) to generate PDFs from source code.

## Command

To generate pdf use command

```
typst _general/NAME.typ
```

To update sources use command

````
git submodule update --remote
````

## Plans and TODO

- Find a way how to use second and third glory/now and how to render it properly
- Finalize general minea - add matins and liturgy/typica
- Add also lower feasts into minea
- Add lenten and flowely triodion
- Add different sources - Lviv, etc.

## Changelog

## v. 0.6

- CSL texts are using own transcription (still work in progress)

### v. 0.5

- CU, CSL and GR text are moved to separate repository, to allow it's independent reuse
- Vespers for general minea are added
- Started to add minea for great feasts

### v. 0.4

- Finished conversion of CLS oktoich to JSON
- Work in progres of JSON oktoich

### v. 0.3

- Finished CU and CSL oktoich
- Started CU common minea
- Started GR version

### v. 0.2

- Added voice 1 and 2 in Church Slavonic and Slovak transcription of Church Slavonic
- TODO: there are some differences in Lviv and Moscow oktoich, that need to be somehow resolved

### v. 0.1

- Initial commit to transfer from typst.app to separate place, as it reached maximal ammount of files.
