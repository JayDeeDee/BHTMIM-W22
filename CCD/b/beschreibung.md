# Einsendeaufgabe Clean Code Development - Aufgabe B
Refactoring ca. 1/3 des Quellcodes aus dem Miro-Board https://miro.com/app/board/o9J_lkG-PtE=/ nach Clean Code Anforderungen
inklusive Erläuterungen

Der else Zweig wurde im Refactoring eingefügt, der enthaltene Code aber weggelassen.


## Analyse des bestehenden Quellcodes
### Abhängigkeiten
Der JavaScript-Code, ist nur ausführbar, wenn die JavaScript-Bibliothek jQuery eingebunden ist.
https://api.jquery.com/

Zusätzlich bedingt der Quellcode das Vorhandensein eines Html-Dokuments, in dem der JS-Code eingebunden ist.
Dieses enthält eine nicht näher bekannte Markup Struktur aus diversen Knoten (Elemente, Texte und Attribute), welche dem DOM (Document Object Model) des JavaScripts entsprechen muss.

Im DOM werden alle HTML-Elemente zu Objekten, die dynamisch aufgerufen, verändert, hinzugefügt und gelöscht werden können.
Im vorliegenden Skript wird jedoch mehrheitlich nicht direkt auf den DOM-Objekten operiert, sondern jQuery Objekte gebildet, auf denen DOM-Manipulationen, Ereignisbehandlung und Ajax vereinfacht stattfinden können.

### Beschreibung
Aus den verwendeten Klassennamen lässt sich schlussfolgern, dass es sich bei der Anwendung um eine Art geografische Sektoren-Karte handelt, die über ein Widget (basierend auf customized Checkboxen in Listenform) bedient wird und deren Zustände dynamisch über DOM-Manipulation und asynchron nachgeladenem Markup veränderbar sind.
Das Markup enthält mindestens die folgenden Elemente:
* Formularfeld mit der Id **division_id**: Wert enthält eine kommaseparierte Liste von Einheiten (ggf. Städte, Distrikte o.ä.)
* Formularfeld mit der id **sector_id**: Wert enthält eine kommaseparierte Liste von selektierten Einheiten (vermutlich Sektoren) 
* Liste von klickbaren Checkbox Widgets, die eine Checkbox und ein Label mit der Klasse **check_district_lable** enthalten
* Ein Element mit der Klasse **choose_city_text**, das eine kommaseparierte Liste von Einheiten (ggf. Städte, Sektoren, Distrikte o.ä.)
* Ein Container mit der Klasse **loaded_sectors**, der die Sektoren darstellt, in dem selektierte Sektoren schließbare Bubbles erhalten  

#### Ablauf
Mittels der jQuery Funktion on, wird zunächst ein delegierter "click" Event-Handler an das **Document** Element gebunden.
Der Handler wird nicht aufgerufen, wenn das Klick-Event direkt auf dem **Document** Element auftritt, sondern nur für dessen innere Elemente mit der Klasse **check_district_li**.
jQuery "bubbles" das Event vom Ereignisziel bis zum Dokument-Root, an das der Handler gebunden worden ist und führt den Handler für alle Elemente entlang dieses Pfads aus, die die Klasse **check_district_li** enthalten.

Innerhalb des angeklickten Elements mit der Klasse **check_district_li** wird geprüft, ob das im **check_district_li** Element Input-Feld vom Typ Checkbox den Status **checked** aufweist oder nicht und darauf mittels einer if-else Schleife unterschiedlich reagiert.

