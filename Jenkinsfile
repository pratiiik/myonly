node {
  
  def commit_id
  stage('Preparation') {
    checkout scm
    sh "git rev-parse --short HEAD > .git/commit-id"
    commit_id = readFile('.git/commit-id').trim()
    }
  stage('test') {
    nodejs(nodeJSInstallationName: 'Nodejs') {
      sh 'npm install'
      sh 'npm test'
     }
  }
  stage('docker build/push') {
    docker.withregistry('https://index.docker.io/v1/', 'dockerhub') {
      def app = docker.build("7517/jenkins-docker:${commit_id}",'.').push()
    }
  }
}
