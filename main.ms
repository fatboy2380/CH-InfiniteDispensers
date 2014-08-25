bind(block_dispense, null, null, @e,
  @loc = @e[location]
  @l = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z])
  @l = replace(@l, '-', 'n')
  if(has_value(string(@l))){ #is an infinite dispenser
    set_timeout(50, closure(set_inventory(@loc, yml_decode(get_value(string(@l))))))
  }
)

bind(block_break, null, array(type: 23), @e,
  @loc = @e[location]
  @l = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z])
  @l = replace(@l, '-', 'n')
  if(has_value(string(@l))){ #is an infinite dispenser
    clear_value(string(@l))
    set_inventory(@loc, array(null, null, null, null, null, null, null, null, null)) #no drops
  }
)

bind(block_break, null, array(type: 158), @e,
  @loc = @e[location]
  @l = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z])
  @l = replace(@l, '-', 'n')
  if(has_value(string(@l))){ #is an infinite dispenser
    clear_value(string(@l))
    set_inventory(@loc, array(null, null, null, null, null, null, null, null, null)) #no drops
  }
)

bind(block_place, null, array(type: 23), @e,
  @loc = @e[location]
  @l = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z])
  @l = replace(@l, '-', 'n')
  if(has_value(string(@l))){ #was an infinite dispenser
    clear_value(string(@l))
  }
)

bind(block_place, null, array(type: 158), @e,
  @loc = @e[location]
  @l = get_server_info(0).'.infdis.'.@loc[world].'_'.integer(@loc[x]).'_'.integer(@loc[y]).'_'.integer(@loc[z])
  @l = replace(@l, '-', 'n')
  if(has_value(string(@l))){ #was an infinite dispenser
    clear_value(string(@l))
  }
)