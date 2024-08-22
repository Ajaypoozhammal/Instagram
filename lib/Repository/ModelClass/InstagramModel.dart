class InstagramModel {
  InstagramModel({
      this.user, 
      this.status, 
      this.unrelatedData,});

  InstagramModel.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    status = json['status'];
    unrelatedData = json['unrelated_data'] != null ? UnrelatedData.fromJson(json['unrelated_data']) : null;
  }
  User? user;
  String? status;
  UnrelatedData? unrelatedData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['status'] = status;
    if (unrelatedData != null) {
      map['unrelated_data'] = unrelatedData?.toJson();
    }
    return map;
  }

}

class UnrelatedData {
  UnrelatedData({
      this.retry, 
      this.idAcc, 
      this.proxyInfo, 
      this.timeGen,});

  UnrelatedData.fromJson(dynamic json) {
    retry = json['retry'];
    idAcc = json['id_acc'];
    proxyInfo = json['proxy_info'];
    timeGen = json['time_gen'];
  }
  int? retry;
  String? idAcc;
  String? proxyInfo;
  double? timeGen;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['retry'] = retry;
    map['id_acc'] = idAcc;
    map['proxy_info'] = proxyInfo;
    map['time_gen'] = timeGen;
    return map;
  }

}

class User {
  User({
      this.primaryProfileLinkType, 
      this.showFbLinkOnProfile, 
      this.showFbPageLinkOnProfile, 
      this.canHideCategory, 
      this.accountType, 
      this.currentCatalogId, 
      this.miniShopSellerOnboardingStatus, 
      this.accountCategory, 
      this.canAddFbGroupLinkOnProfile, 
      this.canUseAffiliatePartnershipMessagingAsCreator, 
      this.canUseAffiliatePartnershipMessagingAsBrand, 
      this.existingUserAgeCollectionEnabled, 
      this.fbidV2, 
      this.feedPostReshareDisabled, 
      this.fullName, 
      this.hasGuides, 
      this.hasIgProfile, 
      this.hasPublicTabThreads, 
      this.highlightReshareDisabled, 
      this.includeDirectBlacklistStatus, 
      this.isDirectRollCallEnabled, 
      this.isEligibleForMetaVerifiedLinksInReels, 
      this.isNewToInstagram, 
      this.isParentingAccount, 
      this.isPrivate, 
      this.isSecondaryAccountCreation, 
      this.pk, 
      this.pkId, 
      this.profileType, 
      this.showAccountTransparencyDetails, 
      this.showPostInsightsEntryPoint, 
      this.thirdPartyDownloadsEnabled, 
      this.isOpalEnabled, 
      this.strongId, 
      this.id, 
      this.biography, 
      this.biographyWithEntities, 
      this.externalUrl, 
      this.category, 
      this.isCategoryTappable, 
      this.isBusiness, 
      this.professionalConversionSuggestedAccountType, 
      this.displayedActionButtonPartner, 
      this.smbDeliveryPartner, 
      this.smbSupportDeliveryPartner, 
      this.displayedActionButtonType, 
      this.smbSupportPartner, 
      this.isCallToActionEnabled, 
      this.numOfAdminedPages, 
      this.pageId, 
      this.pageName, 
      this.adsPageId, 
      this.adsPageName, 
      this.shoppingPostOnboardNuxType, 
      this.adsIncentiveExpirationDate, 
      this.accountBadges, 
      this.activeStandaloneFundraisers, 
      this.additionalBusinessAddresses, 
      this.autoExpandChaining, 
      this.avatarStatus, 
      this.bioLinks, 
      this.birthdayTodayVisibilityForViewer, 
      this.canUseBrandedContentDiscoveryAsBrand, 
      this.canUseBrandedContentDiscoveryAsCreator, 
      this.canUsePaidPartnershipMessagingAsCreator, 
      this.chainingUpsellCards, 
      this.enableAddSchoolInEditProfile, 
      this.fanClubInfo, 
      this.followFrictionType, 
      this.followerCount, 
      this.followingCount, 
      this.hasAnonymousProfilePicture, 
      this.hasChaining, 
      this.hasChains, 
      this.hasCollabCollections, 
      this.hasExclusiveFeedContent, 
      this.hasFanClubSubscriptions, 
      this.hasHighlightReels, 
      this.hasMusicOnProfile, 
      this.hasPrivateCollections, 
      this.hasVideos, 
      this.hdProfilePicUrlInfo, 
      this.hdProfilePicVersions, 
      this.highlightsTrayType, 
      this.interopMessagingUserFbid, 
      this.isBestie, 
      this.isCreatorAgentEnabled, 
      this.isEligibleForMetaVerifiedEnhancedLinkSheet, 
      this.isEligibleForMetaVerifiedEnhancedLinkSheetConsumption, 
      this.isEligibleForMetaVerifiedMultipleAddressesCreation, 
      this.isEligibleForMetaVerifiedMultipleAddressesConsumption, 
      this.isEligibleForMetaVerifiedRelatedAccounts, 
      this.metaVerifiedRelatedAccountsCount, 
      this.isMetaVerifiedRelatedAccountsDisplayEnabled, 
      this.isEligibleForMetaVerifiedLabel, 
      this.isFavorite, 
      this.isFavoriteForStories, 
      this.isFavoriteForIgtv, 
      this.isFavoriteForClips, 
      this.isFavoriteForHighlights, 
      this.isInCanada, 
      this.isInterestAccount, 
      this.isMemorialized, 
      this.isPotentialBusiness, 
      this.isRegulatedNewsInViewerLocation, 
      this.isRemixSettingEnabledForPosts, 
      this.isRemixSettingEnabledForReels, 
      this.isProfileBroadcastSharingEnabled, 
      this.isRegulatedC18, 
      this.isStoriesTeaserMuted, 
      this.isReconAdCtaOnProfileEligibleWithViewer, 
      this.isSupervisionFeaturesEnabled, 
      this.isVerified, 
      this.isWhatsappLinked, 
      this.latestBestiesReelMedia, 
      this.latestReelMedia, 
      this.liveSubscriptionStatus, 
      this.mediaCount, 
      this.mutualFollowersCount, 
      this.nametag, 
      this.openExternalUrlWithInAppBrowser, 
      this.pinnedChannelsInfo, 
      this.profileContext, 
      this.profileContextFacepileUsers, 
      this.profileContextLinksWithUserIds, 
      this.profilePicId, 
      this.profilePicUrl, 
      this.pronouns, 
      this.relevantNewsRegulationLocations, 
      this.removeMessageEntrypoint, 
      this.showSchoolsBadge, 
      this.spamFollowerSettingEnabled, 
      this.textAppLastVisitedTime, 
      this.eligibleForTextAppActivationBadge, 
      this.totalArEffects, 
      this.totalIgtvVideos, 
      this.transparencyProductEnabled, 
      this.upcomingEvents, 
      this.username, 
      this.isProfilePictureExpansionEnabled, 
      this.recsFromFriends, 
      this.adjustedBannersOrder, 
      this.isEligibleForRequestMessage, 
      this.isOpenToCollab, 
      this.hasEverSelectedTopics, 
      this.isOregonCustomGenderConsented,});

