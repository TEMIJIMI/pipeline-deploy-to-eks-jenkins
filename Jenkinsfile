#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh "terraform init"
                        sh "terraform destroy -auto-approve"
                    }
                }
            }
        }
    }
    //     stage("Deploy to EKS") {
    //         steps {
    //             script {
    //                 dir('kubernetes') {
    //                     sh "aws eks update-kubeconfig --name myapp-eks-cluster"
    //                     sh "kubectl apply -f namespace.yaml"
    //                     sh "kubectl apply -f db-deployment.yaml"
    //                     sh "kubectl apply -f db-service.yaml"
    //                     sh "kubectl apply -f redis-deployment.yaml"
    //                     sh "kubectl apply -f redis-service.yaml"
    //                     sh "kubectl apply -f result-deployment.yaml"
    //                     sh "kubectl apply -f result-service.yaml"
    //                     sh "kubectl apply -f vote-deployment.yaml"
    //                     sh "kubectl apply -f vote-service.yaml"
    //                     sh "kubectl apply -f worker-deployment.yaml" 
    //                 }
    //                 dir('kubernetes,socks-app') {
    //                     sh "kubectl apply -f socks-app.yaml"
    //                 }
    //             }
    //         }
    //     }
    // }
    // stages {
    //     stage("Destroy EKS Cluster") {
    //         steps {
    //             script {
    //                 dir('terraform') {
    //                     sh "terraform destroy -auto-approve"
    //                 }
    //             }
    //         }
    //     }
    // }
}