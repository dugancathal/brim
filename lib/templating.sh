#!/bin/bash

# Public: Generate a template of a given type and subtype
#
# template_type  - the overriding class of template
# specified_type - the type of template within the template_type's category
# name           - an option passed into the ERB template
#
# Returns the output of the ERB template
function __rim_template() {
  local template_type=$1
  local specified_type=$2
  local name=$3

  local template_path="$__rim_template_path/$template_type/$specified_type.rb.erb"
  $__rim_ruby -r $__rim_as_string_ext -r erb -e "@name='$name'; puts ERB.new(File.read('$template_path')).result"
}

