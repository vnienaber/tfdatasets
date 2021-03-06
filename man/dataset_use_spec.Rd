% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_spec.R
\name{dataset_use_spec}
\alias{dataset_use_spec}
\title{Transform the dataset using the provided spec.}
\usage{
dataset_use_spec(dataset, spec)
}
\arguments{
\item{dataset}{A TensorFlow dataset.}

\item{spec}{A feature specification created with \code{\link[=feature_spec]{feature_spec()}}.}
}
\value{
A TensorFlow dataset.
}
\description{
Prepares the dataset to be used directly in a model.The transformed
dataset is prepared to return tuples (x,y) that can be used directly
in Keras.
}
\examples{
\dontrun{
library(tfdatasets)
data(hearts)
hearts <- tensor_slices_dataset(hearts) \%>\% dataset_batch(32)

# use the formula interface
spec <- feature_spec(hearts, target ~ age) \%>\%
  step_numeric_column(age)

spec_fit <- fit(spec)
final_dataset <- hearts \%>\% dataset_use_spec(spec_fit)
}
}
\seealso{
\itemize{
\item \code{\link[=feature_spec]{feature_spec()}} to initialize the feature specification.
\item \code{\link[=fit.FeatureSpec]{fit.FeatureSpec()}} to create a tensorflow dataset prepared to modeling.
\item \link{steps} to a list of all implemented steps.
}

Other Feature Spec Functions: 
\code{\link{feature_spec}()},
\code{\link{fit.FeatureSpec}()},
\code{\link{step_bucketized_column}()},
\code{\link{step_categorical_column_with_hash_bucket}()},
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
