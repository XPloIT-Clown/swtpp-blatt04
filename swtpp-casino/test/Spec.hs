import Test.Hspec
import Command

-- Aufgabe 3.b)
main :: IO ()
main = hspec $ do
    describe "Command.toCommand" $ do
        it "creates a Command from Integer" $ do
            eval (toCommand 5) `shouldBe` (5 :: Int)
    describe "Command.eval" $ do
        it "evaluate Put" $
            eval (Put (toCommand 3) (toCommand 5)) `shouldBe`  (7 :: Int)