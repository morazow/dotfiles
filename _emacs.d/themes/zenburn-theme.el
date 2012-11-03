  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>zenburn-emacs/zenburn-theme.el at master · bbatsov/zenburn-emacs</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144.png" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="0tzuDrtIGBElxd74OvVgvHNynfkdt4uknHbHzSLCDYM=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-06cd8b9af4661cf5c3b2b859c5cf600426205562.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-9684705efd51052eea0d95b9055ac70b9d18fc54.css" media="screen" rel="stylesheet" type="text/css" />
    


    <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-974473a941a983b46f11833dc8ffba8414698ff7.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/assets/github-58ca65ca9ccf0db88d6519aaa8735cbfc7d3e3ed.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/bbatsov/zenburn-emacs/blob/570257b885fbae36937e5c8ed512080bee6508f3/zenburn-theme.el'>
    <meta property="og:title" content="zenburn-emacs"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/bbatsov/zenburn-emacs"/>
    <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/gravatars/gravatar-user-420.png?1345673561"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="The Zenburn colour theme ported to Emacs. Contribute to zenburn-emacs development by creating an account on GitHub."/>

    <meta name="description" content="The Zenburn colour theme ported to Emacs. Contribute to zenburn-emacs development by creating an account on GitHub." />
  <link href="https://github.com/bbatsov/zenburn-emacs/commits/master.atom" rel="alternate" title="Recent Commits to zenburn-emacs:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob linux vis-public env-production ">
    <div id="wrapper">

    
    

    

      <div id="header" class="true clearfix">
        <div class="container clearfix">
          <a class="site-logo " href="https://github.com/">
            <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1340659530" />
            <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1340659530" />
          </a>

            <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have no unread notifications">
              <span class="mail-status all-read"></span>
            </a>

              
    <div class="topsearch command-bar-activated">
      <form accept-charset="UTF-8" action="/search" class="command_bar_form" id="top_search_form" method="get">
  <a href="/search" class="advanced-search tooltipped downwards command-bar-search" id="advanced_search" title="Advanced Search"><span class="mini-icon mini-icon-advanced-search "></span></a>
  <input type="text" name="q" id="command-bar" placeholder="Search or Type a Command" tabindex="1" data-username="morazow" />
  <span class="mini-icon help tooltipped downwards" title="Show Command Bar Help"></span>
  <input type="hidden" name="type" value="Everything" />
  <input type="hidden" name="repo" value="" />
  <input type="hidden" name="langOverride" value="" />
  <input type="hidden" name="start_value" value="1" />
</form>

      <ul class="top-nav">
          <li class="explore"><a href="https://github.com/explore">Explore</a></li>
          <li><a href="https://gist.github.com">Gist</a></li>
          <li><a href="/blog">Blog</a></li>
        <li><a href="http://help.github.com">Help</a></li>
      </ul>
    </div>


            

  
  <div id="userbox">
    <div id="user">
      <a href="https://github.com/morazow"><img height="20" src="https://secure.gravatar.com/avatar/7c4edfb7a0f0bab1eb19f7b199c32acd?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
      <a href="https://github.com/morazow" class="name">morazow</a>
    </div>
    <ul id="user-links">
      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a New Repo"><span class="mini-icon mini-icon-create"></span></a>
      </li>
      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          title="Account Settings ">
          <span class="mini-icon mini-icon-account-settings"></span>
        </a>
      </li>
      <li>
          <a href="/logout" data-method="post" id="logout" class="tooltipped downwards" title="Sign Out">
            <span class="mini-icon mini-icon-logout"></span>
          </a>
      </li>
    </ul>
  </div>



          
        </div>
      </div>

      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu">
          <div class="container">
            <div class="title-actions-bar">
              


                  <ul class="pagehead-actions">

          <li class="subscription">
              <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="0tzuDrtIGBElxd74OvVgvHNynfkdt4uknHbHzSLCDYM=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="922251" />
  <div class="context-menu-container js-menu-container js-context-menu">
    <span class="minibutton switcher bigger js-menu-target">
      <span class="js-context-button">
          <span class="mini-icon mini-icon-watching"></span>Watch
      </span>
    </span>

    <div class="context-pane js-menu-content">
      <a href="javascript:;" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
      <div class="context-title">Notification status</div>

      <div class="context-body pane-selector">
        <ul class="js-navigation-container">
          <li class="selector-item js-navigation-item js-navigation-target selected">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input checked="checked" id="do_included" name="do" type="radio" value="included" />
              <h4>Not watching</h4>
              <p>You will only receive notifications when you participate or are mentioned.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-watching"></span>
              Watch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_subscribed" name="do" type="radio" value="subscribed" />
              <h4>Watching</h4>
              <p>You will receive all notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-unwatch"></span>
              Unwatch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_ignore" name="do" type="radio" value="ignore" />
              <h4>Ignored</h4>
              <p>You will not receive notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-mute"></span>
              Stop ignoring
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</form>
          </li>

          <li class="js-toggler-container js-social-container starring-container ">
            <a href="/bbatsov/zenburn-emacs/unstar" class="minibutton js-toggler-target starred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Unstar
            </a><a href="/bbatsov/zenburn-emacs/star" class="minibutton js-toggler-target unstarred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Star
            </a><a class="social-count js-social-count" href="/bbatsov/zenburn-emacs/stargazers">217</a>
          </li>

              <li><a href="/bbatsov/zenburn-emacs/fork" class="minibutton js-toggler-target fork-button lighter" rel="nofollow" data-method="post"><span class="mini-icon mini-icon-fork"></span>Fork</a><a href="/bbatsov/zenburn-emacs/network" class="social-count">64</a>
              </li>


    </ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/bbatsov" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">bbatsov</span>
                  </a></span> /
                <strong><a href="/bbatsov/zenburn-emacs" class="js-current-repository">zenburn-emacs</a></strong>
              </h1>
            </div>

            

  <ul class="tabs">
    <li><a href="/bbatsov/zenburn-emacs" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/bbatsov/zenburn-emacs/network" highlight="repo_network">Network</a></li>
    <li><a href="/bbatsov/zenburn-emacs/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>1</span></a></li>

      <li><a href="/bbatsov/zenburn-emacs/issues" highlight="repo_issues">Issues <span class='counter'>5</span></a></li>

      <li><a href="/bbatsov/zenburn-emacs/wiki" highlight="repo_wiki">Wiki</a></li>


    <li><a href="/bbatsov/zenburn-emacs/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>


  </ul>
  
  <div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/bbatsov/zenburn-emacs/tree-list/570257b885fbae36937e5c8ed512080bee6508f3"
      data-blob-url-prefix="/bbatsov/zenburn-emacs/blob/master">

  <div class="breadcrumb">
    <span class="bold"><a href="/bbatsov/zenburn-emacs">zenburn-emacs</a></span> /
    <input class="tree-finder-input js-navigation-enable" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/bbatsov/zenburn-emacs/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever" rel="nofollow">Dismiss</a>
        <span class="bold">Octotip:</span> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser css-truncate" cellpadding="0" cellspacing="0">
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list js-navigation-container">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form accept-charset="UTF-8">
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        Go
      </button>
    </div>
  </form>
