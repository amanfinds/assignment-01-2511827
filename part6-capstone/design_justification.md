## Storage Systems

In this architecture, different storage systems are used to handle different types of workloads in the hospital network.

For transactional hospital operations such as patient records, treatments, and doctor interactions, an OLTP relational database such as PostgreSQL is used. This system ensures ACID properties, which are critical for maintaining accurate and consistent medical data.

A data lake is used to store raw and semi-structured data such as medical reports, doctor notes, and historical patient logs. This storage layer allows flexible and scalable storage of large volumes of healthcare data.

For analytical reporting, a data warehouse is used. Hospital management requires monthly reports such as department costs, bed occupancy, and treatment statistics. A warehouse optimized for OLAP queries enables fast aggregation and reporting.

A vector database is introduced to support semantic search over patient history and medical documents. Doctors can ask questions in natural language, and embeddings allow the system to retrieve the most relevant medical information from large patient records.

Finally, streaming storage is used for ICU monitoring devices that continuously generate patient vital data such as heart rate and oxygen levels.

## OLTP vs OLAP Boundary

The OLTP system handles real-time hospital operations such as patient registration, doctor consultations, and treatment records. These systems require fast transaction processing and strong consistency.

The OLAP system begins when transactional data is extracted from the OLTP system through ETL pipelines and loaded into the data warehouse. This warehouse is optimized for analytical queries such as monthly performance reports, department statistics, and long-term healthcare analysis.

In this design, OLTP databases serve operational workloads while the data warehouse supports analytical workloads. Separating these systems ensures that heavy analytical queries do not affect real-time hospital operations.

## Trade-offs

One major trade-off in this architecture is increased system complexity. Using multiple storage systems such as OLTP databases, data lakes, data warehouses, and vector databases increases operational overhead and infrastructure management.

However, this trade-off is necessary to support different types of workloads efficiently. Transactional workloads require consistency and fast writes, while analytical workloads require large-scale aggregation and querying capabilities.

To mitigate this complexity, modern data orchestration tools and automated ETL pipelines can be used. Monitoring systems and centralized data governance can also help manage the infrastructure effectively while maintaining reliability and performance.
