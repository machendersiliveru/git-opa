package policy.aws.ec2

# Packages 1 level below the `aws` package let you organize your rules
#    according to the services they impact, e.g. aws.ec2 or aws.s3
# All enforce/monitor rules in any package of the form aws.X
#    will be applied to every terraform plan.  The name X is irrelevant
#    and is only useful as a way to organize your rules.
# You may put helpers into packages at deeper levels of the hiearchy,
#    e.g. aws.X.Y, but do not put enforce/monitor rules into those packages
#    since they will not be evaluated unless you use them as helpers.

enforce[decision] {
  data.global.systemtypes["terraform:0.3"].library.provider.aws.s3.unencrypted.v1.unencrypted_s3_bucket[message]

  decision := {
    "allowed": false,
    "message": message
  }
}