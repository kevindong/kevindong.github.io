# Kevin Dong

This is basically just a copy of [my resume (link here)](https://www.kevindong.net/documents/Kevin_Dong_Resume_Public.pdf) and my [LinkedIn](https://www.linkedin.com/in/dong70). Not much to see here otherwise.

Reach out [`dong.kevin1@gmail.com`](mailto:dong.kevin1@gmail.com) if you want to get in touch. My GitHub's [`@kevindong`](https://www.github.com/kevindong).

## Experience

### Senior Software Engineer - Datadog - Remote (Chicago) | Jul. 2024 —
Still on Metrics Index!

### Software Engineer II - Datadog - Remote (Chicago) | May 2022 — Jun. 2024
Software Engineer on the Metrics Index team.
* Worked on real-time metrics data ingestion and query service used on all recent metrics data (Mork), including virtually all alerting/monitoring evaluations. Ingests trillions of datapoints a day and responds to queries for said datapoints at high scale and availability. Service is primarily built in Rust.
* Cross-functionally collaborated with teams across Metrics, Query, and Alerting orgs to design, implement, and deliver improved alerting/monitoring reliability to end-customers during internal incidents
* Proposed and implemented CPU throttler that effectively eliminated an entire class of previously frequent (1-2 times per week) incidents and source of on call burden
* Designed and achieved metrics-wide adoption of a shared, programmatic understanding of query prioritization. Previously, each team would locally decide priorities, which frequently clashed between services and lead to excess query failures.

### Software Engineer - Bloomberg LP - NYC | Jan. 2021 — May 2022
* Developer on the Latin American Feeds & PFCOs team. Team is responsible for connecting to Latin American stock exchanges and certain non-stock-exchange-firms, parsing data, and sending structured data to downstream Bloomberg teams. Work is primarily in C++ and Python.
* Modernized (i.e. rewrite or incrementally improve) legacy market data parsers to increase reliability and meet internal quality/behavioral standards

### Software Engineer - Squarespace - NYC | Jun. 2019 — Jan. 2021
* Built a distributed, fault-tolerant, and horizontally scalable data deduplication Java microservice capable of processing >25,000 events/second in collaboration with a data engineering team; service leveraged Kafka transactions and partitions to shard incoming events into the microservice hosted on Kubernetes
* Reduced processing times by 90% for certain critical operations in Praetor (an internal Go gRPC microservice for A/B testing and feature flagging) while improving reliability and safety; evangelized Praetor to other teams and orgs within the company
* Built a blackbox monitor in Go to measure the reliability and responsiveness of Praetor and to output metrics to Prometheus/Grafana with new alerting functionality
* Held primary responsibility for monitoring and responding to issues arising in production for the company's main traffic-serving system (along with all systems/services owned by my team) during on-call shifts; also provided support for other engineers

### Software Engineering Intern - Capital One - McLean, VA | Summer 2018
* iOS developer in consumer banking business
* Prototyped an iOS app in Swift that interfaces with internal APIs/microservices
* Sourced and utilized an open source library for interacting with a Go server via WebSockets

### Associate Software Engineer Intern - Clarity Partners - Chicago | Summer 2017
* Developer on the Chicago Police Department team using C# with ASP.NET MVC and Oracle SQL
* Rewrote multiple data warehouses search applications (originally in Visual Basic) using ASP.NET MVC
* Analyzed, architected, and rewrote web application (originally in Perl) for police lineups. Police lineups are a series of mugshots shown to a victim/witness of a crime wherein the victim/witness will point out a suspect. This process, if conducted fairly, is admissible evidence in court. Work includes database layer, web UI, everything in between, and a robust audit log system.

## Technical Skills
Roughly listed in order from best to good (1 = best; 8 = good).

1. Go
2. gRPC
3. Rust
4. Kafka
5. Kubernetes
6. Python
7. SQL
8. Java

## Education
### Purdue University - West Lafayette, IN | Aug. 2015 - May. 2019
* Bachelor of Science in Computer Science. 
* Software Engineering track. Appeared on Dean’s List 7 times. 
* GPA: 3.75/4