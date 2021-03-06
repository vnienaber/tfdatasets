% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_spec.R
\name{step_categorical_column_with_hash_bucket}
\alias{step_categorical_column_with_hash_bucket}
\title{Creates a categorical column with hash buckets specification}
\usage{
step_categorical_column_with_hash_bucket(
  spec,
  ...,
  hash_bucket_size,
  dtype = tf$string
)
}
\arguments{
\item{spec}{A feature specification created with \code{\link[=feature_spec]{feature_spec()}}.}

\item{...}{Comma separated list of variable names to apply the step. \link{selectors} can also be used.}

\item{hash_bucket_size}{An int > 1. The number of buckets.}

\item{dtype}{The type of features. Only string and integer types are supported.}
}
\value{
a \code{FeatureSpec} object.
}
\description{
Represents sparse feature where ids are set by hashing.
}
\examples{
\dontrun{
library(tfdatasets)
data(hearts)
hearts <- tensor_slices_dataset(hearts) \%>\% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ thal) \%>\%
  step_categorical_column_with_hash_bucket(thal, hash_bucket_size = 3)

spec_fit <- fit(spec)
final_dataset <- hearts \%>\% dataset_use_spec(spec_fit)
}

}
\seealso{
\link{steps} for a complete list of allowed steps.

Other Feature Spec Functions: 
\code{\link{dataset_use_spec}()},
\code{\link{feature_spec}()},
\code{\link{fit.FeatureSpec}()},
\code{\link{step_bucketized_column}()},
\code{\link{step_categorical_column_with_identity}()},
\code{\link{step_categorical_column_with_vocabulary_file}()},
\code{\link{step_categorical_column_with_vocabulary_list}()},
\code{\link{step_crossed_column}()},
\code{\link{step_embedding_column}()},
\code{\link{step_indicator_column}()},
\code{\link{step_numeric_column}()},
\code{\link{step_remove_column}()},
\code{\link{step_shared_embeddings_column}()},
\code{\link{steps}}
}
\concept{Feature Spec Functions}
