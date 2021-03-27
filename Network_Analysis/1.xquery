string-join(
let $IA := collection("../Marked_Up_Speeches/?select=*.xml")
let $filePath := $IA/base-uri()
for $f in $filePath
let $fToken := tokenize($f,"/")[last()]
let $values := $IA[base-uri() = $f]//value/@type ! normalize-space() => distinct-values()
for $v in $values 
let $policies := $IA[base-uri() = $f][.//value/@type ! normalize-space() = $v]//policy/@* ! name()
for $p in $policies
return concat($v ,'&#x9;', $fToken,'&#x9;', $p ),'&#10;')