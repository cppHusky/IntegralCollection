#import "./preset.typ":preset
#include "./coverpage.typ"
#show:preset
#counter(page).update(1)
#include "./frontmatter.typ"
#counter(page).update(1)
#include "./collection.typ"
#include "./lecture.typ"
#include "./appendix.typ"
#include "./backcoverpage.typ"
