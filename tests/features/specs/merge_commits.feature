#language: en

@GitApp
@GitDiffComponent
@MergeCommits
Feature: Merge Commits

- As user: Merge commits but clicking and dragging from one commit to the other

@MergeCommitsSuccess
Scenario: Merge a commit
When i drag a commit to another
And i write a merge message
And i press the submit button
Then the will be merged and show a sucess message

@MergeCommitsConflict
Scenario: Merge a commit with conflict
When i drag a commit to another
And i write a merge message
And i press the submit button
Then the will be merged and show a error message