</div>


<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
      <li><a href="/bbatsov/zenburn-emacs/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter ">2</span></a></li>
      <li><a href="/bbatsov/zenburn-emacs/downloads" class="tabnav-tab" highlight="repo_downloads">Downloads <span class="counter blank">0</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="context-menu-container js-menu-container js-context-menu">
      <a href="#"
         class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
         data-hotkey="w"
         data-ref="master">
         <span><em class="mini-icon mini-icon-branch"></em><i>branch:</i> master</span>
      </a>

      <div class="context-pane commitish-context js-menu-content">
        <a href="javascript:;" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
        <div class="context-title">Switch branches/tags</div>
        <div class="context-body pane-selector commitish-selector js-navigation-container">
          <div class="filterbar">
            <input type="text" id="context-commitish-filter-field" class="js-navigation-enable" placeholder="Filter branches/tags" data-filterable />
            <ul class="tabs">
              <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
            </ul>
          </div>

          <div class="js-filter-tab js-filter-branches" data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
            <div class="no-results js-not-filterable">Nothing to show</div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target selected">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/bbatsov/zenburn-emacs/blob/master/zenburn-theme.el" class="js-navigation-open" data-name="master" rel="nofollow">master</a>
                </h4>
              </div>
          </div>

            <div class="js-filter-tab js-filter-tags " style="display:none" data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
              <div class="no-results js-not-filterable">Nothing to show</div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/bbatsov/zenburn-emacs/blob/v1.7/zenburn-theme.el" class="js-navigation-open" data-name="v1.7" rel="nofollow">v1.7</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item js-navigation-item js-navigation-target ">
                  <span class="mini-icon mini-icon-confirm"></span>
                  <h4>
                      <a href="/bbatsov/zenburn-emacs/blob/v1.6/zenburn-theme.el" class="js-navigation-open" data-name="v1.6" rel="nofollow">v1.6</a>
                  </h4>
                </div>
            </div>
        </div>
      </div><!-- /.commitish-context-context -->
    </div>
  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/bbatsov/zenburn-emacs" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/bbatsov/zenburn-emacs/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/bbatsov/zenburn-emacs/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:aa0ad1127ca72839031a08c9495d8f4a -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:aa0ad1127ca72839031a08c9495d8f4a -->

<div id="slider">

    <div class="breadcrumb" data-path="zenburn-theme.el/">
      <b itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/bbatsov/zenburn-emacs" itemscope="url"><span itemprop="title">zenburn-emacs</span></a></b> / <strong class="final-path">zenburn-theme.el</strong> <span class="js-clippy mini-icon mini-icon-clippy " data-clipboard-text="zenburn-theme.el" data-copied-hint="copied!" data-copy-hint="copy to clipboard"></span>
    </div>

      
  <div class="commit file-history-tease js-blob-contributors-content" data-path="zenburn-theme.el/">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/1d9c7ad44b5c6872d8603179e4b05cb4?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/m00natic">m00natic</a></span>
    <time class="js-relative-date" datetime="2012-10-04T13:08:19-07:00" title="2012-10-04 13:08:19">October 04, 2012</time>
    <div class="commit-title">
        <a href="/bbatsov/zenburn-emacs/commit/340247f4951f1dcfbd7798f37dbe7c059334400e" class="message">Fix typos.</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>16</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="bbatsov" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=bbatsov"><img height="20" src="https://secure.gravatar.com/avatar/7710f41976a45c0b25deaf0f2a4577bc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="tarsius" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=tarsius"><img height="20" src="https://secure.gravatar.com/avatar/059a5820c6189aa2661f80f3abc62112?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="m00natic" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=m00natic"><img height="20" src="https://secure.gravatar.com/avatar/1d9c7ad44b5c6872d8603179e4b05cb4?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="ktetzlaff" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=ktetzlaff"><img height="20" src="https://secure.gravatar.com/avatar/301284f72c8ecf8c46a6c91069f4403a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="adamrt" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=adamrt"><img height="20" src="https://secure.gravatar.com/avatar/86cfd05d2f86da4956153ee577ba11af?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="jleechpe" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=jleechpe"><img height="20" src="https://secure.gravatar.com/avatar/95c16e08edbfaf21de8e6fe15e0ba4c6?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="posiczko" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=posiczko"><img height="20" src="https://secure.gravatar.com/avatar/81c3aed20bd6a017183f5c3a20f0b6c1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="photex" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=photex"><img height="20" src="https://secure.gravatar.com/avatar/f429dca178f5832f976330a5d0c9c063?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="dudebout" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=dudebout"><img height="20" src="https://secure.gravatar.com/avatar/65238216e4c15bda4430c7094733b734?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="DamienCassou" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=DamienCassou"><img height="20" src="https://secure.gravatar.com/avatar/4d6ebaa43618b9ab9a8eb9436ad7d0d3?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="mpenet" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=mpenet"><img height="20" src="https://secure.gravatar.com/avatar/682d09a4b2b0566bd1c3de238d2647e0?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="5D" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=5D"><img height="20" src="https://secure.gravatar.com/avatar/fb2ac9f0ecf350127c0a03d9fc29a787?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="tkf" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=tkf"><img height="20" src="https://secure.gravatar.com/avatar/bcc5cb726add8e1049e49b056ff2dfd9?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="quodlibetor" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=quodlibetor"><img height="20" src="https://secure.gravatar.com/avatar/026a7df26cfba1100757dae52a46a3df?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="joshvfleming" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=joshvfleming"><img height="20" src="https://secure.gravatar.com/avatar/37439e8592325aeb74b9bc140a53f26f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="ogrim" href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el?author=ogrim"><img height="20" src="https://secure.gravatar.com/avatar/3986781e5d4dad54792f389604552e0b?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/7710f41976a45c0b25deaf0f2a4577bc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/bbatsov">bbatsov</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/059a5820c6189aa2661f80f3abc62112?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/tarsius">tarsius</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/1d9c7ad44b5c6872d8603179e4b05cb4?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/m00natic">m00natic</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/301284f72c8ecf8c46a6c91069f4403a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/ktetzlaff">ktetzlaff</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/86cfd05d2f86da4956153ee577ba11af?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/adamrt">adamrt</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/95c16e08edbfaf21de8e6fe15e0ba4c6?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/jleechpe">jleechpe</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/81c3aed20bd6a017183f5c3a20f0b6c1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/posiczko">posiczko</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/f429dca178f5832f976330a5d0c9c063?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/photex">photex</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/65238216e4c15bda4430c7094733b734?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/dudebout">dudebout</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/4d6ebaa43618b9ab9a8eb9436ad7d0d3?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/DamienCassou">DamienCassou</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/682d09a4b2b0566bd1c3de238d2647e0?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/mpenet">mpenet</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/fb2ac9f0ecf350127c0a03d9fc29a787?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/5D">5D</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/bcc5cb726add8e1049e49b056ff2dfd9?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/tkf">tkf</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/026a7df26cfba1100757dae52a46a3df?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/quodlibetor">quodlibetor</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/37439e8592325aeb74b9bc140a53f26f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/joshvfleming">joshvfleming</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/3986781e5d4dad54792f389604552e0b?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/ogrim">ogrim</a>
        </li>
      </ul>
    </div>
  </div>


    <div class="frames">
      <div class="frame frame-center" data-path="zenburn-theme.el/" data-permalink-url="/bbatsov/zenburn-emacs/blob/570257b885fbae36937e5c8ed512080bee6508f3/zenburn-theme.el" data-title="zenburn-emacs/zenburn-theme.el at master · bbatsov/zenburn-emacs · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>643 lines (581 sloc)</span>
                <span>32.765 kb</span>
              </div>
              <ul class="button-group actions">
                  <li>
                    <a class="grouped-button file-edit-link minibutton bigger lighter" href="/bbatsov/zenburn-emacs/edit/master/zenburn-theme.el" data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
                  </li>
                <li>
                  <a href="/bbatsov/zenburn-emacs/raw/master/zenburn-theme.el" class="minibutton grouped-button bigger lighter" id="raw-url">Raw</a>
                </li>
                  <li>
                    <a href="/bbatsov/zenburn-emacs/blame/master/zenburn-theme.el" class="minibutton grouped-button bigger lighter">Blame</a>
                  </li>
                <li>
                  <a href="/bbatsov/zenburn-emacs/commits/master/zenburn-theme.el" class="minibutton grouped-button bigger lighter" rel="nofollow">History</a>
                </li>
              </ul>
            </div>
                <div class="data type-emacs-lisp">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>