Ist das aktuelle Input-Feld im Status **checked**, dann wird 
* Im Textknoten des/der Elements/e mit der Klasse **choose_city_text** der Textteil, der dem aktuellen Input-Label gleicht, samt vorgestelltem Komma und Leerzeichen entfernt;
* Dem Label des aktuellen Input-Felds per Inline-Style eine hellblaue Textfarbe mit dem RGB-Wert #9da9be vergeben;
* Dem Checkbox-Widget des aktuellen Input-Felds die Klasse **customCheckboxChecked** entfernt sowie im Input-Feld selbst der Status **checked**
* per Ajax-Request wird der URL **/ajax/load_sectors_bubble.php** der get-Parameter **district** ein Wert übergeben, der dem Wert des Formularfelds mit der id **division_id** entspricht, abzüglich des Werts des aktuellen Input-Felds samt nachfolgendem Leerzeichen und Komma;
* das Response-Markup wird in den Knoten **loaded_sectors** eingefügt, der Wert des Formularfelds mit der id **sector_id** wird am Separator Komma in ein Array 
von Sektoren gesplittet. Über dieses Array erhalten alle Sektoren Elemente, deren Klassen sich aus dem Präfix **loaded_sectors_span_** sowie dem aktuellen Array-Eintrag zusammensetzen die Klasse **sector_checked**. Zudem wird das src-Attribut des im entsprechenden Span enthaltenen Bildes auf den Wert "/images/sector_bubble_close.png" gesetzt.
* im Anschluss wird für jeden Span mit der Klasse **sector_checked** dessen id in das Array **sectors** gepusht
* einiges sinnfreies versucht
  1. auf der Browserkonsole der String "**sectors**" ausgegeben
  2. der Wert des Formularfelds mit der id **sector_id** erneut aus dem DOM gelesen, diesmal in die String Variable **sectro_vars**
  3. im String **sectro_vars** soll durch die replace-Methode das Array **sectors** ersetzt werden durch einen Leerstring
  4. dem Formularfeld mit der id **sector_id** wird das Array sectors zugewiesen

Ist das aktuelle Input-Feld nicht im Status **checked**, dann wird 
* Im Textknoten des/der Elements/e mit der Klasse **choose_city_text** der Textteil, der dem aktuellen Input-Label gleicht, samt vorgestelltem Komma und Leerzeichen angefügt;
* Dem Label des aktuellen Input-Felds per Inline-Style eine graublaue Textfarbe mit dem RGB-Wert #363e4a vergeben;
* Im Checkbox-Widget des aktuellen Input-Felds die Klasse **customCheckboxChecked** gesetzt sowie im Input-Feld selbst der Status **checked**
* An den Wert des Formular-Felds mit der id **division_id** der Wert des aktuellen Inputfelds ergänzt, allerdings wird das Separatoren-Komma nicht vor der Ergänzung, sondern fälschlicherweise dahinter gesetzt
* per Ajax-Request wird der URL **/ajax/load_sectors_bubble.php** der get-Parameter **district** ein Wert übergeben, der dem neuen inkorrekten Wert des Formularfelds mit der id **division_id** entspricht;
* das Response-Markup wird in den Knoten **loaded_sectors** eingefügt, der Wert des Formularfelds mit der id **sector_id** wird am Separator Komma in ein Array
  von Sektoren gesplittet. Über dieses Array erhalten alle 
* Sektoren Elemente, deren Klassen sich aus dem Präfix **loaded_sectors_span_** sowie dem aktuellen Array-Eintrag zusammensetzen die Klasse **sector_checked**. Zudem wird das src-Attribut des im entsprechenden Span enthaltenen Bildes auf den Wert "/images/sector_bubble_close.png" gesetzt.

### Bewertung
Der Quellcode ist kein Clean Code.

#### Source Code Convention
Standardkonventionen für Frontend Entwicklung werden nicht befolgt: z.B. Kodierungs-, Architektur-, Designrichtlinien (Consistency, )
* Die Benamung der Klassen und Ids folgt keinem einheitlichen Schema. Das vornehmlich verwendete Schema entspricht nicht den üblichen Konventionen der Frontend-Entwicklung.
* Da Klassen und Ids für CSS, HTML und JavaScript verwendet werden, müssen hier auch die Konventionen der anderen Sprachen beachtet werden. Die meisten stark verbreiteten CSS-Methodologies (z.B. OOCSS, ACSS, SMACSS) und Frontend-Frameworks (Bootstrap, Foundation) nutzen Bindestriche. BEM nutzt zwar doppelte Underscores (**__**), diese werden aber zur hierarchischen Darstellung von Blöcken und Elementen verwendet und nicht, um Teile von Klassennamen zu trennen.
  * Bestandteile des Klassennamen und Ids werden im Originalquellcode häufig mittels Underscore (z.B. choose_city_text) aber auch mittels CamelCase (z.B. customCheckbox) benannt.
  * Beim Refactoring wurden die Klassennamen zusammen mit den URLs abgeändert in lowercase Klassen mit Bindestrichen. Wichtig ist für das Projekt, dass dieses Refactoring auch im Markup und in den Stylesheets erfolgt.
* zwei Klassennamen enthalten "Buchstabendreher", die die Lesbarkeit erschweren und potenzielle Fehlerquellen darstellen
  * lable statt label
  * sectro statt sector
