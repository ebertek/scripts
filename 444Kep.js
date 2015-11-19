// ==UserScript==
// @name          444 kepbeilleszto csoda
// @namespace     http://ebertek.com
// @description   Behuzza az Open Graphos kepet a cikk tetejere
// @include       http://*.444.hu/*
// @include       https://*.444.hu/*
// @include       http://444.hu/*
// @include       https://444.hu/*
// @version       1.0.3
// @license       CC-BY-SA
// @downloadURL   https://gist.githubusercontent.com/ebertek/a03f0ebbb103a9a32751/raw/f7f4ecc45a45206b264724cac6348380ee5cb298/444Kep.js
// @grant         none
// ==/UserScript==

/*
The following function is
	CC-BY-SA
	Stephan Schmitz
	eyecatchUp @ Stack Overflow
	@bext0n
http://stackoverflow.com/a/19418170/1868533
*/
function getContentByMetaTagName(c) {
	for (var b = document.getElementsByTagName("meta"), a = 0; a < b.length; a++) {
		if (c == b[a].name || c == b[a].getAttribute("property")) {
			return b[a].content;
		}
	}
	return false;
}

var div = document.getElementById("content-main");
var cikk = div.firstChild;

var img = document.createElement("img");
img.src = getContentByMetaTagName("og:image");

div.insertBefore(img, cikk);
