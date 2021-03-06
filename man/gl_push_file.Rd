% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/projects_and_repos.R
\name{gl_push_file}
\alias{gl_push_file}
\title{Upload a file to a gitlab repository}
\usage{
gl_push_file(project, file_path, content, commit_message,
  branch_name = "master", overwrite = TRUE, ...)
}
\arguments{
\item{project}{Project name or id}

\item{file_path}{path where to store file in gl_repository}

\item{content}{file content (text)}

\item{commit_message}{Message to use for commit with new/updated file}

\item{branch_name}{name of branch where to append newly generated commit with new/updated file}

\item{overwrite}{whether to overwrite files that already exist}

\item{...}{passed on to \code{\link{gitlab}}}
}
\value{
returns a data_frame with changed branch and path (0 rows if
nothing was changed, since overwrite is FALSE)
}
\description{
If the file already exists, it is updated/overwritten by default
}
\examples{
\dontrun{
my_project <- gl_project_connection(project = "example-project", ...) ## fill in login parameters
my_project(gl_push_file, "data/test_data.csv",
           content = readLines("test-data.csv"),
           commit_message = "New test data")
}
}

