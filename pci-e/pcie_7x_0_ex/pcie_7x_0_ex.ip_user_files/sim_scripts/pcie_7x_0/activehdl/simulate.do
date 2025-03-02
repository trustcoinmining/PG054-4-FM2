onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+pcie_7x_0 -L xil_defaultlib -L xpm -L fifo_generator_v13_1_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pcie_7x_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {pcie_7x_0.udo}

run -all

endsim

quit -force
