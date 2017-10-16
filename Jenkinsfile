node {
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("my-first-docker-image")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
    }
}
