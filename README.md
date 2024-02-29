# az_terra_win_multivm
Creating Azure windows multi vms through terraform

There are few errors which needs to be fixed while attaching azure managed disk .Terraform codes are already there present in main.tf.
These codes are #hashed and needs to be worked on 
few errors were encountered which is pasted below 

Solutions for these can be obtained from below URL 
https://github.com/hashicorp/terraform-provider-azurerm/issues/10905  : which needs to be checked.
https://www.nealshah.dev/posts/2020/05/terraform-for-azure-deploying-multiple-vms-with-multiple-managed-disks/

**Rest Creation of azure windows multiple vms is working fine **
****Errors ****
 on main.tf line 147, in resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach":
│  147:   virtual_machine_id = azurerm_windows_virtual_machine.vm[element(split("_", each.key), 1)].id
│     ├────────────────
│     │ azurerm_windows_virtual_machine.vm is tuple with 3 elements
│     │ each.key is "datadisk_vm-test-1_disk01"





│   on main.tf line 147, in resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach":
│  147:   virtual_machine_id = azurerm_windows_virtual_machine.vm[element(split("_", each.key), 1)].id
│     ├────────────────
│     │ azurerm_windows_virtual_machine.vm is tuple with 3 elements
│     │ each.key is "datadisk_vm-test-3_disk01"
│
│ The given key does not identify an element in this collection value: a number is required.



 Error: updating Virtual Machine "Virtual Machine: (Name \"win-vm-0\" / Resource Group \"count-test-win\")"  with Disk "datadisk_vm-test-2_disk00": compute.VirtualMachinesClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="InvalidParameter" Message="A disk at LUN 0 already exists." Target="dataDisk.lun"
│
│   with azurerm_virtual_machine_data_disk_attachment.managed_disk_attach["datadisk_vm-test-2_disk00"],
│   on main.tf line 144, in resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach":
│  144: resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach" {
│
╵


Invalid index
│
│   on main.tf line 148, in resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach":
│  148:   virtual_machine_id = azurerm_windows_virtual_machine.vm[ "element(split, each.key), 1" ].id
│     ├────────────────
│     │ azurerm_windows_virtual_machine.vm is tuple with 3 elements
│
│ The given key does not identify an element in this collection value: a number is required.


