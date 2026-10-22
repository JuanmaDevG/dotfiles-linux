return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        mason = true,
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "off",
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
      },
    },
  },
}