* Es gibt keine Leerzeilen, um den Quellcode optisch zu gliedern. 
* Der Quellcode verwendet lediglich die im Sprachumfang von JavaScript enthaltenen Methoden und Standardfunktionen. Zudem werden jQuery Methoden genutzt und anonyme Funktionen als Parameter übergeben. Es wird keine einzige eigene Funktion definiert.

#### Don´t Repeat Yourself (DRY)

Der Originalcode enthält einige gleiche oder sehr ähnliche Codezeilen (Needless Repetition, Rigidity, Fragility, Immobility, Opacity)
* Es gibt viele jQuery selector Dubletten.
  * jQuery cached Elemente nicht, das Nutzen mehrfacher jQuery Selektoren ist ineffektiv, da jedes Mal erneut der DOM durchsucht werden muss. Stattdessen sollten - wenn möglich - die jQuery Elemente in JS Variablen zu speichern.
  * Kleinere Codeänderungen, z.B. Verwendung anderer Selektoren, wird erschwert. Eine Änderung muss gleich an mehreren Stellen erfolgen und bergen die Gefahr, dass zusätzliche Fehler eingebaut werden.
* Einige Variablen werden mehrfach deklariert, bei var old_text erfolgt es sogar zweimal mit identischen Codezeilen **var old_text = $(".choose_city_text").text();**
* Der Quellcode enthält diverse weitere zwar nicht identische aber sehr ähnliche Codeabschnitte, wie die beiden for-Schleifen und zwei Ajaxaufrufe.

#### Separation of Concerns (SoC)

Der originale Quellcode verwendet keine Schichten zur logischen Gruppierung von Funktionen. So fehlt es an einer 
Trennung zwischen Datenschicht, in der Funktionen für Sektordaten und Zustände gekapselt werden, und Darstellungsschicht, die
für die Anzeige zuständig ist, z. B. für das Rendering im DOM und die Bindung von UI-Verhaltensweisen.
Die Datenlogik reduziert sich derzeit vornehmlich darauf, Strings aus verschiedenen Formularelementen zu manipulieren und aus den teilweise fragwürdigen 
Ergebnissen dieser Operationen Zustände abzuleiten.
Die zur Verfügung stehenden Informationen zur Datenlogik sind jedoch rudimentär und reichen für ein Refactoring leider nicht aus.

#### Design and Implementation Don’t Overlapp

Der Originalcode schreibt Schriftfarben per Inline-Styles. Damit wird die Trennung von Design und Implementierung durchbrochen. Zudem werden damit mehr als eine Sprache in der Quelldatei verwendet (CSS und javaScript). Textfarben sollten nur über externe Cascading Stylesheets gestylt werden, über die Status Klasse des DistrictWidgets lässt sich auch die gestylt werden. 

#### Dependencies

Wenn der Quellcode von anderen Modulen abhängt, sollte diese Abhängigkeit physisch sein, nicht nur logisch. Man sollte nicht auf Annahmen vertrauen.
* Der Quellcode ist ohne die Bibliothek jQuery nicht ausführbar. Im Quellcode wird das Vorhandensein der Bibliothek einfach angenommen. jQuery Methoden werden genutzt, ohne zu prüfen, ob sie zur Verfügung stehen.
* Zudem wird angenommen, dass $() als Kurzform für jQuery() steht. Bei paralleler Verwendung anderer Bibliotheken oder Module mit dem gleichen Ansatz kann es ebenfalls zu Fehlern kommen. 
* Im Refactoring wurden daher zwei Schritte unternommen, um diesen Problemen entgegenzuwirken.
  1. Mittels **typeof** Operator stellt eine if-Abfrage vor Ausführung des jQuery-basierten JavaScript-Codes sicher, dass die jQuery Bibliothek und ihre Methoden zur Verfügung stehen.
  2. In der Immediate-Invoked Function Expression (IIFE) wird bei Ausführung über einen Parameter sichergestellt, dass $() als Alias für jQuery() fungiert.   

#### Scope und Kapselung

