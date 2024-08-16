class InstagramModel {
  InstagramModel({
      this.items, 
      this.pagingInfo, 
      this.status, 
      this.unrelatedData,});

  InstagramModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    pagingInfo = json['paging_info'] != null ? PagingInfo.fromJson(json['paging_info']) : null;
    status = json['status'];
    unrelatedData = json['unrelated_data'] != null ? UnrelatedData.fromJson(json['unrelated_data']) : null;
  }
  List<Items>? items;
  PagingInfo? pagingInfo;
  String? status;
  UnrelatedData? unrelatedData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    if (pagingInfo != null) {
      map['paging_info'] = pagingInfo?.toJson();
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
      this.proxyId, 
      this.timeGen,});

  UnrelatedData.fromJson(dynamic json) {
    retry = json['retry'];
    idAcc = json['id_acc'];
    proxyId = json['proxy_id'];
    timeGen = json['time_gen'];
  }
  int? retry;
  int? idAcc;
  int? proxyId;
  double? timeGen;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['retry'] = retry;
    map['id_acc'] = idAcc;
    map['proxy_id'] = proxyId;
    map['time_gen'] = timeGen;
    return map;
  }

}

class PagingInfo {
  PagingInfo({
      this.maxId, 
      this.moreAvailable,});

  PagingInfo.fromJson(dynamic json) {
    maxId = json['max_id'];
    moreAvailable = json['more_available'];
  }
  String? maxId;
  bool? moreAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['max_id'] = maxId;
    map['more_available'] = moreAvailable;
    return map;
  }

}

class Items {
  Items({
      this.media,});

  Items.fromJson(dynamic json) {
    media = json['media'] != null ? Media.fromJson(json['media']) : null;
  }
  Media? media;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (media != null) {
      map['media'] = media?.toJson();
    }
    return map;
  }

}

class Media {
  Media({
      this.takenAt, 
      this.pk, 
      this.id, 
      this.fbid, 
      this.deviceTimestamp, 
      this.captionIsEdited, 
      this.strongId, 
      this.deletedReason, 
      this.hasSharedToFb, 
      this.hasDelayedMetadata, 
      this.mezqlToken, 
      this.shareCountDisabled, 
      this.viewStateItemType, 
      this.loggingInfoToken, 
      this.isVisualReplyCommenterNoticeEnabled, 
      this.likeAndViewCountsDisabled, 
      this.isPostLiveClipsMedia, 
      this.clipsDeliveryParameters, 
      this.commentThreadingEnabled, 
      this.isUnifiedVideo, 
      this.commercialityStatus, 
      this.clientCacheKey, 
      this.integrityReviewDecision, 
      this.shouldRequestAds, 
      this.isReshareOfTextPostAppMediaInIg, 
      this.hasPrivatelyLiked, 
      this.filterType,
      this.photoOfYou, 
      this.canSeeInsightsAsBrand, 
      this.mediaType, 
      this.code, 
      this.caption, 
      this.fundraiserTag, 
      this.sharingFrictionInfo, 
      this.playCount, 
      this.fbPlayCount, 
      this.originalMediaHasVisualReplyMedia, 
      this.creatorViewerInsights, 

      this.coauthorProducers, 
      this.invitedCoauthorProducers, 
      this.isInProfileGrid, 
      this.profileGridControlEnabled, 
      this.mediaCroppingInfo, 
      this.user, 
      this.owner, 
      this.imageVersions2, 
      this.originalWidth, 
      this.originalHeight, 
      this.isArtistPick, 
      this.enableMediaNotesProduction, 
      this.productType, 
      this.isPaidPartnership, 
      this.musicMetadata, 
      this.socialContext, 
      this.organicTrackingToken, 
      this.isThirdPartyDownloadsEligible, 
      this.igMediaSharingDisabled, 
      this.areRemixesCrosspostable, 
      this.boostUnavailableIdentifier, 
      this.boostUnavailableReason, 
      this.subscribeCtaVisible, 
      this.isCutoutStickerAllowed, 
      this.isReuseAllowed, 
      this.genAiDetectionMethod, 
      this.fbAggregatedLikeCount, 
      this.fbAggregatedCommentCount, 
      this.hasHighRiskGenAiInformTreatment, 
      this.collabFollowButtonInfo, 
      this.openCarouselShowFollowButton, 
      this.isTaggedMediaSharedToViewerProfileGrid, 
      this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid, 
      this.isEligibleForMediaNoteRecsNux, 
      this.shouldOpenCollabBottomsheetOnFacepileTap, 
      this.isSocialUfiDisabled, 
      this.isEligibleForMetaAiShare, 
      this.canViewMorePreviewComments, 
      this.commentCount, 
      this.hideViewAllCommentEntrypoint, 
      this.isCommentsGifComposerEnabled, 
      this.commentInformTreatment, 
      this.fbLikeCount, 
      this.hasLiked, 
      this.likeCount, 
      this.facepileTopLikers, 
      this.topLikers, 
      this.videoSubtitlesLocale, 
      this.isDashEligible, 
      this.videoDashManifest, 
      this.numberOfQualities, 
      this.videoVersions, 
      this.videoDuration, 
      this.hasAudio, 
      this.clipsTabPinnedUserIds, 
      this.clipsMetadata, 
      this.canViewerSave, 
      this.canViewerReshare, 
      this.reshareCount, 
      this.shopRoutingUserId, 
      this.isOrganicProductTaggingEligible, 
      this.igbioProduct, 
      this.productSuggestions, 
      this.hasMoreComments, 
      this.maxNumVisiblePreviewComments, 
      this.exploreHideComments, 
      this.isOpenToPublicSubmission,});

