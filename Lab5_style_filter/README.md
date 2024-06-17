# SOC
## Introduction
We have created a style filter that can transform photo styles (as shown in the picture). Then, we integrate the style filter IP into FSIC and run the FPGA simulation successfully. It completes its functionality according to the following processes : 

 - First, the image is split into three channels (RGB), and the Edge_Detector module detects the edges.
 - Next, K-means clustering is applied for segmentation.
 - Finally, the result is processed by mixRGB to transform the style.
 
then , we obtain the image with the transformed style
## HLS
+ run csim(in ./bin)
```
cd ../ && make
cd ./bin
./SCVerify_EdgeDetect.exe ./test.bmp out_algorithm.bmp out_hw.bmp
```
+ catapult
    + in catapult_work
```
catapult -f ./directory
```

## Brief description about the project
The project is mainly divided into three modules.
 - Edge-detector : Based on the Edge-Detector lab, we have expanded it to 3 channels. Its function is to perform an AND operation with K-means clustering on the detected lines to obtain the style-transformed lines.
 - K-means : It is responsible for clustering the image, reducing the differences between color blocks, and achieving the style transformation effect.
 - mix RGB : It is responsible for merging the Edge-Detector with K-means clustering to obtain the final image.

## Folder structure
    Lab5_style_filter
        asic_flow
            gate-level netlist
        doc
        src
            HLS C++ source code (directive file )
            vivado
            fsic_tb
        
 
## Build Setup – how to rebuild the result
### Environment variables settings, e.g. PATH
```
FSIC simulation
cd src
cd vivado
./run_vivado_fsic_sim
```

### Tool versions
Ubuntu 20.04 with Vivado 2022.1
### Steps to build/download test data, configuration
use fsic_tb.sv 
1. reset system
2. reset dma
3. configure dma s2m m2s memory size and allocation 
4. configure dma data transfer size 
5. configure style filter height and weight
6. configure ap_start and dma start
7. verification log 

### Steps for FPGA bitstream generation
(in vivado folder)./run_vivado_fsic
open vivado xpr

## Run test
### Unit test 
    DMA: 
        cd vivado
        cd vitis_prj
        cd hls_userdma
        vitis_hls -f script.tcl

### Integration test 
    cd src
        cd vivado
        ./run_vivado_fsic_sim