codeoceanR::rt_score()
codeoceanR::rt_plot1()

# Dies ist eine bewertete Aufgabe für ein Zertifikat. 
# Sie muss vor der angegebenen Zeit eingereicht werden (mit rt_submit()).
# Besprich vor der Abgabefrist bitte keine Lösungen im Forum, erst danach.

# A1 ----
library(datasets)
data(airquality)

# Aus dem eingebauten Datensatz 'airquality',
# - Plotte die Ozonwerte (y) über die Temperatur (x).
plot(airquality$Temp, airquality$Ozone, pch=21, col="#FFA50080", 
     xlab="Temperatur", ylab="Ozon [ppb]", main="Mehr Ozon an warmen Tagen",
     ylim=c(0, 200), xlim=c(50, 100))
points(airquality$Temp, airquality$Ozone, pch=21, col="#FFA50080", 
       cex=airquality$Wind/5)
# - Verwende gefüllte Punkte (Siehe ?points für eine in-R Übersicht).
# - Verwende die halbtransparente orange Farbe "#FFA50080".
# - Drehe alle numerischen Achsenbeschriftungen aufrecht (horizontal).
# - Die x-Achse soll zwischen 50 und 100 liegen.
# - Die Grafik soll einen informativen Titel haben: "Mehr Ozon an warmen Tagen"
# Wenn wir die Windwerte durch 5 teilen, erhalten wir Werte zwischen 0.3 und 4.1.
# - Verwende diese, um die Punktgröße zu skalieren.
# t5_start

# t5_ende

# A2 ----
# Zwei (von vielen) nützliche Unicode-Zeichen sind (Zusatz in 2.3 Zeichenketten):
# https://www.compart.com/unicode/U+00D8 Durchschnittssymbol (SHIFT + Klick auf Link)
# https://www.compart.com/unicode/U+00B0 Grad-Symbol
message("Durchschnitt \U00D8 und Grad \U00B0 Symbole")
# Übersichten z.B. bei https://www.rapidtables.com/code/text/unicode-characters.html
# Unicode ohne Leerzeichen dahinter braucht geschweifte Klammern: \U{00B0}Celsius

# Passe die obige Lösung an:
# - Verwende "DSYMB Ozon  [ppb]" für ylab (mit D8 Durchschnitt Symbol)
# - Verwende "Temperatur  [GSYMBFahrenheit]" für xlab (mit B0 Grad-Symbol)
# Behalte die zwei Leerzeichen für eine schöne visuelle Abtrennung der Einheiten.
message("Durchschnitt \U00D8 und Grad \U00B0 Symbole")
# Verwende Unicode-Symbole für die Achsenbeschriftungen
ylab <- "DSYMB Ozon  [ppb]"
xlab <- "Temperatur  [GSYMBFahrenheit]"
plot(airquality$Temp, airquality$Ozone, pch=21, col="#FFA50080", 
     xlab=xlab, ylab=ylab, main="Mehr Ozon an warmen Tagen",
     ylim=c(0, 200), xlim=c(50, 100))
points(airquality$Temp, airquality$Ozone, pch=21, col="#FFA50080", 
       cex=airquality$Wind/5)

# A3 ----
# Füge eine horizontale Linie beim durchschnittlichen Ozonwert ein.
# Erinnere dich an Lektion 3.5 Fehldaten.
avg_ozone <- mean(airquality$Ozone, na.rm=TRUE)
abline(h=avg_ozone, col="red", lty=2)

# t3_ende


# A4 ----
# Füge rechtsbündigen Text "30. Mai" an der Koordinate (78, 115) hinzu.
# Für den Test müssen die Argumentnamen explizit angegeben werden.
text(78, 115, "30. Mai", pos=4)


# A5 ----
# Füge links oben im Diagramm eine Legende hinzu mit den Einträgen
leg_wind <- c(2,5,10,20)
legend("topleft", legend=paste("Windgeschwindigkeit ", leg_wind, " [mph]"), 
       pch=21, col="#FFA50080", pt.cex=leg_wind/5)

# - Verwende für die Legende den gleichen Punkttyp wie in der Grafik selbst.
# - Verwende die Farbe "orange".
# - Verwende "Windgeschwindigkeit  [mph]" für den Titel der Legende.
# - Die Punktgröße soll proportional zur dargestellten Windgeschwindigkeit sein.
#   Wie auch in A1 muss dazu durch 5 geteilt werden. 
#   (Siehe für das Argument auch 4.4 Hinzufügen A2)
# t5_start

# t5_ende


# Mache weiter in "R49_Grafiken_2.R"
codeoceanR::rt_plot2() 
