Perfect 👍 you’re steadily building this into a solid reference. Let’s integrate your **extra notes** into the same structured style so it stays clean and organized.

---

# VIM Quick Notes

### Mental Model

* **Motions** → movement (`w`, `b`, `hjkl`, `$`, etc.)
* **Operators** → action (`d` = delete, `y` = yank, `c` = change)
* **Counts** → how many times (e.g. `5w` = 5 words forward)

**Formula**: `OPERATOR + COUNT + MOTION`

* Example: `d3w` = delete 3 words forward
* Example: `y2k` = yank 2 lines up

---

### Movement

* `h` → move left
* `j` → move down
* `k` → move up
* `l` → move right
* `w` → jump forward by word
* `b` → jump backward by word
* `_` → move to first non-whitespace character of current line
* `$` → move to end of line
* `f<char>` → jump forward to next occurrence of `<char>`

  * `;` → repeat forward
  * `,` → repeat backward
* `[count] + [motion]` → repeat motion multiple times

  * Example: `5k` → move up 5 lines

---

### Editing

* `i` → insert before cursor
* `a` → insert after cursor (append)
* `o` → open new line *below* and enter insert mode
* `O` → open new line *above* and enter insert mode

---

### Delete

* `dd` → delete current line
* `d3j` → delete current + 3 lines below
* `d2k` → delete current + 2 lines above

---

### Undo/Redo

* `u` → undo last action
* `Ctrl + r` → redo last undone action

---

### Visual Mode

* `v` → visual mode (select characters)
* `Shift + v` → visual line mode (select whole lines)
* `y` → yank (copy selection)
* `p` → paste at cursor (or next line if whole lines were copied)
* Motions work here too → e.g. `vf,` selects from cursor up to `,`

---

### Buffers & Files

* `:find <filename>` → search for and open a file
* `:ls` → list all open buffers (files in memory)

---
