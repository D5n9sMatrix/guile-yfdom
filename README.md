
<!-- saved from url=(0081)https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html -->
<html><!-- Created on May 2, 2002 by texi2html 1.64 --><!-- 
Written by: Lionel Cons <Lionel.Cons@cern.ch> (original author)
            Karl Berry  <karl@freefriends.org>
            Olaf Bachmann <obachman@mathematik.uni-kl.de>
            and many others.
Maintained by: Olaf Bachmann <obachman@mathematik.uni-kl.de>
Send bugs and suggestions to <texi2html@mathematik.uni-kl.de>
 
--><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>GNU Emacs Lisp Reference Manual: Strings and Characters</title>

<meta name="description" content="GNU Emacs Lisp Reference Manual: Strings and Characters">
<meta name="keywords" content="GNU Emacs Lisp Reference Manual: Strings and Characters">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="texi2html 1.64">

</head>

<body lang="EN" bgcolor="#FFFFFF" text="#000000" link="#0000FF" vlink="#800080" alink="#FF0000">

<a name="SEC68"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_3.html#SEC67"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC69"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_3.html#SEC57"> &lt;&lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_5.html#SEC78"> &gt;&gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h1> 4. Strings and Characters </h1>
<!--docid::SEC68::-->
<p>

  A string in Emacs Lisp is an array that contains an ordered sequence
of characters.  Strings are used as names of symbols, buffers, and
files; to send messages to users; to hold text being copied between
buffers; and for many other purposes.  Because strings are so important,
Emacs Lisp has many functions expressly for manipulating them.  Emacs
Lisp programs use strings more often than individual characters.
</p><p>

  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_21.html#SEC308">21.6.14 Putting Keyboard Events in Strings</a>, for special considerations for strings of
keyboard character events.
</p><p>

</p><blockquote><table border="0" cellspacing="0"> 
<tbody><tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC69">4.1 String and Character Basics</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Basic properties of strings and characters.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC70">4.2 The Predicates for Strings</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Testing whether an object is a string or char.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC71">4.3 Creating Strings</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Functions to allocate new strings.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC72">4.4 Modifying Strings</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Altering the contents of an existing string.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC73">4.5 Comparison of Characters and Strings</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Comparing characters or strings.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC74">4.6 Conversion of Characters and Strings</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Converting to and from characters and strings.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC75">4.7 Formatting Strings</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP"><code>format</code>: Emacs's analogue of <code>printf</code>.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC76">4.8 Case Conversion in Lisp</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Case conversion functions.</td></tr>
<tr><td align="left" valign="TOP"><a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC77">4.9 The Case Table</a></td><td>&nbsp;&nbsp;</td><td align="left" valign="TOP">Customizing case conversion.</td></tr>
</tbody></table></blockquote>
<p>

<a name="String Basics"></a>
</p><hr size="6">
<a name="SEC69"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC68"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC70"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.1 String and Character Basics </h2>
<!--docid::SEC69::-->
<p>

  Characters are represented in Emacs Lisp as integers;
whether an integer is a character or not is determined only by how it is
used.  Thus, strings really contain integers.
</p><p>

  The length of a string (like any array) is fixed, and cannot be
altered once the string exists.  Strings in Lisp are <em>not</em>
terminated by a distinguished character code.  (By contrast, strings in
C are terminated by a character with ASCII code 0.)
</p><p>

  Since strings are arrays, and therefore sequences as well, you can
