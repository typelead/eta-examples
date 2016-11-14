{-# LANGUAGE MagicHash, MultiParamTypeClasses, TypeFamilies #-}
module JavaFX.Types where

data {-# CLASS "javafx.application.Application" #-} Application
  = Application (Object# Application)

data {-# CLASS "javafx.scene.Group" #-} Group
  = Group (Object# Group)

data {-# CLASS "javafx.scene.Scene" #-} Scene
  = Scene (Object# Scene)

data {-# CLASS "javafx.scene.shape.Circle" #-} Circle
  = Circle (Object# Circle)

data {-# CLASS "javafx.stage.Stage" #-} Stage
  = Stage (Object# Stage)

data {-# CLASS "javafx.scene.Parent" #-} Parent
  = Parent (Object# Parent)

data {-# CLASS "javafx.scene.Node" #-} Node
  = Node (Object# Node)

data {-# CLASS "javafx.scene.shape.Shape" #-} Shape
  = Shape (Object# Shape)

data {-# CLASS "javafx.scene.control.TextField" #-} TextField
  = TextField (Object# TextField)

data {-# CLASS "javafx.scene.control.Button" #-} Button
  = Button (Object# Button)

data {-# CLASS "javafx.scene.control.StackPane" #-} StackPane
  = StackPane (Object# StackPane)

data {-# CLASS "javafx.collections.ObservableList" #-} ObservableList
  = ObservableList (Object# ObservableList)

data {-# CLASS "javafx.event.Event" #-} Event
  = Event (Object# Event)

data {-# CLASS "javafx.event.ActionEvent" #-} ActionEvent
  = ActionEvent (Object# ActionEvent)

data {-# CLASS "javafx.event.EventHandler" #-} EventHandler a
  = EventHandler (Object# (EventHandler a))

instance Class Application where
  obj = Application
  unobj (Application o) = o

instance Class Group where
  obj = Group
  unobj (Group o) = o

instance Class Scene where
  obj = Scene
  unobj (Scene o) = o

instance Class Circle where
  obj = Circle
  unobj (Circle o) = o

instance Class Stage where
  obj = Stage
  unobj (Stage o) = o

instance Class Parent where
  obj = Parent
  unobj (Parent o) = o

instance Class Node where
  obj = Node
  unobj (Node o) = o

instance Class Shape where
  obj = Shape
  unobj (Shape o) = o

instance Class TextField where
  obj = TextField
  unobj (TextField o) = o

instance Class ObservableList where
  obj = ObservableList
  unobj (ObservableList o) = o

instance Class Button where
  obj = Button
  unobj (Button o) = o

instance Class Event where
  obj = Event
  unobj (Event o) = o

instance Class ActionEvent where
  obj = ActionEvent
  unobj (ActionEvent o) = o

instance Class (EventHandler a) where
  obj = EventHandler
  unobj (EventHandler o) = o

type instance Super Group = Parent
type instance Super Parent = Node
type instance Super Shape = Node
type instance Super Circle = Shape
type instance Super Node = Object
type instance Super Event = Object
type instance Super ActionEvent = Event
type instance Super (EventHandler a) = Object
type instance Super Button = Object

