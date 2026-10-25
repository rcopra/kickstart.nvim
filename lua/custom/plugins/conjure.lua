-- REPL integration for Clojure and other Lisps
-- Connects to a running nREPL (auto-detects .nrepl-port in the project)
vim.pack.add { 'https://github.com/Olical/conjure' }

-- Conjure's mappings use <localleader> (which is <space> in this config).
-- Evaluate the form under the cursor with <leader>ee; see :help conjure
-- for the rest, or run :ConjureSchool for an interactive tutorial.
-- Connect manually with :ConjureConnect, check status with :ConjureStatus.
