return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        typeCheckingMode = "on",
        reportMissingImports = "error",
        reportUnknownVariableType = "none",
        reportUnknownParameterType = "none",
        reportUnknownArgumentType = "none",
        reportAttributeAccessIssue = "none",
        reportGeneralTypeIssues = "warning",
        reportAssignmentType = "none",
        reportArgumentType = "none",
        reportReturnType = "warning",
        reportCallIssue = "none",
        reportMissingTypeStubs = "none",
      },
    },
  },
}
