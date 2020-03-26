pipeline{
    agent {
        docker{
            image "qaninja/rubywd"
        }
    }
    stages {
        stage("Build") {
            steps {
                echo 'simulando um build'
                sh 'rm -f Gemfile.lock'
                sh 'bundle install'
            }
        }
        stage("Tests") {
            steps{
                sh 'bundle exec cucumber -t @boleto'
            }
        }
    }
}