  Media.fromJson(dynamic json) {
    takenAt = json['taken_at'];
    pk = json['pk'];
    id = json['id'];
    fbid = json['fbid'];
    deviceTimestamp = json['device_timestamp'];
    captionIsEdited = json['caption_is_edited'];
    strongId = json['strong_id__'];
    deletedReason = json['deleted_reason'];
    hasSharedToFb = json['has_shared_to_fb'];
    hasDelayedMetadata = json['has_delayed_metadata'];
    mezqlToken = json['mezql_token'];
    shareCountDisabled = json['share_count_disabled'];
    viewStateItemType = json['view_state_item_type'];
    loggingInfoToken = json['logging_info_token'];
    isVisualReplyCommenterNoticeEnabled = json['is_visual_reply_commenter_notice_enabled'];
    likeAndViewCountsDisabled = json['like_and_view_counts_disabled'];
    isPostLiveClipsMedia = json['is_post_live_clips_media'];
    if (json['clips_delivery_parameters'] != null) {
      clipsDeliveryParameters = [];
      json['clips_delivery_parameters'].forEach((v) {
        clipsDeliveryParameters?.add((v));
      });
    }
    commentThreadingEnabled = json['comment_threading_enabled'];
    isUnifiedVideo = json['is_unified_video'];
    commercialityStatus = json['commerciality_status'];
    clientCacheKey = json['client_cache_key'];
    integrityReviewDecision = json['integrity_review_decision'];
    shouldRequestAds = json['should_request_ads'];
    isReshareOfTextPostAppMediaInIg = json['is_reshare_of_text_post_app_media_in_ig'];
    hasPrivatelyLiked = json['has_privately_liked'];
    filterType = json['filter_type'];
    photoOfYou = json['photo_of_you'];
    canSeeInsightsAsBrand = json['can_see_insights_as_brand'];
    mediaType = json['media_type'];
    code = json['code'];
    caption = json['caption'] != null ? Caption.fromJson(json['caption']) : null;
    fundraiserTag = json['fundraiser_tag'] != null ? FundraiserTag.fromJson(json['fundraiser_tag']) : null;
    sharingFrictionInfo = json['sharing_friction_info'] != null ? SharingFrictionInfo.fromJson(json['sharing_friction_info']) : null;
    playCount = json['play_count'];
    fbPlayCount = json['fb_play_count'];
    originalMediaHasVisualReplyMedia = json['original_media_has_visual_reply_media'];
    if (json['creator_viewer_insights'] != null) {
      creatorViewerInsights = [];
      json['creator_viewer_insights'].forEach((v) {
        creatorViewerInsights?.add((v));
      });
    }
    if (json['coauthor_producers'] != null) {
      coauthorProducers = [];
      json['coauthor_producers'].forEach((v) {
        coauthorProducers?.add(CoauthorProducers.fromJson(v));
      });
    }
    if (json['invited_coauthor_producers'] != null) {
      invitedCoauthorProducers = [];
      json['invited_coauthor_producers'].forEach((v) {
        invitedCoauthorProducers?.add((v));
      });
    }
    isInProfileGrid = json['is_in_profile_grid'];
    profileGridControlEnabled = json['profile_grid_control_enabled'];
    mediaCroppingInfo = json['media_cropping_info'] != null ? MediaCroppingInfo.fromJson(json['media_cropping_info']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    imageVersions2 = json['image_versions2'] != null ? ImageVersions2.fromJson(json['image_versions2']) : null;
    originalWidth = json['original_width'];
    originalHeight = json['original_height'];
    isArtistPick = json['is_artist_pick'];
    enableMediaNotesProduction = json['enable_media_notes_production'];
    productType = json['product_type'];
    isPaidPartnership = json['is_paid_partnership'];
    musicMetadata = json['music_metadata'];
    if (json['social_context'] != null) {
      socialContext = [];
      json['social_context'].forEach((v) {
        socialContext?.add((v));
      });
    }
    organicTrackingToken = json['organic_tracking_token'];
    isThirdPartyDownloadsEligible = json['is_third_party_downloads_eligible'];
    igMediaSharingDisabled = json['ig_media_sharing_disabled'];
    areRemixesCrosspostable = json['are_remixes_crosspostable'];
    boostUnavailableIdentifier = json['boost_unavailable_identifier'];
    boostUnavailableReason = json['boost_unavailable_reason'];
    subscribeCtaVisible = json['subscribe_cta_visible'];
    isCutoutStickerAllowed = json['is_cutout_sticker_allowed'];
    isReuseAllowed = json['is_reuse_allowed'];
    genAiDetectionMethod = json['gen_ai_detection_method'] != null ? GenAiDetectionMethod.fromJson(json['gen_ai_detection_method']) : null;
    fbAggregatedLikeCount = json['fb_aggregated_like_count'];
    fbAggregatedCommentCount = json['fb_aggregated_comment_count'];
    hasHighRiskGenAiInformTreatment = json['has_high_risk_gen_ai_inform_treatment'];
    collabFollowButtonInfo = json['collab_follow_button_info'] != null ? CollabFollowButtonInfo.fromJson(json['collab_follow_button_info']) : null;
    openCarouselShowFollowButton = json['open_carousel_show_follow_button'];
    isTaggedMediaSharedToViewerProfileGrid = json['is_tagged_media_shared_to_viewer_profile_grid'];
    shouldShowAuthorPogForTaggedMediaSharedToProfileGrid = json['should_show_author_pog_for_tagged_media_shared_to_profile_grid'];
    isEligibleForMediaNoteRecsNux = json['is_eligible_for_media_note_recs_nux'];
    shouldOpenCollabBottomsheetOnFacepileTap = json['should_open_collab_bottomsheet_on_facepile_tap'];
    isSocialUfiDisabled = json['is_social_ufi_disabled'];
    isEligibleForMetaAiShare = json['is_eligible_for_meta_ai_share'];
    canViewMorePreviewComments = json['can_view_more_preview_comments'];
    commentCount = json['comment_count'];
    hideViewAllCommentEntrypoint = json['hide_view_all_comment_entrypoint'];
    isCommentsGifComposerEnabled = json['is_comments_gif_composer_enabled'];
    commentInformTreatment = json['comment_inform_treatment'] != null ? CommentInformTreatment.fromJson(json['comment_inform_treatment']) : null;
    fbLikeCount = json['fb_like_count'];
    hasLiked = json['has_liked'];
    likeCount = json['like_count'];
    if (json['facepile_top_likers'] != null) {
      facepileTopLikers = [];
      json['facepile_top_likers'].forEach((v) {
        facepileTopLikers?.add((v));
      });
    }
    if (json['top_likers'] != null) {
      topLikers = [];
      json['top_likers'].forEach((v) {
        topLikers?.add((v));
      });
    }
    videoSubtitlesLocale = json['video_subtitles_locale'];
    isDashEligible = json['is_dash_eligible'];
    videoDashManifest = json['video_dash_manifest'];
    numberOfQualities = json['number_of_qualities'];
    if (json['video_versions'] != null) {
      videoVersions = [];
      json['video_versions'].forEach((v) {
        videoVersions?.add(VideoVersions.fromJson(v));
      });
    }
    videoDuration = json['video_duration'];
    hasAudio = json['has_audio'];
    if (json['clips_tab_pinned_user_ids'] != null) {
      clipsTabPinnedUserIds = [];
      json['clips_tab_pinned_user_ids'].forEach((v) {
        clipsTabPinnedUserIds?.add((v));
      });
    }
    clipsMetadata = json['clips_metadata'] != null ? ClipsMetadata.fromJson(json['clips_metadata']) : null;
    canViewerSave = json['can_viewer_save'];
    canViewerReshare = json['can_viewer_reshare'];
    reshareCount = json['reshare_count'];
    shopRoutingUserId = json['shop_routing_user_id'];
    isOrganicProductTaggingEligible = json['is_organic_product_tagging_eligible'];
    igbioProduct = json['igbio_product'];
    if (json['product_suggestions'] != null) {
      productSuggestions = [];
      json['product_suggestions'].forEach((v) {
        productSuggestions?.add((v));
      });
    }
    hasMoreComments = json['has_more_comments'];
    maxNumVisiblePreviewComments = json['max_num_visible_preview_comments'];
    exploreHideComments = json['explore_hide_comments'];
    isOpenToPublicSubmission = json['is_open_to_public_submission'];
  }
  int? takenAt;
  int? pk;
  String? id;
  int? fbid;
  int? deviceTimestamp;
  bool? captionIsEdited;
  String? strongId;
  int? deletedReason;
  int? hasSharedToFb;
  bool? hasDelayedMetadata;
  String? mezqlToken;
  bool? shareCountDisabled;
  int? viewStateItemType;
  String? loggingInfoToken;
  bool? isVisualReplyCommenterNoticeEnabled;
  bool? likeAndViewCountsDisabled;
  bool? isPostLiveClipsMedia;
  List<dynamic>? clipsDeliveryParameters;
  bool? commentThreadingEnabled;
  bool? isUnifiedVideo;
  String? commercialityStatus;
  String? clientCacheKey;
  String? integrityReviewDecision;
  bool? shouldRequestAds;
  bool? isReshareOfTextPostAppMediaInIg;
  bool? hasPrivatelyLiked;
  int? filterType;
  bool? photoOfYou;
  bool? canSeeInsightsAsBrand;
  int? mediaType;
  String? code;
  Caption? caption;
  FundraiserTag? fundraiserTag;
  SharingFrictionInfo? sharingFrictionInfo;
  int? playCount;
  int? fbPlayCount;
  bool? originalMediaHasVisualReplyMedia;
  List<dynamic>? creatorViewerInsights;
  List<CoauthorProducers>? coauthorProducers;
  List<dynamic>? invitedCoauthorProducers;
  bool? isInProfileGrid;
  bool? profileGridControlEnabled;
  MediaCroppingInfo? mediaCroppingInfo;
  User? user;
  Owner? owner;
  ImageVersions2? imageVersions2;
  int? originalWidth;
  int? originalHeight;
  bool? isArtistPick;
  bool? enableMediaNotesProduction;
  String? productType;
  bool? isPaidPartnership;
  dynamic musicMetadata;
  List<dynamic>? socialContext;
  String? organicTrackingToken;
  bool? isThirdPartyDownloadsEligible;
  bool? igMediaSharingDisabled;
  bool? areRemixesCrosspostable;
  dynamic boostUnavailableIdentifier;
  dynamic boostUnavailableReason;
  bool? subscribeCtaVisible;
  bool? isCutoutStickerAllowed;
  bool? isReuseAllowed;
  GenAiDetectionMethod? genAiDetectionMethod;
  int? fbAggregatedLikeCount;
  int? fbAggregatedCommentCount;
  bool? hasHighRiskGenAiInformTreatment;
  CollabFollowButtonInfo? collabFollowButtonInfo;
  bool? openCarouselShowFollowButton;
  bool? isTaggedMediaSharedToViewerProfileGrid;
  bool? shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
  bool? isEligibleForMediaNoteRecsNux;
  bool? shouldOpenCollabBottomsheetOnFacepileTap;
  bool? isSocialUfiDisabled;
  bool? isEligibleForMetaAiShare;
  bool? canViewMorePreviewComments;
  int? commentCount;
  bool? hideViewAllCommentEntrypoint;
  bool? isCommentsGifComposerEnabled;
  CommentInformTreatment? commentInformTreatment;
  int? fbLikeCount;
  bool? hasLiked;
  int? likeCount;
  List<dynamic>? facepileTopLikers;
  List<dynamic>? topLikers;
  String? videoSubtitlesLocale;
  int? isDashEligible;
  String? videoDashManifest;
  int? numberOfQualities;
  List<VideoVersions>? videoVersions;
  double? videoDuration;
  bool? hasAudio;
  List<dynamic>? clipsTabPinnedUserIds;
  ClipsMetadata? clipsMetadata;
  bool? canViewerSave;
  bool? canViewerReshare;
  int? reshareCount;
  dynamic shopRoutingUserId;
  bool? isOrganicProductTaggingEligible;
  dynamic igbioProduct;
  List<dynamic>? productSuggestions;
  bool? hasMoreComments;
  int? maxNumVisiblePreviewComments;
  bool? exploreHideComments;
  bool? isOpenToPublicSubmission;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['taken_at'] = takenAt;
    map['pk'] = pk;
    map['id'] = id;
    map['fbid'] = fbid;
    map['device_timestamp'] = deviceTimestamp;
    map['caption_is_edited'] = captionIsEdited;
    map['strong_id__'] = strongId;
    map['deleted_reason'] = deletedReason;
    map['has_shared_to_fb'] = hasSharedToFb;
    map['has_delayed_metadata'] = hasDelayedMetadata;
    map['mezql_token'] = mezqlToken;
    map['share_count_disabled'] = shareCountDisabled;
    map['view_state_item_type'] = viewStateItemType;
    map['logging_info_token'] = loggingInfoToken;
    map['is_visual_reply_commenter_notice_enabled'] = isVisualReplyCommenterNoticeEnabled;
    map['like_and_view_counts_disabled'] = likeAndViewCountsDisabled;
    map['is_post_live_clips_media'] = isPostLiveClipsMedia;
    if (clipsDeliveryParameters != null) {
      map['clips_delivery_parameters'] = clipsDeliveryParameters?.map((v) => v.toJson()).toList();
    }
    map['comment_threading_enabled'] = commentThreadingEnabled;
    map['is_unified_video'] = isUnifiedVideo;
    map['commerciality_status'] = commercialityStatus;
    map['client_cache_key'] = clientCacheKey;
    map['integrity_review_decision'] = integrityReviewDecision;
    map['should_request_ads'] = shouldRequestAds;
    map['is_reshare_of_text_post_app_media_in_ig'] = isReshareOfTextPostAppMediaInIg;
    map['has_privately_liked'] = hasPrivatelyLiked;
    map['filter_type'] = filterType;

    map['photo_of_you'] = photoOfYou;
    map['can_see_insights_as_brand'] = canSeeInsightsAsBrand;
    map['media_type'] = mediaType;
    map['code'] = code;
    if (caption != null) {
      map['caption'] = caption?.toJson();
    }
    if (fundraiserTag != null) {
      map['fundraiser_tag'] = fundraiserTag?.toJson();
    }
    if (sharingFrictionInfo != null) {
      map['sharing_friction_info'] = sharingFrictionInfo?.toJson();
    }
    map['play_count'] = playCount;
    map['fb_play_count'] = fbPlayCount;
    map['original_media_has_visual_reply_media'] = originalMediaHasVisualReplyMedia;
    if (creatorViewerInsights != null) {
      map['creator_viewer_insights'] = creatorViewerInsights?.map((v) => v.toJson()).toList();
    }

    if (coauthorProducers != null) {
      map['coauthor_producers'] = coauthorProducers?.map((v) => v.toJson()).toList();
    }
    if (invitedCoauthorProducers != null) {
      map['invited_coauthor_producers'] = invitedCoauthorProducers?.map((v) => v.toJson()).toList();
    }
    map['is_in_profile_grid'] = isInProfileGrid;
    map['profile_grid_control_enabled'] = profileGridControlEnabled;
    if (mediaCroppingInfo != null) {
      map['media_cropping_info'] = mediaCroppingInfo?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    if (imageVersions2 != null) {
      map['image_versions2'] = imageVersions2?.toJson();
    }
    map['original_width'] = originalWidth;
    map['original_height'] = originalHeight;
    map['is_artist_pick'] = isArtistPick;
    map['enable_media_notes_production'] = enableMediaNotesProduction;
    map['product_type'] = productType;
    map['is_paid_partnership'] = isPaidPartnership;
    map['music_metadata'] = musicMetadata;
    if (socialContext != null) {
      map['social_context'] = socialContext?.map((v) => v.toJson()).toList();
    }
    map['organic_tracking_token'] = organicTrackingToken;
    map['is_third_party_downloads_eligible'] = isThirdPartyDownloadsEligible;
    map['ig_media_sharing_disabled'] = igMediaSharingDisabled;
    map['are_remixes_crosspostable'] = areRemixesCrosspostable;
    map['boost_unavailable_identifier'] = boostUnavailableIdentifier;
    map['boost_unavailable_reason'] = boostUnavailableReason;
    map['subscribe_cta_visible'] = subscribeCtaVisible;
    map['is_cutout_sticker_allowed'] = isCutoutStickerAllowed;
    map['is_reuse_allowed'] = isReuseAllowed;
    if (genAiDetectionMethod != null) {
      map['gen_ai_detection_method'] = genAiDetectionMethod?.toJson();
    }
    map['fb_aggregated_like_count'] = fbAggregatedLikeCount;
    map['fb_aggregated_comment_count'] = fbAggregatedCommentCount;
    map['has_high_risk_gen_ai_inform_treatment'] = hasHighRiskGenAiInformTreatment;
    if (collabFollowButtonInfo != null) {
      map['collab_follow_button_info'] = collabFollowButtonInfo?.toJson();
    }
    map['open_carousel_show_follow_button'] = openCarouselShowFollowButton;
    map['is_tagged_media_shared_to_viewer_profile_grid'] = isTaggedMediaSharedToViewerProfileGrid;
    map['should_show_author_pog_for_tagged_media_shared_to_profile_grid'] = shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
    map['is_eligible_for_media_note_recs_nux'] = isEligibleForMediaNoteRecsNux;
    map['should_open_collab_bottomsheet_on_facepile_tap'] = shouldOpenCollabBottomsheetOnFacepileTap;
    map['is_social_ufi_disabled'] = isSocialUfiDisabled;
    map['is_eligible_for_meta_ai_share'] = isEligibleForMetaAiShare;
    map['can_view_more_preview_comments'] = canViewMorePreviewComments;
    map['comment_count'] = commentCount;
    map['hide_view_all_comment_entrypoint'] = hideViewAllCommentEntrypoint;
    map['is_comments_gif_composer_enabled'] = isCommentsGifComposerEnabled;
    if (commentInformTreatment != null) {
      map['comment_inform_treatment'] = commentInformTreatment?.toJson();
    }
    map['fb_like_count'] = fbLikeCount;
    map['has_liked'] = hasLiked;
    map['like_count'] = likeCount;
    if (facepileTopLikers != null) {
      map['facepile_top_likers'] = facepileTopLikers?.map((v) => v.toJson()).toList();
    }
    if (topLikers != null) {
      map['top_likers'] = topLikers?.map((v) => v.toJson()).toList();
    }
    map['video_subtitles_locale'] = videoSubtitlesLocale;
    map['is_dash_eligible'] = isDashEligible;
    map['video_dash_manifest'] = videoDashManifest;
    map['number_of_qualities'] = numberOfQualities;
    if (videoVersions != null) {
      map['video_versions'] = videoVersions?.map((v) => v.toJson()).toList();
    }
    map['video_duration'] = videoDuration;
    map['has_audio'] = hasAudio;
    if (clipsTabPinnedUserIds != null) {
      map['clips_tab_pinned_user_ids'] = clipsTabPinnedUserIds?.map((v) => v.toJson()).toList();
    }
    if (clipsMetadata != null) {
      map['clips_metadata'] = clipsMetadata?.toJson();
    }
    map['can_viewer_save'] = canViewerSave;
    map['can_viewer_reshare'] = canViewerReshare;
    map['reshare_count'] = reshareCount;
    map['shop_routing_user_id'] = shopRoutingUserId;
    map['is_organic_product_tagging_eligible'] = isOrganicProductTaggingEligible;
    map['igbio_product'] = igbioProduct;
    if (productSuggestions != null) {
      map['product_suggestions'] = productSuggestions?.map((v) => v.toJson()).toList();
    }
    map['has_more_comments'] = hasMoreComments;
    map['max_num_visible_preview_comments'] = maxNumVisiblePreviewComments;
    map['explore_hide_comments'] = exploreHideComments;
    map['is_open_to_public_submission'] = isOpenToPublicSubmission;
    return map;
  }

}

class ClipsMetadata {
  ClipsMetadata({
      this.breakingContentInfo, 
      this.breakingCreatorInfo, 
      this.clipsCreationEntryPoint, 
      this.featuredLabel, 
      this.isPublicChatWelcomeVideo, 
      this.isSharedToFb, 
      this.professionalClipsUpsellType, 
      this.reelsOnTheRiseInfo, 
      this.showTips, 
      this.achievementsInfo, 
      this.additionalAudioInfo, 
      this.assetRecommendationInfo, 
      this.audioRankingInfo, 
      this.audioType, 
      this.brandedContentTagInfo, 
      this.challengeInfo, 
      this.contentAppreciationInfo, 
      this.contextualHighlightInfo, 
      this.cutoutStickerInfo, 
      this.disableUseInClipsClientCache, 
      this.externalMediaInfo, 
      this.isFanClubPromoVideo, 
      this.mashupInfo, 
      this.merchandisingPillInfo, 
      this.musicCanonicalId, 
      this.musicInfo, 
      this.nuxInfo, 
      this.originalSoundInfo, 
      this.originalityInfo, 
      this.reusableTextAttributeString, 
      this.reusableTextInfo, 
      this.shoppingInfo, 
      this.showAchievements, 
      this.templateInfo, 
      this.viewerInteractionSettings,});

