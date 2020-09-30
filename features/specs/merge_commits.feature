#language: en

@GitApp
@GitDiffComponent
@MergeCommits
Feature: Merge Commits

- As user: Merge commits but clicking and dragging from one commit to the other

@MergeCommitsSuccess
Scenario: Verify merging commits successfully
When i drag a commit to another
And i write a merge message
And i press the submit button
Then the will be merged and show a sucess message

@MergeCommitsWithMessage
Scenario: Merge a commit with a message
When i drag a commit to another
And i write a specific merge message
|message|this is a specific message|
And i press the submit button
Then the will be merged and show a sucess message

@MergeCommitsConflict
Scenario: Verify merging commits with conflict with each other
When i drag a commit to another with conflict
And i write a merge message
And i press the submit button
Then the will be merged and show a error message

@MergeCommitsNoMsg
Scenario: Verify merging commits without a message
When i drag a commit to another
Then the submit button will be disabled

@MergeCommitsClose
Scenario: Verify merging commits and closing the modal
When i drag a commit to another
And i write a merge message
And i press the close button
Then the merge modal will close

@MergeModalDescription
Scenario: Verify the merge description window
When i drag a commit to another
Then verify the merge description window commit hashs