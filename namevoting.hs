{-
 - Small programm to combine syllables, where some syllables
 - are used only as suffix/prefix
 - 1. Install: GHC
 - 2. Compile: ghc -o namevote namevoting.hs
 - 3. Run: namevote '[Pre "neo", Suf "master", Pre "turbo", Uni "leo", Suf "3000"]'
 -}

module Main where
import System.Environment

data WordType = Pre String | Suf String | Uni String
  deriving Read

buildFixes = foldr splt ([], [])
  
splt (Pre s) (ps, ss) = (s:ps,   ss)  
splt (Suf s) (ps, ss) = (  ps, s:ss)  
splt (Uni s) (ps, ss) = (s:ps, s:ss)  

mult (ps, ss) = [ p ++ s | p <- ps, s <- ss, p /= s]

main = getArgs >>= (putStrLn . show . mult . buildFixes . read . head) 

