
(cl:in-package :asdf)

(defsystem "tutorial_beginner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "nums" :depends-on ("_package_nums"))
    (:file "_package_nums" :depends-on ("_package"))
  ))