  ClipsMetadata.fromJson(dynamic json) {
    breakingContentInfo = json['breaking_content_info'];
    breakingCreatorInfo = json['breaking_creator_info'];
    clipsCreationEntryPoint = json['clips_creation_entry_point'];
    featuredLabel = json['featured_label'];
    isPublicChatWelcomeVideo = json['is_public_chat_welcome_video'];
    isSharedToFb = json['is_shared_to_fb'];
    professionalClipsUpsellType = json['professional_clips_upsell_type'];
    reelsOnTheRiseInfo = json['reels_on_the_rise_info'];
    showTips = json['show_tips'];
    achievementsInfo = json['achievements_info'] != null ? AchievementsInfo.fromJson(json['achievements_info']) : null;
    additionalAudioInfo = json['additional_audio_info'] != null ? AdditionalAudioInfo.fromJson(json['additional_audio_info']) : null;
    assetRecommendationInfo = json['asset_recommendation_info'];
    audioRankingInfo = json['audio_ranking_info'] != null ? AudioRankingInfo.fromJson(json['audio_ranking_info']) : null;
    audioType = json['audio_type'];
    brandedContentTagInfo = json['branded_content_tag_info'] != null ? BrandedContentTagInfo.fromJson(json['branded_content_tag_info']) : null;
    challengeInfo = json['challenge_info'];
    contentAppreciationInfo = json['content_appreciation_info'] != null ? ContentAppreciationInfo.fromJson(json['content_appreciation_info']) : null;
    contextualHighlightInfo = json['contextual_highlight_info'];
    if (json['cutout_sticker_info'] != null) {
      cutoutStickerInfo = [];
      json['cutout_sticker_info'].forEach((v) {
        cutoutStickerInfo?.add((v));
      });
    }
    disableUseInClipsClientCache = json['disable_use_in_clips_client_cache'];
    externalMediaInfo = json['external_media_info'];
    isFanClubPromoVideo = json['is_fan_club_promo_video'];
    mashupInfo = json['mashup_info'] != null ? MashupInfo.fromJson(json['mashup_info']) : null;
    merchandisingPillInfo = json['merchandising_pill_info'];
    musicCanonicalId = json['music_canonical_id'];
    musicInfo = json['music_info'];
    nuxInfo = json['nux_info'];
    originalSoundInfo = json['original_sound_info'] != null ? OriginalSoundInfo.fromJson(json['original_sound_info']) : null;
    originalityInfo = json['originality_info'];
    reusableTextAttributeString = json['reusable_text_attribute_string'];
    reusableTextInfo = json['reusable_text_info'];
    shoppingInfo = json['shopping_info'];
    showAchievements = json['show_achievements'];
    templateInfo = json['template_info'];
    viewerInteractionSettings = json['viewer_interaction_settings'];
  }
  dynamic breakingContentInfo;
  dynamic breakingCreatorInfo;
  String? clipsCreationEntryPoint;
  dynamic featuredLabel;
  bool? isPublicChatWelcomeVideo;
  bool? isSharedToFb;
  int? professionalClipsUpsellType;
  dynamic reelsOnTheRiseInfo;
  dynamic showTips;
  AchievementsInfo? achievementsInfo;
  AdditionalAudioInfo? additionalAudioInfo;
  dynamic assetRecommendationInfo;
  AudioRankingInfo? audioRankingInfo;
  String? audioType;
  BrandedContentTagInfo? brandedContentTagInfo;
  dynamic challengeInfo;
  ContentAppreciationInfo? contentAppreciationInfo;
  dynamic contextualHighlightInfo;
  List<dynamic>? cutoutStickerInfo;
  bool? disableUseInClipsClientCache;
  dynamic externalMediaInfo;
  bool? isFanClubPromoVideo;
  MashupInfo? mashupInfo;
  dynamic merchandisingPillInfo;
  int? musicCanonicalId;
  dynamic musicInfo;
  dynamic nuxInfo;
  OriginalSoundInfo? originalSoundInfo;
  dynamic originalityInfo;
  dynamic reusableTextAttributeString;
  dynamic reusableTextInfo;
  dynamic shoppingInfo;
  bool? showAchievements;
  dynamic templateInfo;
  dynamic viewerInteractionSettings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['breaking_content_info'] = breakingContentInfo;
    map['breaking_creator_info'] = breakingCreatorInfo;
    map['clips_creation_entry_point'] = clipsCreationEntryPoint;
    map['featured_label'] = featuredLabel;
    map['is_public_chat_welcome_video'] = isPublicChatWelcomeVideo;
    map['is_shared_to_fb'] = isSharedToFb;
    map['professional_clips_upsell_type'] = professionalClipsUpsellType;
    map['reels_on_the_rise_info'] = reelsOnTheRiseInfo;
    map['show_tips'] = showTips;
    if (achievementsInfo != null) {
      map['achievements_info'] = achievementsInfo?.toJson();
    }
    if (additionalAudioInfo != null) {
      map['additional_audio_info'] = additionalAudioInfo?.toJson();
    }
    map['asset_recommendation_info'] = assetRecommendationInfo;
    if (audioRankingInfo != null) {
      map['audio_ranking_info'] = audioRankingInfo?.toJson();
    }
    map['audio_type'] = audioType;
    if (brandedContentTagInfo != null) {
      map['branded_content_tag_info'] = brandedContentTagInfo?.toJson();
    }
    map['challenge_info'] = challengeInfo;
    if (contentAppreciationInfo != null) {
      map['content_appreciation_info'] = contentAppreciationInfo?.toJson();
    }
    map['contextual_highlight_info'] = contextualHighlightInfo;
    if (cutoutStickerInfo != null) {
      map['cutout_sticker_info'] = cutoutStickerInfo?.map((v) => v.toJson()).toList();
    }
    map['disable_use_in_clips_client_cache'] = disableUseInClipsClientCache;
    map['external_media_info'] = externalMediaInfo;
    map['is_fan_club_promo_video'] = isFanClubPromoVideo;
    if (mashupInfo != null) {
      map['mashup_info'] = mashupInfo?.toJson();
    }
    map['merchandising_pill_info'] = merchandisingPillInfo;
    map['music_canonical_id'] = musicCanonicalId;
    map['music_info'] = musicInfo;
    map['nux_info'] = nuxInfo;
    if (originalSoundInfo != null) {
      map['original_sound_info'] = originalSoundInfo?.toJson();
    }
    map['originality_info'] = originalityInfo;
    map['reusable_text_attribute_string'] = reusableTextAttributeString;
    map['reusable_text_info'] = reusableTextInfo;
    map['shopping_info'] = shoppingInfo;
    map['show_achievements'] = showAchievements;
    map['template_info'] = templateInfo;
    map['viewer_interaction_settings'] = viewerInteractionSettings;
    return map;
  }

}

