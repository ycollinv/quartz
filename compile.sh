#!/bin/bash

cd C:/Users/yannc/Documents/libs/hugo-obsidian; 
rm -fr C:/Users/yannc/Documents/quartz/content/*; 
rm -rf C:/Users/yannc/Documents/quartz/public/*; 
C:/Users/yannc/Documents/libs/obsidian-export/target/debug/obsidian-export --frontmatter=always C:/Users/yannc/Documents/Obsidian/Arathos C:/Users/yannc/Documents/quartz/content; 
go run C:/Users/yannc/Documents/libs/hugo-obsidian -input=C:/Users/yannc/Documents/quartz/content -output=C:/Users/yannc/Documents/quartz/assets/indices -index -root=C:/Users/yannc/Documents/quartz; 
(cd C:/Users/yannc/Documents/quartz && hugo --minify)