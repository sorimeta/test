#' 먼저 제일 위쪽에 자리잡은 줄은 설명서 제목으로 사용된다.
#'
#' 제목에서 한줄을 뗀 다음 줄은 설명서에서 함수의 description란에 위치하게 된다.
#'
#' @param: 함수에 들어가는 입력값(parameter)을 명시해주고, 이에 대한 설명을 써주면 된다.
#' @return: 함수의 결과값에 대한 설명을 써준다.
#' @example: 함수를 실제로 어떻게 적용하는지에 대한 예를 적어주면 된다.
#' 이 부분은 배포를 염두해 두고 있는 입장이라면 신경을 가장 많이 써야한다.
#' 예제가 부실한 패키지는 사용하기도 싫어지기 때문이다.
#' export 이 태그는 설명서가 아닌 NAMESPACE에 대한 태그이다.
#' 이 태그를 붙이게 되면 패키지를 설치한 사용자가 mom_gamma() 함수를 사용할 수 있게 된다.
#' 태그의 의미 그대로 함수를 패키지의 밖으로 내보낼 수 있도록 만들어 준다.
#' @export

mom_gamma <- function(sample_g){

  x_bar <- mean(sample_g)
  x2_bar <- mean(sample_g^2)
  mom_theta <- (x2_bar - x_bar^2) / x_bar
  mom_k <- x_bar / mom_theta

  list(k_hat = mom_k, theta_hat = mom_theta)

}