<span id="L539" rel="#L539">539</span>
<span id="L540" rel="#L540">540</span>
<span id="L541" rel="#L541">541</span>
<span id="L542" rel="#L542">542</span>
<span id="L543" rel="#L543">543</span>
<span id="L544" rel="#L544">544</span>
<span id="L545" rel="#L545">545</span>
<span id="L546" rel="#L546">546</span>
<span id="L547" rel="#L547">547</span>
<span id="L548" rel="#L548">548</span>
<span id="L549" rel="#L549">549</span>
<span id="L550" rel="#L550">550</span>
<span id="L551" rel="#L551">551</span>
<span id="L552" rel="#L552">552</span>
<span id="L553" rel="#L553">553</span>
<span id="L554" rel="#L554">554</span>
<span id="L555" rel="#L555">555</span>
<span id="L556" rel="#L556">556</span>
<span id="L557" rel="#L557">557</span>
<span id="L558" rel="#L558">558</span>
<span id="L559" rel="#L559">559</span>
<span id="L560" rel="#L560">560</span>
<span id="L561" rel="#L561">561</span>
<span id="L562" rel="#L562">562</span>
<span id="L563" rel="#L563">563</span>
<span id="L564" rel="#L564">564</span>
<span id="L565" rel="#L565">565</span>
<span id="L566" rel="#L566">566</span>
<span id="L567" rel="#L567">567</span>
<span id="L568" rel="#L568">568</span>
<span id="L569" rel="#L569">569</span>
<span id="L570" rel="#L570">570</span>
<span id="L571" rel="#L571">571</span>
<span id="L572" rel="#L572">572</span>
<span id="L573" rel="#L573">573</span>
<span id="L574" rel="#L574">574</span>
<span id="L575" rel="#L575">575</span>
<span id="L576" rel="#L576">576</span>
<span id="L577" rel="#L577">577</span>
<span id="L578" rel="#L578">578</span>
<span id="L579" rel="#L579">579</span>
<span id="L580" rel="#L580">580</span>
<span id="L581" rel="#L581">581</span>
<span id="L582" rel="#L582">582</span>
<span id="L583" rel="#L583">583</span>
<span id="L584" rel="#L584">584</span>
<span id="L585" rel="#L585">585</span>
<span id="L586" rel="#L586">586</span>
<span id="L587" rel="#L587">587</span>
<span id="L588" rel="#L588">588</span>
<span id="L589" rel="#L589">589</span>
<span id="L590" rel="#L590">590</span>
<span id="L591" rel="#L591">591</span>
<span id="L592" rel="#L592">592</span>
<span id="L593" rel="#L593">593</span>
<span id="L594" rel="#L594">594</span>
<span id="L595" rel="#L595">595</span>
<span id="L596" rel="#L596">596</span>
<span id="L597" rel="#L597">597</span>
<span id="L598" rel="#L598">598</span>
<span id="L599" rel="#L599">599</span>
<span id="L600" rel="#L600">600</span>
<span id="L601" rel="#L601">601</span>
<span id="L602" rel="#L602">602</span>
<span id="L603" rel="#L603">603</span>
<span id="L604" rel="#L604">604</span>
<span id="L605" rel="#L605">605</span>
<span id="L606" rel="#L606">606</span>
<span id="L607" rel="#L607">607</span>
<span id="L608" rel="#L608">608</span>
<span id="L609" rel="#L609">609</span>
<span id="L610" rel="#L610">610</span>
<span id="L611" rel="#L611">611</span>
<span id="L612" rel="#L612">612</span>
<span id="L613" rel="#L613">613</span>
<span id="L614" rel="#L614">614</span>
<span id="L615" rel="#L615">615</span>
<span id="L616" rel="#L616">616</span>
<span id="L617" rel="#L617">617</span>
<span id="L618" rel="#L618">618</span>
<span id="L619" rel="#L619">619</span>
<span id="L620" rel="#L620">620</span>
<span id="L621" rel="#L621">621</span>
<span id="L622" rel="#L622">622</span>
<span id="L623" rel="#L623">623</span>
<span id="L624" rel="#L624">624</span>
<span id="L625" rel="#L625">625</span>
<span id="L626" rel="#L626">626</span>
<span id="L627" rel="#L627">627</span>
<span id="L628" rel="#L628">628</span>
<span id="L629" rel="#L629">629</span>
<span id="L630" rel="#L630">630</span>
<span id="L631" rel="#L631">631</span>
<span id="L632" rel="#L632">632</span>
<span id="L633" rel="#L633">633</span>
<span id="L634" rel="#L634">634</span>
<span id="L635" rel="#L635">635</span>
<span id="L636" rel="#L636">636</span>
<span id="L637" rel="#L637">637</span>
<span id="L638" rel="#L638">638</span>
<span id="L639" rel="#L639">639</span>
<span id="L640" rel="#L640">640</span>
<span id="L641" rel="#L641">641</span>
<span id="L642" rel="#L642">642</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; zenburn-theme.el --- A low contrast color theme for Emacs.</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2011 Bozhidar Batsov</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c1">;; Author: Bozhidar Batsov &lt;bozhidar.batsov@gmail.com&gt;</span></div><div class='line' id='LC6'><span class="c1">;; URL: http://github.com/bbatsov/zenburn-emacs</span></div><div class='line' id='LC7'><span class="c1">;; Version: 1.7</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="c1">;; This program is free software; you can redistribute it and/or modify</span></div><div class='line' id='LC10'><span class="c1">;; it under the terms of the GNU General Public License as published by</span></div><div class='line' id='LC11'><span class="c1">;; the Free Software Foundation, either version 3 of the License, or</span></div><div class='line' id='LC12'><span class="c1">;; (at your option) any later version.</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="c1">;; This program is distributed in the hope that it will be useful,</span></div><div class='line' id='LC15'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC16'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div class='line' id='LC17'><span class="c1">;; GNU General Public License for more details.</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC20'><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></div><div class='line' id='LC21'><br/></div><div class='line' id='LC22'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC23'><span class="c1">;;</span></div><div class='line' id='LC24'><span class="c1">;; A port of the popular Vim theme Zenburn for Emacs 24, built on top of</span></div><div class='line' id='LC25'><span class="c1">;; the new built-in theme support in Emacs 24. There exists one other version of the</span></div><div class='line' id='LC26'><span class="c1">;; theme by Daniel Brockman. My version was originally based on it,</span></div><div class='line' id='LC27'><span class="c1">;; but it was in such a disarray, that I decided to rewrite it from</span></div><div class='line' id='LC28'><span class="c1">;; scratch in a more maintainable manner (hopefully).</span></div><div class='line' id='LC29'><span class="c1">;;</span></div><div class='line' id='LC30'><span class="c1">;;; Installation:</span></div><div class='line' id='LC31'><span class="c1">;;</span></div><div class='line' id='LC32'><span class="c1">;;   Drop the theme in a folder that is on `custom-theme-load-path&#39;</span></div><div class='line' id='LC33'><span class="c1">;; and enjoy!</span></div><div class='line' id='LC34'><span class="c1">;;</span></div><div class='line' id='LC35'><span class="c1">;; Don&#39;t forget that the theme requires Emacs 24.</span></div><div class='line' id='LC36'><span class="c1">;;</span></div><div class='line' id='LC37'><span class="c1">;;; Bugs</span></div><div class='line' id='LC38'><span class="c1">;;</span></div><div class='line' id='LC39'><span class="c1">;; None that I&#39;m aware of.</span></div><div class='line' id='LC40'><span class="c1">;;</span></div><div class='line' id='LC41'><span class="c1">;;; Credits</span></div><div class='line' id='LC42'><span class="c1">;;</span></div><div class='line' id='LC43'><span class="c1">;; Jani Nurminen created the original theme for vim on such this port</span></div><div class='line' id='LC44'><span class="c1">;; is based.</span></div><div class='line' id='LC45'><span class="c1">;;</span></div><div class='line' id='LC46'><span class="c1">;;; Code</span></div><div class='line' id='LC47'><span class="p">(</span><span class="nf">deftheme</span> <span class="nv">zenburn</span> <span class="s">&quot;The Zenburn color theme&quot;</span><span class="p">)</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'><span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">class</span> <span class="o">&#39;</span><span class="p">((</span><span class="nf">class</span> <span class="nv">color</span><span class="p">)</span> <span class="p">(</span><span class="nf">min-colors</span> <span class="mi">89</span><span class="p">)))</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Zenburn palette</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; colors with +x are lighter, colors with -x are darker</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-fg</span> <span class="s">&quot;#dcdccc&quot;</span><span class="p">)</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-fg-1</span> <span class="s">&quot;#656555&quot;</span><span class="p">)</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-bg-1</span> <span class="s">&quot;#2b2b2b&quot;</span><span class="p">)</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-bg-05</span> <span class="s">&quot;#383838&quot;</span><span class="p">)</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-bg</span> <span class="s">&quot;#3f3f3f&quot;</span><span class="p">)</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-bg+1</span> <span class="s">&quot;#4f4f4f&quot;</span><span class="p">)</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-bg+2</span> <span class="s">&quot;#5f5f5f&quot;</span><span class="p">)</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-bg+3</span> <span class="s">&quot;#6f6f6f&quot;</span><span class="p">)</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-red+1</span> <span class="s">&quot;#dca3a3&quot;</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-red</span> <span class="s">&quot;#cc9393&quot;</span><span class="p">)</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-red-1</span> <span class="s">&quot;#bc8383&quot;</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-red-2</span> <span class="s">&quot;#ac7373&quot;</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-red-3</span> <span class="s">&quot;#9c6363&quot;</span><span class="p">)</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-red-4</span> <span class="s">&quot;#8c5353&quot;</span><span class="p">)</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-orange</span> <span class="s">&quot;#dfaf8f&quot;</span><span class="p">)</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-yellow</span> <span class="s">&quot;#f0dfaf&quot;</span><span class="p">)</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-yellow-1</span> <span class="s">&quot;#e0cf9f&quot;</span><span class="p">)</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-yellow-2</span> <span class="s">&quot;#d0bf8f&quot;</span><span class="p">)</span></div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-green-1</span> <span class="s">&quot;#5f7f5f&quot;</span><span class="p">)</span></div><div class='line' id='LC71'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-green</span> <span class="s">&quot;#7f9f7f&quot;</span><span class="p">)</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-green+1</span> <span class="s">&quot;#8fb28f&quot;</span><span class="p">)</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-green+2</span> <span class="s">&quot;#9fc59f&quot;</span><span class="p">)</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-green+3</span> <span class="s">&quot;#afd8af&quot;</span><span class="p">)</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-green+4</span> <span class="s">&quot;#bfebbf&quot;</span><span class="p">)</span></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-cyan</span> <span class="s">&quot;#93e0e3&quot;</span><span class="p">)</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue+1</span> <span class="s">&quot;#94bff3&quot;</span><span class="p">)</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue</span> <span class="s">&quot;#8cd0d3&quot;</span><span class="p">)</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue-1</span> <span class="s">&quot;#7cb8bb&quot;</span><span class="p">)</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue-2</span> <span class="s">&quot;#6ca0a3&quot;</span><span class="p">)</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue-3</span> <span class="s">&quot;#5c888b&quot;</span><span class="p">)</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue-4</span> <span class="s">&quot;#4c7073&quot;</span><span class="p">)</span></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-blue-5</span> <span class="s">&quot;#366060&quot;</span><span class="p">)</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">zenburn-magenta</span> <span class="s">&quot;#dc8cc3&quot;</span><span class="p">))</span></div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">custom-theme-set-faces</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;<span class="ss">&#39;zenburn</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">button</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">link</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">link-visited</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></div><div class='line' id='LC90'><br/></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;<span class="c1">;;; basic coloring</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">default</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">cursor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="s">&quot;white&quot;</span><span class="p">))))</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">escape-glyph-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">fringe</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">header-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))))</span></div><div class='line' id='LC100'><br/></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;<span class="c1">;;; compilation</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-column-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-enter-directory-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-info-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-info</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-leave-directory-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-line-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-line-number</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-message-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">compilation-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC113'><br/></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;<span class="c1">;;; grep</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">grep-context-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">grep-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">grep-hit-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">grep-match-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC120'><br/></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;<span class="c1">;; faces used by isearch</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">isearch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">isearch-fail</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">lazy-highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">menu</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">minibuffer-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line</span></div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))</span></div><div class='line' id='LC132'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-buffer-id</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC134'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-inactive</span></div><div class='line' id='LC135'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span></div><div class='line' id='LC136'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span></div><div class='line' id='LC137'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">region</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC140'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">secondary-selection</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">trailing-whitespace</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">vertical-border</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;<span class="c1">;;; font lock</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-builtin-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-delimiter-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-constant-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-doc-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-doc-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-function-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-keyword-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-negation-char-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-preprocessor-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-type-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></div><div class='line' id='LC157'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-variable-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC159'><br/></div><div class='line' id='LC160'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">c-annotation-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-constant-face</span><span class="p">))))</span></div><div class='line' id='LC161'><br/></div><div class='line' id='LC162'>&nbsp;&nbsp;&nbsp;<span class="c1">;;; newsticker</span></div><div class='line' id='LC163'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-date-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-enclosure-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-extra-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:height</span> <span class="mf">0.8</span><span class="p">))))</span></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-feed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-immortal-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-new-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-obsolete-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-old-item-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-statistics-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-immortal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-listwindow-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-new-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-obsolete-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-old-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">newsticker-treeview-selection-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC180'><br/></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;<span class="c1">;;; external</span></div><div class='line' id='LC182'><br/></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;<span class="c1">;; full-ack</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ack-separator</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ack-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ack-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ack-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC188'><br/></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;<span class="c1">;; auctex</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-latex-bold</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-latex-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning</span><span class="p">))))</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-latex-sedate</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="p">))))</span></div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-latex-title-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">variable-pitch</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC194'><br/></div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;<span class="c1">;; auto-complete</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ac-candidate-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span> <span class="nv">:foreground</span> <span class="s">&quot;black&quot;</span><span class="p">))))</span></div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ac-selection-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC198'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">popup-tip-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:foreground</span> <span class="s">&quot;black&quot;</span><span class="p">))))</span></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">popup-scroll-bar-foreground-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-blue-5</span><span class="p">))))</span></div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">popup-scroll-bar-background-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">popup-isearch-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC202'><br/></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;<span class="c1">;; diff</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-added</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-changed</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-removed</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-3</span><span class="p">))))</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-header</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))</span></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">diff-file-header</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:bold</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC214'><br/></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;<span class="c1">;; ert</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ert-test-result-expected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ert-test-result-unexpected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC218'><br/></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;<span class="c1">;; eshell</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-archive</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-backup</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment</span><span class="p">))))</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-clutter</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment</span><span class="p">))))</span></div><div class='line' id='LC224'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-directory</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-executable</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-unreadable</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-missing</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning</span><span class="p">))))</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-product</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-doc</span><span class="p">))))</span></div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-special</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">eshell-ls-symlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC231'><br/></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;<span class="c1">;; flymake</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">flymake-errline</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">flymake-warnline</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC235'><br/></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;<span class="c1">;; flyspell</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">flyspell-duplicate</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">flyspell-incorrect</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC239'><br/></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;<span class="c1">;; erc</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-action-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default-face</span><span class="p">))))</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-bold-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-current-nick-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-dangerous-host-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning</span><span class="p">))))</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-direct-msg-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default</span><span class="p">))))</span></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-warning</span><span class="p">))))</span></div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-fool-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default</span><span class="p">))))</span></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-highlight-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">hover-highlight</span><span class="p">))))</span></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-input-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-keyword-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC252'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-nick-default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-my-nick-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-nick-msg-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">erc-default</span><span class="p">))))</span></div><div class='line' id='LC255'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-notice-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC256'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-pal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-prompt-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-timestamp-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">erc-underline-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC260'><br/></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;<span class="c1">;; gnus</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-1-empty</span><span class="p">))))</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-1-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-1-empty</span><span class="p">))))</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-2-empty</span><span class="p">))))</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-2-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-2-empty</span><span class="p">))))</span></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-3-empty</span><span class="p">))))</span></div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-3-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-3-empty</span><span class="p">))))</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-4-empty</span><span class="p">))))</span></div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-4-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-4-empty</span><span class="p">))))</span></div><div class='line' id='LC270'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-5-empty</span><span class="p">))))</span></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-5-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-5-empty</span><span class="p">))))</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-6-empty</span><span class="p">))))</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-6-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-6-empty</span><span class="p">))))</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-low</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-mail-low-empty</span><span class="p">))))</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-mail-low-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">gnus-group-news-low-empty</span><span class="p">))))</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-1-empty</span><span class="p">))))</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-2-empty</span><span class="p">))))</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-3-empty</span><span class="p">))))</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-4-empty</span><span class="p">))))</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-5-empty</span><span class="p">))))</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-6-empty</span><span class="p">))))</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-low</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:inherit</span> <span class="nv">gnus-group-news-low-empty</span><span class="p">))))</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-content</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-other</span><span class="p">))))</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-from</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-from</span><span class="p">))))</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-name</span><span class="p">))))</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-newsgroups</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-other</span><span class="p">))))</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-header-subject</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">message-header-subject</span><span class="p">))))</span></div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-cancelled</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-ancient</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-read</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-ticked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-high-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-ancient</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-read</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-ticked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-low-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-ancient</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC298'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-read</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-ticked</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-normal-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-summary-selected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-10</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></div><div class='line' id='LC304'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-11</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></div><div class='line' id='LC306'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC308'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC309'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC310'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-7</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC311'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-8</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-cite-9</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-1-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC314'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-2-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></div><div class='line' id='LC315'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-3-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC316'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-4-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></div><div class='line' id='LC317'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-5-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-3</span><span class="p">))))</span></div><div class='line' id='LC318'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-6-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-group-news-low-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></div><div class='line' id='LC320'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-signature</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC321'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">gnus-x</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC322'><br/></div><div class='line' id='LC323'>&nbsp;&nbsp;&nbsp;<span class="c1">;; helm</span></div><div class='line' id='LC324'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">helm-header</span></div><div class='line' id='LC325'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span></div><div class='line' id='LC326'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span></div><div class='line' id='LC327'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:underline</span> <span class="nv">nil</span></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC329'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">helm-source-header</span></div><div class='line' id='LC330'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></div><div class='line' id='LC332'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:underline</span> <span class="nv">nil</span></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:weight</span> <span class="nv">bold</span></div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">helm-selection</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span> <span class="nv">:underline</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">helm-selection-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">helm-visible-mark</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">helm-candidate-number</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC339'><br/></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;<span class="c1">;; hl-line-mode</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">hl-line-face</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))</span></div><div class='line' id='LC342'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">hl-line</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))</span> <span class="c1">; old emacsen</span></div><div class='line' id='LC344'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></div><div class='line' id='LC345'><br/></div><div class='line' id='LC346'>&nbsp;&nbsp;&nbsp;<span class="c1">;; hl-sexp</span></div><div class='line' id='LC347'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">hl-sexp-face</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))</span></div><div class='line' id='LC348'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></div><div class='line' id='LC349'><br/></div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;<span class="c1">;; ido-mode</span></div><div class='line' id='LC351'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ido-first-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC352'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ido-only-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC353'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ido-subdir</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC354'><br/></div><div class='line' id='LC355'>&nbsp;&nbsp;&nbsp;<span class="c1">;; js2-mode</span></div><div class='line' id='LC356'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC357'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-error-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC358'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-jsdoc-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></div><div class='line' id='LC359'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-jsdoc-type-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC360'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-jsdoc-value-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></div><div class='line' id='LC361'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-function-param-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground,</span> <span class="nv">zenburn-green+3</span><span class="p">))))</span></div><div class='line' id='LC362'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">js2-external-variable-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC363'><br/></div><div class='line' id='LC364'>&nbsp;&nbsp;&nbsp;<span class="c1">;; jabber-mode</span></div><div class='line' id='LC365'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-roster-user-away</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC366'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-roster-user-online</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></div><div class='line' id='LC367'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-roster-user-dnd</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-rare-time-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-chat-prompt-local</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-chat-prompt-foreign</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></div><div class='line' id='LC371'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-activity-face</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></div><div class='line' id='LC372'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-activity-personal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></div><div class='line' id='LC373'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-title-small</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:height</span> <span class="mf">1.1</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC374'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-title-medium</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:height</span> <span class="mf">1.2</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC375'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">jabber-title-large</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:height</span> <span class="mf">1.3</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC376'><br/></div><div class='line' id='LC377'>&nbsp;&nbsp;&nbsp;<span class="c1">;; linum-mode</span></div><div class='line' id='LC378'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">linum</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC379'><br/></div><div class='line' id='LC380'>&nbsp;&nbsp;&nbsp;<span class="c1">;; magit</span></div><div class='line' id='LC381'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">magit-section-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC382'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">magit-branch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC383'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">magit-item-highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC384'><br/></div><div class='line' id='LC385'>&nbsp;&nbsp;&nbsp;<span class="c1">;; message-mode</span></div><div class='line' id='LC386'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-cited-text</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment</span><span class="p">))))</span></div><div class='line' id='LC387'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-name</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC388'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-other</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC389'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-to</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC390'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-from</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC391'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-cc</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC392'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-newsgroups</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC393'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-subject</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC394'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-header-xheader</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC395'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-mml</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC396'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">message-separator</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment</span><span class="p">))))</span></div><div class='line' id='LC397'><br/></div><div class='line' id='LC398'>&nbsp;&nbsp;&nbsp;<span class="c1">;; mew</span></div><div class='line' id='LC399'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-subject</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC400'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-from</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC401'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-date</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC402'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-to</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC403'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-key</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC404'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-private</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC405'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-important</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC406'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-marginal</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC407'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC408'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-xmew</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC409'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-header-xmew-bad</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC410'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-url</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC411'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-comment</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></div><div class='line' id='LC412'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC413'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC414'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC415'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC416'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-body-cite5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC417'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-review</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC418'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-escape</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC419'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-delete</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC420'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-unlink</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC421'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-refile</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC422'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-mark-unread</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></div><div class='line' id='LC423'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-eof-message</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC424'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mew-face-eof-part</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC425'><br/></div><div class='line' id='LC426'>&nbsp;&nbsp;&nbsp;<span class="c1">;; mic-paren</span></div><div class='line' id='LC427'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">paren-face-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC428'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">paren-face-mismatch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC429'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">paren-face-no-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC430'><br/></div><div class='line' id='LC431'>&nbsp;&nbsp;&nbsp;<span class="c1">;; nav</span></div><div class='line' id='LC432'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">nav-face-heading</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC433'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">nav-face-button-num</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></div><div class='line' id='LC434'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">nav-face-dir</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC435'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">nav-face-hdir</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC436'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">nav-face-file</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC437'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">nav-face-hfile</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></div><div class='line' id='LC438'><br/></div><div class='line' id='LC439'>&nbsp;&nbsp;&nbsp;<span class="c1">;; mumamo</span></div><div class='line' id='LC440'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-major</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC441'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC442'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span><span class="p">))))</span></div><div class='line' id='LC443'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+3</span><span class="p">))))</span></div><div class='line' id='LC444'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mumamo-background-chunk-submode4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC445'><br/></div><div class='line' id='LC446'>&nbsp;&nbsp;&nbsp;<span class="c1">;; org-mode</span></div><div class='line' id='LC447'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-agenda-date-today</span></div><div class='line' id='LC448'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="s">&quot;white&quot;</span> <span class="nv">:slant</span> <span class="nv">italic</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC449'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-agenda-structure</span></div><div class='line' id='LC450'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-comment-face</span><span class="p">))))</span></div><div class='line' id='LC451'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-archived</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC452'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-checkbox</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+2</span> <span class="nv">:foreground</span> <span class="s">&quot;white&quot;</span></div><div class='line' id='LC453'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></div><div class='line' id='LC454'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-date</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC455'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-deadline-announce</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></div><div class='line' id='LC456'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-done</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></div><div class='line' id='LC457'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-formula</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></div><div class='line' id='LC458'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-headline-done</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+3</span><span class="p">))))</span></div><div class='line' id='LC459'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-hide</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC460'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC461'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC462'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></div><div class='line' id='LC463'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></div><div class='line' id='LC464'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></div><div class='line' id='LC465'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></div><div class='line' id='LC466'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-7</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></div><div class='line' id='LC467'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-level-8</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-4</span><span class="p">))))</span></div><div class='line' id='LC468'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-link</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC469'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-scheduled</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></div><div class='line' id='LC470'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-scheduled-previously</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-4</span><span class="p">))))</span></div><div class='line' id='LC471'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-scheduled-today</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></div><div class='line' id='LC472'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-special-keyword</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg-1</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></div><div class='line' id='LC473'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-table</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC474'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-tag</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC475'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-time-grid</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC476'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-todo</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC477'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-upcoming-deadline</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">font-lock-keyword-face</span><span class="p">))))</span></div><div class='line' id='LC478'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:bold</span> <span class="nv">t</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:weight</span> <span class="nv">bold</span> <span class="nv">:underline</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC479'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-column</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC480'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">org-column-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC481'><br/></div><div class='line' id='LC482'>&nbsp;&nbsp;&nbsp;<span class="c1">;; outline</span></div><div class='line' id='LC483'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-8</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">default</span><span class="p">))))</span></div><div class='line' id='LC484'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-7</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-8</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC485'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-6</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-7</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC486'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-5</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-6</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC487'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-5</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC488'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-4</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC489'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-3</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC490'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">outline-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">outline-2</span> <span class="nv">:height</span> <span class="mf">1.0</span><span class="p">))))</span></div><div class='line' id='LC491'><br/></div><div class='line' id='LC492'>&nbsp;&nbsp;&nbsp;<span class="c1">;; rainbow-delimiters</span></div><div class='line' id='LC493'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-1-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC494'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-2-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC495'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-3-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></div><div class='line' id='LC496'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-4-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></div><div class='line' id='LC497'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-5-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></div><div class='line' id='LC498'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-6-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></div><div class='line' id='LC499'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-7-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-1</span><span class="p">))))</span></div><div class='line' id='LC500'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-8-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC501'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-9-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-2</span><span class="p">))))</span></div><div class='line' id='LC502'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-10-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC503'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rainbow-delimiters-depth-11-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC504'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span> <span class="nv">rainbow-delimiters-depth-12-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-5</span><span class="p">))))</span></div><div class='line' id='LC505'><br/></div><div class='line' id='LC506'>&nbsp;&nbsp;&nbsp;<span class="c1">;; rpm-mode</span></div><div class='line' id='LC507'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-dir-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC508'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-doc-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC509'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-ghost-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC510'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-macro-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC511'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-obsolete-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC512'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-package-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC513'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-section-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC514'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-tag-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC515'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rpm-spec-var-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC516'><br/></div><div class='line' id='LC517'>&nbsp;&nbsp;&nbsp;<span class="c1">;; rst-mode</span></div><div class='line' id='LC518'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rst-level-1-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC519'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rst-level-2-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC520'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rst-level-3-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span><span class="p">))))</span></div><div class='line' id='LC521'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rst-level-4-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span><span class="p">))))</span></div><div class='line' id='LC522'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rst-level-5-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-cyan</span><span class="p">))))</span></div><div class='line' id='LC523'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">rst-level-6-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green-1</span><span class="p">))))</span></div><div class='line' id='LC524'><br/></div><div class='line' id='LC525'>&nbsp;&nbsp;&nbsp;<span class="c1">;; show-paren</span></div><div class='line' id='LC526'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">show-paren-mismatch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-3</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC527'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">show-paren-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue-1</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC528'><br/></div><div class='line' id='LC529'>&nbsp;&nbsp;&nbsp;<span class="c1">;; sml-mode-line</span></div><div class='line' id='LC530'>&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">sml-modeline-end-face</span> <span class="p">((</span><span class="nf">t</span> <span class="nv">:inherit</span> <span class="nv">default</span> <span class="nv">:width</span> <span class="nv">condensed</span><span class="p">)))</span></div><div class='line' id='LC531'><br/></div><div class='line' id='LC532'>&nbsp;&nbsp;&nbsp;<span class="c1">;; SLIME</span></div><div class='line' id='LC533'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">slime-repl-inputed-output-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC534'><br/></div><div class='line' id='LC535'>&nbsp;&nbsp;&nbsp;<span class="c1">;; tabbar</span></div><div class='line' id='LC536'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">tabbar-button</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></div><div class='line' id='LC537'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC538'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">tabbar-selected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></div><div class='line' id='LC539'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span></div><div class='line' id='LC540'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">pressed-button</span><span class="p">)))))</span></div><div class='line' id='LC541'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">tabbar-unselected</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></div><div class='line' id='LC542'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span></div><div class='line' id='LC543'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="p">(</span><span class="nf">:line-width</span> <span class="mi">-1</span> <span class="nv">:style</span> <span class="nv">released-button</span><span class="p">)))))</span></div><div class='line' id='LC544'><br/></div><div class='line' id='LC545'>&nbsp;&nbsp;&nbsp;<span class="c1">;; volatile-highlights</span></div><div class='line' id='LC546'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">vhl/default-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC547'><br/></div><div class='line' id='LC548'>&nbsp;&nbsp;&nbsp;<span class="c1">;; emacs-w3m</span></div><div class='line' id='LC549'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-anchor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:underline</span> <span class="nv">t</span></div><div class='line' id='LC550'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC551'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-arrived-anchor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow-2</span></div><div class='line' id='LC552'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">normal</span><span class="p">))))</span></div><div class='line' id='LC553'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-form</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span> <span class="nv">:underline</span> <span class="nv">t</span><span class="p">))))</span></div><div class='line' id='LC554'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-header-line-location-title</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></div><div class='line' id='LC555'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC556'>&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">w3m-history-current-url</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">match</span><span class="p">))))</span></div><div class='line' id='LC557'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-lnum</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC558'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-lnum-match</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span></div><div class='line' id='LC559'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span></div><div class='line' id='LC560'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC561'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">w3m-lnum-minibuffer-prompt</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC562'><br/></div><div class='line' id='LC563'>&nbsp;&nbsp;&nbsp;<span class="c1">;; whitespace-mode</span></div><div class='line' id='LC564'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-space</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC565'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-hspace</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC566'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-tab</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC567'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-newline</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg+1</span><span class="p">))))</span></div><div class='line' id='LC568'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-trailing</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">zenburn-bg</span><span class="p">))))</span></div><div class='line' id='LC569'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></div><div class='line' id='LC570'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-space-before-tab</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-orange</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC571'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-indentation</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC572'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-empty</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC573'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">whitespace-space-after-tab</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-yellow</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC574'><br/></div><div class='line' id='LC575'>&nbsp;&nbsp;&nbsp;<span class="c1">;; wanderlust</span></div><div class='line' id='LC576'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-few-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-2</span><span class="p">))))</span></div><div class='line' id='LC577'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-many-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></div><div class='line' id='LC578'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-path-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-orange</span><span class="p">))))</span></div><div class='line' id='LC579'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-unread-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC580'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-zero-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC581'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-folder-unknown-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC582'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-citation-header</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red-1</span><span class="p">))))</span></div><div class='line' id='LC583'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-1</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red</span><span class="p">))))</span></div><div class='line' id='LC584'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC585'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-3</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC586'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-cited-text-4</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue+1</span><span class="p">))))</span></div><div class='line' id='LC587'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-header-contents-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC588'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-headers-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-red+1</span><span class="p">))))</span></div><div class='line' id='LC589'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-important-header-contents</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC590'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-header-contents</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+1</span><span class="p">))))</span></div><div class='line' id='LC591'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-important-header-contents2</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+2</span><span class="p">))))</span></div><div class='line' id='LC592'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-signature</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green</span><span class="p">))))</span></div><div class='line' id='LC593'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-message-unimportant-header-contents</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC594'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-answered-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC595'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-disposed-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span></div><div class='line' id='LC596'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:slant</span> <span class="nv">italic</span><span class="p">))))</span></div><div class='line' id='LC597'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-new-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-blue</span><span class="p">))))</span></div><div class='line' id='LC598'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-normal-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC599'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-thread-top-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-yellow</span><span class="p">))))</span></div><div class='line' id='LC600'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-thread-indent-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-magenta</span><span class="p">))))</span></div><div class='line' id='LC601'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-refiled-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC602'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">wl-highlight-summary-displaying-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:underline</span> <span class="nv">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC603'><br/></div><div class='line' id='LC604'>&nbsp;&nbsp;&nbsp;<span class="c1">;; which-func-mode</span></div><div class='line' id='LC605'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">which-func</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">zenburn-green+4</span><span class="p">))))</span></div><div class='line' id='LC606'><br/></div><div class='line' id='LC607'>&nbsp;&nbsp;&nbsp;<span class="c1">;; yascroll</span></div><div class='line' id='LC608'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">yascroll:thumb-text-area</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC609'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">yascroll:thumb-fringe</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">zenburn-bg-1</span><span class="p">))))</span></div><div class='line' id='LC610'>&nbsp;&nbsp;&nbsp;<span class="p">)</span></div><div class='line' id='LC611'><br/></div><div class='line' id='LC612'>&nbsp;&nbsp;<span class="c1">;;; custom theme variables</span></div><div class='line' id='LC613'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">custom-theme-set-variables</span></div><div class='line' id='LC614'>&nbsp;&nbsp;&nbsp;<span class="ss">&#39;zenburn</span></div><div class='line' id='LC615'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">ansi-color-names-vector</span> <span class="err">[</span><span class="o">,</span><span class="nv">zenburn-bg</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></div><div class='line' id='LC616'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">,</span><span class="nv">zenburn-blue</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="err">]</span><span class="p">)</span></div><div class='line' id='LC617'><br/></div><div class='line' id='LC618'>&nbsp;&nbsp;&nbsp;<span class="c1">;; fill-column-indicator</span></div><div class='line' id='LC619'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">fci-rule-color</span> <span class="o">,</span><span class="nv">zenburn-bg-05</span><span class="p">))</span></div><div class='line' id='LC620'><br/></div><div class='line' id='LC621'>&nbsp;&nbsp;<span class="c1">;;; colors for the ansi-term</span></div><div class='line' id='LC622'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">eval-after-load</span> <span class="ss">&#39;term</span></div><div class='line' id='LC623'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">setq</span> <span class="nv">ansi-term-color-vector</span></div><div class='line' id='LC624'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">vector </span><span class="ss">&#39;unspecified</span> <span class="o">,</span><span class="nv">zenburn-bg</span> <span class="o">,</span><span class="nv">zenburn-red</span> <span class="o">,</span><span class="nv">zenburn-green</span> <span class="o">,</span><span class="nv">zenburn-yellow</span></div><div class='line' id='LC625'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">,</span><span class="nv">zenburn-blue</span> <span class="o">,</span><span class="nv">zenburn-magenta</span> <span class="o">,</span><span class="nv">zenburn-cyan</span> <span class="o">,</span><span class="nv">zenburn-fg</span><span class="p">))))</span></div><div class='line' id='LC626'><br/></div><div class='line' id='LC627'><span class="c1">;;;###autoload</span></div><div class='line' id='LC628'><span class="p">(</span><span class="k">and </span><span class="nv">load-file-name</span></div><div class='line' id='LC629'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">boundp</span> <span class="ss">&#39;custom-theme-load-path</span><span class="p">)</span></div><div class='line' id='LC630'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;custom-theme-load-path</span></div><div class='line' id='LC631'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-as-directory</span></div><div class='line' id='LC632'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-directory</span> <span class="nv">load-file-name</span><span class="p">))))</span></div><div class='line' id='LC633'><br/></div><div class='line' id='LC634'><span class="p">(</span><span class="nf">provide-theme</span> <span class="ss">&#39;zenburn</span><span class="p">)</span></div><div class='line' id='LC635'><br/></div><div class='line' id='LC636'><span class="c1">;; Local Variables:</span></div><div class='line' id='LC637'><span class="c1">;; no-byte-compile: t</span></div><div class='line' id='LC638'><span class="c1">;; indent-tabs-mode: nil</span></div><div class='line' id='LC639'><span class="c1">;; eval: (when (fboundp &#39;rainbow-mode) (rainbow-mode +1))</span></div><div class='line' id='LC640'><span class="c1">;; End:</span></div><div class='line' id='LC641'><br/></div><div class='line' id='LC642'><span class="c1">;;; zenburn-theme.el ends here.</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>
</div>

