---
title: "Frequency of letters in the English Language"
author: "Alex Cheng"
date: "27 November, 2018"
output:
  html_document:
    keep_md: yes
---



For this exercise, I downloaded a database of words in the english langauge from [FreeBSD](http://svnweb.freebsd.org/base/head/share/dict/web2?view=co").

I was curious which letters were more frequently used in the English language, so I computed the number of occurrences of each individual letter and tabulated the results below (Table 1).


```r
letters_count %>%
  kable("html") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = F) %>%
  column_spec(2, width = "15em") %>%
  row_spec(5, bold = T, background = "yellow")
```

<table class="table table-striped table-hover table-condensed" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> letters </th>
   <th style="text-align:right;"> Freq </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> b </td>
   <td style="text-align:right;width: 15em; "> 20908 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> c </td>
   <td style="text-align:right;width: 15em; "> 50376 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> d </td>
   <td style="text-align:right;width: 15em; "> 30282 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> e </td>
   <td style="text-align:right;width: 15em; "> 86924 </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;background-color: yellow;"> f </td>
   <td style="text-align:right;width: 15em; font-weight: bold;background-color: yellow;"> 12461 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> g </td>
   <td style="text-align:right;width: 15em; "> 21363 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> h </td>
   <td style="text-align:right;width: 15em; "> 26620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> i </td>
   <td style="text-align:right;width: 15em; "> 71090 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> j </td>
   <td style="text-align:right;width: 15em; "> 538 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> k </td>
   <td style="text-align:right;width: 15em; "> 4805 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> l </td>
   <td style="text-align:right;width: 15em; "> 47071 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> m </td>
   <td style="text-align:right;width: 15em; "> 23500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> n </td>
   <td style="text-align:right;width: 15em; "> 50094 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> o </td>
   <td style="text-align:right;width: 15em; "> 63435 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> p </td>
   <td style="text-align:right;width: 15em; "> 18318 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> q </td>
   <td style="text-align:right;width: 15em; "> 875 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> r </td>
   <td style="text-align:right;width: 15em; "> 54974 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> s </td>
   <td style="text-align:right;width: 15em; "> 42057 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> t </td>
   <td style="text-align:right;width: 15em; "> 51595 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> u </td>
   <td style="text-align:right;width: 15em; "> 24077 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> v </td>
   <td style="text-align:right;width: 15em; "> 5059 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> w </td>
   <td style="text-align:right;width: 15em; "> 3387 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> x </td>
   <td style="text-align:right;width: 15em; "> 3316 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> y </td>
   <td style="text-align:right;width: 15em; "> 17901 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> z </td>
   <td style="text-align:right;width: 15em; "> 3073 </td>
  </tr>
</tbody>
</table>
**Table 1** Number of occurrences of each letter.


The most frequently used letter was **E**. 

Figure 1 below is a bar plot of the frequency of letters in the English language in alphabetical order.


![**Figure 1** Frequency of letters found in the English Language. Red indicates the most frequently used letter.](histogram_unsorted.png)



Figure 2 sorts the above bar plot in descending order of frequency.


![**Figure 2** Frequency of letters found in the English Language in Descending order](histogram_sorted.png)

