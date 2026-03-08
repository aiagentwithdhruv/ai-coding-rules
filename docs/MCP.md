# MCP Servers

MCP (Model Context Protocol) servers give Claude Code access to external tools — databases, APIs, browsers, file systems, and more.

## Setup

Add servers to `.claude/mcp_servers.json` in your project:

```json
{
  "mcpServers": {
    "server-name": {
      "command": "python",
      "args": ["path/to/server.py"],
      "env": {
        "API_KEY": "your-key"
      }
    }
  }
}
```

## Common MCP Servers

| Server | What it does | Transport |
|--------|-------------|-----------|
| Filesystem | Read/write files outside project | stdio |
| Database | Query PostgreSQL/MongoDB/Supabase | stdio |
| Browser | Web scraping, automation | stdio |
| Gmail | Read/send emails | stdio |
| Vercel | Deploy, manage projects | cloud |
| n8n | Trigger workflows | stdio |
| CRM | Manage contacts, deals | stdio |

## Template

```json
{
  "mcpServers": {
    "database": {
      "command": "python",
      "args": ["mcp/database_server.py"],
      "env": {
        "DATABASE_URL": "${DATABASE_URL}"
      }
    },
    "browser": {
      "command": "node",
      "args": ["mcp/browser_server.js"]
    }
  }
}
```

## Building an MCP Server

```python
from fastmcp import FastMCP

mcp = FastMCP("my-server")

@mcp.tool()
def my_tool(param: str) -> str:
    """What this tool does."""
    return result

if __name__ == "__main__":
    mcp.run()
```

## Integration with Rules

Add to your `CLAUDE.md`:

```markdown
## MCP Servers
Available MCP tools are listed in `.claude/mcp_servers.json`.
Use MCP tools for external integrations instead of raw API calls.
```
