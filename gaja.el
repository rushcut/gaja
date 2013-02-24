(defun gaja-project-root (&optional dir home)
	"Returns the current project root."
	(let ((default-directory (or dir default-directory)))
		(if (file-exists-p ".git")
				default-directory
			(gaja-project-root (expand-file-name (file-name-as-directory ".."))))))

(defun gaja-find-dir (dir_or_file)
	;(let ((root (gaja-project-root)))
	(let ((path (concat (expand-file-name (gaja-project-root)) dir_or_file)))
		(if (file-directory-p path)
				(jump-find-file-in-dir path)
			(jump-to-file path))))

(defun gaja-find-controllers ()
	(interactive)
	(gaja-find-dir "app/controllers"))

(defun gaja-find-models ()
	(interactive)
	(gaja-find-dir "app/models"))

(defun gaja-find-views ()
	(interactive)
	(gaja-find-dir "app/views"))

(defun gaja-find-views-layouts ()
	(interactive)
	(gaja-find-dir "app/views/layouts"))

(defun gaja-find-views-application ()
	(interactive)
	(gaja-find-dir "app/views/application"))

(defun gaja-find-helpers ()
	(interactive)
	(gaja-find-dir "app/helpers"))

(defun gaja-find-stylesheets ()
	(interactive)
	(gaja-find-dir "app/assets/stylesheets"))

(defun gaja-find-javascripts ()
	(interactive)
	(gaja-find-dir "app/assets/javascripts"))

(defun gaja-find-config ()
	(interactive)
	(gaja-find-dir "config"))

(defun gaja-find-features ()
	(interactive)
	(gaja-find-dir "features"))

(defun gaja-find-step-definitions ()
	(interactive)
	(gaja-find-dir "step_definitions"))

(defun gaja-find-spec ()
	(interactive)
	(gaja-find-dir "spec"))

(defun gaja-find-lib ()
	(interactive)
	(gaja-find-dir "lib"))

(defun gaja-find-routes ()
	(interactive)
	(gaja-find-dir "config/routes.rb"))

(provide 'gaja)
