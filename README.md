# Corporate AI Assistant (MVP) 🤖💼

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Supabase](https://img.shields.io/badge/Supabase-181818?style=for-the-badge&logo=supabase&logoColor=white)
![OpenAI](https://img.shields.io/badge/OpenAI-412991?style=for-the-badge&logo=openai&logoColor=white)

An AI-powered mobile application designed to streamline internal corporate knowledge sharing. This MVP utilizes **RAG (Retrieval-Augmented Generation)** architecture to allow employees to securely "chat" with uploaded PDF documents and company archives.

## 🚀 Features

* **Secure Authentication:** Integrated with Supabase Auth for corporate email verification.
* **Vector Search:** Uses Supabase `pgvector` extension to store and retrieve document embeddings.
* **AI Chat Interface:** Real-time chat powered by OpenAI's GPT-4 model.
* **Document Parsing:** Automatically extracts text from uploaded PDFs for indexing.

## 🏗️ Tech Stack & Architecture

* **Frontend:** Flutter (Dart) - Chosen for cross-platform capability (iOS/Android).
* **Backend:** Supabase (BaaS) - Handles Database, Auth, and Vector Storage.
* **AI Model:** OpenAI GPT-4 Turbo via REST API.
* **State Management:** Provider / Riverpod pattern.

## 📂 Project Structure
lib/ ├── config/ # Environment variables & constants ├── models/ # Data models (User, Document, Message) ├── services/ # API calls (OpenAI, Supabase) ├── ui/ # Screens and Widgets └── utils/ # Helper functions
## ⚠️ Note
This repository contains the **MVP source code**. Sensitive API keys and specific corporate data datasets have been removed for security compliance.

---
*Developed by Begüm Ünlü - 2026*
