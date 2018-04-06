# config for jira cli
# https://github.com/sumoheavy/jira-ruby
if [ -x "#(command -v jira)" ]; then
  alias jql='jira issue jql'
  # case insensitive issue search
  function j {
    issue=$1
    jira issue ${issue^^}
  }
fi
