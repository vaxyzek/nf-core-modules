/*
 * not actually used - just a placeholder
 */

include { DEEPSOMATIC } from './modules/nf-core/deepsomatic'

workflow {

    main:
        DEEPSOMATIC(
         [[id : 'deepsomatic'], file(params.bam_normal), file(params.bai_normal)],
         [[], file(params.bam_tumor), file(params.bai_tumor)],
         [[], file(params.intervals)],
         ['', file(params.fasta)],
         ['', file(params.fai)],
         ['', []]
        )
}