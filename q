[1mdiff --git a/app/views/planets/home.html.erb b/app/views/planets/home.html.erb[m
[1mindex 512fb93..acf826f 100644[m
[1m--- a/app/views/planets/home.html.erb[m
[1m+++ b/app/views/planets/home.html.erb[m
[36m@@ -14,11 +14,9 @@[m
         <div class="wrapper"></div>[m
       </div>[m
         <div class="row">[m
[31m-          <% @planets.first(3).each do |planet| %>[m
[31m-            <div class="col-md-12">[m
[31m-              <%= render 'shared/card', planet: planet %>[m
[31m-            </div>[m
[31m-        <% end %>[m
[32m+[m[32m          <div class="col-md-12">[m
[32m+[m[32m            <%= render 'shared/card', planet: @planet %>[m
[32m+[m[32m          </div>[m
       </div>[m
     </div>[m
 [m
[36m@@ -31,11 +29,9 @@[m
         <div class="wrapper"></div>[m
       </div>[m
         <div class="row">[m
[31m-          <% @new_planets.first(3).each do |planet| %>[m
[31m-            <div class="col-md-12">[m
[31m-              <%= render 'shared/card', planet: planet %>[m
[31m-            </div>[m
[31m-        <% end %>[m
[31m-      </div>[m
[32m+[m[32m          <div class="col-md-12">[m
[32m+[m[32m            <%= render 'shared/card', planet: @planet %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m        </div>[m
     </div>[m
 [m
[1mdiff --git a/app/views/shared/_card.html.erb b/app/views/shared/_card.html.erb[m
[1mindex 75d2f70..6f6aeea 100644[m
[1m--- a/app/views/shared/_card.html.erb[m
[1m+++ b/app/views/shared/_card.html.erb[m
[36m@@ -1,5 +1,5 @@[m
  <div class="row">[m
[31m-    <% @planets.each do |planet| %>[m
[32m+[m[32m    <% @planets.first(3).each do |planet| %>[m
     <div class="col-xs-4 col-sm-12 col-md-6 col-lg-4">[m
       <div class="planet-card">[m
         <div class="planet-card-image">[m
