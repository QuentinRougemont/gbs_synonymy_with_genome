# GBS synonymy with genome

# TODO

- Fill README.md
- Run on new dataset and polish

## Set of script to identify synonymous and non synonymous mutation as well as deleterious µ

*   initially developped for GBS data and make use of reference genome and transcriptome of the species
*   I am still testing it with whole genome data

To run the pipeline simply use the script in chronoligcal order

Make sur to read all the scripts and format the data appropriately

#### Note:

the final step of running provean can be done:
*    either in parallel (using `08.b_run_provean_iteration.sh` and `08.a_run_provean_parallel.sh`)

*    or with a single CPUs using the `script 07_run_provean.sh`  

# License

CC share-alike

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">GBS synonymy with genome</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Eric Normandeau</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/enormandeau/gbs_synonymy_with_genome" rel="dct:source">https://github.com/enormandeau/gbs_synonymy_with_genome</a>.
