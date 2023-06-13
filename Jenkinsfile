pipeline
 {
     agent any

     tools 
     {
        terraform "jenkin-terraform"
     }
    
    stages
      { 
        stage (" check from GIT")
        {
        steps {
            GIT branch: 'main', credentialsId: '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', url:  'https://github.com/mravindran89/firstec2.git'
              }
        }
    stage ("terraform fmt")
         { 
            steps {
            sh 'terraform init'
                  }
         }
        
    stage (" terraform validate")
        {
           steps {
              sh 'terraform validate'
         
            } 
        }


    stage (" terraform plan")
        {
           steps {
              sh 'terraform plan'
         
            } 
        }

    stage (" terraform apply")
        {
           steps {
              sh 'terraform apply --auto-approve'
         
            } 
        }
      } 
}
