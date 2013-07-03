  def setup
    @kata = make_kata('Ruby-installed-and-working')
  def teardown
    Thread.current[:file] = nil
    system("rm -rf #{root_dir}/katas/*")
    system("rm -rf #{root_dir}/zips/*")    
    avatar = Avatar.create(@kata, 'wolf')  # creates tag-0
    before = avatar.visible_files(tag=1)
    after = avatar.visible_files(tag=2)
    avatar = Avatar.create(@kata, 'wolf') # 0
    run_tests(avatar, visible_files) # 1
    run_tests(avatar, visible_files) # 2
    avatar = Avatar.create(@kata, 'wolf') # 0
    avatar = Avatar.create(@kata, 'wolf') # 0