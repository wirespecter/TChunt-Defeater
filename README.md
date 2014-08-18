TChunt-Defeater
===============

TChunt-Defeater is an anti-forensics tool built using Delphi that counters TChunt's ability to detect Truecrypt encrypted containers.

The TChunt works using these four attributes:
1. No File Header.
2. (File size % 512) = 0   (Modulo)
3. Successful X2 and Arithmetic Mean tests on certain bytes.
4. File size greater than 19KB (Legacy) or 275KB (Current).

My tool counters the second attribute by adding a few NOPS at the end of the file.
This is enough to fool TChunt.

See the TChunt-Defeater below in action, step by step.

