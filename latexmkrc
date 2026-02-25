# Build config for this repo
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error %O %S';
$out_dir = 'build';
$aux_dir = 'build';

# Search paths for class/style/assets
$ENV{'TEXINPUTS'} = join(':', (
  'templates/moderncv//',
  'assets//',
  'src//',
  ($ENV{'TEXINPUTS'} // '')
));
