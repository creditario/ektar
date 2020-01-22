# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/site_ruby/all/site_ruby.rbi
#
# site_ruby-2.6.0
module Gem::Text
  def clean_text(text); end
  def format_text(text, wrap, indent = nil); end
  def levenshtein_distance(str1, str2); end
  def min3(a, b, c); end
  def truncate_text(text, description, max_length = nil); end
end
module Gem::DefaultUserInteraction
  def self.ui; end
  def self.ui=(new_ui); end
  def self.use_ui(new_ui); end
  def ui; end
  def ui=(new_ui); end
  def use_ui(new_ui, &block); end
  include Gem::Text
end
module Gem::UserInteraction
  def alert(statement, question = nil); end
  def alert_error(statement, question = nil); end
  def alert_warning(statement, question = nil); end
  def ask(question); end
  def ask_for_password(prompt); end
  def ask_yes_no(question, default = nil); end
  def choose_from_list(question, list); end
  def say(statement = nil); end
  def terminate_interaction(exit_code = nil); end
  def verbose(msg = nil); end
  include Gem::DefaultUserInteraction
end
class Gem::StreamUI
  def _deprecated_debug(statement); end
  def _gets_noecho; end
  def alert(statement, question = nil); end
  def alert_error(statement, question = nil); end
  def alert_warning(statement, question = nil); end
  def ask(question); end
  def ask_for_password(question); end
  def ask_yes_no(question, default = nil); end
  def backtrace(exception); end
  def choose_from_list(question, list); end
  def close; end
  def debug(*args, &block); end
  def download_reporter(*args); end
  def errs; end
  def initialize(in_stream, out_stream, err_stream = nil, usetty = nil); end
  def ins; end
  def outs; end
  def progress_reporter(*args); end
  def require_io_console; end
  def say(statement = nil); end
  def terminate_interaction(status = nil); end
  def tty?; end
  extend Gem::Deprecate
end
class Gem::StreamUI::SilentProgressReporter
  def count; end
  def done; end
  def initialize(out_stream, size, initial_message, terminal_message = nil); end
  def updated(message); end
end
class Gem::StreamUI::SimpleProgressReporter
  def count; end
  def done; end
  def initialize(out_stream, size, initial_message, terminal_message = nil); end
  def updated(message); end
  include Gem::DefaultUserInteraction
end
class Gem::StreamUI::VerboseProgressReporter
  def count; end
  def done; end
  def initialize(out_stream, size, initial_message, terminal_message = nil); end
  def updated(message); end
  include Gem::DefaultUserInteraction
end
class Gem::StreamUI::SilentDownloadReporter
  def done; end
  def fetch(filename, filesize); end
  def initialize(out_stream, *args); end
  def update(current); end
end
class Gem::StreamUI::ThreadedDownloadReporter
  def done; end
  def fetch(file_name, *args); end
  def file_name; end
  def initialize(out_stream, *args); end
  def locked_puts(message); end
  def update(bytes); end
end
class Gem::ConsoleUI < Gem::StreamUI
  def initialize; end
end
class Gem::SilentUI < Gem::StreamUI
  def close; end
  def download_reporter(*args); end
  def initialize; end
  def progress_reporter(*args); end
end
class Gem::Ext::Builder
  def build_args; end
  def build_args=(arg0); end
  def build_error(build_dir, output, backtrace = nil); end
  def build_extension(extension, dest_path); end
  def build_extensions; end
  def builder_for(extension); end
  def initialize(spec, build_args = nil); end
  def self.class_name; end
  def self.make(dest_path, results); end
  def self.redirector; end
  def self.run(command, results, command_name = nil); end
  def write_gem_make_out(output); end
  include Gem::UserInteraction
end
class Gem::Licenses
  def self.match?(license); end
  def self.suggestions(license); end
  extend Gem::Text
end