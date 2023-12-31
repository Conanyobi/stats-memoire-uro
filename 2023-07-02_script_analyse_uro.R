# PACKAGES NECESSAIRES
library(tables)
library(readxl)

# OPTIONS
options("digits" = 2)


# IMPORTATION DES DONNEES
donnees <- read_excel("2023-07-02_DONNEES.xlsx")

# AGE
nb_digits <- 2
donnees$ID_AGE[is.na(donnees$ID_AGE)] <- "(Non précisé)"
donnees$ID_AGE <- as.factor(donnees$ID_AGE)
tabular(Factor(donnees$ID_AGE, "AGE")+1~(n=1) + Percent()*Format(digits = nb_digits), data=donnees)

## SEXE
donnees$ID_SEXE[is.na(donnees$ID_SEXE)] <- "(Non précisé)"
donnees$ID_SEXE <- as.factor(donnees$ID_SEXE)
tabular(Factor(donnees$ID_SEXE, "SEXE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)

## PROFESSION
donnees$ID_PROFESSION[is.na(donnees$ID_PROFESSION)] <- "(Non précisé)"
donnees$ID_PROFESSION <- as.factor(donnees$ID_PROFESSION)
tabular(Factor(donnees$ID_PROFESSION, "PROFESSION")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)

## MOTIF DE CONSULTATION
tabular(Factor(donnees$MOTIF_ERECTIONCONTINUE, "ERECTION CONTINUE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_IMPOSSIBILITETOTALEURINER, "IMPOSSIBILITÉ TOTALE D'URINER")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_URINESROUGESFONCEES, "URINES ROUGES OU FONCEES")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_ANURIE, "ANURIE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_DEVIATIONPENIS, "DEVIATION DU PENIS VERS LE COTE OPPOSE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_TUMEFACTIONVERGE, "TUMEFACTION DE LA VERGE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_URINESMALODORANTES, "URINES MALODORANTES")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_DOULEURSPELVIPERINEALES, "DOULEURS PELVI-PERINEALES")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_ERECTIONINCURVEE, "ERECTION INCURVEE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_FIEVREAEG, "FIEVRE OU AEG")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_DOULEURSLOMBOABDOMINALES, "DOULEURS LOMBO-ABDOMINALES")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_DOULEURSHYPOGASTRIQUES, "DOULEURS HYPOGASTRIQUES")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_DOULEURSTESTICULAIRES, "DOULEURS TESTICULAIRES")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_MOTIFIRO, "IRO")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_MASSELOMBAIRE, "MASSE LOMBAIRE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_MASSEHYPOGASTRIQUE, "MASSE HYPOGASTRIQUE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_TUMEFACTIONSCROTALE, "TUMEFACTION SCROTALE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_PLAIESOGE, "PLAIES DES OGE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_ALTERATIONFCTRENALE, "ALTERATION DE LA FONCTION RENALE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_DYSURIE, "DYSURIE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_PLAIEPENETRANTELOMB, "PLAIE PENETRANTE LOMBAIRE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_SUPPURATIONPOSTAPPEND, "SUPPURATION POST-APPENDICULAIRE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_ERECTDL, "ERECTION DOULOUREUSE")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)
tabular(Factor(donnees$MOTIF_AUTRESMOTIFSCONS, "AUTRES MOTIFS DE CONSULTATION")+1~(n=1) + Percent()*Format(digits = 3), data=donnees)

## SIGNES CLINIQUES

## TYPES URGENCES UROLOGIQUES

## ANTECEDENTS MEDICAUX

## ANTECEDENTS CHIRURGICAUX

## EXAMENS COMPLEMENTAIRES

## ETIOLOGIES

## TRAITEMENT MEDICAL

## TRAITEMENT CHIRURGICAL

## REFERE(E)

## COMPLICATIONS

## DUREE HOSPITALISATION