* Da der Quellcode des Originals innerhalb einer jQuery on Funktion platziert ist, war sichergestellt, dass die Variablen nicht im globalen Scope zur Verfügung stehen
* Dieser Function scope wurde aber durch das Refactoring aufgelöst und musste anders realisiert werden:
  1. Statt des Schlüsselworts var werden let oder const verwendet, dadurch wird die Verwendung des ES6 Block Scopes sichergestellt, Variablen gehören nicht mehr dem globalen window Object an.
  2. Durch die Verwendung des Strict Modes wird sichergestellt, dass undeklarierte Variablen nicht automatisch global sind.
  3. Durch Verwendung der Immediate-Invoked Function Expression (IIFE) werden die Variablen und Methoden des Codes gekapselt. Der IIFE werden bei der Ausführung Werte für zwei Variablen übergeben:
     * $ als Alias für die jQuery Funktion
     * das Objektliteral options, mit dem sich die Default-Settings Überschreiben lassen

#### sonstige Code smells

Neben den bereits genannten Mehrfachdeklarationen von Variablen, der wiederholten Verwendung von jquery Selektoren und der Verwendung des Schlüsselworts var 
weisen der Linter eslint sowie das statische Analysetool SonarQube auf folgende Code smells hin, die im Refactoring beseitigt wurden:
* implizite Deklarationen der Variable i in den for-Schleifen
* deklarierte aber ungenutzte Variable new_sectors 
      
#### Testing und Fehlerhandling
Im Originalcode gibt es keinerlei Fehlerhandling. Vor der Ausführung von Scripten wird nicht sichergestellt, dass 
Abhängigkeiten (wie z.B. jQuery als Bibliothek) erfüllt sind.

Der Codeablauf ist in hohem Maße abhängig vom Vorhandensein bestimmter HTML-Elemente. Ohne zu prüfen, ob es diese Elemente gibt, wird auf deren Attributwerten operiert. Die Ergebnisse dieser Operationen werden unreflektiert in das DOM des Dokuments zurückgeschrieben.
Es gibt weder Tests noch Plausibilitätsprüfungen.

Auch kausale Zusammenhänge für Zustände werden komplett ignoriert. So wird erst der Aktivzustand im District Widget gesetzt und erst dann der Ajax-Request für das Update der Sektorenkarte abgesetzt.
Die Visualisierung des Zustands im UI erfolgt also bevor der Zustand überhaupt wechselt. Es sind verschiedene Szenarien denkbar, in denen ein Ajax-Request keinen oder nicht den erwarteten Response liefert.
Darauf nimmt der Originalcode keine Rücksicht. Eine Korrektur des Aktivzustands oder eine Fehlermeldung gibt es nicht.
Exceptions werden weder erwartet noch behandelt.

Im Refactoring werden einige dieser Punkte angegangen. So wird 
* zunächst der Ajax-Request ausgeführt,
* ein Fehlerhandling eingeführt für den Fall, dass der Ajax-Request fehlschlägt (inklusive Ausgabe einer Fehlermeldung),
* erst nach erfolgreich ausgeführtem Ajax-Request werden die UI-Zustände gesetzt,
* vor dem Auslesen und Manipulieren von Knoten des DOM, sei es Text oder Elementattribute, wird geprüft, ob es diese Elemente im Baum gibt.

Das Testing des Quellcodes erfolgt im Original augenscheinlich mittels Ausgaben in der Konsole, siehe Zeile 26.
Für Unit Tests stehen keine Ansatzpunkte zur Verfügung.

Das Refactoring ist für die Einführung von Unit Tests noch nicht weit genug fortgeschritten (siehe Ausführungen zu SoC).
Um das Testing aber zumindest zu vereinfachen, wurde eine Hilfsfunktion für das Logging eingeführt, deren Ausgaben in den options ein- bzw. ausgeschalten werden können.

## Bewertung des Quellcodes nach dem Refactoring

Der Quellcode ist im aktuellen Stand des Refactorings leider noch kein Clean Code, er ist nur "cleaner".
Ein Großteil der Programmlogik ist ohne Kenntnis des Markups nicht nachvollziehbar und damit auch schwer refaktorierbar.
Der Code enthält Hinweise auf die Objekte City, Division, District und Sector ohne, dass die ihnen zugrundeliegenden Konzepte und die zwischen ihnen bestehenden Beziehungen verdeutlicht werden.
Der originale JavaScript-Code enthielt dazu keine erläuternde Kommentare.

Die nächsten Schritte des Refactorings müssten umschließen:
* Kenntnis des Markups und Verständnis der Logik
* Trennung von Daten- und Darstellungsschicht
* Einführung von Unit-Tests und Verbesserung des Fehlerhandlings
