FISHR2:
	g++ -O2 -o ./binaries/FISHR2 -I include    ./src/ErrorFinderManager.cpp ./src/Consolidator.cpp ./src/ErrorCalculator.cpp ./src/Compute.cpp ./src/Gen.cpp ./src/Haps.cpp ./src/Sample.cpp ./src/GERMLINE_0001.cpp ./src/GERMLINE.cpp ./src/Share.cpp ./src/Chromosome.cpp ./src/ChromosomePair.cpp ./src/HMIndividualsExtractor.cpp ./src/MarkerSet.cpp ./src/Individual.cpp ./src/Individuals.cpp ./src/InputManager.cpp ./src/MatchFactory.cpp ./src/MatchesBuilder.cpp ./src/NucleotideMap.cpp ./src/PEDIndividualsExtractor.cpp ./src/Match.cpp ./src/PolymorphicIndividualsExtractor.cpp ./src/SNP.cpp ./src/SNPPositionMap.cpp ./src/SNPs.cpp
PARAMETER_FINDER:
	g++ -O2 -o ./utilities/parameter_finder_binaries/parameter_finder ./utilities/parameter_finder/ErrorFinderMain.cpp
clean:
	rm -rf ./binaries/FISHR2 ./utilities/parameter_finder_binaries/parameter_finder