class OriginalSoundInfo {
  OriginalSoundInfo({
      this.allowCreatorToRename, 
      this.audioAssetId, 
      this.canRemixBeSharedToFb, 
      this.canRemixBeSharedToFbExpansion, 
      this.dashManifest, 
      this.durationInMs, 
      this.formattedClipsMediaCount, 
      this.hideRemixing, 
      this.igArtist, 
      this.isAudioAutomaticallyAttributed, 
      this.isEligibleForAudioEffects, 
      this.isExplicit, 
      this.isOriginalAudioDownloadEligible, 
      this.isReuseDisabled, 
      this.isXpostFromFb, 
      this.musicCanonicalId, 
      this.oaOwnerIsMusicArtist, 
      this.originalAudioSubtype, 
      this.originalAudioTitle, 
      this.originalMediaId, 
      this.progressiveDownloadUrl, 
      this.shouldMuteAudio, 
      this.timeCreated, 
      this.trendRank, 
      this.previousTrendRank, 
      this.audioFilterInfos, 
      this.audioParts, 
      this.audioPartsByFilter, 
      this.consumptionInfo, 
      this.xpostFbCreatorInfo,});

  OriginalSoundInfo.fromJson(dynamic json) {
    allowCreatorToRename = json['allow_creator_to_rename'];
    audioAssetId = json['audio_asset_id'];
    canRemixBeSharedToFb = json['can_remix_be_shared_to_fb'];
    canRemixBeSharedToFbExpansion = json['can_remix_be_shared_to_fb_expansion'];
    dashManifest = json['dash_manifest'];
    durationInMs = json['duration_in_ms'];
    formattedClipsMediaCount = json['formatted_clips_media_count'];
    hideRemixing = json['hide_remixing'];
    igArtist = json['ig_artist'] != null ? IgArtist.fromJson(json['ig_artist']) : null;
    isAudioAutomaticallyAttributed = json['is_audio_automatically_attributed'];
    isEligibleForAudioEffects = json['is_eligible_for_audio_effects'];
    isExplicit = json['is_explicit'];
    isOriginalAudioDownloadEligible = json['is_original_audio_download_eligible'];
    isReuseDisabled = json['is_reuse_disabled'];
    isXpostFromFb = json['is_xpost_from_fb'];
    musicCanonicalId = json['music_canonical_id'];
    oaOwnerIsMusicArtist = json['oa_owner_is_music_artist'];
    originalAudioSubtype = json['original_audio_subtype'];
    originalAudioTitle = json['original_audio_title'];
    originalMediaId = json['original_media_id'];
    progressiveDownloadUrl = json['progressive_download_url'];
    shouldMuteAudio = json['should_mute_audio'];
    timeCreated = json['time_created'];
    trendRank = json['trend_rank'];
    previousTrendRank = json['previous_trend_rank'];
    if (json['audio_filter_infos'] != null) {
      audioFilterInfos = [];
      json['audio_filter_infos'].forEach((v) {
        audioFilterInfos?.add(v);
      });
    }
    if (json['audio_parts'] != null) {
      audioParts = [];
      json['audio_parts'].forEach((v) {
        audioParts?.add(v);
      });
    }
    if (json['audio_parts_by_filter'] != null) {
      audioPartsByFilter = [];
      json['audio_parts_by_filter'].forEach((v) {
        audioPartsByFilter?.add(v);
      });
    }
    consumptionInfo = json['consumption_info'] != null ? ConsumptionInfo.fromJson(json['consumption_info']) : null;
    xpostFbCreatorInfo = json['xpost_fb_creator_info'];
  }
  bool? allowCreatorToRename;
  int? audioAssetId;
  bool? canRemixBeSharedToFb;
  bool? canRemixBeSharedToFbExpansion;
  String? dashManifest;
  int? durationInMs;
  dynamic formattedClipsMediaCount;
  bool? hideRemixing;
  IgArtist? igArtist;
  bool? isAudioAutomaticallyAttributed;
  bool? isEligibleForAudioEffects;
  bool? isExplicit;
  bool? isOriginalAudioDownloadEligible;
  bool? isReuseDisabled;
  bool? isXpostFromFb;
  dynamic musicCanonicalId;
  bool? oaOwnerIsMusicArtist;
  String? originalAudioSubtype;
  String? originalAudioTitle;
  int? originalMediaId;
  String? progressiveDownloadUrl;
  bool? shouldMuteAudio;
  int? timeCreated;
  dynamic trendRank;
  dynamic previousTrendRank;
  List<dynamic>? audioFilterInfos;
  List<dynamic>? audioParts;
  List<dynamic>? audioPartsByFilter;
  ConsumptionInfo? consumptionInfo;
  dynamic xpostFbCreatorInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['allow_creator_to_rename'] = allowCreatorToRename;
    map['audio_asset_id'] = audioAssetId;
    map['can_remix_be_shared_to_fb'] = canRemixBeSharedToFb;
    map['can_remix_be_shared_to_fb_expansion'] = canRemixBeSharedToFbExpansion;
    map['dash_manifest'] = dashManifest;
    map['duration_in_ms'] = durationInMs;
    map['formatted_clips_media_count'] = formattedClipsMediaCount;
    map['hide_remixing'] = hideRemixing;
    if (igArtist != null) {
      map['ig_artist'] = igArtist?.toJson();
    }
    map['is_audio_automatically_attributed'] = isAudioAutomaticallyAttributed;
    map['is_eligible_for_audio_effects'] = isEligibleForAudioEffects;
    map['is_explicit'] = isExplicit;
    map['is_original_audio_download_eligible'] = isOriginalAudioDownloadEligible;
    map['is_reuse_disabled'] = isReuseDisabled;
    map['is_xpost_from_fb'] = isXpostFromFb;
    map['music_canonical_id'] = musicCanonicalId;
    map['oa_owner_is_music_artist'] = oaOwnerIsMusicArtist;
    map['original_audio_subtype'] = originalAudioSubtype;
    map['original_audio_title'] = originalAudioTitle;
    map['original_media_id'] = originalMediaId;
    map['progressive_download_url'] = progressiveDownloadUrl;
    map['should_mute_audio'] = shouldMuteAudio;
    map['time_created'] = timeCreated;
    map['trend_rank'] = trendRank;
    map['previous_trend_rank'] = previousTrendRank;
    if (audioFilterInfos != null) {
      map['audio_filter_infos'] = audioFilterInfos?.map((v) => v.toJson()).toList();
    }
    if (audioParts != null) {
      map['audio_parts'] = audioParts?.map((v) => v.toJson()).toList();
    }
    if (audioPartsByFilter != null) {
      map['audio_parts_by_filter'] = audioPartsByFilter?.map((v) => v.toJson()).toList();
    }
    if (consumptionInfo != null) {
      map['consumption_info'] = consumptionInfo?.toJson();
    }
    map['xpost_fb_creator_info'] = xpostFbCreatorInfo;
    return map;
  }

}

