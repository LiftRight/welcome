local webroot = 'https://github.com/LiftRight/welcome/raw/main/'
function fix_link (url) 
    return webroot .. url
end
function Link (link) link.target = fix_link(link.target); return link end
function Image (img) img.src = fix_link(img.src); return img end
return {{Image = Image}}
