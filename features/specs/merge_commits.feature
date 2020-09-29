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
When i drag a commit to another with conflict
And i write a merge message
And i press the submit button
Then the will be merged and show a error message

@MergeCommitsNoMsg
Scenario: Merge a commit without a message
When i drag a commit to another
Then the submit button will be disabled

@MergeCommitsClose
Scenario: Merge a commit and close message window
When i drag a commit to another
And i write a merge message
And i press the close button
Then the merge modal will close

@MergeModalDescription
Scenario: Verify the merge description window
When i drag a commit to another
Then verify the merge description window commit hashs