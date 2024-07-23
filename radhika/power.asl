{
  "Comment": "Power on a VMware VM.",
  "StartAt": "RJPowernew",
  "States": {
  "RJPowernew": {
      "Type": "Task",
      "Resource": "docker://docker.io/radhika500/workflows-examples-provision-vm-service-poweronvmimg:latest",
      "Next": "SuccessState",
      "Credentials": {
        "vcenter_user.$": "$.vcenter_user",
        "vcenter_password.$": "$.vcenter_password"
      },
      "Parameters": {
        "VCENTER_HOST.$": "$.dialog_vchost",
        "VM.$": "$.dialog_vmid"
      }
    },
    "SuccessState": {
        "Type": "Succeed"
    }
}
}
