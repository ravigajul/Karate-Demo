package performance;

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class PerformanceTest extends Simulation {

  val protocol = karateProtocol();
//     protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")
//   protocol.runner.karateEnv("perf")

  val create = scenario("create").exec(karateFeature("classpath:trello/performance/CreateAndDeleteBoard.feature"))

  setUp(
    create.inject(rampUsers(2) during (5 seconds)).protocols(protocol),
  )

// setUp(
//   create.inject(
//     nothingFor(4), // 1
//     atOnceUsers(10), // 2
//     rampUsers(10).during(5), // 3
//     constantUsersPerSec(20).during(15), // 4
//     constantUsersPerSec(20).during(15).randomized, // 5
//     rampUsersPerSec(10).to(20).during(10.minutes), // 6
//     rampUsersPerSec(10).to(20).during(10.minutes).randomized, // 7
//     stressPeakUsers(1000).during(20) // 8
//   ).protocols(httpProtocol)
// )

}