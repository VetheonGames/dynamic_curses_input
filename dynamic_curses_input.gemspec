# frozen_string_literal: true

require_relative 'lib/dynamic_curses_input/version'

Gem::Specification.new do |spec|
  spec.name = 'dynamic_curses_input'
  spec.version = DynamicCursesInput::VERSION
  spec.authors = ['PixelRidge Softworks']
  spec.email = ['ceo@pixelridgesoftworks.com']

  spec.summary = 'A simple library for making Curses TUI input more dynamic and user-friendly'
  spec.description = "Dynamic Curses Input is a highly simple, yet powerful gem that allows simple implementation of
                      dynamic typing in curses TUI menus built in Ruby. It allows for the use of special keys inside
                      of Curses TUI menus without the need for a bunch of extra code.

                      KNOWN BUG: X & Y coords for placing windows appear to be broken right now. Will fix with
                      next real update, just use the preset window locations for now please!"
  spec.homepage = 'https://git.pixelridgesoftworks.com/PixelRidge-Softworks/dynamic_curses_input'
  spec.license = 'PixelRidge-BEGPULSE'
  spec.required_ruby_version = '3.2.2'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://git.pixelridgesoftworks.com/PixelRidge-Softworks/dynamic_curses_input'
  spec.metadata['changelog_uri'] = 'https://git.pixelridgesoftworks.com/PixelRidge-Softworks/dynamic_curses_input/src/branch/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob('{bin,lib,sig}/**/*') + Dir.glob('*').reject do |f|
                                                  f.start_with?('spec', '.rspec', 'dynamic_curses_input.gemspec')
                                                end
  spec.files << 'LICENSE'
  spec.files << 'README.md'
  spec.files << 'dynamic_curses_input.gemspec'

  spec.require_paths = ['lib']

  spec.add_dependency 'curses'
  spec.add_dependency 'reline'
  spec.add_development_dependency 'rubocop'
  spec.post_install_message = 'If you find this gem useful, consider supporting its development: https://www.paypal.com/donate/?hosted_button_id=YF5XS7ZXQ6F8A'
end
