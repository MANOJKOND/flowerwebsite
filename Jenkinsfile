pipeline {
    agent any  // Run the pipeline on any available Jenkins agent

    stages {
        stage('Checkout') {  // Stage 1: Get the code
            steps {
                checkout scm // Checkout the code from Git (configured in the job)
            }
        }

        stage('Deploy to GitHub Pages') {  // Stage 2: Deploy the website
            steps {
                sh '''
                    git config --global user.email "kondamanoj9989@gmail.com"  // Set Git email
                    git config --global user.name "MANOJKOND"  // Set Git name

                    git init  // Initialize a Git repo (needed for gh-pages branch)
                    git checkout -b gh-pages  // Create or switch to the gh-pages branch

                    rm -rf *  // Remove everything in the gh-pages branch (important!)

                    cp -r * .  // Copy all website files from the workspace to gh-pages

                    git add .  // Add all files for commit
                    git commit -m "Deploy to GitHub Pages"  // Commit the changes

                    git push origin gh-pages -f // Push to gh-pages (force on first run)
                '''
            }
        }
    }
}