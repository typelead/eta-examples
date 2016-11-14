{-# LANGUAGE MagicHash #-}
module CalculatorApp where

import Java
import JavaFX.Types
import JavaFX.Methods

data {-# CLASS "org.eta.CalculatorApp extends javafx.application.Application" #-}
  CalculatorApp = CalculatorApp (Object# CalculatorApp)


start :: Stage -> Java CalculatorApp ()
start stage = do
 circle <- newCircle 40 40 30
 button <- newButton "Click Me!"
 root <- newGroup
 scene <- newScene root 400 300
 button <.> setOnAction (\_ -> io $ print 100)
 root <.> getChildren >- (do addChild circle
                             addChild button)
  --mapM addChild [circle, button]
 stage <.> (do setTitle "My JavaFX Application"
               setScene scene
               showStage)

foreign export java "start" start :: Stage -> Java CalculatorApp ()
