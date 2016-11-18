# FISHR2
This is the newest version of FISHR which detects IBD segments between individuals.


To Compile FISHR2: 
- Navigate to folder where the makefile exists and type 'make' in your command line. 
- This will create a binary file FISHR2 in the directory.
- To execute the program refer the samples below.



Note:

-  Can be used in parallel with Germline
-  Can be used with .hap, .sample,.gen files as well as .ped and .map files.

Known Issues:
- Boost libraries missing:
FIX: sudo apt-get install libboost-all-dev.
Use the commmand above to install boost in your Unix/mac system.

- If thre's a problem installing boost, there is a binary  file called 'FISHR2' already included. You needn't compile it. You can just start using it. See the Samples Below.


Extra/New features:
- To use -gen, -hap, -map files use:
 -genfile ./src/<filename>.gen -samplefile ./<filename>.sample -hapfile ./<filename> 
- Specifying -germline_output ./newFolderHere/ with put the output generated by germline in the specified path.
It will create that new folder if it doesn't exists, if folder already exists it uses the existing folder. 
Not mentioning the -germline_output, will not output any file generated by germline. 



Example:
./FISHR2 -mapfile ./src/Beagle.Phased.Group2.1k.map -pedfile ./src/Beagle.Phased.Group2.1k.ped  -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs |gzip > FISHR_OUT.gz



./FISHR2 -mapfile ./src/Beagle.Phased.Group2.1k.map -pedfile ./src/Beagle.Phased.Group2.1k.ped  -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs |gzip > FISHR_OUT.gz



./FISHR2 -genfile ./src/<filename>.gen -samplefile ./src/<filename>.sample -hapfile ./src/<filename>.hap   -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs |gzip > FISHR_OUT.gz


./FISHR2  -mapfile ./src/Beagle.Phased.Group2.1k.map -pedfile ./src/Beagle.Phased.Group2.1k.ped  -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs -germline_output ./newFolderHere/ |gzip > FISHR_OUT.gz