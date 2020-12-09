title:/\bg?vim\b/i
-
tag(): user.tabs
#talon app actions

tab close: key("esc : t a b c l o s e enter") 
tab new: key("esc : t a b n e w enter") 
go tab final:key("esc : t a b f i n a l enter")
tab next:key("esc : t a b N enter")
tab previous:key("esc : t a b p enter")

file quit:key("esc : q ! enter")
file save:key("esc : w ! enter")

# line commands 
lend:key($)
bend:key(0)
go <number>:"{number}G"
