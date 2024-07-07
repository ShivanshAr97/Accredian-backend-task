export const errorMiddleware = (err, req, res, next) => {
  const statusCode = err.statusCode || 500;
  const errorMessage = {
    message: err.message,
    errorCode: err.errorCode,
  };
console.log(err);
res.status(statusCode).json(errorMessage)
};