class ConsumptionInfo {
  ConsumptionInfo({
      this.displayMediaId, 
      this.isBookmarked, 
      this.isTrendingInClips, 
      this.shouldMuteAudioReason, 
      this.shouldMuteAudioReasonType,});

  ConsumptionInfo.fromJson(dynamic json) {
    displayMediaId = json['display_media_id'];
    isBookmarked = json['is_bookmarked'];
    isTrendingInClips = json['is_trending_in_clips'];
    shouldMuteAudioReason = json['should_mute_audio_reason'];
    shouldMuteAudioReasonType = json['should_mute_audio_reason_type'];
  }
  dynamic displayMediaId;
  bool? isBookmarked;
  bool? isTrendingInClips;
  String? shouldMuteAudioReason;
  dynamic shouldMuteAudioReasonType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['display_media_id'] = displayMediaId;
    map['is_bookmarked'] = isBookmarked;
    map['is_trending_in_clips'] = isTrendingInClips;
    map['should_mute_audio_reason'] = shouldMuteAudioReason;
    map['should_mute_audio_reason_type'] = shouldMuteAudioReasonType;
    return map;
  }

}

class IgArtist {
  IgArtist({
      this.pk, 
      this.pkId, 
      this.id, 
      this.fullName, 
      this.isPrivate, 
      this.strongId, 
      this.username, 
      this.isVerified, 
      this.profilePicId, 
      this.profilePicUrl,});

  IgArtist.fromJson(dynamic json) {
    pk = json['pk'];
    pkId = json['pk_id'];
    id = json['id'];
    fullName = json['full_name'];
    isPrivate = json['is_private'];
    strongId = json['strong_id__'];
    username = json['username'];
    isVerified = json['is_verified'];
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
  }
  int? pk;
  int? pkId;
  int? id;
  String? fullName;
  bool? isPrivate;
  int? strongId;
  String? username;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pk'] = pk;
    map['pk_id'] = pkId;
    map['id'] = id;
    map['full_name'] = fullName;
    map['is_private'] = isPrivate;
    map['strong_id__'] = strongId;
    map['username'] = username;
    map['is_verified'] = isVerified;
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    return map;
  }

}

class MashupInfo {
  MashupInfo({
      this.mashupsAllowed, 
      this.isReuseAllowed, 
      this.canToggleMashupsAllowed, 
      this.hasBeenMashedUp, 
      this.isLightWeightCheck, 
      this.isLightWeightReuseAllowedCheck, 
      this.formattedMashupsCount, 
      this.originalMedia, 
      this.privacyFilteredMashupsMediaCount, 
      this.nonPrivacyFilteredMashupsMediaCount, 
      this.mashupType, 
      this.isCreatorRequestingMashup, 
      this.hasNonmimicableAdditionalAudio, 
      this.isPivotPageAvailable,});

  MashupInfo.fromJson(dynamic json) {
    mashupsAllowed = json['mashups_allowed'];
    isReuseAllowed = json['is_reuse_allowed'];
    canToggleMashupsAllowed = json['can_toggle_mashups_allowed'];
    hasBeenMashedUp = json['has_been_mashed_up'];
    isLightWeightCheck = json['is_light_weight_check'];
    isLightWeightReuseAllowedCheck = json['is_light_weight_reuse_allowed_check'];
    formattedMashupsCount = json['formatted_mashups_count'];
    originalMedia = json['original_media'];
    privacyFilteredMashupsMediaCount = json['privacy_filtered_mashups_media_count'];
    nonPrivacyFilteredMashupsMediaCount = json['non_privacy_filtered_mashups_media_count'];
    mashupType = json['mashup_type'];
    isCreatorRequestingMashup = json['is_creator_requesting_mashup'];
    hasNonmimicableAdditionalAudio = json['has_nonmimicable_additional_audio'];
    isPivotPageAvailable = json['is_pivot_page_available'];
  }
  bool? mashupsAllowed;
  bool? isReuseAllowed;
  bool? canToggleMashupsAllowed;
  bool? hasBeenMashedUp;
  bool? isLightWeightCheck;
  bool? isLightWeightReuseAllowedCheck;
  dynamic formattedMashupsCount;
  dynamic originalMedia;
  dynamic privacyFilteredMashupsMediaCount;
  int? nonPrivacyFilteredMashupsMediaCount;
  dynamic mashupType;
  bool? isCreatorRequestingMashup;
  bool? hasNonmimicableAdditionalAudio;
  bool? isPivotPageAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mashups_allowed'] = mashupsAllowed;
    map['is_reuse_allowed'] = isReuseAllowed;
    map['can_toggle_mashups_allowed'] = canToggleMashupsAllowed;
    map['has_been_mashed_up'] = hasBeenMashedUp;
    map['is_light_weight_check'] = isLightWeightCheck;
    map['is_light_weight_reuse_allowed_check'] = isLightWeightReuseAllowedCheck;
    map['formatted_mashups_count'] = formattedMashupsCount;
    map['original_media'] = originalMedia;
    map['privacy_filtered_mashups_media_count'] = privacyFilteredMashupsMediaCount;
    map['non_privacy_filtered_mashups_media_count'] = nonPrivacyFilteredMashupsMediaCount;
    map['mashup_type'] = mashupType;
    map['is_creator_requesting_mashup'] = isCreatorRequestingMashup;
    map['has_nonmimicable_additional_audio'] = hasNonmimicableAdditionalAudio;
    map['is_pivot_page_available'] = isPivotPageAvailable;
    return map;
  }

}

