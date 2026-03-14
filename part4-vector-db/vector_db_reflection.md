# Vector DB Use Case

A traditional keyword-based search system would not be sufficient for searching large legal contracts. Keyword search relies on exact word matches, which means it may fail to retrieve relevant sections if the wording differs from the user's query. For example, if a lawyer searches for "termination clauses" but the document uses phrases like "contract cancellation conditions," a keyword search may miss those sections entirely.

Vector databases solve this problem by using embeddings to capture the semantic meaning of text rather than just exact words. In this system, the 500-page contracts would first be divided into smaller chunks of text such as paragraphs. Each chunk would then be converted into vector embeddings using a language model.

When a lawyer asks a question in plain English, the query is also converted into an embedding. The vector database then performs a similarity search to find document sections that are semantically similar to the query. This allows the system to retrieve relevant content even when the wording is different.

The vector database therefore acts as the semantic search engine for the system. It enables faster and more accurate retrieval of legal information, which is especially valuable when dealing with large and complex documents like contracts.
