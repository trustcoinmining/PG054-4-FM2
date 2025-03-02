# FM2 board tendom Prom and PCI-e prebuilt , base on pg054-7series-pcie.

PCI-e PROM and PCI-e Application Tutorial for FM2, port from Xilinx pg054 tutorial

## Here is PCI-e usage examples for FM2 board.

You can refer here. [pg054 Xilinx pdf page from 157](https://www.xilinx.com/support/documentation/ip_documentation/pcie_7x/v3_0/pg054-7series-pcie.pdf)

archive is pre-built (synthesized) vivado projects.

You can customize it from the `./pcie_7x_0_ex/import/pci_app_7x.v `

After bistream generation , we are providing the pci-e rescan scripts.

```
# pci-e rescan
$ sudo ./rescan2.sh

lspci | grep Xilinx 

01:00.0 Memory Conroller: Xilinx Corporation Device 7024
```

## Directory structure

1> tandem prom : 
```
prom/mcs-bitstream-prom   # includes bitstream and mcs files
prom/pcie_7x_0_ex         # full synthesized vivado projects

pci-e/mcs-bitstream-pcie   # includes 2 bitstream and mcs files , 1 is boot prom, 2 is test pcie prom
pci-e/pcie_7x_0_ex         # full synthesized vivado projects

utils/tcm-fm-tpcie_sw      # tandem FPC kernel module and test sw
utils/rescan2.sh           # fpga pcie device rescan scripts, no need to reboot your PC.
```

You can identify it.

Any feedback is welcome and we have a bounty program, share project application source for FM2L.

Thanks.
