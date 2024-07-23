{
  "Comment": "Power on a VMware VM.",
  "StartAt": "RJPower",
  "States": {
  "RJPower": {
      "Type": "Task",
      "Resource": "docker://docker.io/manageiq/workflows-examples-provision-vm-service-power-on-vm:latest",
      "Next": "SuccessState",
      "Credentials": {
        "vcenter_user.$": "$.vcenter_user",
        "vcenter_password.$": "$.vcenter_password"
      },
      "Parameters": {
        "VCENTER_HOST.$": "$.vcenter_host",
        "VM.$": "$.dialog_vmid"
      }
    },
    "SuccessState": {
        "Type": "Succeed"
    }
}
}
