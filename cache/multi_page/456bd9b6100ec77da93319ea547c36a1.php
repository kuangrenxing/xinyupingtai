<?php $html="[".$page."/".$maxpage."]";if($page>$minpage){$html.="[<a href=\"".(($minpage)==$minpage&&$url_default?$url_default:($urls[0].($minpage).$urls[1]))."\">首页</a>][<a href=\"".(($page-1)==$minpage&&$url_default?$url_default:($urls[0].($page-1).$urls[1]))."\">上一页</a>]";};$html.="";for($i=$pagestart;$i<=$pageend;$i++){if($i==1&&$url_default)$url=$url_default;else $url=$urls[0].$i.$urls[1];$html.="";if($i==$page){$html.="[".$i."]";}else{$html.="[<a href=\"".$url."\">".$i."</a>]";};$html.="";}$html.="";if($page<$maxpage){$html.="[<a href=\"".(($page+1)==$minpage&&$url_default?$url_default:($urls[0].($page+1).$urls[1]))."\">下一页</a>][<a href=\"".(($maxpage)==$minpage&&$url_default?$url_default:($urls[0].($maxpage).$urls[1]))."\">尾页</a>]";};$html.="";?>