  User.fromJson(dynamic json) {
    primaryProfileLinkType = json['primary_profile_link_type'];
    showFbLinkOnProfile = json['show_fb_link_on_profile'];
    showFbPageLinkOnProfile = json['show_fb_page_link_on_profile'];
    canHideCategory = json['can_hide_category'];
    accountType = json['account_type'];
    currentCatalogId = json['current_catalog_id'];
    miniShopSellerOnboardingStatus = json['mini_shop_seller_onboarding_status'];
    accountCategory = json['account_category'];
    canAddFbGroupLinkOnProfile = json['can_add_fb_group_link_on_profile'];
    canUseAffiliatePartnershipMessagingAsCreator = json['can_use_affiliate_partnership_messaging_as_creator'];
    canUseAffiliatePartnershipMessagingAsBrand = json['can_use_affiliate_partnership_messaging_as_brand'];
    existingUserAgeCollectionEnabled = json['existing_user_age_collection_enabled'];
    fbidV2 = json['fbid_v2'];
    feedPostReshareDisabled = json['feed_post_reshare_disabled'];
    fullName = json['full_name'];
    hasGuides = json['has_guides'];
    hasIgProfile = json['has_ig_profile'];
    hasPublicTabThreads = json['has_public_tab_threads'];
    highlightReshareDisabled = json['highlight_reshare_disabled'];
    includeDirectBlacklistStatus = json['include_direct_blacklist_status'];
    isDirectRollCallEnabled = json['is_direct_roll_call_enabled'];
    isEligibleForMetaVerifiedLinksInReels = json['is_eligible_for_meta_verified_links_in_reels'];
    isNewToInstagram = json['is_new_to_instagram'];
    isParentingAccount = json['is_parenting_account'];
    isPrivate = json['is_private'];
    isSecondaryAccountCreation = json['is_secondary_account_creation'];
    pk = json['pk'];
    pkId = json['pk_id'];
    profileType = json['profile_type'];
    showAccountTransparencyDetails = json['show_account_transparency_details'];
    showPostInsightsEntryPoint = json['show_post_insights_entry_point'];
    thirdPartyDownloadsEnabled = json['third_party_downloads_enabled'];
    isOpalEnabled = json['is_opal_enabled'];
    strongId = json['strong_id__'];
    id = json['id'];
    biography = json['biography'];
    biographyWithEntities = json['biography_with_entities'] != null ? BiographyWithEntities.fromJson(json['biography_with_entities']) : null;
    externalUrl = json['external_url'];
    category = json['category'];
    isCategoryTappable = json['is_category_tappable'];
    isBusiness = json['is_business'];
    professionalConversionSuggestedAccountType = json['professional_conversion_suggested_account_type'];
    displayedActionButtonPartner = json['displayed_action_button_partner'];
    smbDeliveryPartner = json['smb_delivery_partner'];
    smbSupportDeliveryPartner = json['smb_support_delivery_partner'];
    displayedActionButtonType = json['displayed_action_button_type'];
    smbSupportPartner = json['smb_support_partner'];
    isCallToActionEnabled = json['is_call_to_action_enabled'];
    numOfAdminedPages = json['num_of_admined_pages'];
    pageId = json['page_id'];
    pageName = json['page_name'];
    adsPageId = json['ads_page_id'];
    adsPageName = json['ads_page_name'];
    shoppingPostOnboardNuxType = json['shopping_post_onboard_nux_type'];
    adsIncentiveExpirationDate = json['ads_incentive_expiration_date'];
    if (json['account_badges'] != null) {
      accountBadges = [];
      json['account_badges'].forEach((v) {
        accountBadges?.add((v));
      });
    }
    activeStandaloneFundraisers = json['active_standalone_fundraisers'] != null ? ActiveStandaloneFundraisers.fromJson(json['active_standalone_fundraisers']) : null;
    if (json['additional_business_addresses'] != null) {
      additionalBusinessAddresses = [];
      json['additional_business_addresses'].forEach((v) {
        additionalBusinessAddresses?.add((v));
      });
    }
    autoExpandChaining = json['auto_expand_chaining'];
    avatarStatus = json['avatar_status'] != null ? AvatarStatus.fromJson(json['avatar_status']) : null;
    if (json['bio_links'] != null) {
      bioLinks = [];
      json['bio_links'].forEach((v) {
        bioLinks?.add((v));
      });
    }
    birthdayTodayVisibilityForViewer = json['birthday_today_visibility_for_viewer'];
    canUseBrandedContentDiscoveryAsBrand = json['can_use_branded_content_discovery_as_brand'];
    canUseBrandedContentDiscoveryAsCreator = json['can_use_branded_content_discovery_as_creator'];
    canUsePaidPartnershipMessagingAsCreator = json['can_use_paid_partnership_messaging_as_creator'];
    if (json['chaining_upsell_cards'] != null) {
      chainingUpsellCards = [];
      json['chaining_upsell_cards'].forEach((v) {
        chainingUpsellCards?.add((v));
      });
    }
    enableAddSchoolInEditProfile = json['enable_add_school_in_edit_profile'];
    fanClubInfo = json['fan_club_info'] != null ? FanClubInfo.fromJson(json['fan_club_info']) : null;
    followFrictionType = json['follow_friction_type'];
    followerCount = json['follower_count'];
    followingCount = json['following_count'];
    hasAnonymousProfilePicture = json['has_anonymous_profile_picture'];
    hasChaining = json['has_chaining'];
    hasChains = json['has_chains'];
    hasCollabCollections = json['has_collab_collections'];
    hasExclusiveFeedContent = json['has_exclusive_feed_content'];
    hasFanClubSubscriptions = json['has_fan_club_subscriptions'];
    hasHighlightReels = json['has_highlight_reels'];
    hasMusicOnProfile = json['has_music_on_profile'];
    hasPrivateCollections = json['has_private_collections'];
    hasVideos = json['has_videos'];
    hdProfilePicUrlInfo = json['hd_profile_pic_url_info'] != null ? HdProfilePicUrlInfo.fromJson(json['hd_profile_pic_url_info']) : null;
    if (json['hd_profile_pic_versions'] != null) {
      hdProfilePicVersions = [];
      json['hd_profile_pic_versions'].forEach((v) {
        hdProfilePicVersions?.add(HdProfilePicVersions.fromJson(v));
      });
    }
    highlightsTrayType = json['highlights_tray_type'];
    interopMessagingUserFbid = json['interop_messaging_user_fbid'];
    isBestie = json['is_bestie'];
    isCreatorAgentEnabled = json['is_creator_agent_enabled'];
    isEligibleForMetaVerifiedEnhancedLinkSheet = json['is_eligible_for_meta_verified_enhanced_link_sheet'];
    isEligibleForMetaVerifiedEnhancedLinkSheetConsumption = json['is_eligible_for_meta_verified_enhanced_link_sheet_consumption'];
    isEligibleForMetaVerifiedMultipleAddressesCreation = json['is_eligible_for_meta_verified_multiple_addresses_creation'];
    isEligibleForMetaVerifiedMultipleAddressesConsumption = json['is_eligible_for_meta_verified_multiple_addresses_consumption'];
    isEligibleForMetaVerifiedRelatedAccounts = json['is_eligible_for_meta_verified_related_accounts'];
    metaVerifiedRelatedAccountsCount = json['meta_verified_related_accounts_count'];
    isMetaVerifiedRelatedAccountsDisplayEnabled = json['is_meta_verified_related_accounts_display_enabled'];
    isEligibleForMetaVerifiedLabel = json['is_eligible_for_meta_verified_label'];
    isFavorite = json['is_favorite'];
    isFavoriteForStories = json['is_favorite_for_stories'];
    isFavoriteForIgtv = json['is_favorite_for_igtv'];
    isFavoriteForClips = json['is_favorite_for_clips'];
    isFavoriteForHighlights = json['is_favorite_for_highlights'];
    isInCanada = json['is_in_canada'];
    isInterestAccount = json['is_interest_account'];
    isMemorialized = json['is_memorialized'];
    isPotentialBusiness = json['is_potential_business'];
    isRegulatedNewsInViewerLocation = json['is_regulated_news_in_viewer_location'];
    isRemixSettingEnabledForPosts = json['is_remix_setting_enabled_for_posts'];
    isRemixSettingEnabledForReels = json['is_remix_setting_enabled_for_reels'];
    isProfileBroadcastSharingEnabled = json['is_profile_broadcast_sharing_enabled'];
    isRegulatedC18 = json['is_regulated_c18'];
    isStoriesTeaserMuted = json['is_stories_teaser_muted'];
    isReconAdCtaOnProfileEligibleWithViewer = json['is_recon_ad_cta_on_profile_eligible_with_viewer'];
    isSupervisionFeaturesEnabled = json['is_supervision_features_enabled'];
    isVerified = json['is_verified'];
    isWhatsappLinked = json['is_whatsapp_linked'];
    latestBestiesReelMedia = json['latest_besties_reel_media'];
    latestReelMedia = json['latest_reel_media'];
    liveSubscriptionStatus = json['live_subscription_status'];
    mediaCount = json['media_count'];
    mutualFollowersCount = json['mutual_followers_count'];
    nametag = json['nametag'] != null ? Nametag.fromJson(json['nametag']) : null;
    openExternalUrlWithInAppBrowser = json['open_external_url_with_in_app_browser'];
    pinnedChannelsInfo = json['pinned_channels_info'] != null ? PinnedChannelsInfo.fromJson(json['pinned_channels_info']) : null;
    profileContext = json['profile_context'];
    if (json['profile_context_facepile_users'] != null) {
      profileContextFacepileUsers = [];
      json['profile_context_facepile_users'].forEach((v) {
        profileContextFacepileUsers?.add((v));
      });
    }
    if (json['profile_context_links_with_user_ids'] != null) {
      profileContextLinksWithUserIds = [];
      json['profile_context_links_with_user_ids'].forEach((v) {
        profileContextLinksWithUserIds?.add((v));
      });
    }
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
    if (json['pronouns'] != null) {
      pronouns = [];
      json['pronouns'].forEach((v) {
        pronouns?.add((v));
      });
    }
    if (json['relevant_news_regulation_locations'] != null) {
      relevantNewsRegulationLocations = [];
      json['relevant_news_regulation_locations'].forEach((v) {
        relevantNewsRegulationLocations?.add((v));
      });
    }
    removeMessageEntrypoint = json['remove_message_entrypoint'];
    showSchoolsBadge = json['show_schools_badge'];
    spamFollowerSettingEnabled = json['spam_follower_setting_enabled'];
    textAppLastVisitedTime = json['text_app_last_visited_time'];
    eligibleForTextAppActivationBadge = json['eligible_for_text_app_activation_badge'];
    totalArEffects = json['total_ar_effects'];
    totalIgtvVideos = json['total_igtv_videos'];
    transparencyProductEnabled = json['transparency_product_enabled'];
    if (json['upcoming_events'] != null) {
      upcomingEvents = [];
      json['upcoming_events'].forEach((v) {
        upcomingEvents?.add((v));
      });
    }
    username = json['username'];
    isProfilePictureExpansionEnabled = json['is_profile_picture_expansion_enabled'];
    recsFromFriends = json['recs_from_friends'] != null ? RecsFromFriends.fromJson(json['recs_from_friends']) : null;
    if (json['adjusted_banners_order'] != null) {
      adjustedBannersOrder = [];
      json['adjusted_banners_order'].forEach((v) {
        adjustedBannersOrder?.add((v));
      });
    }
    isEligibleForRequestMessage = json['is_eligible_for_request_message'];
    isOpenToCollab = json['is_open_to_collab'];
    hasEverSelectedTopics = json['has_ever_selected_topics'];
    isOregonCustomGenderConsented = json['is_oregon_custom_gender_consented'];
  }
  int? primaryProfileLinkType;
  bool? showFbLinkOnProfile;
  bool? showFbPageLinkOnProfile;
  bool? canHideCategory;
  int? accountType;
  dynamic currentCatalogId;
  dynamic miniShopSellerOnboardingStatus;
  String? accountCategory;
  bool? canAddFbGroupLinkOnProfile;
  bool? canUseAffiliatePartnershipMessagingAsCreator;
  bool? canUseAffiliatePartnershipMessagingAsBrand;
  bool? existingUserAgeCollectionEnabled;
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  bool? hasGuides;
  bool? hasIgProfile;
  bool? hasPublicTabThreads;
  bool? highlightReshareDisabled;
  bool? includeDirectBlacklistStatus;
  bool? isDirectRollCallEnabled;
  bool? isEligibleForMetaVerifiedLinksInReels;
  bool? isNewToInstagram;
  bool? isParentingAccount;
  bool? isPrivate;
  bool? isSecondaryAccountCreation;
  int? pk;
  String? pkId;
  int? profileType;
  bool? showAccountTransparencyDetails;
  bool? showPostInsightsEntryPoint;
  int? thirdPartyDownloadsEnabled;
  bool? isOpalEnabled;
  String? strongId;
  String? id;
  String? biography;
  BiographyWithEntities? biographyWithEntities;
  String? externalUrl;
  dynamic category;
  bool? isCategoryTappable;
  bool? isBusiness;
  int? professionalConversionSuggestedAccountType;
  dynamic displayedActionButtonPartner;
  dynamic smbDeliveryPartner;
  dynamic smbSupportDeliveryPartner;
  dynamic displayedActionButtonType;
  dynamic smbSupportPartner;
  dynamic isCallToActionEnabled;
  dynamic numOfAdminedPages;
  dynamic pageId;
  dynamic pageName;
  dynamic adsPageId;
  dynamic adsPageName;
  dynamic shoppingPostOnboardNuxType;
  dynamic adsIncentiveExpirationDate;
  List<dynamic>? accountBadges;
  ActiveStandaloneFundraisers? activeStandaloneFundraisers;
  List<dynamic>? additionalBusinessAddresses;
  dynamic autoExpandChaining;
  AvatarStatus? avatarStatus;
  List<dynamic>? bioLinks;
  String? birthdayTodayVisibilityForViewer;
  bool? canUseBrandedContentDiscoveryAsBrand;
  bool? canUseBrandedContentDiscoveryAsCreator;
  bool? canUsePaidPartnershipMessagingAsCreator;
  List<dynamic>? chainingUpsellCards;
  bool? enableAddSchoolInEditProfile;
  FanClubInfo? fanClubInfo;
  int? followFrictionType;
  int? followerCount;
  int? followingCount;
  bool? hasAnonymousProfilePicture;
  bool? hasChaining;
  bool? hasChains;
  bool? hasCollabCollections;
  bool? hasExclusiveFeedContent;
  bool? hasFanClubSubscriptions;
  bool? hasHighlightReels;
  bool? hasMusicOnProfile;
  bool? hasPrivateCollections;
  bool? hasVideos;
  HdProfilePicUrlInfo? hdProfilePicUrlInfo;
  List<HdProfilePicVersions>? hdProfilePicVersions;
  String? highlightsTrayType;
  int? interopMessagingUserFbid;
  bool? isBestie;
  bool? isCreatorAgentEnabled;
  bool? isEligibleForMetaVerifiedEnhancedLinkSheet;
  bool? isEligibleForMetaVerifiedEnhancedLinkSheetConsumption;
  bool? isEligibleForMetaVerifiedMultipleAddressesCreation;
  bool? isEligibleForMetaVerifiedMultipleAddressesConsumption;
  bool? isEligibleForMetaVerifiedRelatedAccounts;
  int? metaVerifiedRelatedAccountsCount;
  bool? isMetaVerifiedRelatedAccountsDisplayEnabled;
  bool? isEligibleForMetaVerifiedLabel;
  bool? isFavorite;
  bool? isFavoriteForStories;
  bool? isFavoriteForIgtv;
  bool? isFavoriteForClips;
  bool? isFavoriteForHighlights;
  bool? isInCanada;
  bool? isInterestAccount;
  bool? isMemorialized;
  bool? isPotentialBusiness;
  bool? isRegulatedNewsInViewerLocation;
  bool? isRemixSettingEnabledForPosts;
  bool? isRemixSettingEnabledForReels;
  bool? isProfileBroadcastSharingEnabled;
  bool? isRegulatedC18;
  bool? isStoriesTeaserMuted;
  bool? isReconAdCtaOnProfileEligibleWithViewer;
  bool? isSupervisionFeaturesEnabled;
  bool? isVerified;
  bool? isWhatsappLinked;
  int? latestBestiesReelMedia;
  int? latestReelMedia;
  String? liveSubscriptionStatus;
  int? mediaCount;
  int? mutualFollowersCount;
  Nametag? nametag;
  bool? openExternalUrlWithInAppBrowser;
  PinnedChannelsInfo? pinnedChannelsInfo;
  String? profileContext;
  List<dynamic>? profileContextFacepileUsers;
  List<dynamic>? profileContextLinksWithUserIds;
  String? profilePicId;
  String? profilePicUrl;
  List<dynamic>? pronouns;
  List<dynamic>? relevantNewsRegulationLocations;
  bool? removeMessageEntrypoint;
  dynamic showSchoolsBadge;
  bool? spamFollowerSettingEnabled;
  dynamic textAppLastVisitedTime;
  bool? eligibleForTextAppActivationBadge;
  int? totalArEffects;
  int? totalIgtvVideos;
  bool? transparencyProductEnabled;
  List<dynamic>? upcomingEvents;
  String? username;
  bool? isProfilePictureExpansionEnabled;
  RecsFromFriends? recsFromFriends;
  List<dynamic>? adjustedBannersOrder;
  bool? isEligibleForRequestMessage;
  bool? isOpenToCollab;
  bool? hasEverSelectedTopics;
  bool? isOregonCustomGenderConsented;

