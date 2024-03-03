pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/AlexanderSchelokov/devops-netology.git'
            }
        }

        stage('Molecule Test') {
            steps {
                sh 'molecule test'
            }
        }
    }
}