class ContentAppreciationInfo {
  ContentAppreciationInfo({
      this.enabled, 
      this.entryPointContainer,});

  ContentAppreciationInfo.fromJson(dynamic json) {
    enabled = json['enabled'];
    entryPointContainer = json['entry_point_container'];
  }
  bool? enabled;
  dynamic entryPointContainer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['entry_point_container'] = entryPointContainer;
    return map;
  }

}

class BrandedContentTagInfo {
  BrandedContentTagInfo({
      this.canAddTag,});

  BrandedContentTagInfo.fromJson(dynamic json) {
    canAddTag = json['can_add_tag'];
  }
  bool? canAddTag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['can_add_tag'] = canAddTag;
    return map;
  }

}

class AudioRankingInfo {
  AudioRankingInfo({
      this.bestAudioClusterId,});

  AudioRankingInfo.fromJson(dynamic json) {
    bestAudioClusterId = json['best_audio_cluster_id'];
  }
  int? bestAudioClusterId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['best_audio_cluster_id'] = bestAudioClusterId;
    return map;
  }

}

class AdditionalAudioInfo {
  AdditionalAudioInfo({
      this.additionalAudioUsername, 
      this.audioReattributionInfo,});

  AdditionalAudioInfo.fromJson(dynamic json) {
    additionalAudioUsername = json['additional_audio_username'];
    audioReattributionInfo = json['audio_reattribution_info'] != null ? AudioReattributionInfo.fromJson(json['audio_reattribution_info']) : null;
  }
  dynamic additionalAudioUsername;
  AudioReattributionInfo? audioReattributionInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['additional_audio_username'] = additionalAudioUsername;
    if (audioReattributionInfo != null) {
      map['audio_reattribution_info'] = audioReattributionInfo?.toJson();
    }
    return map;
  }

}

class AudioReattributionInfo {
  AudioReattributionInfo({
      this.shouldAllowRestore,});

  AudioReattributionInfo.fromJson(dynamic json) {
    shouldAllowRestore = json['should_allow_restore'];
  }
  bool? shouldAllowRestore;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['should_allow_restore'] = shouldAllowRestore;
    return map;
  }

}

class AchievementsInfo {
  AchievementsInfo({
      this.numEarnedAchievements, 
      this.showAchievements,});

  AchievementsInfo.fromJson(dynamic json) {
    numEarnedAchievements = json['num_earned_achievements'];
    showAchievements = json['show_achievements'];
  }
  dynamic numEarnedAchievements;
  bool? showAchievements;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['num_earned_achievements'] = numEarnedAchievements;
    map['show_achievements'] = showAchievements;
    return map;
  }

}

class VideoVersions {
  VideoVersions({
      this.height, 
      this.id, 
      this.type, 
      this.url, 
      this.width,});

  VideoVersions.fromJson(dynamic json) {
    height = json['height'];
    id = json['id'];
    type = json['type'];
    url = json['url'];
    width = json['width'];
  }
  int? height;
  String? id;
  int? type;
  String? url;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['id'] = id;
    map['type'] = type;
    map['url'] = url;
    map['width'] = width;
    return map;
  }

}

class CommentInformTreatment {
  CommentInformTreatment({
      this.actionType, 
      this.shouldHaveInformTreatment, 
      this.text, 
      this.url,});

  CommentInformTreatment.fromJson(dynamic json) {
    actionType = json['action_type'];
    shouldHaveInformTreatment = json['should_have_inform_treatment'];
    text = json['text'];
    url = json['url'];
  }
  dynamic actionType;
  bool? shouldHaveInformTreatment;
  String? text;
  dynamic url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['action_type'] = actionType;
    map['should_have_inform_treatment'] = shouldHaveInformTreatment;
    map['text'] = text;
    map['url'] = url;
    return map;
  }

}

class CollabFollowButtonInfo {
  CollabFollowButtonInfo({
      this.showFollowButton, 
      this.isOwnerInAuthorExp,});

  CollabFollowButtonInfo.fromJson(dynamic json) {
    showFollowButton = json['show_follow_button'];
    isOwnerInAuthorExp = json['is_owner_in_author_exp'];
  }
  bool? showFollowButton;
  bool? isOwnerInAuthorExp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['show_follow_button'] = showFollowButton;
    map['is_owner_in_author_exp'] = isOwnerInAuthorExp;
    return map;
  }

}

class GenAiDetectionMethod {
  GenAiDetectionMethod({
      this.detectionMethod,});

  GenAiDetectionMethod.fromJson(dynamic json) {
    detectionMethod = json['detection_method'];
  }
  String? detectionMethod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['detection_method'] = detectionMethod;
    return map;
  }

}

class ImageVersions2 {
  ImageVersions2({
    this.candidates,
    this.additionalCandidates,
  });

  ImageVersions2.fromJson(dynamic json) {
    if (json['candidates'] != null) {
      candidates = [];
      json['candidates'].forEach((v) {
        candidates?.add(Candidates.fromJson(v));
      });
    }
    additionalCandidates = json['additional_candidates'] != null ? AdditionalCandidates.fromJson(json['additional_candidates']) : null;
    //scrubberSpritesheetInfoCandidates = json['scrubber_spritesheet_info_candidates'] != null ? ScrubberSpritesheetInfoCandidates.fromJson(json['scrubber_spritesheet_info_candidates']) : null;
  }
  List<Candidates>? candidates;
  AdditionalCandidates? additionalCandidates;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (candidates != null) {
      map['candidates'] = candidates?.map((v) => v.toJson()).toList();
    }
    if (additionalCandidates != null) {
      map['additional_candidates'] = additionalCandidates?.toJson();
    }

    return map;
  }

}


class Default {
  Default({
      this.videoLength, 
      this.thumbnailWidth, 
      this.thumbnailHeight, 
      this.thumbnailDuration, 
      this.spriteUrls, 
      this.thumbnailsPerRow, 
      this.totalThumbnailNumPerSprite, 
      this.maxThumbnailsPerSprite, 
      this.spriteWidth, 
      this.spriteHeight, 
      this.renderedWidth, 
      this.fileSizeKb,});

  Default.fromJson(dynamic json) {
    videoLength = json['video_length'];
    thumbnailWidth = json['thumbnail_width'];
    thumbnailHeight = json['thumbnail_height'];
    thumbnailDuration = json['thumbnail_duration'];
    spriteUrls = json['sprite_urls'] != null ? json['sprite_urls'].cast<String>() : [];
    thumbnailsPerRow = json['thumbnails_per_row'];
    totalThumbnailNumPerSprite = json['total_thumbnail_num_per_sprite'];
    maxThumbnailsPerSprite = json['max_thumbnails_per_sprite'];
    spriteWidth = json['sprite_width'];
    spriteHeight = json['sprite_height'];
    renderedWidth = json['rendered_width'];
    fileSizeKb = json['file_size_kb'];
  }
  double? videoLength;
  int? thumbnailWidth;
  int? thumbnailHeight;
  double? thumbnailDuration;
  List<String>? spriteUrls;
  int? thumbnailsPerRow;
  int? totalThumbnailNumPerSprite;
  int? maxThumbnailsPerSprite;
  int? spriteWidth;
  int? spriteHeight;
  int? renderedWidth;
  int? fileSizeKb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['video_length'] = videoLength;
    map['thumbnail_width'] = thumbnailWidth;
    map['thumbnail_height'] = thumbnailHeight;
    map['thumbnail_duration'] = thumbnailDuration;
    map['sprite_urls'] = spriteUrls;
    map['thumbnails_per_row'] = thumbnailsPerRow;
    map['total_thumbnail_num_per_sprite'] = totalThumbnailNumPerSprite;
    map['max_thumbnails_per_sprite'] = maxThumbnailsPerSprite;
    map['sprite_width'] = spriteWidth;
    map['sprite_height'] = spriteHeight;
    map['rendered_width'] = renderedWidth;
    map['file_size_kb'] = fileSizeKb;
    return map;
  }

}

