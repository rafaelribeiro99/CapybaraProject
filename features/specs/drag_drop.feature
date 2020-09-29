#language: en

@DragSmileyFace
Feature: Drag Drop

- As user: create a user

Scenario: Drag Drop Smiley Face
When i drag the smiley face to the dropzone
Then dropzone is colored in green