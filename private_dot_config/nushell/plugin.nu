register /home/trivernis/.cargo/bin/nu_plugin_dialog  {
  "sig": {
    "name": "ask",
    "usage": "",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "subcommand",
        "desc": "The ask subcommand to run",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "vectorizes_over_list": false,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_type": "Any",
    "output_type": "Any",
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Default"
  },
  "examples": []
}

register /home/trivernis/.cargo/bin/nu_plugin_dialog  {
  "sig": {
    "name": "ask confirm",
    "usage": "Prompt the user with a confirmation prompt.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "prompt",
        "desc": "The question to ask the user.",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "vectorizes_over_list": false,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "abortable",
        "short": null,
        "arg": null,
        "required": false,
        "desc": "If set users can abort the prompt.",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "default",
        "short": null,
        "arg": "Boolean",
        "required": false,
        "desc": "The default selection.",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_type": "Any",
    "output_type": "Any",
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Misc"
  },
  "examples": []
}

register /home/trivernis/.cargo/bin/nu_plugin_dialog  {
  "sig": {
    "name": "ask multiselect",
    "usage": "Prompt the user with a selection prompt.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "items",
        "desc": "The items out of which one can be selected.",
        "shape": {
          "List": "String"
        },
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "vectorizes_over_list": false,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "abortable",
        "short": null,
        "arg": null,
        "required": false,
        "desc": "If set users can abort the prompt.",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "prompt",
        "short": null,
        "arg": "String",
        "required": false,
        "desc": "An optional prompt that can be shown to the user for the selection.",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "default",
        "short": null,
        "arg": "String",
        "required": false,
        "desc": "The default selections as a comma separated string of indices",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_type": "Any",
    "output_type": "Any",
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Misc"
  },
  "examples": []
}

register /home/trivernis/.cargo/bin/nu_plugin_dialog  {
  "sig": {
    "name": "ask password",
    "usage": "Prompt the user with a password input.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "vectorizes_over_list": false,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "prompt",
        "short": null,
        "arg": "String",
        "required": false,
        "desc": "The prompt to this password input",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "confirm",
        "short": null,
        "arg": null,
        "required": false,
        "desc": "Prompts the user twice for matching password inputs",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "allow-empty",
        "short": null,
        "arg": null,
        "required": false,
        "desc": "Allows the user to input an empty password",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_type": "Any",
    "output_type": "Any",
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Misc"
  },
  "examples": []
}

register /home/trivernis/.cargo/bin/nu_plugin_dialog  {
  "sig": {
    "name": "ask select",
    "usage": "Prompt the user with a selection prompt.",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "items",
        "desc": "The items out of which one can be selected.",
        "shape": {
          "List": "String"
        },
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "vectorizes_over_list": false,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "fuzzy",
        "short": null,
        "arg": null,
        "required": false,
        "desc": "To add a fuzzy search to the select.",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "abortable",
        "short": null,
        "arg": null,
        "required": false,
        "desc": "If set users can abort the prompt.",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "prompt",
        "short": null,
        "arg": "String",
        "required": false,
        "desc": "An optional prompt that can be shown to the user for the selection.",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "default",
        "short": null,
        "arg": "Number",
        "required": false,
        "desc": "The default selection.",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_type": "Any",
    "output_type": "Any",
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Misc"
  },
  "examples": []
}