  get hd_profile_pic_url_info => null;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary_profile_link_type'] = primaryProfileLinkType;
    map['show_fb_link_on_profile'] = showFbLinkOnProfile;
    map['show_fb_page_link_on_profile'] = showFbPageLinkOnProfile;
    map['can_hide_category'] = canHideCategory;
    map['account_type'] = accountType;
    map['current_catalog_id'] = currentCatalogId;
    map['mini_shop_seller_onboarding_status'] = miniShopSellerOnboardingStatus;
    map['account_category'] = accountCategory;
    map['can_add_fb_group_link_on_profile'] = canAddFbGroupLinkOnProfile;
    map['can_use_affiliate_partnership_messaging_as_creator'] = canUseAffiliatePartnershipMessagingAsCreator;
    map['can_use_affiliate_partnership_messaging_as_brand'] = canUseAffiliatePartnershipMessagingAsBrand;
    map['existing_user_age_collection_enabled'] = existingUserAgeCollectionEnabled;
    map['fbid_v2'] = fbidV2;
    map['feed_post_reshare_disabled'] = feedPostReshareDisabled;
    map['full_name'] = fullName;
    map['has_guides'] = hasGuides;
    map['has_ig_profile'] = hasIgProfile;
    map['has_public_tab_threads'] = hasPublicTabThreads;
    map['highlight_reshare_disabled'] = highlightReshareDisabled;
    map['include_direct_blacklist_status'] = includeDirectBlacklistStatus;
    map['is_direct_roll_call_enabled'] = isDirectRollCallEnabled;
    map['is_eligible_for_meta_verified_links_in_reels'] = isEligibleForMetaVerifiedLinksInReels;
    map['is_new_to_instagram'] = isNewToInstagram;
    map['is_parenting_account'] = isParentingAccount;
    map['is_private'] = isPrivate;
    map['is_secondary_account_creation'] = isSecondaryAccountCreation;
    map['pk'] = pk;
    map['pk_id'] = pkId;
    map['profile_type'] = profileType;
    map['show_account_transparency_details'] = showAccountTransparencyDetails;
    map['show_post_insights_entry_point'] = showPostInsightsEntryPoint;
    map['third_party_downloads_enabled'] = thirdPartyDownloadsEnabled;
    map['is_opal_enabled'] = isOpalEnabled;
    map['strong_id__'] = strongId;
    map['id'] = id;
    map['biography'] = biography;
    if (biographyWithEntities != null) {
      map['biography_with_entities'] = biographyWithEntities?.toJson();
    }
    map['external_url'] = externalUrl;
    map['category'] = category;
    map['is_category_tappable'] = isCategoryTappable;
    map['is_business'] = isBusiness;
    map['professional_conversion_suggested_account_type'] = professionalConversionSuggestedAccountType;
    map['displayed_action_button_partner'] = displayedActionButtonPartner;
    map['smb_delivery_partner'] = smbDeliveryPartner;
    map['smb_support_delivery_partner'] = smbSupportDeliveryPartner;
    map['displayed_action_button_type'] = displayedActionButtonType;
    map['smb_support_partner'] = smbSupportPartner;
    map['is_call_to_action_enabled'] = isCallToActionEnabled;
    map['num_of_admined_pages'] = numOfAdminedPages;
    map['page_id'] = pageId;
    map['page_name'] = pageName;
    map['ads_page_id'] = adsPageId;
    map['ads_page_name'] = adsPageName;
    map['shopping_post_onboard_nux_type'] = shoppingPostOnboardNuxType;
    map['ads_incentive_expiration_date'] = adsIncentiveExpirationDate;
    if (accountBadges != null) {
      map['account_badges'] = accountBadges?.map((v) => v.toJson()).toList();
    }
    if (activeStandaloneFundraisers != null) {
      map['active_standalone_fundraisers'] = activeStandaloneFundraisers?.toJson();
    }
    if (additionalBusinessAddresses != null) {
      map['additional_business_addresses'] = additionalBusinessAddresses?.map((v) => v.toJson()).toList();
    }
    map['auto_expand_chaining'] = autoExpandChaining;
    if (avatarStatus != null) {
      map['avatar_status'] = avatarStatus?.toJson();
    }
    if (bioLinks != null) {
      map['bio_links'] = bioLinks?.map((v) => v.toJson()).toList();
    }
    map['birthday_today_visibility_for_viewer'] = birthdayTodayVisibilityForViewer;
    map['can_use_branded_content_discovery_as_brand'] = canUseBrandedContentDiscoveryAsBrand;
    map['can_use_branded_content_discovery_as_creator'] = canUseBrandedContentDiscoveryAsCreator;
    map['can_use_paid_partnership_messaging_as_creator'] = canUsePaidPartnershipMessagingAsCreator;
    if (chainingUpsellCards != null) {
      map['chaining_upsell_cards'] = chainingUpsellCards?.map((v) => v.toJson()).toList();
    }
    map['enable_add_school_in_edit_profile'] = enableAddSchoolInEditProfile;
    if (fanClubInfo != null) {
      map['fan_club_info'] = fanClubInfo?.toJson();
    }
    map['follow_friction_type'] = followFrictionType;
    map['follower_count'] = followerCount;
    map['following_count'] = followingCount;
    map['has_anonymous_profile_picture'] = hasAnonymousProfilePicture;
    map['has_chaining'] = hasChaining;
    map['has_chains'] = hasChains;
    map['has_collab_collections'] = hasCollabCollections;
    map['has_exclusive_feed_content'] = hasExclusiveFeedContent;
    map['has_fan_club_subscriptions'] = hasFanClubSubscriptions;
    map['has_highlight_reels'] = hasHighlightReels;
    map['has_music_on_profile'] = hasMusicOnProfile;
    map['has_private_collections'] = hasPrivateCollections;
    map['has_videos'] = hasVideos;
    if (hdProfilePicUrlInfo != null) {
      map['hd_profile_pic_url_info'] = hdProfilePicUrlInfo?.toJson();
    }
    if (hdProfilePicVersions != null) {
      map['hd_profile_pic_versions'] = hdProfilePicVersions?.map((v) => v.toJson()).toList();
    }
    map['highlights_tray_type'] = highlightsTrayType;
    map['interop_messaging_user_fbid'] = interopMessagingUserFbid;
    map['is_bestie'] = isBestie;
    map['is_creator_agent_enabled'] = isCreatorAgentEnabled;
    map['is_eligible_for_meta_verified_enhanced_link_sheet'] = isEligibleForMetaVerifiedEnhancedLinkSheet;
    map['is_eligible_for_meta_verified_enhanced_link_sheet_consumption'] = isEligibleForMetaVerifiedEnhancedLinkSheetConsumption;
    map['is_eligible_for_meta_verified_multiple_addresses_creation'] = isEligibleForMetaVerifiedMultipleAddressesCreation;
    map['is_eligible_for_meta_verified_multiple_addresses_consumption'] = isEligibleForMetaVerifiedMultipleAddressesConsumption;
    map['is_eligible_for_meta_verified_related_accounts'] = isEligibleForMetaVerifiedRelatedAccounts;
    map['meta_verified_related_accounts_count'] = metaVerifiedRelatedAccountsCount;
    map['is_meta_verified_related_accounts_display_enabled'] = isMetaVerifiedRelatedAccountsDisplayEnabled;
    map['is_eligible_for_meta_verified_label'] = isEligibleForMetaVerifiedLabel;
    map['is_favorite'] = isFavorite;
    map['is_favorite_for_stories'] = isFavoriteForStories;
    map['is_favorite_for_igtv'] = isFavoriteForIgtv;
    map['is_favorite_for_clips'] = isFavoriteForClips;
    map['is_favorite_for_highlights'] = isFavoriteForHighlights;
    map['is_in_canada'] = isInCanada;
    map['is_interest_account'] = isInterestAccount;
    map['is_memorialized'] = isMemorialized;
    map['is_potential_business'] = isPotentialBusiness;
    map['is_regulated_news_in_viewer_location'] = isRegulatedNewsInViewerLocation;
    map['is_remix_setting_enabled_for_posts'] = isRemixSettingEnabledForPosts;
    map['is_remix_setting_enabled_for_reels'] = isRemixSettingEnabledForReels;
    map['is_profile_broadcast_sharing_enabled'] = isProfileBroadcastSharingEnabled;
    map['is_regulated_c18'] = isRegulatedC18;
    map['is_stories_teaser_muted'] = isStoriesTeaserMuted;
    map['is_recon_ad_cta_on_profile_eligible_with_viewer'] = isReconAdCtaOnProfileEligibleWithViewer;
    map['is_supervision_features_enabled'] = isSupervisionFeaturesEnabled;
    map['is_verified'] = isVerified;
    map['is_whatsapp_linked'] = isWhatsappLinked;
    map['latest_besties_reel_media'] = latestBestiesReelMedia;
    map['latest_reel_media'] = latestReelMedia;
    map['live_subscription_status'] = liveSubscriptionStatus;
    map['media_count'] = mediaCount;
    map['mutual_followers_count'] = mutualFollowersCount;
    if (nametag != null) {
      map['nametag'] = nametag?.toJson();
    }
    map['open_external_url_with_in_app_browser'] = openExternalUrlWithInAppBrowser;
    if (pinnedChannelsInfo != null) {
      map['pinned_channels_info'] = pinnedChannelsInfo?.toJson();
    }
    map['profile_context'] = profileContext;
    if (profileContextFacepileUsers != null) {
      map['profile_context_facepile_users'] = profileContextFacepileUsers?.map((v) => v.toJson()).toList();
    }
    if (profileContextLinksWithUserIds != null) {
      map['profile_context_links_with_user_ids'] = profileContextLinksWithUserIds?.map((v) => v.toJson()).toList();
    }
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    if (pronouns != null) {
      map['pronouns'] = pronouns?.map((v) => v.toJson()).toList();
    }
    if (relevantNewsRegulationLocations != null) {
      map['relevant_news_regulation_locations'] = relevantNewsRegulationLocations?.map((v) => v.toJson()).toList();
    }
    map['remove_message_entrypoint'] = removeMessageEntrypoint;
    map['show_schools_badge'] = showSchoolsBadge;
    map['spam_follower_setting_enabled'] = spamFollowerSettingEnabled;
    map['text_app_last_visited_time'] = textAppLastVisitedTime;
    map['eligible_for_text_app_activation_badge'] = eligibleForTextAppActivationBadge;
    map['total_ar_effects'] = totalArEffects;
    map['total_igtv_videos'] = totalIgtvVideos;
    map['transparency_product_enabled'] = transparencyProductEnabled;
    if (upcomingEvents != null) {
      map['upcoming_events'] = upcomingEvents?.map((v) => v.toJson()).toList();
    }
    map['username'] = username;
    map['is_profile_picture_expansion_enabled'] = isProfilePictureExpansionEnabled;
    if (recsFromFriends != null) {
      map['recs_from_friends'] = recsFromFriends?.toJson();
    }
    if (adjustedBannersOrder != null) {
      map['adjusted_banners_order'] = adjustedBannersOrder?.map((v) => v.toJson()).toList();
    }
    map['is_eligible_for_request_message'] = isEligibleForRequestMessage;
    map['is_open_to_collab'] = isOpenToCollab;
    map['has_ever_selected_topics'] = hasEverSelectedTopics;
    map['is_oregon_custom_gender_consented'] = isOregonCustomGenderConsented;
    return map;
  }

}

