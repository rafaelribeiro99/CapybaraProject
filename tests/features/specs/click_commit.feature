#language: en

@GitApp
@GitDiffComponent
@ClickCommit
Feature: Click Commit

- As user: Click a commit

@ClickCommitOne
Scenario: Click Commit One
When i click in the commit one
Then the commit one git diff appears

@ClickCommitTwo
Scenario: Click Commit Two
When i click in the commit two
Then the commit two git diff appears