pipline {
     envirmonment {
        AWS_ACCESS_KEY_ID = credentails ('AWS_ACCESS_KEY_ID')
	AWS_SECRET_ACCESS_KEY = credentails('AWS_SECRET_ACCESS_KEY')
              }

      agent any
      tools {
  terraform 'Terraform'
}
stages
  {
      stage('Checkout')
      {
          steps {
              checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '09a75496-b3b8-4717-ac2c-21343c4fa797', url: 'https://github.com/mravindran89/ec2cre.git']])
               }
      }
          
      stage('Terraform Init')
      {
          steps {
              sh 'terraform init'
               }
       }
   
      stage('Terraform Apply')
         {
          steps {
              sh 'terraform apply --auto-approve'
              }
         } 
   }
}
