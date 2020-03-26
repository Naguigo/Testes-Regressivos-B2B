pipeline{
    agent {
        docker{
            image "ruby"
        }
    }
    stages {
        stage("Build") {
            steps {
                echo 'simulando um build'
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