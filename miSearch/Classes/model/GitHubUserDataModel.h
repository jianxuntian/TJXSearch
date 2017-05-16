//
//  GitHubUserDataModel.h
//  miSearch
//
//  Created by tianjianxun on 2017/5/15.
//  Copyright © 2017年 xuxuezheng. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import <UIKit/UIKit.h>
@interface Owner :JSONModel
@property (nonatomic , assign) NSInteger               id;
@property (nonatomic , copy) NSString    <Optional>           * organizations_url;
@property (nonatomic , copy) NSString    <Optional>           * received_events_url;
@property (nonatomic , copy) NSString    <Optional>           * following_url;
@property (nonatomic , copy) NSString    <Optional>           * login;
@property (nonatomic , copy) NSString    <Optional>           * avatar_url;
@property (nonatomic , copy) NSString    <Optional>           * url;
@property (nonatomic , copy) NSString    <Optional>           * subscriptions_url;
@property (nonatomic , copy) NSString     <Optional>          * type;
@property (nonatomic , copy) NSString      <Optional>         * repos_url;
@property (nonatomic , copy) NSString      <Optional>         * html_url;
@property (nonatomic , copy) NSString       <Optional>        * events_url;
@property (nonatomic , assign) BOOL              site_admin;
@property (nonatomic , copy) NSString      <Optional>         * starred_url;
@property (nonatomic , copy) NSString       <Optional>        * gists_url;
@property (nonatomic , copy) NSString        <Optional>       * gravatar_id;
@property (nonatomic , copy) NSString        <Optional>       * followers_url;

@end

@interface GitHubUserDataModel :JSONModel
@property (nonatomic , copy) NSString      <Optional>         * keys_url;
@property (nonatomic , copy) NSString      <Optional>         * statuses_url;
@property (nonatomic , copy) NSString      <Optional>         * issues_url;
@property (nonatomic , copy) NSString      <Optional>         * labels_url;
@property (nonatomic , copy) NSString       <Optional>        * issue_events_url;
@property (nonatomic , assign) BOOL                         has_projects;
@property (nonatomic , assign) NSInteger              id;
@property (nonatomic , strong) Owner        <Optional>       * owner;
@property (nonatomic , copy) NSString       <Optional>        * events_url;
@property (nonatomic , copy) NSString       <Optional>        * subscription_url;
@property (nonatomic , assign) NSInteger              watchers;
@property (nonatomic , copy) NSString              <Optional> * git_commits_url;
@property (nonatomic , copy) NSString              <Optional> * subscribers_url;
@property (nonatomic , copy) NSString            <Optional>   * clone_url;
@property (nonatomic , assign) BOOL              has_wiki;
@property (nonatomic , copy) NSString         <Optional>      * url;
@property (nonatomic , copy) NSString          <Optional>     * pulls_url;
@property (nonatomic , assign) BOOL              fork;
@property (nonatomic , copy) NSString          <Optional>     * notifications_url;
@property (nonatomic , copy) NSString  <Optional>            * Description;
@property (nonatomic , copy) NSString         <Optional>      * collaborators_url;
@property (nonatomic , copy) NSString         <Optional>      * deployments_url;
@property (nonatomic , copy) NSString         <Optional>      * languages_url;
@property (nonatomic , assign) BOOL              has_issues;
@property (nonatomic , copy) NSString         <Optional>      * comments_url;
@property (nonatomic , assign) BOOL              private;
@property (nonatomic , assign) NSInteger              size;
@property (nonatomic , copy) NSString          <Optional>     * git_tags_url;
@property (nonatomic , copy) NSString          <Optional>     * updated_at;
@property (nonatomic , copy) NSString          <Optional>     * ssh_url;
@property (nonatomic , copy) NSString          <Optional>     * name;
@property (nonatomic , copy) NSString          <Optional>     * contents_url;
@property (nonatomic , copy) NSString          <Optional>     * archive_url;
@property (nonatomic , copy) NSString          <Optional>     * milestones_url;
@property (nonatomic , copy) NSString          <Optional>     * blobs_url;
@property (nonatomic , copy) NSString         <Optional>      * contributors_url;
@property (nonatomic , assign) NSInteger              open_issues_count;
@property (nonatomic , assign) NSInteger              forks_count;
@property (nonatomic , copy) NSString          <Optional>     * trees_url;
@property (nonatomic , copy) NSString         <Optional>      * svn_url;
@property (nonatomic , copy) NSString         <Optional>      * commits_url;
@property (nonatomic , copy) NSString          <Optional>     * created_at;
@property (nonatomic , copy) NSString          <Optional>     * forks_url;
@property (nonatomic , assign) BOOL              has_downloads;
@property (nonatomic , copy) NSString         <Optional>      * mirror_url;
@property (nonatomic , copy) NSString          <Optional>     * homepage;
@property (nonatomic , copy) NSString         <Optional>      * teams_url;
@property (nonatomic , copy) NSString          <Optional>     * branches_url;
@property (nonatomic , copy) NSString          <Optional>     * issue_comment_url;
@property (nonatomic , copy) NSString          <Optional>     * merges_url;
@property (nonatomic , copy) NSString          <Optional>     * git_refs_url;
@property (nonatomic , copy) NSString          <Optional>     * git_url;
@property (nonatomic , assign) NSInteger              forks;
@property (nonatomic , assign) NSInteger              open_issues;
@property (nonatomic , copy) NSString          <Optional>     * hooks_url;
@property (nonatomic , copy) NSString          <Optional>     * html_url;
@property (nonatomic , assign) NSInteger              stargazers_count;
@property (nonatomic , copy) NSString          <Optional>     * stargazers_url;
@property (nonatomic , assign) BOOL              has_pages;
@property (nonatomic , copy) NSString          <Optional>     * assignees_url;
@property (nonatomic , assign) NSInteger              watchers_count;
@property (nonatomic , copy) NSString        <Optional>       * language;
@property (nonatomic , copy) NSString         <Optional>      * compare_url;
@property (nonatomic , copy) NSString         <Optional>      * full_name;
@property (nonatomic , copy) NSString         <Optional>      * downloads_url;
@property (nonatomic , copy) NSString         <Optional>      * tags_url;
@property (nonatomic , copy) NSString         <Optional>      * default_branch;
@property (nonatomic , copy) NSString          <Optional>     * releases_url;
@property (nonatomic , copy) NSString          <Optional>     * pushed_at;

@end
