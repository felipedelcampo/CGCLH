import System.IO

main :: IO ()
main = do
        inpStr <- readFile "linear.gcl"
        putStr inpStr