operate on them with the general array and sequence functions.
(See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC90">6. Sequences, Arrays, and Vectors</a>.)  For example, you can access or
change individual characters in a string using the functions <code>aref</code>
and <code>aset</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC93">6.3 Functions that Operate on Arrays</a>).
</p><p>

  There are two text representations for non-ASCII characters in
Emacs strings (and in buffers): unibyte and multibyte (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_33.html#SEC542">33.1 Text Representations</a>).  An ASCII character always occupies one byte in a
string; in fact, when a string is all ASCII, there is no real
difference between the unibyte and multibyte representations.
For most Lisp programming, you don't need to be concerned with these two
representations.
</p><p>

  Sometimes key sequences are represented as strings.  When a string is
a key sequence, string elements in the range 128 to 255 represent meta
characters (which are large integers) rather than character
codes in the range 128 to 255.
</p><p>

  Strings cannot hold characters that have the hyper, super or alt
modifiers; they can hold ASCII control characters, but no other
control characters.  They do not distinguish case in ASCII control
characters.  If you want to store such characters in a sequence, such as
a key sequence, you must use a vector instead of a string.
See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_2.html#SEC22">2.3.3 Character Type</a>, for more information about the representation of meta
and other modifiers for keyboard input characters.
</p><p>

  Strings are useful for holding regular expressions.  You can also
match regular expressions against strings (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_34.html#SEC572">34.3 Regular Expression Searching</a>).  The
functions <code>match-string</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_34.html#SEC577">34.6.2 Simple Match Data Access</a>) and
<code>replace-match</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_34.html#SEC576">34.6.1 Replacing the Text that Matched</a>) are useful for
decomposing and modifying strings based on regular expression matching.
</p><p>

  Like a buffer, a string can contain text properties for the characters
in it, as well as the characters themselves.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_32.html#SEC523">32.19 Text Properties</a>.
All the Lisp primitives that copy text from strings to buffers or other
strings also copy the properties of the characters being copied.
</p><p>

  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_32.html#SEC493">32. Text</a>, for information about functions that display strings or
copy them into buffers.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_2.html#SEC22">2.3.3 Character Type</a>, and <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_2.html#SEC29">2.3.8 String Type</a>,
for information about the syntax of characters and strings.
See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_33.html#SEC541">33. Non-ASCII Characters</a>, for functions to convert between text
representations and to encode and decode character codes.
</p><p>

<a name="Predicates for Strings"></a>
</p><hr size="6">
<a name="SEC70"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC69"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC71"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.2 The Predicates for Strings </h2>
<!--docid::SEC70::-->
<p>

For more information about general sequence and array predicates,
see <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC90">6. Sequences, Arrays, and Vectors</a>, and <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC92">6.2 Arrays</a>.
</p><p>

<a name="IDX146"></a>
</p><dl>
<dt><u>Function:</u> <b>stringp</b> <i>object</i>
</dt><dd>This function returns <code>t</code> if <var>object</var> is a string, <code>nil</code>
otherwise.
</dd></dl>
<p></p><p>

<a name="IDX147"></a>
</p><dl>
<dt><u>Function:</u> <b>char-or-string-p</b> <i>object</i>
</dt><dd>This function returns <code>t</code> if <var>object</var> is a string or a
character (i.e., an integer), <code>nil</code> otherwise.
</dd></dl>
<p></p><p>

<a name="Creating Strings"></a>
</p><hr size="6">
<a name="SEC71"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC70"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC72"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.3 Creating Strings </h2>
<!--docid::SEC71::-->
<p>

  The following functions create strings, either from scratch, or by
putting strings together, or by taking them apart.
</p><p>

<a name="IDX148"></a>
</p><dl>
<dt><u>Function:</u> <b>make-string</b> <i>count character</i>
</dt><dd>This function returns a string made up of <var>count</var> repetitions of
<var>character</var>.  If <var>count</var> is negative, an error is signaled.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(make-string 5 ?x)
     =&gt; "xxxxx"
(make-string 0 ?x)
     =&gt; ""
</pre></td></tr></tbody></table></p><p>

  Other functions to compare with this one include <code>char-to-string</code>
(see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC74">4.6 Conversion of Characters and Strings</a>), <code>make-vector</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC94">6.4 Vectors</a>), and
<code>make-list</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_5.html#SEC83">5.5 Building Cons Cells and Lists</a>).
</p></dd></dl>
<p></p><p>

<a name="IDX149"></a>
</p><dl>
<dt><u>Function:</u> <b>string</b> <i>&amp;rest characters</i>
</dt><dd>This returns a string containing the characters <var>characters</var>.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(string ?a ?b ?c)
     =&gt; "abc"
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="IDX150"></a>
</p><dl>
<dt><u>Function:</u> <b>substring</b> <i>string start &amp;optional end</i>
</dt><dd>This function returns a new string which consists of those characters
from <var>string</var> in the range from (and including) the character at the
index <var>start</var> up to (but excluding) the character at the index
<var>end</var>.  The first character is at index zero.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(substring "abcdefg" 0 3)
     =&gt; "abc"
</pre></td></tr></tbody></table></p><p>

Here the index for <samp>`a'</samp> is 0, the index for <samp>`b'</samp> is 1, and the
index for <samp>`c'</samp> is 2.  Thus, three letters, <samp>`abc'</samp>, are copied
from the string <code>"abcdefg"</code>.  The index 3 marks the character
position up to which the substring is copied.  The character whose index
is 3 is actually the fourth character in the string.
</p><p>

A negative number counts from the end of the string, so that -1
signifies the index of the last character of the string.  For example: 
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(substring "abcdefg" -3 -1)
     =&gt; "ef"
</pre></td></tr></tbody></table></p><p>

In this example, the index for <samp>`e'</samp> is -3, the index for
<samp>`f'</samp> is -2, and the index for <samp>`g'</samp> is -1.
Therefore, <samp>`e'</samp> and <samp>`f'</samp> are included, and <samp>`g'</samp> is excluded.
</p><p>

When <code>nil</code> is used as an index, it stands for the length of the
string.  Thus,
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(substring "abcdefg" -3 nil)
     =&gt; "efg"
</pre></td></tr></tbody></table></p><p>

Omitting the argument <var>end</var> is equivalent to specifying <code>nil</code>.
It follows that <code>(substring <var>string</var> 0)</code> returns a copy of all
of <var>string</var>.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(substring "abcdefg" 0)
     =&gt; "abcdefg"
</pre></td></tr></tbody></table></p><p>

But we recommend <code>copy-sequence</code> for this purpose (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC91">6.1 Sequences</a>).
</p><p>

If the characters copied from <var>string</var> have text properties, the
properties are copied into the new string also.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_32.html#SEC523">32.19 Text Properties</a>.
</p><p>

<code>substring</code> also accepts a vector for the first argument.
For example:
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(substring [a b (c) "d"] 1 3)
     =&gt; [b (c)]
</pre></td></tr></tbody></table></p><p>

A <code>wrong-type-argument</code> error is signaled if either <var>start</var> or
<var>end</var> is not an integer or <code>nil</code>.  An <code>args-out-of-range</code>
error is signaled if <var>start</var> indicates a character following
<var>end</var>, or if either integer is out of range for <var>string</var>.
</p><p>

Contrast this function with <code>buffer-substring</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_32.html#SEC495">32.2 Examining Buffer Contents</a>), which returns a string containing a portion of the text in
the current buffer.  The beginning of a string is at index 0, but the
beginning of a buffer is at index 1.
</p></dd></dl>
<p></p><p>

<a name="IDX151"></a>
</p><dl>
<dt><u>Function:</u> <b>concat</b> <i>&amp;rest sequences</i>
</dt><dd><a name="IDX152"></a>
<a name="IDX153"></a>
This function returns a new string consisting of the characters in the
arguments passed to it (along with their text properties, if any).  The
arguments may be strings, lists of numbers, or vectors of numbers; they
are not themselves changed.  If <code>concat</code> receives no arguments, it
returns an empty string.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(concat "abc" "-def")
     =&gt; "abc-def"
(concat "abc" (list 120 121) [122])
     =&gt; "abcxyz"
;; <code>nil</code> is an empty sequence.
(concat "abc" nil "-def")
     =&gt; "abc-def"
(concat "The " "quick brown " "fox.")
     =&gt; "The quick brown fox."
(concat)
     =&gt; ""
</pre></td></tr></tbody></table></p><p>

The <code>concat</code> function always constructs a new string that is
not <code>eq</code> to any existing string.
</p><p>

In Emacs versions before 21, when an argument was an integer (not a
sequence of integers), it was converted to a string of digits making up
the decimal printed representation of the integer.  This obsolete usage
no longer works.  The proper way to convert an integer to its decimal
printed form is with <code>format</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC75">4.7 Formatting Strings</a>) or
<code>number-to-string</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC74">4.6 Conversion of Characters and Strings</a>).
</p><p>

For information about other concatenation functions, see the
description of <code>mapconcat</code> in <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_12.html#SEC169">12.6 Mapping Functions</a>,
<code>vconcat</code> in <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC94">6.4 Vectors</a>, and <code>append</code> in <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_5.html#SEC83">5.5 Building Cons Cells and Lists</a>.
</p></dd></dl>
<p></p><p>

<a name="IDX154"></a>
</p><dl>
<dt><u>Function:</u> <b>split-string</b> <i>string separators</i>
</dt><dd>This function splits <var>string</var> into substrings at matches for the regular
expression <var>separators</var>.  Each match for <var>separators</var> defines a
splitting point; the substrings between the splitting points are made
into a list, which is the value returned by <code>split-string</code>.
If <var>separators</var> is <code>nil</code> (or omitted),
the default is <code>"[ \f\t\n\r\v]+"</code>.
<p></p><p>

For example,
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(split-string "Soup is good food" "o")
=&gt; ("S" "up is g" "" "d f" "" "d")
(split-string "Soup is good food" "o+")
=&gt; ("S" "up is g" "d f" "d")
</pre></td></tr></tbody></table></p><p>

When there is a match adjacent to the beginning or end of the string,
this does not cause a null string to appear at the beginning or end
of the list:
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(split-string "out to moo" "o+")
=&gt; ("ut t" " m")
</pre></td></tr></tbody></table></p><p>

Empty matches do count, when not adjacent to another match:
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(split-string "Soup is good food" "o*")
=&gt;("S" "u" "p" " " "i" "s" " " "g" "d" " " "f" "d")
(split-string "Nice doggy!" "")
=&gt;("N" "i" "c" "e" " " "d" "o" "g" "g" "y" "!")
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="Modifying Strings"></a>
</p><hr size="6">
<a name="SEC72"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC71"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC73"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.4 Modifying Strings </h2>
<!--docid::SEC72::-->
<p>

  The most basic way to alter the contents of an existing string is with
<code>aset</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC93">6.3 Functions that Operate on Arrays</a>).  <code>(aset <var>string</var>
<var>idx</var> <var>char</var>)</code> stores <var>char</var> into <var>string</var> at index
<var>idx</var>.  Each character occupies one or more bytes, and if <var>char</var>
needs a different number of bytes from the character already present at
that index, <code>aset</code> signals an error.
</p><p>

  A more powerful function is <code>store-substring</code>:
</p><p>

<a name="IDX155"></a>
</p><dl>
<dt><u>Function:</u> <b>store-substring</b> <i>string idx obj</i>
</dt><dd>This function alters part of the contents of the string <var>string</var>, by
storing <var>obj</var> starting at index <var>idx</var>.  The argument <var>obj</var>
may be either a character or a (smaller) string.
<p></p><p>

Since it is impossible to change the length of an existing string, it is
an error if <var>obj</var> doesn't fit within <var>string</var>'s actual length,
or if any new character requires a different number of bytes from the
character currently present at that point in <var>string</var>.
</p></dd></dl>
<p></p><p>

<a name="Text Comparison"></a>
</p><hr size="6">
<a name="SEC73"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC72"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC74"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.5 Comparison of Characters and Strings </h2>
<!--docid::SEC73::-->
<p>

<a name="IDX156"></a>
</p><dl>
<dt><u>Function:</u> <b>char-equal</b> <i>character1 character2</i>
</dt><dd>This function returns <code>t</code> if the arguments represent the same
character, <code>nil</code> otherwise.  This function ignores differences
in case if <code>case-fold-search</code> is non-<code>nil</code>.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(char-equal ?x ?x)
     =&gt; t
(let ((case-fold-search nil))
  (char-equal ?x ?X))
     =&gt; nil
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="IDX157"></a>
</p><dl>
<dt><u>Function:</u> <b>string=</b> <i>string1 string2</i>
</dt><dd>This function returns <code>t</code> if the characters of the two strings
match exactly.
Case is always significant, regardless of <code>case-fold-search</code>.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(string= "abc" "abc")
     =&gt; t
(string= "abc" "ABC")
     =&gt; nil
(string= "ab" "ABC")
     =&gt; nil
</pre></td></tr></tbody></table></p><p>

The function <code>string=</code> ignores the text properties of the two
strings.  When <code>equal</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_2.html#SEC56">2.7 Equality Predicates</a>) compares two
strings, it uses <code>string=</code>.
</p><p>

If the strings contain non-ASCII characters, and one is unibyte
while the other is multibyte, then they cannot be equal.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_33.html#SEC542">33.1 Text Representations</a>.
</p></dd></dl>
<p></p><p>

<a name="IDX158"></a>
</p><dl>
<dt><u>Function:</u> <b>string-equal</b> <i>string1 string2</i>
</dt><dd><code>string-equal</code> is another name for <code>string=</code>.
</dd></dl>
<p></p><p>

<a name="IDX159"></a>
<a name="IDX160"></a>
</p><dl>
<dt><u>Function:</u> <b>string&lt;</b> <i>string1 string2</i>
</dt><dd>This function compares two strings a character at a time.  It
scans both the strings at the same time to find the first pair of corresponding
characters that do not match.  If the lesser character of these two is
the character from <var>string1</var>, then <var>string1</var> is less, and this
function returns <code>t</code>.  If the lesser character is the one from
<var>string2</var>, then <var>string1</var> is greater, and this function returns
<code>nil</code>.  If the two strings match entirely, the value is <code>nil</code>.
<p></p><p>

Pairs of characters are compared according to their character codes.
Keep in mind that lower case letters have higher numeric values in the
ASCII character set than their upper case counterparts; digits and
many punctuation characters have a lower numeric value than upper case
letters.  An ASCII character is less than any non-ASCII
character; a unibyte non-ASCII character is always less than any
multibyte non-ASCII character (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_33.html#SEC542">33.1 Text Representations</a>).
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(string&lt; "abc" "abd")
     =&gt; t
(string&lt; "abd" "abc")
     =&gt; nil
(string&lt; "123" "abc")
     =&gt; t
</pre></td></tr></tbody></table></p><p>

When the strings have different lengths, and they match up to the
length of <var>string1</var>, then the result is <code>t</code>.  If they match up
to the length of <var>string2</var>, the result is <code>nil</code>.  A string of
no characters is less than any other string.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(string&lt; "" "abc")
     =&gt; t
(string&lt; "ab" "abc")
     =&gt; t
(string&lt; "abc" "")
     =&gt; nil
(string&lt; "abc" "ab")
     =&gt; nil
(string&lt; "" "")
     =&gt; nil                   
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="IDX161"></a>
</p><dl>
<dt><u>Function:</u> <b>string-lessp</b> <i>string1 string2</i>
</dt><dd><code>string-lessp</code> is another name for <code>string&lt;</code>.
</dd></dl>
<p></p><p>

<a name="IDX162"></a>
</p><dl>
<dt><u>Function:</u> <b>compare-strings</b> <i>string1 start1 end1 string2 start2 end2 &amp;optional ignore-case</i>
</dt><dd>This function compares the specified part of <var>string1</var> with the
specified part of <var>string2</var>.  The specified part of <var>string1</var>
runs from index <var>start1</var> up to index <var>end1</var> (<code>nil</code> means
the end of the string).  The specified part of <var>string2</var> runs from
index <var>start2</var> up to index <var>end2</var> (<code>nil</code> means the end of
the string).
<p></p><p>

The strings are both converted to multibyte for the comparison
(see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_33.html#SEC542">33.1 Text Representations</a>) so that a unibyte string can be equal to
a multibyte string.  If <var>ignore-case</var> is non-<code>nil</code>, then case
is ignored, so that upper case letters can be equal to lower case letters.
</p><p>

If the specified portions of the two strings match, the value is
<code>t</code>.  Otherwise, the value is an integer which indicates how many
leading characters agree, and which string is less.  Its absolute value
is one plus the number of characters that agree at the beginning of the
two strings.  The sign is negative if <var>string1</var> (or its specified
portion) is less.
</p></dd></dl>
<p></p><p>

<a name="IDX163"></a>
</p><dl>
<dt><u>Function:</u> <b>assoc-ignore-case</b> <i>key alist</i>
</dt><dd>This function works like <code>assoc</code>, except that <var>key</var> must be a
string, and comparison is done using <code>compare-strings</code>, ignoring
case differences.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_5.html#SEC89">5.8 Association Lists</a>.
</dd></dl>
<p></p><p>

<a name="IDX164"></a>
</p><dl>
<dt><u>Function:</u> <b>assoc-ignore-representation</b> <i>key alist</i>
</dt><dd>This function works like <code>assoc</code>, except that <var>key</var> must be a
string, and comparison is done using <code>compare-strings</code>.
Case differences are significant.
</dd></dl>
<p></p><p>

  See also <code>compare-buffer-substrings</code> in <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_32.html#SEC496">32.3 Comparing Text</a>, for
a way to compare text in buffers.  The function <code>string-match</code>,
which matches a regular expression against a string, can be used
for a kind of string comparison; see <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_34.html#SEC572">34.3 Regular Expression Searching</a>.
</p><p>

<a name="String Conversion"></a>
</p><hr size="6">
<a name="SEC74"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC73"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC75"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.6 Conversion of Characters and Strings </h2>
<!--docid::SEC74::-->
<p>

  This section describes functions for conversions between characters,
strings and integers.  <code>format</code> and <code>prin1-to-string</code>
(see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_19.html#SEC267">19.5 Output Functions</a>) can also convert Lisp objects into strings.
<code>read-from-string</code> (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_19.html#SEC265">19.3 Input Functions</a>) can "convert" a
string representation of a Lisp object into an object.  The functions
<code>string-make-multibyte</code> and <code>string-make-unibyte</code> convert the
text representation of a string (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_33.html#SEC543">33.2 Converting Text Representations</a>).
</p><p>

  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_24.html#SEC373">24. Documentation</a>, for functions that produce textual descriptions
of text characters and general input events
(<code>single-key-description</code> and <code>text-char-description</code>).  These
functions are used primarily for making help messages.
</p><p>

<a name="IDX165"></a>
</p><dl>
<dt><u>Function:</u> <b>char-to-string</b> <i>character</i>
</dt><dd><a name="IDX166"></a>
This function returns a new string containing one character,
<var>character</var>.  This function is semi-obsolete because the function
<code>string</code> is more general.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC71">4.3 Creating Strings</a>.
</dd></dl>
<p></p><p>

<a name="IDX167"></a>
</p><dl>
<dt><u>Function:</u> <b>string-to-char</b> <i>string</i>
</dt><dd><a name="IDX168"></a>
  This function returns the first character in <var>string</var>.  If the
string is empty, the function returns 0.  The value is also 0 when the
first character of <var>string</var> is the null character, ASCII code
0.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(string-to-char "ABC")
     =&gt; 65
(string-to-char "xyz")
     =&gt; 120
(string-to-char "")
     =&gt; 0
(string-to-char "\000")
     =&gt; 0
</pre></td></tr></tbody></table></p><p>

This function may be eliminated in the future if it does not seem useful
enough to retain.
</p></dd></dl>
<p></p><p>

<a name="IDX169"></a>
</p><dl>
<dt><u>Function:</u> <b>number-to-string</b> <i>number</i>
</dt><dd><a name="IDX170"></a>
<a name="IDX171"></a>
This function returns a string consisting of the printed base-ten
representation of <var>number</var>, which may be an integer or a floating
point number.  The returned value starts with a minus sign if the argument is
negative.
<p></p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(number-to-string 256)
     =&gt; "256"
(number-to-string -23)
     =&gt; "-23"
(number-to-string -23.5)
     =&gt; "-23.5"
</pre></td></tr></tbody></table></p><p>

<a name="IDX172"></a>
<code>int-to-string</code> is a semi-obsolete alias for this function.
</p><p>

See also the function <code>format</code> in <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC75">4.7 Formatting Strings</a>.
</p></dd></dl>
<p></p><p>

<a name="IDX173"></a>
</p><dl>
<dt><u>Function:</u> <b>string-to-number</b> <i>string &amp;optional base</i>
</dt><dd><a name="IDX174"></a>
This function returns the numeric value of the characters in
<var>string</var>.  If <var>base</var> is non-<code>nil</code>, integers are converted
in that base.  If <var>base</var> is <code>nil</code>, then base ten is used.
Floating point conversion always uses base ten; we have not implemented
other radices for floating point numbers, because that would be much
more work and does not seem useful.  If <var>string</var> looks like an
integer but its value is too large to fit into a Lisp integer,
<code>string-to-number</code> returns a floating point result.
<p></p><p>

The parsing skips spaces and tabs at the beginning of <var>string</var>, then
reads as much of <var>string</var> as it can interpret as a number.  (On some
systems it ignores other whitespace at the beginning, not just spaces
and tabs.)  If the first character after the ignored whitespace is
neither a digit, nor a plus or minus sign, nor the leading dot of a
floating point number, this function returns 0.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(string-to-number "256")
     =&gt; 256
(string-to-number "25 is a perfect square.")
     =&gt; 25
(string-to-number "X256")
     =&gt; 0
(string-to-number "-4.5")
     =&gt; -4.5
(string-to-number "1e5")
     =&gt; 100000.0
</pre></td></tr></tbody></table></p><p>

<a name="IDX175"></a>
<code>string-to-int</code> is an obsolete alias for this function.
</p></dd></dl>
<p></p><p>

  Here are some other functions that can convert to or from a string:
</p><p>

</p><dl compact="">
<dt><code>concat</code>
</dt><dd><code>concat</code> can convert a vector or a list into a string.
See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC71">4.3 Creating Strings</a>.
<p>

</p></dd><dt><code>vconcat</code>
</dt><dd><code>vconcat</code> can convert a string into a vector.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC95">6.5 Functions for Vectors</a>.
<p>

</p></dd><dt><code>append</code>
</dt><dd><code>append</code> can convert a string into a list.  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_5.html#SEC83">5.5 Building Cons Cells and Lists</a>.
</dd></dl>
<p>

<a name="Formatting Strings"></a>
</p><hr size="6">
<a name="SEC75"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC74"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC76"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.7 Formatting Strings </h2>
<!--docid::SEC75::-->
<p>

  <em>Formatting</em> means constructing a string by substitution of
computed values at various places in a constant string.  This constant string
controls how the other values are printed, as well as where they appear;
it is called a <em>format string</em>.
</p><p>

  Formatting is often useful for computing messages to be displayed.  In
fact, the functions <code>message</code> and <code>error</code> provide the same
formatting feature described here; they differ from <code>format</code> only
in how they use the result of formatting.
</p><p>

<a name="IDX176"></a>
</p><dl>
<dt><u>Function:</u> <b>format</b> <i>string &amp;rest objects</i>
</dt><dd>This function returns a new string that is made by copying
<var>string</var> and then replacing any format specification 
in the copy with encodings of the corresponding <var>objects</var>.  The
arguments <var>objects</var> are the computed values to be formatted.
<p></p><p>

The characters in <var>string</var>, other than the format specifications,
are copied directly into the output; starting in Emacs 21, if they have
text properties, these are copied into the output also.
</p></dd></dl>
<p></p><p>

<a name="IDX177"></a>
<a name="IDX178"></a>
  A format specification is a sequence of characters beginning with a
<samp>`%'</samp>.  Thus, if there is a <samp>`%d'</samp> in <var>string</var>, the
<code>format</code> function replaces it with the printed representation of
one of the values to be formatted (one of the arguments <var>objects</var>).
For example:
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(format "The value of fill-column is %d." fill-column)
     =&gt; "The value of fill-column is 72."
</pre></td></tr></tbody></table></p><p>

  If <var>string</var> contains more than one format specification, the
format specifications correspond to successive values from
<var>objects</var>.  Thus, the first format specification in <var>string</var>
uses the first such value, the second format specification uses the
second such value, and so on.  Any extra format specifications (those
for which there are no corresponding values) cause unpredictable
behavior.  Any extra values to be formatted are ignored.
</p><p>

  Certain format specifications require values of particular types.  If
you supply a value that doesn't fit the requirements, an error is
signaled.
</p><p>

  Here is a table of valid format specifications:
</p><p>

</p><dl compact="">
<dt><samp>`%s'</samp>
</dt><dd>Replace the specification with the printed representation of the object,
made without quoting (that is, using <code>princ</code>, not
<code>prin1</code>---see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_19.html#SEC267">19.5 Output Functions</a>).  Thus, strings are represented
by their contents alone, with no <samp>`"'</samp> characters, and symbols appear
without <samp>`\'</samp> characters.
<p>

Starting in Emacs 21, if the object is a string, its text properties are
copied into the output.  The text properties of the <samp>`%s'</samp> itself
are also copied, but those of the object take priority.
</p><p>

If there is no corresponding object, the empty string is used.
</p><p>

</p></dd><dt><samp>`%S'</samp>
</dt><dd>Replace the specification with the printed representation of the object,
made with quoting (that is, using <code>prin1</code>---see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_19.html#SEC267">19.5 Output Functions</a>).  Thus, strings are enclosed in <samp>`"'</samp> characters, and
<samp>`\'</samp> characters appear where necessary before special characters.
<p>

If there is no corresponding object, the empty string is used.
</p><p>

</p></dd><dt><samp>`%o'</samp>
</dt><dd><a name="IDX179"></a>
Replace the specification with the base-eight representation of an
integer.
<p>

</p></dd><dt><samp>`%d'</samp>
</dt><dd>Replace the specification with the base-ten representation of an
integer.
<p>

</p></dd><dt><samp>`%x'</samp>
</dt><dd></dd><dt><samp>`%X'</samp>
</dt><dd><a name="IDX180"></a>
Replace the specification with the base-sixteen representation of an
integer.  <samp>`%x'</samp> uses lower case and <samp>`%X'</samp> uses upper case.
<p>

</p></dd><dt><samp>`%c'</samp>
</dt><dd>Replace the specification with the character which is the value given.
<p>

</p></dd><dt><samp>`%e'</samp>
</dt><dd>Replace the specification with the exponential notation for a floating
point number.
<p>

</p></dd><dt><samp>`%f'</samp>
</dt><dd>Replace the specification with the decimal-point notation for a floating
point number.
<p>

</p></dd><dt><samp>`%g'</samp>
</dt><dd>Replace the specification with notation for a floating point number,
using either exponential notation or decimal-point notation, whichever
is shorter.
<p>

</p></dd><dt><samp>`%%'</samp>
</dt><dd>Replace the specification with a single <samp>`%'</samp>.  This format
specification is unusual in that it does not use a value.  For example,
<code>(format "%% %d" 30)</code> returns <code>"% 30"</code>.
</dd></dl>
<p>

  Any other format character results in an <samp>`Invalid format
operation'</samp> error.
</p><p>

  Here are several examples:
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(format "The name of this buffer is %s." (buffer-name))
     =&gt; "The name of this buffer is strings.texi."

(format "The buffer object prints as %s." (current-buffer))
     =&gt; "The buffer object prints as strings.texi."

(format "The octal value of %d is %o, 
         and the hex value is %x." 18 18 18)
     =&gt; "The octal value of 18 is 22, 
         and the hex value is 12."
</pre></td></tr></tbody></table></p><p>

<a name="IDX181"></a>
<a name="IDX182"></a>
<a name="IDX183"></a>
  All the specification characters allow an optional numeric prefix
between the <samp>`%'</samp> and the character.  The optional numeric prefix
defines the minimum width for the object.  If the printed representation
of the object contains fewer characters than this, then it is padded.
The padding is on the left if the prefix is positive (or starts with
zero) and on the right if the prefix is negative.  The padding character
is normally a space, but if the numeric prefix starts with a zero, zeros
are used for padding.  Here are some examples of padding:
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(format "%06d is padded on the left with zeros" 123)
     =&gt; "000123 is padded on the left with zeros"

(format "%-6d is padded on the right" 123)
     =&gt; "123    is padded on the right"
</pre></td></tr></tbody></table></p><p>

  <code>format</code> never truncates an object's printed representation, no
matter what width you specify.  Thus, you can use a numeric prefix to
specify a minimum spacing between columns with no risk of losing
information.
</p><p>

  In the following three examples, <samp>`%7s'</samp> specifies a minimum width
of 7.  In the first case, the string inserted in place of <samp>`%7s'</samp> has
only 3 letters, so 4 blank spaces are inserted for padding.  In the
second case, the string <code>"specification"</code> is 13 letters wide but is
not truncated.  In the third case, the padding is on the right.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="smallexample"><font size="-1"></font><pre><font size="-1">(format "The word `%7s' actually has %d letters in it."
        "foo" (length "foo"))
     =&gt; "The word `    foo' actually has 3 letters in it."  

(format "The word `%7s' actually has %d letters in it."
        "specification" (length "specification")) 
     =&gt; "The word `specification' actually has 13 letters in it."  

(format "The word `%-7s' actually has %d letters in it."
        "foo" (length "foo"))
     =&gt; "The word `foo    ' actually has 3 letters in it."  
</font></pre></td></tr></tbody></table></p><p>

<a name="Case Conversion"></a>
</p><hr size="6">
<a name="SEC76"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC75"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC77"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.8 Case Conversion in Lisp </h2>
<!--docid::SEC76::-->
<p>

  The character case functions change the case of single characters or
of the contents of strings.  The functions normally convert only
alphabetic characters (the letters <samp>`A'</samp> through <samp>`Z'</samp> and
<samp>`a'</samp> through <samp>`z'</samp>, as well as non-ASCII letters); other
characters are not altered.  You can specify a different case
conversion mapping by specifying a case table (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC77">4.9 The Case Table</a>).
</p><p>

  These functions do not modify the strings that are passed to them as
arguments.
</p><p>

  The examples below use the characters <samp>`X'</samp> and <samp>`x'</samp> which have
ASCII codes 88 and 120 respectively.
</p><p>

<a name="IDX184"></a>
</p><dl>
<dt><u>Function:</u> <b>downcase</b> <i>string-or-char</i>
</dt><dd>This function converts a character or a string to lower case.
<p></p><p>

When the argument to <code>downcase</code> is a string, the function creates
and returns a new string in which each letter in the argument that is
upper case is converted to lower case.  When the argument to
<code>downcase</code> is a character, <code>downcase</code> returns the
corresponding lower case character.  This value is an integer.  If the
original character is lower case, or is not a letter, then the value
equals the original character.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(downcase "The cat in the hat")
     =&gt; "the cat in the hat"

(downcase ?X)
     =&gt; 120
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="IDX185"></a>
</p><dl>
<dt><u>Function:</u> <b>upcase</b> <i>string-or-char</i>
</dt><dd>This function converts a character or a string to upper case.
<p></p><p>

When the argument to <code>upcase</code> is a string, the function creates
and returns a new string in which each letter in the argument that is
lower case is converted to upper case.
</p><p>

When the argument to <code>upcase</code> is a character, <code>upcase</code>
returns the corresponding upper case character.  This value is an integer.
If the original character is upper case, or is not a letter, then the
value returned equals the original character.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(upcase "The cat in the hat")
     =&gt; "THE CAT IN THE HAT"

(upcase ?x)
     =&gt; 88
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="IDX186"></a>
</p><dl>
<dt><u>Function:</u> <b>capitalize</b> <i>string-or-char</i>
</dt><dd><a name="IDX187"></a>
This function capitalizes strings or characters.  If
<var>string-or-char</var> is a string, the function creates and returns a new
string, whose contents are a copy of <var>string-or-char</var> in which each
word has been capitalized.  This means that the first character of each
word is converted to upper case, and the rest are converted to lower
case.
<p></p><p>

The definition of a word is any sequence of consecutive characters that
are assigned to the word constituent syntax class in the current syntax
table (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_35.html#SEC585">35.2.1 Table of Syntax Classes</a>).
</p><p>

When the argument to <code>capitalize</code> is a character, <code>capitalize</code>
has the same result as <code>upcase</code>.
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(capitalize "The cat in the hat")
     =&gt; "The Cat In The Hat"

(capitalize "THE 77TH-HATTED CAT")
     =&gt; "The 77th-Hatted Cat"

(capitalize ?x)
     =&gt; 88
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

<a name="IDX188"></a>
</p><dl>
<dt><u>Function:</u> <b>upcase-initials</b> <i>string</i>
</dt><dd>This function capitalizes the initials of the words in <var>string</var>,
without altering any letters other than the initials.  It returns a new
string whose contents are a copy of <var>string</var>, in which each word has
had its initial letter converted to upper case.
<p></p><p>

The definition of a word is any sequence of consecutive characters that
are assigned to the word constituent syntax class in the current syntax
table (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_35.html#SEC585">35.2.1 Table of Syntax Classes</a>).
</p><p>

<table><tbody><tr><td>&nbsp;</td><td class="example"><pre>(upcase-initials "The CAT in the hAt")
     =&gt; "The CAT In The HAt"
</pre></td></tr></tbody></table></p></dd></dl>
<p></p><p>

  See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC73">4.5 Comparison of Characters and Strings</a>, for functions that compare strings; some of
them ignore case differences, or can optionally ignore case differences.
</p><p>

<a name="Case Tables"></a>
</p><hr size="6">
<a name="SEC77"></a>
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_4.html#SEC76"> &lt; </a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_5.html#SEC78"> &gt; </a>]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top"> Up </a>]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<h2> 4.9 The Case Table </h2>
<!--docid::SEC77::-->
<p>

  You can customize case conversion by installing a special <em>case
table</em>.  A case table specifies the mapping between upper case and lower
case letters.  It affects both the case conversion functions for Lisp
objects (see the previous section) and those that apply to text in the
buffer (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_32.html#SEC522">32.18 Case Changes</a>).  Each buffer has a case table; there is
also a standard case table which is used to initialize the case table
of new buffers.
</p><p>

  A case table is a char-table (see section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_6.html#SEC96">6.6 Char-Tables</a>) whose subtype is
<code>case-table</code>.  This char-table maps each character into the
corresponding lower case character.  It has three extra slots, which
hold related tables:
</p><p>

</p><dl compact="">
<dt><var>upcase</var>
</dt><dd>The upcase table maps each character into the corresponding upper
case character.
</dd><dt><var>canonicalize</var>
</dt><dd>The canonicalize table maps all of a set of case-related characters
into a particular member of that set.
</dd><dt><var>equivalences</var>
</dt><dd>The equivalences table maps each one of a set of case-related characters
into the next character in that set.
</dd></dl>
<p>

  In simple cases, all you need to specify is the mapping to lower-case;
the three related tables will be calculated automatically from that one.
</p><p>

  For some languages, upper and lower case letters are not in one-to-one
correspondence.  There may be two different lower case letters with the
same upper case equivalent.  In these cases, you need to specify the
maps for both lower case and upper case.
</p><p>

  The extra table <var>canonicalize</var> maps each character to a canonical
equivalent; any two characters that are related by case-conversion have
the same canonical equivalent character.  For example, since <samp>`a'</samp>
and <samp>`A'</samp> are related by case-conversion, they should have the same
canonical equivalent character (which should be either <samp>`a'</samp> for both
of them, or <samp>`A'</samp> for both of them).
</p><p>

  The extra table <var>equivalences</var> is a map that cyclicly permutes
each equivalence class (of characters with the same canonical
equivalent).  (For ordinary ASCII, this would map <samp>`a'</samp> into
<samp>`A'</samp> and <samp>`A'</samp> into <samp>`a'</samp>, and likewise for each set of
equivalent characters.)
</p><p>

  When you construct a case table, you can provide <code>nil</code> for
<var>canonicalize</var>; then Emacs fills in this slot from the lower case
and upper case mappings.  You can also provide <code>nil</code> for
<var>equivalences</var>; then Emacs fills in this slot from
<var>canonicalize</var>.  In a case table that is actually in use, those
components are non-<code>nil</code>.  Do not try to specify <var>equivalences</var>
without also specifying <var>canonicalize</var>.
</p><p>

  Here are the functions for working with case tables:
</p><p>

<a name="IDX189"></a>
</p><dl>
<dt><u>Function:</u> <b>case-table-p</b> <i>object</i>
</dt><dd>This predicate returns non-<code>nil</code> if <var>object</var> is a valid case
table.
</dd></dl>
<p></p><p>

<a name="IDX190"></a>
</p><dl>
<dt><u>Function:</u> <b>set-standard-case-table</b> <i>table</i>
</dt><dd>This function makes <var>table</var> the standard case table, so that it will
be used in any buffers created subsequently.
</dd></dl>
<p></p><p>

<a name="IDX191"></a>
</p><dl>
<dt><u>Function:</u> <b>standard-case-table</b>
</dt><dd>This returns the standard case table.
</dd></dl>
<p></p><p>

<a name="IDX192"></a>
</p><dl>
<dt><u>Function:</u> <b>current-case-table</b>
</dt><dd>This function returns the current buffer's case table.
</dd></dl>
<p></p><p>

<a name="IDX193"></a>
</p><dl>
<dt><u>Function:</u> <b>set-case-table</b> <i>table</i>
</dt><dd>This sets the current buffer's case table to <var>table</var>.
</dd></dl>
<p></p><p>

  The following three functions are convenient subroutines for packages
that define non-ASCII character sets.  They modify the specified
case table <var>case-table</var>; they also modify the standard syntax table.
See section <a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_35.html#SEC582">35. Syntax Tables</a>.  Normally you would use these functions to change
the standard case table.
</p><p>

<a name="IDX194"></a>
</p><dl>
<dt><u>Function:</u> <b>set-case-syntax-pair</b> <i>uc lc case-table</i>
</dt><dd>This function specifies a pair of corresponding letters, one upper case
and one lower case.
</dd></dl>
<p></p><p>

<a name="IDX195"></a>
</p><dl>
<dt><u>Function:</u> <b>set-case-syntax-delims</b> <i>l r case-table</i>
</dt><dd>This function makes characters <var>l</var> and <var>r</var> a matching pair of
case-invariant delimiters.
</dd></dl>
<p></p><p>

<a name="IDX196"></a>
</p><dl>
<dt><u>Function:</u> <b>set-case-syntax</b> <i>char syntax case-table</i>
</dt><dd>This function makes <var>char</var> case-invariant, with syntax
<var>syntax</var>.
</dd></dl>
<p></p><p>

<a name="IDX197"></a>
</p><dl>
<dt><u>Command:</u> <b>describe-buffer-case-table</b>
</dt><dd>This command displays a description of the contents of the current
buffer's case table.
</dd></dl>
<p></p><p>

<a name="Lists"></a>
</p><hr size="6">
<table cellpadding="1" cellspacing="1" border="0">
<tbody><tr><td valign="MIDDLE" align="LEFT">[ &lt;&lt; ]</td>
<td valign="MIDDLE" align="LEFT">[ &gt;&gt; ]</td>
<td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT"> &nbsp; </td><td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp.html#SEC_Top">Top</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_toc.html#SEC_Contents">Contents</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_50.html#SEC728">Index</a>]</td>
<td valign="MIDDLE" align="LEFT">[<a href="https://ftp.gnu.org/old-gnu/Manuals/elisp-manual-21-2.8/html_chapter/elisp_abt.html#SEC_About"> ? </a>]</td>
</tr></tbody></table>
<br>  
<font size="-1">
This document was generated
on <i>May 2, 2002</i>
using <a href="http://www.mathematik.uni-kl.de/~obachman/Texi2html"><i>texi2html</i></a>



</font></body></html>