<div class="frame frame-loading large-loading-area" style="display:none;" data-tree-list-url="/bbatsov/zenburn-emacs/tree-list/570257b885fbae36937e5c8ed512080bee6508f3">
  <img src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543525" height="64" width="64">
</div>

        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer" >
        
  <div class="upper_footer">
     <div class="container clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="http://training.github.com/">Training</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Clients</h4>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://windows.github.com/">GitHub for Windows</a></li>
         <li><a href="http://eclipse.github.com/">GitHub for Eclipse</a></li>
         <li><a href="http://mobile.github.com/">GitHub Mobile Apps</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://get.gaug.es/">Gauges: Web analytics</a></li>
         <li><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></li>
         <li><a href="https://gist.github.com">Gist: Code snippets</a></li>

         <h4 class="second">Extras</h4>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="container clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2012 <span title="0.06761s from fe17.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

  </div><!-- /.site -->
</div><!-- /.lower_footer -->


      </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus command bar</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last js-hidden-pane" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
        <dd>Submit comment</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
        <dd>Preview comment</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
          <dd>Preview comment</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div class="js-hidden-pane" >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first js-hidden-pane" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first">
        <h3>Browsing Commits</h3>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>escape</dt>
          <dd>Close form</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>p</dt>
          <dd>Parent commit</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o</dt>
          <dd>Other parent commit</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <h3>Notifications</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open notification</dd>
        </dl>
      </div><!-- /.column.first -->

      <div class="column second">
        <dl class="keyboard-mappings">
          <dt>e <em>or</em> shift i <em>or</em> y</dt>
          <dd>Mark as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift m</dt>
          <dd>Mute thread</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    <div id="logo-popup">
      <h2>Looking for the GitHub logo?</h2>
      <ul>
        <li>
          <h4>GitHub Logo</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip"><img alt="Github_logo" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/github_logo.png?1340659530" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip" class="minibutton download">Download</a>
        </li>
        <li>
          <h4>The Octocat</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip"><img alt="Octocat" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/octocat.png?1340659530" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip" class="minibutton download">Download</a>
        </li>
      </ul>
    </div>

    
    
    <span id='server_response_time' data-time='0.06916' data-host='fe17'></span>
    
  </body>
</html>

