workflow helloUncompressGZ {
  call UncompressGZ
}

task UncompressGZ {
  String sampleName
  File inputGZ
  String docker
  command {
  gunzip ${inputGZ}
  }
  output {
    File outputGZ = "${sampleName}.fastq"
  }
  runtime {
		docker: docker
  }
}
