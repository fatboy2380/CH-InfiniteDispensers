bind(block_dispense, null, null, @e){
  @loc = @e['location'];
  @label = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z]);
  @label = replace(@l, '-', 'n');
  if(has_value(string(@label))){
    set_timeout(50, closure(set_inventory(@loc, get_value(string(@label)))));
  }
}

bind(block_break, null, array(type: 23), @e){
  @loc = @e['location'];
  @label = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z]);
  @label= replace(@l, '-', 'n');
  if(has_value(string(@l))){
    clear_value(string(@l));
    set_inventory(@loc, array_resize(array(), 9, null));
  }
}

bind(block_break, null, array(type: 158), @e){
  @loc = @e['location'];
  @label= get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z]);
  @label= replace(@l, '-', 'n');
  if(has_value(string(@label))){
    clear_value(string(@label));
    set_inventory(@loc, array_resize(array(), 9, null));
  }
}

bind(block_place, null, array(type: 23), @e){
  @loc = @e['location'];
  @label= get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z]);
  @label= replace(@l, '-', 'n');
  if(has_value(string(@label))){
    clear_value(string(@label));
  }
}

bind(block_place, null, array(type: 158), @e){
  @loc = @e['location'];
  @label= get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z]);
  @label= replace(@l, '-', 'n');
  if(has_value(string(@label))){
    clear_value(string(@label));
  }
}