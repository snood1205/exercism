var DnaTranscriber = function() {};

DnaTranscriber.prototype.toRna = function(dna) {
  var rna = "";
  for (var i = 0; i < dna.length; i++) {
    switch(dna[i]) {
      case 'G':
        rna += 'C';
        break;
      case 'C':
        rna += 'G';
        break;
      case 'T':
        rna += 'A';
        break;
      default:
        rna += 'U';
    }
  }
  return rna;
};

module.exports = DnaTranscriber;