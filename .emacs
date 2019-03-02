
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ada-indent 2)
 '(ada-indent-record-rel-type 0)
 '(ada-indent-when 2)
 '(auto-insert-mode t)
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(package-selected-packages
   (quote
    (ada-mode org oauth2 num3-mode multishell ggtags math-symbol-lists chess flylisp f90-interface-browser diff-hl async djvu csv-mode bug-hunter realgud debbugs caps-lock diffview ack ace-window ada-ref-man)))
 '(size-indication-mode t)
 '(timeclock-mode-line-display t))

(setq-default indent-tabs-mode nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Sane colors. Matrix colors are just much better.
(add-to-list 'default-frame-alist '(foreground-color . "green"))
(add-to-list 'default-frame-alist '(background-color . "black"))

(set-buffer-file-coding-system 'utf-8-unix)
(setq gdb-many-windows t)
(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)
(setq-default inhibit-startup-message t)

(setq c-basic-offset 2)

(global-font-lock-mode t)

(defun toggle-truncate-line ()
  "toggle in current buffer"
  (interactive)
  (save-excursion
    (set-variable 'truncate-lines (not truncate-lines))
    (redraw-display)))

(defun next-tag ()
  (interactive)
  (find-tag "" t))

(defun previous-tag ()
  (interactive)
  (find-tag "" '-))

(defun copy-rectangle-as-kill (start end)
  (interactive "r")
  (setq killed-rectangle (extract-rectangle start end)))

(defun clearline ()
  "del all chars on current line"
  (interactive)
  (let (beg end)
    (beginning-of-line)
    (setq beg (point))
    (end-of-line)
    (setq end (point))
    (kill-region beg end)))

(defun scroll-in-place ()
  (interactive)
  (scroll-down-command -1))

(defun scroll-down-in-place ()
  (interactive)
  (scroll-down-command 1))

;; Some more standardized shortcuts I got fond of.
(global-set-key (kbd "<f1>") 'delete-trailing-whitespace)
(global-set-key (kbd "<f2>") 'undo)
(global-set-key (kbd "<f4>") 'find-file)
(global-set-key (kbd "<f5>") 'isearch-forward-regexp)
(global-set-key (kbd "<S-f5>") 'isearch-backward-regexp)
(global-set-key (kbd "<C-f5>") 'replace-regexp)
(global-set-key (kbd "<M-f5>") 'query-replace-regexp)
(global-set-key (kbd "<f6>") 'tags-search)
(global-set-key (kbd "<C-f6>") 'next-tag)
(global-set-key (kbd "<M-f6>") 'previous-tag)
(global-set-key (kbd "<f7>") 'clearline)
(global-set-key (kbd "<S-f7>") 'toggle-truncate-line)
(global-set-key (kbd "<C-f7>") 'goto-line)
(global-set-key (kbd "<M-f7>") 'delete-matching-lines)
(global-set-key (kbd "<f8>") 'kill-this-buffer)
(global-set-key (kbd "<f9>") 'kill-region)
(global-set-key (kbd "<S-f9>") 'kill-rectangle)
(global-set-key (kbd "<C-f9>") 'open-rectangle)
(global-set-key (kbd "<M-f9>") 'string-rectangle)
(global-set-key (kbd "<S-f10>") 'copy-rectangle-as-kill)
(global-set-key (kbd "<S-f11>") 'yank-rectangle)
(global-set-key (kbd "<C-f11>") 'compile)
(global-set-key (kbd "<M-f11>") 'acompile)

(global-set-key (kbd "<S-up>") 'scroll-in-place)
(global-set-key (kbd "<S-down>") 'scroll-down-in-place)

;; Hate that bell sound at start/end of the buffer.
(setq visible-bell 1)

;; Hate the toolbar - takes too much of screen estate.
(tool-bar-mode -1)

;; One hook that works. Still at least one thing.
;; Want no stinking trailing whitespace. Would also love to bombard
;; from orbit with asteroids all the tabs, alas at least this much
;; can be done easily. For now.
(add-hook 'c-mode-common-hook
  (lambda()
    (add-hook 'write-contents-functions
      (lambda()
        (save-excursion
          (delete-trailing-whitespace)))
      nil t)))

(defun set-coding-system ()
  (setq buffer-file-coding-system 'utf-8-unix))

(add-hook 'find-file-hook 'set-coding-system)

(setq ada-skel-initial-string
      (concat
       "------------------------------------------------------------------------------\n"
       "-- EMAIL: <darkestkhan@gmail.com>                                           --\n"
       "-- License: ISC License (see COPYING file)                                  --\n"
       "--                                                                          --\n"
       "--                    Copyright (C) 2019 darkestkhan                        --\n"
       "------------------------------------------------------------------------------\n"
       "-- Permission to use, copy, modify, and/or distribute this software for any --\n"
       "-- purpose with or without fee is hereby granted, provided that the above   --\n"
       "-- copyright notice and this permission notice appear in all copies.        --\n"
       "--                                                                          --\n"
       "-- The software is provided \"as is\" and the author disclaims all warranties --\n"
       "-- with regard to this software including all implied warranties of         --\n"
       "-- merchantability and fitness. In no event shall the author be liable for  --\n"
       "-- any special, direct, indirect, or consequential damages or any damages   --\n"
       "-- whatsoever resulting from loss of use, data or profits, whether in an    --\n"
       "-- action of contract, negligence or other tortious action, arising out of  --\n"
       "-- or in connection with the use or performance of this software.           --\n"
       "------------------------------------------------------------------------------\n"
       ))

(setq gpr-skel-initial-string
      (concat
       "project <+Project_Name+> is\n"
       "\n"
       "  Version := \"0.1\";\n"
       "  Name    := <+Library_Name+>;\n"
       "\n"
       "  for Languages use (\"Ada\");\n"
       "  for Source_Dirs use (\"src\");\n"
       "  for Object_Dir use \"obj\";\n"
       "  for Exec_Dir use \".\";\n"
       "  for Source_Files use (<+Source_Files+>);\n"
       "  for Main use (<+Main_File+>);\n"
       "\n"
       "  for Library_Name use Name;\n"
       "  for Library_Dir use \"lib\";\n"
       "  for Library_Kind use \"dynamic\";\n"
       "  for Library_Version use \"lib\" & Name & \".so.\" & Version;\n"
       "\n"
       "  package Compiler is\n"
       "    CPU   := external (\"CPU\", \"-m64\");\n"
       "    OPT   := (\"-O3\", \"-fomit-frame-pointer\");\n"
       "    WARN  := (\"-Wall\");\n"
       "    STYLE := (\"-gnaty2aAbdefhiklM100nOprSux\");\n"
       "\n"
       "    Ada_Switches :=\n"
       "      ( \"-gnat05\", \"-gnata\", \"-gnato\", \"-fstack-check\", \"-gnatW8\",\n"
       "        \"-gnateE\", \"-gnatU\", \"-gnatf\", \"-gnatj80\", \"-gnatwa\", \"-gnatn\"\n"
       "      );\n"
       "    for Default_Switches (\"Ada\") use Ada_Switches & CPU & OPT & WARN & STYLE;\n"
       "\n"
       "    C_Switches := (\"-O3\", \"-C99\", \"-fstack-check\", \"-fsanitize=undefined\");\n"
       "    -- -fsanitize=undefine works only with gcc-4.9+ and will add runtime check\n"
       "    -- for undefined behaviors - the moment such behavior is triggered\n"
       "    -- application will crash.\n"
       "    for Default_Switches (\"C\") use C_Switches & CPU & OPT & WARN;\n"
       "\n"
       "    Fortran_Switches := ();\n"
       "    for Default_Switches (\"Fortran\") use Fortran_Switches & CPU & OPT & WARN;\n"
       "  end Compiler;\n"
       "\n"
       "  package Linker is\n"
       "    -- When using Lumen add: \"-lGLU\", \"-lGL\", \"-ldl\", \"-lX11\"\n"
       "    -- When using Imago add: \"-lIL\", \"-lILU\", \"-lILUT\" on top of Lumen\n"
       "    -- When using Oto   add: \"-lalut\", \"-lopenal\"\n"
       "    for Default_Switches (\"Ada\") use ();\n"
       "  end Linker;\n"
       "\n"
       "end <+Project_Name+>;\n"
       ))

(load-file "~/.emacs.d/private_vars.el")

;; #### ###   ###
;; #    #  # #   #
;; #### ###  #
;; #    # #  #   #
;; #### #  #  ###
(require 'erc)
;; Auto

(defun dark-erc ()
  (interactive)
  ;; (setq erc-autojoin-channels-alist
  ;; 	'(("freenode.net" . ada)))
  (erc :server "irc.freenode.net" :full-name "darkestkhan"
       :port 6667 :nick "darkestkhan" :password erc-passwd))

;; #####  ###  ####   ###
;;   #   #   # #   # #   #
;;   #   #   # #   # #   #
;;   #   #   # #   # #   #
;;   #    ###  ####   ###

;; GPR_PROJECT_PATH management
;; getenv from file
;; append/prepend value to file when adding

;; (setq explicit-shell-file-name "c:/programs/git/git-bash.exe")

;;  ###  ###   ###
;; #   # #  # #
;; #   # ###  #  ##
;; #   # # #  #   #
;;  ###  #  #  ###

(require 'org)
(setq org-agenda-files (list "~/org/todo.org" "~/org/learn.org" "~/org/health.org" "~/org/projects.org" "~/org/maint.org" "~/org/eve.org"))
(setq org-log-done 'time)
(setq org-log-done 'note)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-co" (lambda ()
				 (interactive)
				 (find-file "~/org/organizer.org")))
(setq org-default-notes-file "~/organizer.org")
(define-key global-map "\C-cc" 'org-capture)
;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/org/refile.org")
               "* TODO %?\n" :clock-in t :clock-resume t)
              ("r" "respond" entry (file "~/org/refile.org")
               "* TODO Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file "~/org/refile.org")
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/org/diary.org")
               "* %?\n%U\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/org/refile.org")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("m" "Meeting" entry (file "~/org/refile.org")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("p" "Phone call" entry (file "~/git/org/refile.org")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "~/org/refile.org")
               "* TODO %?\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))
