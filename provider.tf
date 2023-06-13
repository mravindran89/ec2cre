terraform {
    required_providers
        {
    aws =
       {
        source = "hasicorp/aws"
        version = "~> 4.0"      
      }
    }
 }
 providers "aws"
   { 
      region = "ap-south-1"
    }
