{ stdenv, gnumake, fetchFromGitHub, ffmpeg, xdotool, slop, libnotify }:
stdenv.mkDerivation rec {
  pname = "giph";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "phisch";
    repo = "giph";
    rev = "v${version}";
    sha256 = "1kd42dz4qvzks8dwljnhlnh9j5rgdkdc8zp67igv57yfsfrwl91b";
  };

  nativeBuildInputs = [ gnumake ];
  buildInputs = [ ffmpeg xdotool slop libnotify ];

  meta = with stdenv.lib; {
    description = "Captures your screen and saves it as a gif";
    license = licenses.mit;
    homepage = "https://github.com/phisch/giph";
    maintainers = [ "Extends <sharosari@gmail.com> "];
    platforms = platforms.all;
  };
}
