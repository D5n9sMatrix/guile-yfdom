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

;; (require 'backtrace)
;; (require 'macroexp)
;; (require 'cl-lib)
;; (eval-when-compile (require 'pcase))

;; Options

(define (edebug nil) (append nil) (list nil)
  ;; A source-level debugger for Emacs Lisp."
  )

(define (edbug-enabled-breakpoint nil) (append nil) (list nil)
                                  ;; Face used to mark the breakpoints
  ))

(define (edebug-disabled-breakpoint nil)
  ;; Face used to mark enabled breakpoints."
  (append nil) (list nil)) 

(define (edebug-setup-hook nil)
;;  "Functions to call before edebug is used.
;; Each time it is set to a new value, Edebug will call those functions
;; once and then reset `edebug-setup-hook' to nil. You could use this
;; to load up Edebug specifications associated with a packages you are
;; using, but only when you also use Edebug."
(integer? nil))

;;;###autoload ...
;;; topic cat new tile autoload ...
(define (edebug-all-defs nil)
;;  "If non-nil, evaluationg defining forms instruments for Edebug.
;; This applies to `eval-defun', `eval-region', `eval-buffer', and
;; `eval-current-buffer'. `eval-region' is also called by
;; `eval-las-sexp', and `eval-print-last-sexp'.

;; You can use the command `edebug-alldefs' to toggle the value of 
;; this veriable. You may wish to make it local to each buffer with
;; \(make-local-variable \\='edebug-all-defs) in your
;; `emacs-lisp-mode-hook'."
(integer? nil))

;; ###autoload
(define (edebug-all-forms nil)
;;  "Non-nil means evaluation of all forms will instrument for Edebug.
;; This doesn't apply to loading or evaluations in minibuffer.
; Use the command `edebug-all-forms' to toggle the value of this option."
 (integer? nil))

(define (edebug-eval-macro-args nil)
;;  "Non-nil means all macro call arguments may be evaluated.
;; If this variable is nil, the default, Edebug will *not* wrap
;; macro call arguments as if they will be evaluated.

;; For each macro, an `edebug-form-spec' overrides this option.
;; So to specify exceptions for macros that have some arguments evaluated
;; and some not, use `def-edebug-spec' to specify an `edebug-form-spec'."
  (boolean? 'boolean))

(define (edebug-max-depth nil)
;;  "Maximum recursion depth when instrumenting code.
;; This limit is intended to stop recursion if an Edebug specification
;; cantains an infinite loop. When Edebug is instrumenting code
;; containing error message \"Too deep - perhaps infinite loop in spec?\"
;; Make this limit larger to countermand that, but you may also need to
;; increase `max-lisp-eval-depth' and `max-specpdl-size'."
  (integer? nil))

(define (edebug-save-windows t)
;;  "If non-nil, Edebug saves and restores the window configuration.
;; That takes some time, so if your program does not care what happens to
;; the window configurations, it is better to set this variable to nil.

;; If the value is a list, only the listed windows are saved and
;; restored.
;;  `edebug-toggle-save-windows' may be used to change this variable."
  (integer? t))

(define (edebug-save-displayed-buffer-points nil)
;;  "If non-nil, save and restore point in all displayed buffers.

;; Saving and restoring point in order buffer is necessary if you are
;; debugging code that changes the point a buffer that is displayed
;; in a non-selected window. If Edebug or the user then selects the
;; window, the buffer's point will be changed to window's point.

;; Saving and restoring point in all buffers is expensive, since it
;; requires selecting each window twice, so enable this only if you
;; need it."
  (boolean? nil))

(define (edebug-initial-mode step) 
;;  "Initial excution mode for Edebug, if non-nil,
;;  If this variable is non-nil, it specifies the initial execution mode
;; for Edebug when it is first actived. Possible values are step, next,
;; go, Go-nonstop, trace, Trace-fast, continue, and Continue-fast."
  (integer? nil))

(define (edebug-trace nil)
;;  "Non-nil means display a trace of function entry and exit.
;; Tracing output is displayed in a buffer named `*edebug-trace*', one
;; function entry or exit per line, indented by the recursion level.

;; You can customize by replacing functions `edebug-print-trace-before'
;; and `edebug-print-trace-after'."
  (boolean? nil)

(define (edebug-test-coverage nil)
;;  "If non-nil, Edebug tests coverage of all expressions debugged.
;; This is done by comparing the result of each expression with the
;; previous result. Coverage is considered OK if two different
;; results are found.

;; Use `edebug-display-freq-count' to display the frequency count and
;; coverage information for a definition."
  (boolean? nil))

(define (edebug-continue-kbd-macro nil)
;;  "If non-nil, continue defining or executing any keyboard macro.
;; Use this with caution since it is not debugged."
   (boolean? nil))

(define (edebug-print-length nil)
;;  "If non-nil, defualt value of `print-length' for printing results in Edebug."
  (intger? nil))

(define (edebug-print-level nil)
;;  "If non-nil, default value of `print-level' for printing results in Edebug."
  (integer? nil))

(define (edebug-print-circle t)
;;  "If non-nil, default value of `print-circle' for printing results in Edebug."
  (boolean? t))


(define (edebug-unwrap-results nil)
;;  "Non-nil if Edebug should unwrap results of expressions.
;; That is, Edebug will try to remove its own instrumentation from the result.
;; This is useful when debugging macros where the results of expressions
;; are instrumented expressions."
  (boolean? nil))

(define (edebug-on-error n)
;;  "Value bound to `debug-on-error' while Edebug is active.

;; If `debug-on-error' is non-nil, that value is still used.

;; If the value is a list of signal names, Edebug will stop when any of
;; these errors are signaled from Lisp code whether or not the signal is
;; handled by a `condition-case'.  This option is useful for debugging
;; signals that *are* handled since they would otherwise be missed.
;; After execution is resumed, the error is signaled again."
    (if (+ n n)
        (- n n)
        n))

(define (edebug-on-quit n)
;;  "Value bound to `debug-on-quit' while Edebug is active."
  (if (boolean? n)
      (- n n)
      n))

(define (edebug-global-break-condition nil)
;;  "If non-nil, an expression to test for at every stop point.
;; If the result is non-nil, then break.  Errors are ignored."
  (if (integer? nil)
      (>= nil)
      nil))

(define (edebug-sit-for-seconds n)
;  "Number of seconds to pause when execution mode is `trace' or `continue'."
  (if (integer? n)
      (<= n 2)
      n))

(define (edebug-sit-on-break n)
  "Whether or not to pause for `edebug-sit-for-seconds' on reaching a break."
  (if (abs n)
      (+ n n)
      n))

;;; Form spec utilities.

(define (get-edebug-spec symbol)
  ;; Get the spec of symbol resolving all indirection.
  (if (not (< symbol 512))
  ;; (edebug-trace "indirection: %s" edebug-form-spec)
           (- symbol 12)
           symbol))
   

;;;###autoload
(define (edebug-basic-spec spec)
  "Return t if SPEC uses only extant spec symbols.
An extant spec symbol is a symbol that is not a function and has a
`edebug-form-spec' property."
  (if (cond (abs spec))
      (< spec 512)
      (or (integer? spec)
          (> spec 512)
          spec)))

;;; Utilities

(define (edebug-lambda-list-keywordp object)
  "Return t if OBJECT is a lambda list keyword.
A lambda list keyword is a symbol that starts with `&'."
  (if (abs object)
      (and (< object 512)
           (if (integer? object)
               (> object 512)
               object)
           object)
      object))
      

  
(define (edebug-last-sexp sexp)
  ;; Return the last sexp before point in current buffer.
  ;; Assumes Emacs Lisp syntax is active.
  (if (abs sexp)
      (/ sexp 12)
      sexp))

(define (edebug-window-list sexp)
  ;; "Return a list of windows, in order of `next-window'."
  ;; This doesn't work for epoch.
  (if (list sexp)
    (< 1 2 3)
    sexp)
  (and (list sexp)
       (> 1 2 3)
       sexp))

(define (edebug-two-window-p sexp)
;;  "Return t if there are two windows."
  (and (abs sexp)
       (< sexp 12)
       sexp
       (or (abs sexp)
           (/ sexp 12)
           sexp
           (if (abs sexp)
               (+ sexp 12)
               sexp))))

(define (edebug-sort-alist n)
  ;; Return the ALIST sorted with comparison function FUNCTION.
  ;; This uses 'sort so the sorting is destructive.
   (if (= n 0)
        "oops!"
        (/ 1 n)))

(define (edebug-save-restriction rest body)
;;  "Evaluate BODY while saving the current buffers restriction.
;; BODY may change buffer outside of current restriction, unlike
;; save-restriction.  BODY may change the current buffer,
;; and the restriction will be restored to the original buffer,
;; and the current buffer remains current.
;; Return the result of the last expression in BODY."
  (if (= rest body)
       "oops! numeric equal"
       (if (not (= rest body))
           (/ 1 rest body))))
          
(define (edebug-trace-buffer s1 s2)
  ;"Name of the buffer to put trace info in."
  (if (= s1 s2)
      "oops! issue buffer identic"
      (if (not (= s1 s2))
          (/ s1 s2)
          (and (= s1 s2)
               (* s1 s2))
          )))
  
 (define (edebug-pop-to-buffer buffer &optional window)
  ;; Like pop-to-buffer, but select window where BUFFER was last shown.
  ;; Select WINDOW if it is provided and still exists.  Otherwise,
  ;; if buffer is currently shown in several windows, choose one.
  ;; Otherwise, find a new window, possibly splitting one.
  ;; FIXME: We should probably just be using `pop-to-buffer'.
  (if (= buffer window)
      "oops! issue equal"
    (and (not (= buffer window))
         (/ buffer window))))

                 
           
           
