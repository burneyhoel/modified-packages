module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'

    @toolBar.addButton
      tooltip: 'Reload Window'
      callback: 'window:reload'
      icon: 'android-sync'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'command-palette:toggle'
      tooltip: 'Toggle Command Palette'
      icon: 'atom-original'
      iconset: 'devicon'

    @toolBar.addButton
      tooltip: 'terminal'
      callback: 'terminal-plus:toggle'
      icon: 'terminal'

    @toolBar.addButton
      tooltip: 'git-plus'
      callback: 'git-plus:menu'
      icon: 'git-plain'
      iconset: 'devicon'

    @toolBar.addSpacer()

    @toolBar.addButton
      tooltip: 'List projects'
      callback: 'project-manager:list-projects'
      icon: 'file-submodule'

    @toolBar.addButton
      callback: 'git-projects:toggle'
      tooltip: 'Git Projects'
      icon: 'github-square'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      tooltip: 'Git Control'
      callback: 'git-control:toggle'
      icon: 'sourcetree-plain'
      iconset: 'devicon'

    @toolBar.addButton
      tooltip: 'Atomatigit'
      callback: 'atomatigit:toggle'
      icon: 'terminal'
      iconset: 'fa'

    @toolBar.addButton
      tooltip: "Merge Conflicts"
      callback: "merge-conflicts:detect"
      icon: "pull-request"
      iconset: "ion"

    @toolBar.addButton
      tooltip: 'git-time-machine'
      callback: 'git-time-machine:toggle'
      icon: 'clock'
      iconset: 'ion'

    @toolBar.addButton
      tooltip: 'git-history'
      callback: 'git-history:show-file-history'
      icon: 'git-commit'

    @toolBar.addButton
      tooltip: 'git-blame'
      callback: 'blame:toggle'
      icon: 'person-stalker'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'bookmarks:toggle-bookmark'
      tooltip: 'Toggle bookmark'
      icon: 'pinpoint'
      iconset: 'ion'

    @toolBar.addButton
      callback: 'bookmarks:view-all'
      tooltip: 'View bookmarks'
      icon: 'search-minus'
      iconset: 'fa'

    @toolBar.addButton
      icon: 'search-plus'
      callback: 'project-find:toggle'
      tooltip: 'search in directory'
      iconset: 'fa'

    @toolBar.addButton
      icon: 'search'
      callback: 'find-and-replace:toggle'
      tooltip: 'Find in record'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'application:open-folder'
      tooltip: 'Open folder'
      icon: 'folder'
      iconset: 'ion'

    @toolBar.addButton
      callback: 'settings-view:open'
      tooltip: 'Open Settings View'
      icon: 'gears'
      iconset: 'fa'

    if atom.inDevMode()
      @toolBar.addSpacer()

      @toolBar.addButton
        icon: 'terminal'
        callback: ->
          require('remote').getCurrentWindow().toggleDevTools()
        tooltip: 'Toggle Developer Tools'
