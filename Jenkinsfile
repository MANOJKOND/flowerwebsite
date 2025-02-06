pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy to GitHub Pages') {
            steps {
                script {
                    def ghPagesDir = "gh-pages"

                    sh "mkdir -p ${ghPagesDir}"
                    sh "cp -r * ${ghPagesDir}"

                    dir(ghPagesDir) {
                        sh '''
                            git init
                            git checkout -b gh-pages

                            git config --global user.email "kondamanoj9989@gmail.com"
                            git config --global user.name "MANOJKOND"

                            git add .
                            git commit -m "Deploy to GitHub Pages"

                            // Conditional push: force only on the first build
                            if (env.BUILD_NUMBER == '1') {  // Check if it's the first build
                                git push origin gh-pages -f
                            } else {
                                git push origin gh-pages // Normal push for subsequent builds
                            }
                        '''
                    }
                }
            }
        }
    }
}