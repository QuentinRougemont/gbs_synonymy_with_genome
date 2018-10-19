# GBS synonymy with genome

# TODO

- Fill README.md
- Run on new dataset and polish

## Dependencies:

**NCBI-blast** [v2.4](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.4.0/)

**Provean** [software](http://provean.jcvi.org/downloads.php)

**cdhit** [software](https://github.com/weizhongli/cdhit)

**Blast db nr** that can be download on ncbi [website](ftp://ftp.ncbi.nlm.nih.gov/blast/db/) 

### to identify deleterious mutation 

* read all scripts and see the help before running them
* run scripts one by one in chronological order
* for provean you need to edit the file `provean.sh` located with the software

  *  in particular you need to provide the path to the various dependencies
    * e.g.:

      * `BLAST_DB="/home/ressources/db_nr_and_vertebrates/nr" `

      * `PSIBLAST="/home/qurou/software/ncbi-blast-2.4.0+/bin//psiblast" `    

      * `CD_HIT="/home/qurou/software/cdhit//cd-hit `"                        

      * `BLASTDBCMD="/home/qurou/software/ncbi-blast-2.4.0+/bin//blastdbcmd"` 


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