class RecsFromFriends {
  RecsFromFriends({
      this.enableRecsFromFriends, 
      this.recsFromFriendsEntryPointType,});

  RecsFromFriends.fromJson(dynamic json) {
    enableRecsFromFriends = json['enable_recs_from_friends'];
    recsFromFriendsEntryPointType = json['recs_from_friends_entry_point_type'];
  }
  bool? enableRecsFromFriends;
  String? recsFromFriendsEntryPointType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable_recs_from_friends'] = enableRecsFromFriends;
    map['recs_from_friends_entry_point_type'] = recsFromFriendsEntryPointType;
    return map;
  }

}

class PinnedChannelsInfo {
  PinnedChannelsInfo({
      this.hasPublicChannels, 
      this.pinnedChannelsList,});

  PinnedChannelsInfo.fromJson(dynamic json) {
    hasPublicChannels = json['has_public_channels'];
    if (json['pinned_channels_list'] != null) {
      pinnedChannelsList = [];
      json['pinned_channels_list'].forEach((v) {
        pinnedChannelsList?.add((v));
      });
    }
  }
  bool? hasPublicChannels;
  List<dynamic>? pinnedChannelsList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['has_public_channels'] = hasPublicChannels;
    if (pinnedChannelsList != null) {
      map['pinned_channels_list'] = pinnedChannelsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Nametag {
  Nametag({
      this.backgroundImageUrl, 
      this.emoji, 
      this.emojiColor, 
      this.gradient, 
      this.isBackgroundImageBlurred, 
      this.mode, 
      this.selfieSticker, 
      this.selfieUrl,});

  Nametag.fromJson(dynamic json) {
    backgroundImageUrl = json['background_image_url'];
    emoji = json['emoji'];
    emojiColor = json['emoji_color'];
    gradient = json['gradient'];
    isBackgroundImageBlurred = json['is_background_image_blurred'];
    mode = json['mode'];
    selfieSticker = json['selfie_sticker'];
    selfieUrl = json['selfie_url'];
  }
  String? backgroundImageUrl;
  String? emoji;
  int? emojiColor;
  int? gradient;
  bool? isBackgroundImageBlurred;
  int? mode;
  int? selfieSticker;
  String? selfieUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['background_image_url'] = backgroundImageUrl;
    map['emoji'] = emoji;
    map['emoji_color'] = emojiColor;
    map['gradient'] = gradient;
    map['is_background_image_blurred'] = isBackgroundImageBlurred;
    map['mode'] = mode;
    map['selfie_sticker'] = selfieSticker;
    map['selfie_url'] = selfieUrl;
    return map;
  }

}

class HdProfilePicVersions {
  HdProfilePicVersions({
      this.height, 
      this.url, 
      this.width,});

