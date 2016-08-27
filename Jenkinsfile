#!groovy
node('master') {
    stage "build container"
    checkout scm
    def image = docker.build "philbert/django-nginx:0.1.${env.BUILD_NUMBER}"

    stage "publish"
    docker.withRegistry("https://quay.io/v1", "quay-credentials") {
        image.push()
    }
}
