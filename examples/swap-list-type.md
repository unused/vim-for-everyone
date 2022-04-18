<!--
We have an ordered list and want to switch it to an unordered one. A quick
approach is to record a macro changing the content from the beginning of
a line up to the `.` character to a space and `-`.

  qqc. -<ESC>j0q10@q

Using visual block might be a quicker approach here e.g. using end of file `G`.

  <Ctrl+v>Gllc -<ESC>

Note: We can also go the other way round, replacing the dash character with
      zero, then using visual block on the zero and "go" increase `g<Ctrl+a>`.
-->

Content:

   1. One
   2. Two
   3. Three
   4. Four
   5. Five
   6. Six
   7. Seven
   8. Eight
   9. Nine
  10. Ten
  11. Eleven

Result:

  - One
  - Two
  - Three
  - Four
  - Five
  - Six
  - Seven
  - Eight
  - Nine
  - Ten
  - Eleven
