    Thread.current[:git] = nil
    Thread.current[:task] = nil
  #- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    delta = {
      :changed => [ ],
      :unchanged => visible_files.keys,
      :deleted => [ ],
      :new => [ ]                                    
    }
    run_test(delta, avatar, visible_files)  # creates tag-1
    delta = {
      :changed => [ ],
      :unchanged => visible_files.keys - [ deleted_filename ],
      :deleted => [ deleted_filename ],
      :new => [ ]                                          
    }    
    run_test(delta, avatar, visible_files)  # creates tag-2    
          "before.keys.include?(#{deleted_filename})"          
  #- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
    delta = {
      :changed => [ ],
      :unchanged => visible_files.keys,
      :deleted => [ ],
      :new => [ ]                              
     }    
    run_test(delta, avatar, visible_files) # 1
    delta = {
      :changed => [ 'cyber-dojo.sh' ],
      :unchanged => visible_files.keys - [ 'cyber-dojo.sh' ],
      :deleted => [ ],
      :new => [ ]                              
     }
    run_test(delta, avatar, visible_files) # 2    
  #- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
    delta = {
      :changed => [ ],
      :unchanged => visible_files.keys - [ added_filename ],
      :deleted => [ ],
      :new => [ added_filename ]                        
    }
    run_test(delta, avatar, visible_files) # 1
  #- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    
    delta = {
      :changed => [ deleted_filename ],
      :unchanged => visible_files.keys - [ deleted_filename ],
      :deleted => [ ],
      :new => [ ]                  
    }    
    run_test(delta, avatar, visible_files)  # 1
    #- - - - -
    delta = {
      :changed => [ ],
      :unchanged => visible_files.keys - [ deleted_filename ],
      :deleted => [ deleted_filename ],
      :new => [ ]                        
    }
    run_test(delta, avatar, visible_files)  # 2    
    #- - - - -
    assert actual.include?(expected), actual