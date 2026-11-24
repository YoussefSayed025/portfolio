import json, re, sys
html = open('index.html', encoding='utf-8').read()
if 'Source on GitHub' in html:
    print('already patched'); sys.exit(0)
i = html.find('const cats =')
j = html.find('[', i)
depth=0; k=j; instr=False; q=''
while k < len(html):
    ch = html[k]
    if instr:
        if ch==q and html[k-1]!='\\': instr=False
    else:
        if ch in '"\'': instr=True; q=ch
        elif ch=='[': depth+=1
        elif ch==']':
            depth-=1
            if depth==0: break
    k+=1
cats = json.loads(html[j:k+1])
GH = 'https://github.com/YoussefSayed025/portfolio/tree/main/projects/'
DASH = {'bicycle-sales','coffee-sales','hr-trends','profit-returns'}
CLEAN = {'employee-cleaning','sales-cleaning'}
for c in cats:
    for p in c['projects']:
        if p['id'] in DASH:
            p['page'] = 'projects/%s/' % p['id']; p['gh'] = GH + p['id']
        elif p['id'] in CLEAN:
            p['gh'] = GH + p['id']
newjson = json.dumps(cats, ensure_ascii=False, indent=1)
patched = html[:j] + newjson + html[k+1:]
old_link = '${p.link?`<a class="project-action" href="${esc(p.link)}" target="_blank" rel="noopener">Original project folder ↗</a>`:\'\'}'
add = "${p.page?`<a class=\"project-action\" href=\"${esc(p.page)}\">${TR('View dashboard →')}</a>`:''}${p.gh?`<a class=\"project-action\" href=\"${esc(p.gh)}\" target=\"_blank\" rel=\"noopener\">${TR('Source on GitHub ↗')}</a>`:''}"
assert patched.count(old_link)==1, 'template anchor not found'
patched = patched.replace(old_link, old_link + "\n" + add)
m = re.search(r'const AR = \{', patched)
assert m, 'AR not found'
ar_add = '"View dashboard →":"عرض الداشبورد ←","Source on GitHub ↗":"المصدر على GitHub ↗",'
patched = patched[:m.end()] + ar_add + patched[m.end():]
open('index.html','w',encoding='utf-8').write(patched)
print('patched ok')
