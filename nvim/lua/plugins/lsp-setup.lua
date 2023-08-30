require("lsp-setup").setup({
  servers = {
    lua_ls = {},
    intelephense = {
      stubs = {
        "apache", "bcmath", "bz2", "calendar", "com_dotnet", "Core", "ctype", "curl", "date",
        "dba", "dom", "enchant", "exif", "FFI", "fileinfo", "filter", "fpm", "ftp", "gd", "gettext",
        "gmp", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "meta", "mysqli",
        "oci8", "odbc", "openssl", "pcntl", "pcre", "PDO", "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite", "pgsql",
        "Phar", "posix", "pspell", "readline", "Reflection", "session", "shmop", "SimpleXML", "snmp", "soap",
        "sockets", "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem", "sysvshm", "tidy",
        "tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "Zend OPcache", "zip", "zlib",
        "wordpress", "phpunit",
      },
    },
    tsserver = {},
    jsonls = {},
    cssls = {},
    emmet_ls = {
      filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascript", "javascriptreact", "less", "pug",
        "sass", "scss", "svelte", "typescriptreact", "vue", "php" }
    },
    dockerls = {},
    docker_compose_language_service = {},
    marksman = {},
  },
})