  HdProfilePicVersions.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }
  int? height;
  String? url;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }

}

class HdProfilePicUrlInfo {
  HdProfilePicUrlInfo({
      this.height, 
      this.url, 
      this.width,});

  HdProfilePicUrlInfo.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }
  int? height;
  String? url;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }

}

class FanClubInfo {
  FanClubInfo({
      this.autosaveToExclusiveHighlight, 
      this.connectedMemberCount, 
      this.fanClubId, 
      this.fanClubName, 
      this.hasEnoughSubscribersForSsc, 
      this.isFanClubGiftingEligible, 
      this.isFanClubReferralEligible, 
      this.subscriberCount, 
      this.fanConsiderationPageRevampEligiblity,});

  FanClubInfo.fromJson(dynamic json) {
    autosaveToExclusiveHighlight = json['autosave_to_exclusive_highlight'];
    connectedMemberCount = json['connected_member_count'];
    fanClubId = json['fan_club_id'];
    fanClubName = json['fan_club_name'];
    hasEnoughSubscribersForSsc = json['has_enough_subscribers_for_ssc'];
    isFanClubGiftingEligible = json['is_fan_club_gifting_eligible'];
    isFanClubReferralEligible = json['is_fan_club_referral_eligible'];
    subscriberCount = json['subscriber_count'];
    fanConsiderationPageRevampEligiblity = json['fan_consideration_page_revamp_eligiblity'];
  }
  dynamic autosaveToExclusiveHighlight;
  dynamic connectedMemberCount;
  dynamic fanClubId;
  dynamic fanClubName;
  dynamic hasEnoughSubscribersForSsc;
  dynamic isFanClubGiftingEligible;
  dynamic isFanClubReferralEligible;
  dynamic subscriberCount;
  dynamic fanConsiderationPageRevampEligiblity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['autosave_to_exclusive_highlight'] = autosaveToExclusiveHighlight;
    map['connected_member_count'] = connectedMemberCount;
    map['fan_club_id'] = fanClubId;
    map['fan_club_name'] = fanClubName;
    map['has_enough_subscribers_for_ssc'] = hasEnoughSubscribersForSsc;
    map['is_fan_club_gifting_eligible'] = isFanClubGiftingEligible;
    map['is_fan_club_referral_eligible'] = isFanClubReferralEligible;
    map['subscriber_count'] = subscriberCount;
    map['fan_consideration_page_revamp_eligiblity'] = fanConsiderationPageRevampEligiblity;
    return map;
  }

}

