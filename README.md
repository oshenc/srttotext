# srttotext
This is a simple command-line subtitle converter. It converts subtitle file to plain text/

## What does it make?

Lets see the example

### Before

```bash
    $cat Star.Wars.Episode.5.The.Empire.Strikes.Back.1980.1080p.BrRip.x264.BOKUTOX.YIFY.srt | head
```
    1
    00:00:05,000 --> 00:00:10,000
    <font color="#20e020">Cleaned, corrected, some OCR errors
    fixed and some timings optimized by Tronar</font>

    2
    00:03:33,585 --> 00:03:35,498
    Echo Three to Echo Seven.

    3

### After 

```bash
    $srt2text Star.Wars.Episode.5.The.Empire.Strikes.Back.1980.1080p.BrRip.x264.BOKUTOX.YIFY.srt | head
```
It produces:

    Cleaned, corrected, some OCR errors
    fixed and some timings optimized by Tronar
    Echo Three to Echo Seven.
    Han, old buddy,
    do you read me?
    Loud and clear, kid.
    What's up?
    Well, I finished my circle.
    I don't pick up any life readings.
    There isn't enough life on this ice cube

## Getting started

Clone the repository using git, make it executable, then move the binary file to one of you bin folders

```bash
git clone https://github.com/oshenc/srttotext.git
cd srttotext
chmod +x srt2text.sh
sudo mv srt2text.sh /usr/local/bin/srt2text
```

## Usage

```bash
$srt2text 
Ussage srt2text SRTFILE
```
By default it outputs text to stdoutput. So you can redirect the output to the file.

E.g

```bash
$srt2text somesrtcfile.srt > output.txt
```

