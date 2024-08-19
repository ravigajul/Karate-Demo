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

}