class AvatarStatus {
  AvatarStatus({
      this.hasAvatar,});

  AvatarStatus.fromJson(dynamic json) {
    hasAvatar = json['has_avatar'];
  }
  bool? hasAvatar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['has_avatar'] = hasAvatar;
    return map;
  }

}

class ActiveStandaloneFundraisers {
  ActiveStandaloneFundraisers({
      this.totalCount, 
      this.fundraisers,});

  ActiveStandaloneFundraisers.fromJson(dynamic json) {
    totalCount = json['total_count'];
    if (json['fundraisers'] != null) {
      fundraisers = [];
      json['fundraisers'].forEach((v) {
        fundraisers?.add((v));
      });
    }
  }
  int? totalCount;
  List<dynamic>? fundraisers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = totalCount;
    if (fundraisers != null) {
      map['fundraisers'] = fundraisers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class BiographyWithEntities {
  BiographyWithEntities({
      this.rawText, 
      this.entities,});

  BiographyWithEntities.fromJson(dynamic json) {
    rawText = json['raw_text'];
    if (json['entities'] != null) {
      entities = [];
      json['entities'].forEach((v) {
        entities?.add((v));
      });
    }
  }
  String? rawText;
  List<dynamic>? entities;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['raw_text'] = rawText;
    if (entities != null) {
      map['entities'] = entities?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}