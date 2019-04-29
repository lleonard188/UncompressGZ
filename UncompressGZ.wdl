workflow helloUncompressGZ {
  call UncompressGZ
}

task UncompressGZ {
  String sampleName
  File inputGZ
  String docker
  command {
  gunzip ${inputGZ} > ${sampleName}.fastq
  }
  output {
    File outputGZ = "${sampleName}.fastq"
  }
  runtime {
		docker: docker
  }
}
