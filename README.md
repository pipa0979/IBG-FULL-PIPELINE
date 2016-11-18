# FISHR2
This is the newest version of FISHR.

1. Can be used in parallel with Germline
2  Can be used with .hap, .sample,.gen files as well as .ped and .map files.

Example:
./FISHR2 -mapfile ./src/Beagle.Phased.Group2.1k.map -pedfile ./Beagle.Phased.Group2.1k.ped  -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs |gzip > FISHR_OUT.gz



./FISHR2 -mapfile ./src/Beagle.Phased.Group2.1k.map -pedfile ./Beagle.Phased.Group2.1k.ped  -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs |gzip > FISHR_OUT.gz



./FISHR2 -genfile ./src/<filename>.gen -samplefile ./<filename>.sample -hapfile ./<filename>.hap   -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs |gzip > FISHR_OUT.gz


./FISHR2  -mapfile ./src/Beagle.Phased.Group2.1k.map -pedfile ./Beagle.Phased.Group2.1k.ped  -bits 20 -err_hom 0 -err_het 0  -min_cm_initial 3 -homoz  -w_extend -h_extend -min_cm_final 3 -min_snp 64 -window 50 -gap 100 -output-type finalOutput -count.gap.errors TRUE -emp-pie-threshold 0.015 -ma-threshold 0.2 -log-file logs -germline_output ./newFolderHere/ |gzip > FISHR_OUT.gz