﻿module Analise.Lexica.Token where

data Token =    Identificador [Char] Int Int | 
                ConstanteNumerica [Char] Int Int |
                ConstanteString [Char] Int Int |
                Pontuacao [Char] Int Int 
                deriving Show
                
obterValor :: Token -> [Char]
obterValor (Identificador c _ _) = c
obterValor (ConstanteNumerica c _ _) = c
obterValor (ConstanteString c _ _) = c
obterValor (Pontuacao c _ _) = c

posX :: Token -> Int
posX (Identificador _ x _) = x
posX (ConstanteNumerica _ x _) = x
posX (ConstanteString _ x _) = x
posX (Pontuacao _ x _) = x

posY :: Token -> Int
posY (Identificador _ _ y) = y
posY (ConstanteNumerica _ _ y) = y
posY (ConstanteString _ _ y) = y
posY (Pontuacao _ _ y) = y