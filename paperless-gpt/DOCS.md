# Paperless-gpt Home Assistant Addon

paperless-gpt seamlessly pairs with paperless-ngx to generate AI-powered document titles and tags, saving you hours of manual sorting. While other tools may offer AI chat features, paperless-gpt stands out by supercharging OCR with LLMs—ensuring high accuracy, even with tricky scans. If you're craving next-level text extraction and effortless document organization, this is your solution.

## Installation

The installation of this add-on is pretty straightforward and not different in comparison to installing any other Home Assistant add-on.

1. Click the Home Assistant My button below to open the add-on on your Home Assistant instance.

   [![Open this add-on in your Home Assistant instance.][addon-badge]][addon]

2. Click the "Install" button to install the add-on.
3. Start the "Paperless-gpt" add-on.
4. Check the logs of the "Paperless-gpt" add-on to see it in action.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

```yaml
paperless_base_url: http://paperless-ngx:8000
paperless_api_token: your_paperless_api_token
paperless_manual_tag: paperless-gpt
paperless_auto_tag: paperless-gpt-auto
llm_provider: openai
llm_model: gpt-4o
openai_api_key: your_openai_api_key
ollama_host: http://host.docker.internal:11434
token_limit: 2000
llm_language: English
ocr_provider: llm
vision_llm_provider: ollama
vision_llm_model: minicpm-v
azure_docai_endpoint: https://your-endpoint.cognitiveservices.azure.com/
azure_docai_key: your-key
google_project_id: your-project
google_location: us
google_processor_id: processor-id
mistral_api_key: your_mistral_api_key
googleai_api_key: your_googleai_api_key
googleai_thinking_budget: 0
docling_url: http://your-docling-server:port
create_local_hocr: false
local_hocr_path: /app/hocr
create_local_pdf: false
local_pdf_path: /app/pdf
pdf_upload: false
pdf_replace: false
pdf_copy_metadata: true
pdf_ocr_tagging: true
pdf_ocr_complete_tag: paperless-gpt-ocr-complete
pdf_skip_existing_ocr: false
auto_ocr_tag: paperless-gpt-ocr-auto
ocr_limit_pages: 5
log_level: info
listen_interface: 0.0.0.0
auto_generate_title: true
auto_generate_tags: true
auto_generate_correspondents: true
auto_generate_created_date: true
correspondent_black_list: John Doe,Jane Smith
```

### Option: `paperless_base_url`

URL of your paperless-ngx instance (e.g. http://paperless-ngx:8000)

### Option: `paperless_api_token`

API token for paperless-ngx. Generate one in paperless-ngx admin.

### Option: `paperless_manual_tag`

Tag for manual processing. Default: paperless-gpt

### Option: `paperless_auto_tag`

Tag for automatic processing. Default: paperless-gpt-auto

### Option: `llm_provider`

AI backend (openai, ollama, azure, googleai, mistral)

### Option: `llm_model`

AI model name (e.g., gpt-4o, qwen3:8b)

### Option: `openai_api_key`

OpenAI API key (required if using OpenAI)

### Option: `openai_api_type`

Set to 'azure' to use Azure OpenAI Service

### Option: `openai_base_url`

Base URL for OpenAI API. For Azure OpenAI, set to your deployment URL

### Option: `ollama_host`

Ollama server URL (e.g. http://host.docker.internal:11434)

### Option: `token_limit`

Maximum tokens allowed for prompts/content. Set to 0 to disable limit

### Option: `llm_language`

Likely language for documents (e.g. English)

### Option: `ocr_provider`

OCR provider to use (llm, azure, google_docai, docling)

### Option: `vision_llm_provider`

AI backend for LLM OCR (openai or ollama)

### Option: `vision_llm_model`

Model name for LLM OCR (e.g. minicpm-v)

### Option: `azure_docai_endpoint`

Azure Document Intelligence endpoint

### Option: `azure_docai_key`

Azure Document Intelligence API key

### Option: `google_project_id`

Google Cloud project ID

### Option: `google_location`

Google Cloud region (e.g. us, eu)

### Option: `google_processor_id`

Document AI processor ID

### Option: `mistral_api_key`

Mistral API key

### Option: `googleai_api_key`

Google Gemini API key

### Option: `googleai_thinking_budget`

Controls Gemini "thinking" budget. Set to 0 to disable thinking

### Option: `docling_url`

URL of the Docling server instance

### Option: `create_local_hocr`

Whether to save hOCR files locally

### Option: `local_hocr_path`

Path where hOCR files will be saved

### Option: `create_local_pdf`

Whether to save enhanced PDFs locally

### Option: `local_pdf_path`

Path where PDF files will be saved

### Option: `pdf_upload`

Whether to upload enhanced PDFs to paperless-ngx

### Option: `pdf_replace`

Whether to delete the original document after uploading the enhanced version

### Option: `pdf_copy_metadata`

Whether to copy metadata from original to new document

### Option: `pdf_ocr_tagging`

Whether to add a tag to mark documents as OCR-processed

### Option: `pdf_ocr_complete_tag`

Tag used to mark documents as OCR-processed

### Option: `pdf_skip_existing_ocr`

Whether to skip OCR processing for PDFs that already have OCR

### Option: `auto_ocr_tag`

Tag for automatically processing docs with OCR

### Option: `ocr_limit_pages`

Limit the number of pages for OCR. Set to 0 for no limit

### Option: `log_level`

Application log level (info, debug, warn, error)

### Option: `listen_interface`

Network interface to listen on

### Option: `auto_generate_title`

Generate titles automatically if paperless-gpt-auto is used

### Option: `auto_generate_tags`

Generate tags automatically if paperless-gpt-auto is used

### Option: `auto_generate_correspondents`

Generate correspondents automatically if paperless-gpt-auto is used

### Option: `auto_generate_created_date`

Generate created dates automatically if paperless-gpt-auto is used

### Option: `correspondent_black_list`

Comma-separated list of names to exclude from correspondent suggestions

[addon-badge]: https://my.home-assistant.io/badges/supervisor_addon.svg
[addon]: https://my.home-assistant.io/redirect/supervisor_addon/?addon=paperless-gpt&repository_url=https%3A%2F%2Fgithub.com%2Fklassm%2Fpaperless-gpt-home-assistant-addon
