# this is not a shortcuts I need, but the shortcuts I deserve
alias d='docker'
alias de='docker-compose'
alias der='docker-compose run --rm'
alias drake='docker-compose run --rm app bundle exec rake'
alias dspec='docker-compose run -e RAILS_ENV=test --rm app bundle exec rspec'
alias dbundle='docker-compose run --rm app bundle'
alias drails='docker-compose run --rm app bundle exec rails'
alias dstandard='docker-compose run --rm app bundle exec standardrb'
alias dbash='docker-compose run --rm app bash'
alias dyarn='docker-compose run --rm app bundle exec yarn'
alias dwebpack='docker-compose run --rm app bin/webpack --watch'
alias hyde="docker-compose run --rm app bundle exec jekyll build --source jekyll/ --destination app/views/static"
alias dhamlint="dbundle exec haml -E utf-8 -c $@"
alias daudit="docker-compose run --rm app bundle exec bundle-audit"
alias docktrenchremote="ssh jan.palka@office1.int.railwaymen.org -p 10622"
