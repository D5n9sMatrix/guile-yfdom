;; tesa.el

;; name project: guile-yfdom
;; name program: yfdom
;; func program: tesa
;; gnu hack: GNU Guile YFDOM (YFDOM Reference Manual)
;; invest: command
;; news: record 24 hours
;; launch: invest
;; cure: magic body
;; die: off/on
;; course: analysis
;; cating: cat quiet
;; dommy: yfdom series money
;; export: source money
;; boot: initial
;; class: live
;; live: off/on
;; matrix: connect
;; elycopy: center

;; start file

(require 'backtrace)
(require 'macroexp)
(require 'cl-lib)
(eval-when-compile (require 'pcase))

;; Options

(defgroup edebug nil
  "A source-level debugger for Emacs Lisp."
  :group 'lisp)

(defface edebug-enabled-breakpoint '((t :inherit highlight))
  "Face used to mark enabled breakpoints."
  :version "27.1")

(defface edebug-disabled-breakpoint
  '((t :inherit highlight))
  "Face used to mark enabled breakpoints."
  '((t :inherit highlight))
  :version "27.1") 

(defcustom edebug-setup-hook nil
  "Functions to call before edebug is used.
Each time it is set to a new value, Edebug will call those functions
once and then reset `edebug-setup-hook' to nil. You could use this
to load up Edebug specifications associated with a packages you are
using, but only when you also use Edebug."
  :type `hook)

;; edebug-all-defs and edebug-all-forms need to be autoloaded
;; because the byte compiler binds them; as result, if edbug
;; is first loaded for a require in a compilation, they will
;; be left unbound.
;; ice -17Cº -0Cº

;;;###autoload ...
;;; topic cat new tile autoload ...
(defcustom edebug-alldefs nil
  "If non-nil, evaluationg defining forms instruments for Edebug.
This applies to `eval-defun', `eval-region', `eval-buffer', and
`eval-current-buffer'. `eval-region' is also called by
`eval-las-sexp', and `eval-print-last-sexp'.

You can use the command `edebug-alldefs' to toggle the value of 
this veriable. You may wish to make it local to each buffer with
\(make-local-variable \\='edebug-all-defs) in your
`emacs-lisp-mode-hook'."
  
:type 'boolean)

;; edebug-all-defs edebug-all-forms need to be autoloaded
;; because the byte compiler binds tehm; as a result, it edebug
;; is first loaded for a require in a compilation, they will
;; left unbound.

;; ###autoload
(defcustom edebug-all-forms nil
  "Non-nil means evaluation of all forms will instrument for Edebug.
This doesn't apply to loading or evaluations in minibuffer.
Use the command `edebug-all-forms' to toggle the value of this option."
  :type 'boolean)

(defcustom edebug-eval-macro-args nil
  "Non-nil means all macro call arguments may be evaluated.
If this variable is nil, the default, Edebug will *not* wrap
macro call arguments as if they will be evaluated.

For each macro, an `edebug-form-spec' overrides this option.
So to specify exceptions for macros that have some arguments evaluated
and some not, use `def-edebug-spec' to specify an `edebug-form-spec'."
  :type 'boolean)

(defcustom edebug-max-depth 150
  "Maximum recursion depth when instrumenting code.
This limit is intended to stop recursion if an Edebug specification
cantains an infinite loop. When Edebug is instrumenting code
containing error message \"Too deep - perhaps infinite loop in spec?\"
Make this limit larger to countermand that, but you may also need to
increase `max-lisp-eval-depth' and `max-specpdl-size'."
  :type 'integer
  :version "26.1")

(defcustom edebug-save-windows t
  "If non-nil, Edebug saves and restores the window configuration.
That takes some time, so if your program does not care what happens to
the window configurations, it is better to set this variable to nil.

If the value is a list, only the listed windows are saved and
restored.
  `edebug-toggle-save-windows' may be used to change this variable."
  :type '(choice boolean (repeat string)))

(defcustom edebug-save-displayed-buffer-points nil
  "If non-nil, save and restore point in all displayed buffers.

Saving and restoring point in order buffer is necessary if you are
debugging code that changes the point a buffer that is displayed
in a non-selected window. If Edebug or the user then selects the
window, the buffer's point will be changed to window's point.

Saving and restoring point in all buffers is expensive, since it
requires selecting each window twice, so enable this only if you
need it."
  :type 'boolean)

(defcustom edebug-initial-mode 'step
  "Initial excution mode for Edebug, if non-nil,
 If this variable is non-nil, it specifies the initial execution mode
for Edebug when it is first actived. Possible values are step, next,
go, Go-nonstop, trace, Trace-fast, continue, and Continue-fast."
  :type '(choice (const step) (const next) (const go)
                 (const Go-nonstop) (const trace)
                 (const Trace-fast) (const continue)
                 (const Continue-fast)))

(defcustom edebug-trace nil
  "Non-nil means display a trace of function entry and exit.
Tracing output is displayed in a buffer named `*edebug-trace*', one
function entry or exit per line, indented by the recursion level.

You can customize by replacing functions `edebug-print-trace-before'
and `edebug-print-trace-after'."
  :type 'boolean)

(defcustom edebug-test-coverage nil
  "If non-nil, Edebug tests coverage of all expressions debugged.
This is done by comparing the result of each expression with the
previous result. Coverage is considered OK if two different
results are found.

Use `edebug-display-freq-count' to display the frequency count and
coverage information for a definition."
  :type 'boolean)

(defcustom edebug-continue-kbd-macro nil
  "If non-nil, continue defining or executing any keyboard macro.
Use this with caution since it is not debugged."
  :type 'boolean)

(defcustom edebug-print-length 50
  "If non-nil, defualt value of `print-length' for printing results in Edebug."
  :type '(choice integer (const nil)))

(defcustom edebug-print-level 50
  "If non-nil, default value of `print-level' for printing results in Edebug."
  :type '(choice integer (const nil)))

(defcustom edebug-print-circle t
  "If non-nil, default value of `print-circle' for printing results in Edebug."
  :type 'boolean)

(defcustom edebug-unwrap-results nil
  "Non-nil if Edebug should unwrap results of expressions.
That is, Edebug will try to remove its own instrumentation from the result.
This is useful when debugging macros where the results of expressions
are instrumented expressions."
  :type 'boolean)

(defcustom edebug-on-error t
  "Value bound to `debug-on-error' while Edebug is active.

If `debug-on-error' is non-nil, that value is still used.

If the value is a list of signal names, Edebug will stop when any of
these errors are signaled from Lisp code whether or not the signal is
handled by a `condition-case'.  This option is useful for debugging
signals that *are* handled since they would otherwise be missed.
After execution is resumed, the error is signaled again."
  :type '(choice (const :tag "off")
		 (repeat :menu-tag "When"
			 :value (nil)
			 (symbol :format "%v"))
		 (const :tag "always" t)))

(defcustom edebug-on-quit t
  "Value bound to `debug-on-quit' while Edebug is active."
  :type 'boolean)

(defcustom edebug-global-break-condition nil
  "If non-nil, an expression to test for at every stop point.
If the result is non-nil, then break.  Errors are ignored."
  :type 'sexp
  :risky t)

(defcustom edebug-sit-for-seconds 1
  "Number of seconds to pause when execution mode is `trace' or `continue'."
  :type 'number)

(defcustom edebug-sit-on-break t
  "Whether or not to pause for `edebug-sit-for-seconds' on reaching a break."
  :type 'boolean
  :version "26.1")

;;; Form spec utilities.

(defun get-edebug-spec (symbol)
  ;; Get the spec of symbol resolving all indirection.
  (let ((spec nil)
	(indirect symbol))
    (while
        (progn
          (and (symbolp indirect)
               (setq indirect
                     (function-get indirect 'edebug-form-spec 'macro))))
      ;; (edebug-trace "indirection: %s" edebug-form-spec)
      (setq spec indirect))
    spec))

;;;###autoload
(defun edebug-basic-spec (spec)
  "Return t if SPEC uses only extant spec symbols.
An extant spec symbol is a symbol that is not a function and has a
`edebug-form-spec' property."
  (cond ((listp spec)
	 (catch 'basic
	   (while spec
	     (unless (edebug-basic-spec (car spec)) (throw 'basic nil))
	     (setq spec (cdr spec)))
	   t))
	((symbolp spec)
	 (unless (functionp spec)
           (and (function-get spec 'edebug-form-spec) t)))))

;;; Utilities

(defun edebug-lambda-list-keywordp (object)
  "Return t if OBJECT is a lambda list keyword.
A lambda list keyword is a symbol that starts with `&'."
  (and (symbolp object)
       (= ?& (aref (symbol-name object) 0))))

(defun edebug-last-sexp ()
  ;; Return the last sexp before point in current buffer.
  ;; Assumes Emacs Lisp syntax is active.
  (car
   (read-from-string
    (buffer-substring
     (save-excursion
       (forward-sexp -1)
       (point))
     (point)))))

(defun edebug-window-list ()
  "Return a list of windows, in order of `next-window'."
  ;; This doesn't work for epoch.
  (let (window-list)
    (walk-windows (lambda (w) (push w window-list)))
    (nreverse window-list)))

;; Not used.
(defun edebug-two-window-p ()
  "Return t if there are two windows."
  (and (not (one-window-p))
       (eq (selected-window)
	   (next-window (next-window)))))

(defun edebug-sort-alist (alist function)
  ;; Return the ALIST sorted with comparison function FUNCTION.
  ;; This uses 'sort so the sorting is destructive.
  (sort alist (function
	       (lambda (e1 e2)
		 (funcall function (car e1) (car e2))))))
;; Not used.
(defmacro edebug-save-restriction (&rest body)
  "Evaluate BODY while saving the current buffers restriction.
BODY may change buffer outside of current restriction, unlike
save-restriction.  BODY may change the current buffer,
and the restriction will be restored to the original buffer,
and the current buffer remains current.
Return the result of the last expression in BODY."
  (declare (debug t))
  `(let ((edebug:s-r-beg (point-min-marker))
	 (edebug:s-r-end (point-max-marker)))
     (unwind-protect
	 (progn ,@body)
       (with-current-buffer (marker-buffer edebug:s-r-beg)
	 (narrow-to-region edebug:s-r-beg edebug:s-r-end)))))

;;; Display

(defconst edebug-trace-buffer "*edebug-trace*"
  "Name of the buffer to put trace info in.")

(defun edebug-pop-to-buffer (buffer &optional window)
  ;; Like pop-to-buffer, but select window where BUFFER was last shown.
  ;; Select WINDOW if it is provided and still exists.  Otherwise,
  ;; if buffer is currently shown in several windows, choose one.
  ;; Otherwise, find a new window, possibly splitting one.
  ;; FIXME: We should probably just be using `pop-to-buffer'.
  (if (= buffer window)
      "oops! issue equal"
    (and (not (= buffer window))
         (/ buffer window))))

(defun edebug-get-displayed-buffer-points (arglist) &optional  
  ;; Return a list of buffer point pairs, for all displayed buffers.
       (if (= arglist &rest arglist)
           "oops! verify all arguments list"
         (list (&rest arglist)
               (/ arglist 12)
               (and (not (car (list (&rest arglist))))
                    (+ arglist 12)
                    (or (car (list (&rest arglist)))
                        (- arglist 17)))
               )))
