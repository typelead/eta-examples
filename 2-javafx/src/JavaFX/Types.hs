{-# LANGUAGE MagicHash, MultiParamTypeClasses, TypeFamilies, DataKinds #-}
module JavaFX.Types where

data {-# CLASS "javafx.application.Application" #-} Application
  = Application (Object# Application)
  deriving Class

data {-# CLASS "javafx.scene.Group" #-} Group
  = Group (Object# Group)
  deriving Class

data {-# CLASS "javafx.scene.Scene" #-} Scene
  = Scene (Object# Scene)
  deriving Class

data {-# CLASS "javafx.scene.shape.Circle" #-} Circle
  = Circle (Object# Circle)
  deriving Class

data {-# CLASS "javafx.stage.Stage" #-} Stage
  = Stage (Object# Stage)
  deriving Class

data {-# CLASS "javafx.scene.Parent" #-} Parent
  = Parent (Object# Parent)
  deriving Class

data {-# CLASS "javafx.scene.Node" #-} Node
  = Node (Object# Node)
  deriving Class

data {-# CLASS "javafx.scene.shape.Shape" #-} Shape
  = Shape (Object# Shape)
  deriving Class

data {-# CLASS "javafx.scene.control.Button" #-} Button
  = Button (Object# Button)
  deriving Class

data {-# CLASS "javafx.collections.ObservableList" #-} ObservableList
  = ObservableList (Object# ObservableList)
  deriving Class

data {-# CLASS "javafx.event.Event" #-} Event
  = Event (Object# Event)
  deriving Class

data {-# CLASS "javafx.event.ActionEvent" #-} ActionEvent
  = ActionEvent (Object# ActionEvent)
  deriving Class

data {-# CLASS "javafx.event.EventHandler" #-} EventHandler a
  = EventHandler (Object# (EventHandler a))
  deriving Class

type instance Inherits Group            = '[Parent]
type instance Inherits Parent           = '[Node]
type instance Inherits Shape            = '[Node]
type instance Inherits Circle           = '[Shape]
type instance Inherits ActionEvent      = '[Event]