class AdditionalCandidates {
  AdditionalCandidates({
      this.igtvFirstFrame, 
      this.firstFrame, 
      this.smartFrame,});

  AdditionalCandidates.fromJson(dynamic json) {
    igtvFirstFrame = json['igtv_first_frame'] != null ? IgtvFirstFrame.fromJson(json['igtv_first_frame']) : null;
    firstFrame = json['first_frame'] != null ? FirstFrame.fromJson(json['first_frame']) : null;
    smartFrame = json['smart_frame'] != null ? SmartFrame.fromJson(json['smart_frame']) : null;
  }
  IgtvFirstFrame? igtvFirstFrame;
  FirstFrame? firstFrame;
  SmartFrame? smartFrame;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (igtvFirstFrame != null) {
      map['igtv_first_frame'] = igtvFirstFrame?.toJson();
    }
    if (firstFrame != null) {
      map['first_frame'] = firstFrame?.toJson();
    }
    if (smartFrame != null) {
      map['smart_frame'] = smartFrame?.toJson();
    }
    return map;
  }

}

class SmartFrame {
  SmartFrame({
      this.width, 
      this.height, 
      this.url, 
      this.scansProfile,});

  SmartFrame.fromJson(dynamic json) {
    width = json['width'];
    height = json['height'];
    url = json['url'];
    scansProfile = json['scans_profile'];
  }
  int? width;
  int? height;
  String? url;
  String? scansProfile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = width;
    map['height'] = height;
    map['url'] = url;
    map['scans_profile'] = scansProfile;
    return map;
  }

}

class FirstFrame {
  FirstFrame({
      this.width, 
      this.height, 
      this.url, 
      this.scansProfile,});

  FirstFrame.fromJson(dynamic json) {
    width = json['width'];
    height = json['height'];
    url = json['url'];
    scansProfile = json['scans_profile'];
  }
  int? width;
  int? height;
  String? url;
  String? scansProfile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = width;
    map['height'] = height;
    map['url'] = url;
    map['scans_profile'] = scansProfile;
    return map;
  }

}

class IgtvFirstFrame {
  IgtvFirstFrame({
      this.width, 
      this.height, 
      this.url, 
      this.scansProfile,});

  IgtvFirstFrame.fromJson(dynamic json) {
    width = json['width'];
    height = json['height'];
    url = json['url'];
    scansProfile = json['scans_profile'];
  }
  int? width;
  int? height;
  String? url;
  String? scansProfile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = width;
    map['height'] = height;
    map['url'] = url;
    map['scans_profile'] = scansProfile;
    return map;
  }

}

class Candidates {
  Candidates({
      this.width, 
      this.height, 
      this.url, 
      this.scansProfile,});

  Candidates.fromJson(dynamic json) {
    width = json['width'];
    height = json['height'];
    url = json['url'];
    scansProfile = json['scans_profile'];
  }
  int? width;
  int? height;
  String? url;
  String? scansProfile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['width'] = width;
    map['height'] = height;
    map['url'] = url;
    map['scans_profile'] = scansProfile;
    return map;
  }

}

class Owner {
  Owner({
      this.fbidV2, 
      this.feedPostReshareDisabled, 
      this.fullName, 
      this.id, 
      this.isPrivate, 
      this.isUnpublished, 
      this.pk, 
      this.pkId, 
      this.showAccountTransparencyDetails, 
      this.strongId, 
      this.thirdPartyDownloadsEnabled, 
      this.accountBadges, 
      this.fanClubInfo, 
      this.friendshipStatus, 
      this.hasAnonymousProfilePicture, 
      this.isFavorite, 
      this.isVerified, 
      this.profilePicId, 
      this.profilePicUrl, 
      this.transparencyProductEnabled, 
      this.username, 
      this.latestReelMedia, 
      this.eligibleForTextAppActivationBadge,});

  Owner.fromJson(dynamic json) {
    fbidV2 = json['fbid_v2'];
    feedPostReshareDisabled = json['feed_post_reshare_disabled'];
    fullName = json['full_name'];
    id = json['id'];
    isPrivate = json['is_private'];
    isUnpublished = json['is_unpublished'];
    pk = json['pk'];
    pkId = json['pk_id'];
    showAccountTransparencyDetails = json['show_account_transparency_details'];
    strongId = json['strong_id__'];
    thirdPartyDownloadsEnabled = json['third_party_downloads_enabled'];
    if (json['account_badges'] != null) {
      accountBadges = [];
      json['account_badges'].forEach((v) {
        accountBadges?.add((v));
      });
    }
    fanClubInfo = json['fan_club_info'] != null ? FanClubInfo.fromJson(json['fan_club_info']) : null;
    friendshipStatus = json['friendship_status'] != null ? FriendshipStatus.fromJson(json['friendship_status']) : null;
    hasAnonymousProfilePicture = json['has_anonymous_profile_picture'];
    isFavorite = json['is_favorite'];
    isVerified = json['is_verified'];
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
    transparencyProductEnabled = json['transparency_product_enabled'];
    username = json['username'];
    latestReelMedia = json['latest_reel_media'];
    eligibleForTextAppActivationBadge = json['eligible_for_text_app_activation_badge'];
  }
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  int? id;
  bool? isPrivate;
  bool? isUnpublished;
  int? pk;
  int? pkId;
  bool? showAccountTransparencyDetails;
  int? strongId;
  int? thirdPartyDownloadsEnabled;
  List<dynamic>? accountBadges;
  FanClubInfo? fanClubInfo;
  FriendshipStatus? friendshipStatus;
  bool? hasAnonymousProfilePicture;
  bool? isFavorite;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  bool? transparencyProductEnabled;
  String? username;
  int? latestReelMedia;
  bool? eligibleForTextAppActivationBadge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fbid_v2'] = fbidV2;
    map['feed_post_reshare_disabled'] = feedPostReshareDisabled;
    map['full_name'] = fullName;
    map['id'] = id;
    map['is_private'] = isPrivate;
    map['is_unpublished'] = isUnpublished;
    map['pk'] = pk;
    map['pk_id'] = pkId;
    map['show_account_transparency_details'] = showAccountTransparencyDetails;
    map['strong_id__'] = strongId;
    map['third_party_downloads_enabled'] = thirdPartyDownloadsEnabled;
    if (accountBadges != null) {
      map['account_badges'] = accountBadges?.map((v) => v.toJson()).toList();
    }
    if (fanClubInfo != null) {
      map['fan_club_info'] = fanClubInfo?.toJson();
    }
    if (friendshipStatus != null) {
      map['friendship_status'] = friendshipStatus?.toJson();
    }
    map['has_anonymous_profile_picture'] = hasAnonymousProfilePicture;
    map['is_favorite'] = isFavorite;
    map['is_verified'] = isVerified;
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    map['transparency_product_enabled'] = transparencyProductEnabled;
    map['username'] = username;
    map['latest_reel_media'] = latestReelMedia;
    map['eligible_for_text_app_activation_badge'] = eligibleForTextAppActivationBadge;
    return map;
  }

}

class FriendshipStatus {
  FriendshipStatus({
      this.following, 
      this.isBestie, 
      this.isFeedFavorite, 
      this.isRestricted,});

  FriendshipStatus.fromJson(dynamic json) {
    following = json['following'];
    isBestie = json['is_bestie'];
    isFeedFavorite = json['is_feed_favorite'];
    isRestricted = json['is_restricted'];
  }
  bool? following;
  bool? isBestie;
  bool? isFeedFavorite;
  bool? isRestricted;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['following'] = following;
    map['is_bestie'] = isBestie;
    map['is_feed_favorite'] = isFeedFavorite;
    map['is_restricted'] = isRestricted;
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

class User {
  User({
      this.fbidV2, 
      this.feedPostReshareDisabled, 
      this.fullName, 
      this.id, 
      this.isPrivate, 
      this.isUnpublished, 
      this.pk, 
      this.pkId, 
      this.showAccountTransparencyDetails, 
      this.strongId, 
      this.thirdPartyDownloadsEnabled, 
      this.accountBadges, 
      this.fanClubInfo, 
      this.friendshipStatus, 
      this.hasAnonymousProfilePicture, 
      this.isFavorite, 
      this.isVerified, 
      this.profilePicId, 
      this.profilePicUrl, 
      this.transparencyProductEnabled, 
      this.username, 
      this.latestReelMedia, 
      this.eligibleForTextAppActivationBadge,});

