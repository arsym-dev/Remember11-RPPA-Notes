var _____WB$wombat$assign$function_____ = function(name) {return (self._wb_wombat && self._wb_wombat.local_init && self._wb_wombat.local_init(name)) || self[name]; };
if (!self.__WB_pmw) { self.__WB_pmw = function(obj) { this.__WB_source = obj; return this; } }
{
  let window = _____WB$wombat$assign$function_____("window");
  let self = _____WB$wombat$assign$function_____("self");
  let document = _____WB$wombat$assign$function_____("document");
  let location = _____WB$wombat$assign$function_____("location");
  let top = _____WB$wombat$assign$function_____("top");
  let parent = _____WB$wombat$assign$function_____("parent");
  let frames = _____WB$wombat$assign$function_____("frames");
  let opener = _____WB$wombat$assign$function_____("opener");

var autoCollapse=0;var collapseCaption="hide";var expandCaption="show";function hasClass(element,className){var Classes=element.className.split(" ");for(var i=0;i<Classes.length;i++){if(Classes[i]==className){return(true);}}return(false);}function collapseTable(tableIndex){var Button=document.getElementById("collapseButton"+tableIndex);var Table=document.getElementById("collapsibleTable"+tableIndex);if(!Table||!Button){return false;}var Rows=Table.getElementsByTagName("tr");if(Button.firstChild.data==collapseCaption){for(var i=1;i<Rows.length;i++){Rows[i].style.display="none";}Button.firstChild.data=expandCaption;}else{for(var i=1;i<Rows.length;i++){Rows[i].style.display=Rows[0].style.display;}Button.firstChild.data=collapseCaption;}}function createCollapseButtons(){var tableIndex=0;var NavigationBoxes=new Object();var Tables=document.getElementsByTagName("table");for(var i=0;i<Tables.length;i++){if(hasClass(Tables[i],"collapsible")){NavigationBoxes[tableIndex]=Tables[i];Tables[i].setAttribute("id","collapsibleTable"+tableIndex);var Button=document.createElement("span");var ButtonLink=document.createElement("a");var ButtonText=document.createTextNode(collapseCaption);Button.style.styleFloat="right";Button.style.cssFloat="right";Button.style.fontWeight="normal";Button.style.textAlign="right";Button.style.width="6em";ButtonLink.setAttribute("id","collapseButton"+tableIndex);ButtonLink.setAttribute("href","javascript:collapseTable("+tableIndex+");");ButtonLink.appendChild(ButtonText);Button.appendChild(document.createTextNode("["));Button.appendChild(ButtonLink);Button.appendChild(document.createTextNode("]"));var Header=Tables[i].getElementsByTagName("tr")[0].getElementsByTagName("th")[0];if(Header){Header.insertBefore(Button,Header.childNodes[0]);tableIndex++;}}}for(var i=0;i<tableIndex;i++){if(hasClass(NavigationBoxes[i],"collapsed")||(tableIndex>=autoCollapse&&hasClass(NavigationBoxes[i],"autocollapse"))){collapseTable(i);}}}addOnloadHook(createCollapseButtons);function toggleNavigationBar(indexNavigationBar){var NavToggle=document.getElementById("NavToggle"+indexNavigationBar);var NavFrame=document.getElementById("NavFrame"+indexNavigationBar);if(!NavFrame||!NavToggle){return false;}if(NavToggle.firstChild.data==NavigationBarHide){for(var NavChild=NavFrame.firstChild;NavChild!=null;NavChild=NavChild.nextSibling){if(hasClass(NavChild,'NavContent')||hasClass(NavChild,'NavPic')){NavChild.style.display='none';}}NavToggle.firstChild.data=NavigationBarShow;}else if(NavToggle.firstChild.data==NavigationBarShow){for(var NavChild=NavFrame.firstChild;NavChild!=null;NavChild=NavChild.nextSibling){if(hasClass(NavChild,'NavContent')||hasClass(NavChild,'NavPic')){NavChild.style.display='block';}}NavToggle.firstChild.data=NavigationBarHide;}}function createNavigationBarToggleButton(){var indexNavigationBar=0;var divs=document.getElementsByTagName("div");for(var i=0;NavFrame=divs[i];i++){if(hasClass(NavFrame,"NavFrame")){indexNavigationBar++;var NavToggle=document.createElement("a");NavToggle.className='NavToggle';NavToggle.setAttribute('id','NavToggle'+indexNavigationBar);NavToggle.setAttribute('href','javascript:toggleNavigationBar('+indexNavigationBar+');');var isCollapsed=hasClass(NavFrame,"collapsed");for(var NavChild=NavFrame.firstChild;NavChild!=null&&!isCollapsed;NavChild=NavChild.nextSibling){if(hasClass(NavChild,'NavPic')||hasClass(NavChild,'NavContent')){if(NavChild.style.display=='none'){isCollapsed=true;}}}if(isCollapsed){for(var NavChild=NavFrame.firstChild;NavChild!=null;NavChild=NavChild.nextSibling){if(hasClass(NavChild,'NavPic')||hasClass(NavChild,'NavContent')){NavChild.style.display='none';}}}var NavToggleText=document.createTextNode(isCollapsed?NavigationBarShow:NavigationBarHide);NavToggle.appendChild(NavToggleText);for(var j=0;j<NavFrame.childNodes.length;j++){if(hasClass(NavFrame.childNodes[j],"NavHead")){NavFrame.childNodes[j].appendChild(NavToggle);}}NavFrame.setAttribute('id','NavFrame'+indexNavigationBar);}}}
addOnloadHook(createNavigationBarToggleButton);;mw.loader.state({"site":"ready"});

}
/*
     FILE ARCHIVED ON 15:46:27 Jul 01, 2017 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 17:35:46 Oct 11, 2020.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
/*
playback timings (ms):
  LoadShardBlock: 1079.104 (3)
  captures_list: 1131.046
  exclusion.robots: 0.138
  load_resource: 285.584
  CDXLines.iter: 23.131 (3)
  RedisCDXSource: 22.89
  PetaboxLoader3.resolve: 351.716 (3)
  esindex: 0.011
  PetaboxLoader3.datanode: 933.932 (4)
  exclusion.robots.policy: 0.128
*/