module ApplicationHelper
  def link_to_remove_fields(name, f, class_tag)
    f.hidden_field(:_destroy) + link_to_function(name.html_safe, 'remove_fields(this)', :class => class_tag, title: 'Удалить' )
  end

  def link_to_add_fields(name, f, association, table_name, options)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name.html_safe,
                     "add_attack_type_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\", \"#{table_name}\")",
                     options,
    # :class => 'btn btn-white btn-sm pull-right tooltips'
    )
  end


  def link_to_add_item_fields(name, f, association, table_name, options)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name.html_safe,
                     "add_item_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\", \"#{table_name}\")",
                     options,
    # :class => 'btn btn-white btn-sm pull-right tooltips'
    )
  end
end