  User.fromJson(dynamic json) {
    fbidV2 = json['fbid_v2'];
    feedPostReshareDisabled = json['feed_post_reshare_disabled'];
    fullName = json['full_name'];
    id = json['id'];
    isPrivate = json['is_private'];
    isUnpublished = json['is_unpublished'];
    pk = json['pk'];
    pkId = json['pk_id'];
    showAccountTransparencyDetails = json['show_account_transparency_details'];
    strongId = json['strong_id__'];
    thirdPartyDownloadsEnabled = json['third_party_downloads_enabled'];
    if (json['account_badges'] != null) {
      accountBadges = [];
      json['account_badges'].forEach((v) {
        accountBadges?.add((v));
      });
    }
    fanClubInfo = json['fan_club_info'] != null ? FanClubInfo.fromJson(json['fan_club_info']) : null;
    friendshipStatus = json['friendship_status'] != null ? FriendshipStatus.fromJson(json['friendship_status']) : null;
    hasAnonymousProfilePicture = json['has_anonymous_profile_picture'];
    isFavorite = json['is_favorite'];
    isVerified = json['is_verified'];
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
    transparencyProductEnabled = json['transparency_product_enabled'];
    username = json['username'];
    latestReelMedia = json['latest_reel_media'];
    eligibleForTextAppActivationBadge = json['eligible_for_text_app_activation_badge'];
  }
  int? fbidV2;
  bool? feedPostReshareDisabled;
  String? fullName;
  int? id;
  bool? isPrivate;
  bool? isUnpublished;
  int? pk;
  int? pkId;
  bool? showAccountTransparencyDetails;
  int? strongId;
  int? thirdPartyDownloadsEnabled;
  List<dynamic>? accountBadges;
  FanClubInfo? fanClubInfo;
  FriendshipStatus? friendshipStatus;
  bool? hasAnonymousProfilePicture;
  bool? isFavorite;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  bool? transparencyProductEnabled;
  String? username;
  int? latestReelMedia;
  bool? eligibleForTextAppActivationBadge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fbid_v2'] = fbidV2;
    map['feed_post_reshare_disabled'] = feedPostReshareDisabled;
    map['full_name'] = fullName;
    map['id'] = id;
    map['is_private'] = isPrivate;
    map['is_unpublished'] = isUnpublished;
    map['pk'] = pk;
    map['pk_id'] = pkId;
    map['show_account_transparency_details'] = showAccountTransparencyDetails;
    map['strong_id__'] = strongId;
    map['third_party_downloads_enabled'] = thirdPartyDownloadsEnabled;
    if (accountBadges != null) {
      map['account_badges'] = accountBadges?.map((v) => v.toJson()).toList();
    }
    if (fanClubInfo != null) {
      map['fan_club_info'] = fanClubInfo?.toJson();
    }
    if (friendshipStatus != null) {
      map['friendship_status'] = friendshipStatus?.toJson();
    }
    map['has_anonymous_profile_picture'] = hasAnonymousProfilePicture;
    map['is_favorite'] = isFavorite;
    map['is_verified'] = isVerified;
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    map['transparency_product_enabled'] = transparencyProductEnabled;
    map['username'] = username;
    map['latest_reel_media'] = latestReelMedia;
    map['eligible_for_text_app_activation_badge'] = eligibleForTextAppActivationBadge;
    return map;
  }

}




class MediaCroppingInfo {
  MediaCroppingInfo({
      this.squareCrop,});

  MediaCroppingInfo.fromJson(dynamic json) {
    squareCrop = json['square_crop'] != null ? SquareCrop.fromJson(json['square_crop']) : null;
  }
  SquareCrop? squareCrop;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (squareCrop != null) {
      map['square_crop'] = squareCrop?.toJson();
    }
    return map;
  }

}

class SquareCrop {
  SquareCrop({
      this.cropLeft, 
      this.cropRight, 
      this.cropTop, 
      this.cropBottom,});

  SquareCrop.fromJson(dynamic json) {
    cropLeft = json['crop_left'];
    cropRight = json['crop_right'];
    cropTop = json['crop_top'];
    cropBottom = json['crop_bottom'];
  }
  int? cropLeft;
  int? cropRight;
  double? cropTop;
  double? cropBottom;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['crop_left'] = cropLeft;
    map['crop_right'] = cropRight;
    map['crop_top'] = cropTop;
    map['crop_bottom'] = cropBottom;
    return map;
  }

}

class CoauthorProducers {
  CoauthorProducers({
      this.pk, 
      this.pkId, 
      this.id, 
      this.fullName, 
      this.isPrivate, 
      this.strongId, 
      this.username, 
      this.isVerified, 
      this.profilePicId, 
      this.profilePicUrl,});

  CoauthorProducers.fromJson(dynamic json) {
    pk = json['pk'];
    pkId = json['pk_id'];
    id = json['id'];
    fullName = json['full_name'];
    isPrivate = json['is_private'];
    strongId = json['strong_id__'];
    username = json['username'];
    isVerified = json['is_verified'];
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
  }
  int? pk;
  int? pkId;
  int? id;
  String? fullName;
  bool? isPrivate;
  int? strongId;
  String? username;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pk'] = pk;
    map['pk_id'] = pkId;
    map['id'] = id;
    map['full_name'] = fullName;
    map['is_private'] = isPrivate;
    map['strong_id__'] = strongId;
    map['username'] = username;
    map['is_verified'] = isVerified;
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    return map;
  }

}



class SharingFrictionInfo {
  SharingFrictionInfo({
      this.bloksAppUrl, 
      this.shouldHaveSharingFriction, 
      this.sharingFrictionPayload,});

  SharingFrictionInfo.fromJson(dynamic json) {
    bloksAppUrl = json['bloks_app_url'];
    shouldHaveSharingFriction = json['should_have_sharing_friction'];
    sharingFrictionPayload = json['sharing_friction_payload'];
  }
  dynamic bloksAppUrl;
  bool? shouldHaveSharingFriction;
  dynamic sharingFrictionPayload;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bloks_app_url'] = bloksAppUrl;
    map['should_have_sharing_friction'] = shouldHaveSharingFriction;
    map['sharing_friction_payload'] = sharingFrictionPayload;
    return map;
  }

}

class FundraiserTag {
  FundraiserTag({
      this.hasStandaloneFundraiser,});

  FundraiserTag.fromJson(dynamic json) {
    hasStandaloneFundraiser = json['has_standalone_fundraiser'];
  }
  bool? hasStandaloneFundraiser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['has_standalone_fundraiser'] = hasStandaloneFundraiser;
    return map;
  }

}

class Caption {
  Caption({
      this.bitFlags, 
      this.createdAt, 
      this.createdAtUtc, 
      this.didReportAsSpam, 
      this.isRankedComment, 
      this.pk, 
      this.shareEnabled, 
      this.contentType, 
      this.mediaId, 
      this.status, 
      this.type, 
      this.userId, 
      this.strongId, 
      this.text, 
      this.user, 
      this.isCovered, 
      this.privateReplyStatus,});

  Caption.fromJson(dynamic json) {
    bitFlags = json['bit_flags'];
    createdAt = json['created_at'];
    createdAtUtc = json['created_at_utc'];
    didReportAsSpam = json['did_report_as_spam'];
    isRankedComment = json['is_ranked_comment'];
    pk = json['pk'];
    shareEnabled = json['share_enabled'];
    contentType = json['content_type'];
    mediaId = json['media_id'];
    status = json['status'];
    type = json['type'];
    userId = json['user_id'];
    strongId = json['strong_id__'];
    text = json['text'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    isCovered = json['is_covered'];
    privateReplyStatus = json['private_reply_status'];
  }
  int? bitFlags;
  int? createdAt;
  int? createdAtUtc;
  bool? didReportAsSpam;
  bool? isRankedComment;
  int? pk;
  bool? shareEnabled;
  String? contentType;
  int? mediaId;
  String? status;
  int? type;
  int? userId;
  int? strongId;
  String? text;
  User? user;
  bool? isCovered;
  int? privateReplyStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bit_flags'] = bitFlags;
    map['created_at'] = createdAt;
    map['created_at_utc'] = createdAtUtc;
    map['did_report_as_spam'] = didReportAsSpam;
    map['is_ranked_comment'] = isRankedComment;
    map['pk'] = pk;
    map['share_enabled'] = shareEnabled;
    map['content_type'] = contentType;
    map['media_id'] = mediaId;
    map['status'] = status;
    map['type'] = type;
    map['user_id'] = userId;
    map['strong_id__'] = strongId;
    map['text'] = text;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['is_covered'] = isCovered;
    map['private_reply_status'] = privateReplyStatus;
    return map;
  }

}




class In {
  In({
      this.categories, 
      this.durationInVideoInSec, 
      this.position, 
      this.showCategoryOfUser, 
      this.startTimeInVideoInSec, 
      this.user,});

  In.fromJson(dynamic json) {
    categories = json['categories'];
    durationInVideoInSec = json['duration_in_video_in_sec'];
    position = json['position'] != null ? json['position'].cast<int>() : [];
    showCategoryOfUser = json['show_category_of_user'];
    startTimeInVideoInSec = json['start_time_in_video_in_sec'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  dynamic categories;
  dynamic durationInVideoInSec;
  List<int>? position;
  bool? showCategoryOfUser;
  dynamic startTimeInVideoInSec;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['categories'] = categories;
    map['duration_in_video_in_sec'] = durationInVideoInSec;
    map['position'] = position;
    map['show_category_of_user'] = showCategoryOfUser;
    map['start_time_in_video_in_sec'] = startTimeInVideoInSec;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

