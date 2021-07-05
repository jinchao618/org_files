(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("org-notes"
         :base-directory "./"
         :base-extension "org"
         :publishing-directory "./public_html/"
         :recursive t
         :publishing-function org-html-publish-to-html
         )
        ("org-static"
         :base-directory "~/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/public_html/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org"
         :components ("org-notes" "org-static")
         )
        )
      )
