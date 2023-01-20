Remember11 translation patch

translation from
http://www.tsukuru.info/tlwiki/index.php?title=Remember11_-_the_age_of_infinity

Usage:
    run `dl.sh` to slurp all finished chapters from the wiki
    run `make` to regenerate mac.afs after changing the text
    copy R11.exe into remember11/
    copy mac.afs and init.bin into remember11/FILE/

TODO:
  * Use translated menus and tips.
  * Unify various unicode homoglyphs.
  * I just grabbed all the english text from the website, and made no attempt
    to remove translator's notes nor make sure it fits in the text box.
  * I assume some particular formatting of the website; extract_en.pl will fail
    if future additions don't preserve that.
