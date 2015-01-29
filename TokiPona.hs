module TokiPona where

import Data.Maybe

data Sentence = NullSentence | Interj Word | SentInd SubCl Voc Subj Pred |
                SentVoc SubCl Voc Pred

data SubCl    = NullSubCl | SentLa Sentence | NounLa NounPhr

data Voc      = NullVoc | O NounPhr

data Subj     = Mi | Sina | Li NounPhr

data Pred     = Being NounPhr PrepPhr | Doing VerbPhr PrepPhr |
                And Pred Pred | Or Pred Pred

data NounPhr  = NullNounPhr | Mod Word Modif | Pi NounPhr NounPhr | 
                NConj NounPhr Conj NounPhr

data Conj     = Anu | En

data PrepPhr  = NullPrepPhr | Dir Prep NounPhr

data VerbPhr  = Verb Verbal | VerbalMod Modal Verbal | NegVerbal Verbal |
                NegModal Modal Verbal

data Verbal   = VerbMod Word Modif | VerbTMod Word Modif Obj | Lon NounPhr |
                Tawa NounPhr

data Modal    = Kama | Ken | Wile

data Obj      = E NounPhr
