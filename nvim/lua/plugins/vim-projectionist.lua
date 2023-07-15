return {
  {
    "tpope/vim-projectionist",
    config = function()
      vim.g.projectionist_heuristics = {
        ["*"] = {
          ["app/controllers/*_controller.rb"] = {
            ["command"] = "request",
            ["test"] = { "spec/requests/{}_spec.rb", "spec/controllers/{}_controller_spec.rb" },
            ["alternate"] = { "spec/requests/{}_spec.rb", "spec/controllers/{}_controller_spec.rb" },
          },
          ["spec/controllers/*_spec.rb"] = {
            ["alternate"] = { "app/controllers/{}.rb" },
          },
          ["spec/requests/*_spec.rb"] = {
            ["alternate"] = { "app/controllers/{}.rb" },
          },
          ["app/models/*.rb"] = {
            ["command"] = "model",
            ["test"] = { "spec/models/{}_spec.rb" },
            ["alternate"] = { "spec/models/{}_spec.rb" },
          },
          ["spec/models/*_spec.rb"] = {
            ["alternate"] = { "app/models/{}.rb" },
          },
          ["app/builders/*_builder.rb"] = {
            ["command"] = "builder",
            ["test"] = { "spec/builders/{}_builder_spec.rb" },
            ["alternate"] = { "spec/builders/{}_builder_spec.rb" },
          },
          ["spec/builders/*_builder_spec.rb"] = {
            ["alternate"] = "app/builders/{}_builder.rb",
          },
          ["app/presenters/*_presenter.rb"] = {
            ["command"] = "presenter",
            ["related"] = { "app/models/{}.rb" },
            ["test"] = { "spec/presenters/{}_presenter_spec.rb" },
            ["alternate"] = { "spec/presenters/{}_presenter_spec.rb" },
          },
          ["app/queries/*_query.rb"] = {
            ["command"] = "query",
            ["related"] = { "app/models/{}.rb" },
            ["test"] = { "spec/queries/{}_query_spec.rb" },
            ["alternate"] = { "spec/queries/{}_query_spec.rb" },
          },
          ["spec/queries/*_query_spec.rb"] = {
            ["alternate"] = "app/queries/{}_query.rb",
            ["template"] = {
              "# frozen_string_literal = true",
              "",
              "require 'rails_helper'",
              "",
              "RSpec.describe {camelcase|capitalize|colons} do",
              "end",
            },
          },
          ["app/forms/*_form.rb"] = {
            ["command"] = "form",
            ["related"] = { "app/models/{}.rb" },
            ["test"] = { "spec/forms/{}_form_spec.rb" },
            ["alternate"] = { "spec/forms/{}_form_spec.rb" },
          },
          ["spec/forms/*_form_spec.rb"] = {
            ["alternate"] = "app/forms/{}_form.rb",
          },
          ["app/policies/*_policy.rb"] = {
            ["command"] = "policy",
            ["related"] = { "app/models/{}.rb" },
            ["test"] = { "spec/policies/{}_policy_spec.rb" },
            ["alternate"] = { "spec/policies/{}_policy_spec.rb" },
          },
          ["spec/policies/*_policy_spec.rb"] = {
            ["alternate"] = "app/policies/{}_policy.rb",
          },
          ["app/jobs/*_job.rb"] = {
            ["command"] = "job",
            ["test"] = { "spec/jobs/{}_job_spec.rb" },
            ["alternate"] = { "spec/jobs/{}_job_spec.rb" },
          },
          ["spec/jobs/*_job_spec.rb"] = {
            ["alternate"] = "app/jobs/{}_job.rb",
            ["template"] = {
              "# frozen_string_literal = true",
              "",
              "require 'rails_helper'",
              "",
              "RSpec.describe {camelcase|capitalize|colons} do",
              "end",
            },
          },
          ["app/validators/*_validator.rb"] = {
            ["command"] = "validator",
            ["test"] = { "spec/validators/{}_validator_spec.rb" },
            ["alternate"] = { "spec/validators/{}_validator_spec.rb" },
          },
          ["spec/validators/*_validator_spec.rb"] = {
            ["alternate"] = "app/validators/{}_validator.rb",
          },
        },
      }
    end,
  },
}
