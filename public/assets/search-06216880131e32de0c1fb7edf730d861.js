function capitalizeFirstLetter(e){return e.charAt(0).toUpperCase()+e.slice(1)}var client=algoliasearch("J97XEMUI7C","ec96a3adcb4bf3ef61b276cc5a3790d7"),index=client.initIndex("Resource");window.index=index,$("#aa-search-input").autocomplete({hint:!0},[{source:$.fn.autocomplete.sources.hits(index,{hitsPerPage:10}),displayKey:"title",templates:{suggestion:function(e){return title=e.title,null!=grade&&null!=title?"<span>"+title+"</span>":"<span> Nothing found </span>"}}}]),$(".manual-filter").on("change",function(){$("#search-form").submit()}),window.onload=function(){$(".date-range").on("DOMSubtreeModified",function(){val=$(".date-range").text(),$("#daterange").val(val),$("#search-form").submit()})},$("#aa-search-input").on("input",function(){$("#article-list").empty(),index.search($("#aa-search-input").val(),function(e,a){array=a.hits.slice(0,10);for(var t=0;t<array.length;t++){title=array[t].title,grade=array[t].grade,description=array[t].description,date=array[t].date,resource_type=array[t].resource_type,slug=array[t].slug,link=array[t].link,author=array[t].author;var r="";r+='<div class="masonry__item resource_card">',r+='							<h4 class="resource-title">',r+='							<a href="/'+link+'">'+title+"</a>",r+="					</h4>",r+="							<span>",r+="								<strong>"+moment(date).format("MMMM Do YYYY"),r+="									|",r+="									"+author,r+="									|",r+="									"+capitalizeFirstLetter(resource_type),r+="									|",r+="									"+grade,r+="									stars",r+="								</strong>",r+="							</span>",r+="							<div>",r+='								<p class="resource-description">',r+="									"+description,r+="								</p>",r+="							</div>",r+="						</div>",$("#article-list").append(r)}})}),$("#reportrange").on("click",function(){$(".ranges").show(),$(".daterangepicker.dropdown-menu.ltr.opensleft").show()});