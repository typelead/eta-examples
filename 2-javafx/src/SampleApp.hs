{-# LANGUAGE MagicHash #-}
module SampleApp where

import Java
import JavaFX.Types
import JavaFX.Methods

data {-# CLASS "org.eta.SampleApp extends javafx.application.Application" #-}
  SampleApp = SampleApp (Object# SampleApp)

start :: Stage -> Java SampleApp ()
start stage = do
 circle <- newCircle 40 40 30
 button <- newButton "Click Me!"
 root <- newGroup
 scene <- newScene root 400 300
 button <.> setOnAction (\_ -> io $ print 100)
 root <.> getChildren >- (do addChild circle
                             addChild button)
 stage <.> (do setTitle "My JavaFX Application"
               setScene scene
               showStage)

foreign export java "start" start :: Stage -> Java SampleApp ()
