
class HighlightModel {

  String? status;
  UnrelatedData? unrelatedData;

  HighlightModel({ this.status, this.unrelatedData});

  HighlightModel.fromJson(Map<String, dynamic> json) {

    status = json["status"];
    unrelatedData = json["unrelated_data"] == null ? null : UnrelatedData.fromJson(json["unrelated_data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    _data["status"] = status;
    if(unrelatedData != null) {
      _data["unrelated_data"] = unrelatedData?.toJson();
    }
    return _data;
  }
}

class UnrelatedData {
  int? retry;
  int? idAcc;
  String? proxyInfo;
  int? timeGen;

  UnrelatedData({this.retry, this.idAcc, this.proxyInfo, this.timeGen});

  UnrelatedData.fromJson(Map<String, dynamic> json) {
    retry = json["retry"];
    idAcc = json["id_acc"];
    proxyInfo = json["proxy_info"];
    timeGen = json["time_gen"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["retry"] = retry;
    _data["id_acc"] = idAcc;
    _data["proxy_info"] = proxyInfo;
    _data["time_gen"] = timeGen;
    return _data;
  }
}



class Highlight {
String? id;
String? strongId;
int? latestReelMedia;
dynamic seen;
bool? canReply;
bool? canGifQuickReply;
bool? canReshare;
bool? canReactWithAvatar;
String? reelType;
dynamic adExpiryTimestampInMillis;
dynamic isCtaStickerAvailable;
dynamic appStickerInfo;
dynamic shouldTreatLinkStickerAsCta;
dynamic poolRefreshTtlInSec;
CoverMedia? coverMedia;
User? user;
List<Items>? items;
bool? isNux;
String? title;
int? createdAt;
bool? isPinnedHighlight;
int? prefetchCount;
int? mediaCount;
List<int>? mediaIds;
bool? isCacheable;
bool? isConvertedToClips;
List<String>? disabledReplyTypes;
String? highlightReelType;
bool? isAddedToMainGrid;

Highlight({this.id, this.strongId, this.latestReelMedia, this.seen, this.canReply, this.canGifQuickReply, this.canReshare, this.canReactWithAvatar, this.reelType, this.adExpiryTimestampInMillis, this.isCtaStickerAvailable, this.appStickerInfo, this.shouldTreatLinkStickerAsCta, this.poolRefreshTtlInSec, this.coverMedia, this.user, this.items, this.isNux, this.title, this.createdAt, this.isPinnedHighlight, this.prefetchCount, this.mediaCount, this.mediaIds, this.isCacheable, this.isConvertedToClips, this.disabledReplyTypes, this.highlightReelType, this.isAddedToMainGrid});

Highlight.fromJson(Map<String, dynamic> json) {
id = json["id"];
strongId = json["strong_id__"];
latestReelMedia = json["latest_reel_media"];
seen = json["seen"];
canReply = json["can_reply"];
canGifQuickReply = json["can_gif_quick_reply"];
canReshare = json["can_reshare"];
canReactWithAvatar = json["can_react_with_avatar"];
reelType = json["reel_type"];
adExpiryTimestampInMillis = json["ad_expiry_timestamp_in_millis"];
isCtaStickerAvailable = json["is_cta_sticker_available"];
appStickerInfo = json["app_sticker_info"];
shouldTreatLinkStickerAsCta = json["should_treat_link_sticker_as_cta"];
poolRefreshTtlInSec = json["pool_refresh_ttl_in_sec"];
coverMedia = json["cover_media"] == null ? null : CoverMedia.fromJson(json["cover_media"]);
user = json["user"] == null ? null : User.fromJson(json["user"]);
items = json["items"] == null ? null : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
isNux = json["is_nux"];
title = json["title"];
createdAt = json["created_at"];
isPinnedHighlight = json["is_pinned_highlight"];
prefetchCount = json["prefetch_count"];
mediaCount = json["media_count"];
mediaIds = json["media_ids"] == null ? null : List<int>.from(json["media_ids"]);
isCacheable = json["is_cacheable"];
isConvertedToClips = json["is_converted_to_clips"];
disabledReplyTypes = json["disabled_reply_types"] == null ? null : List<String>.from(json["disabled_reply_types"]);
highlightReelType = json["highlight_reel_type"];
isAddedToMainGrid = json["is_added_to_main_grid"];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> _data = <String, dynamic>{};
_data["id"] = id;
_data["strong_id__"] = strongId;
_data["latest_reel_media"] = latestReelMedia;
_data["seen"] = seen;
_data["can_reply"] = canReply;
_data["can_gif_quick_reply"] = canGifQuickReply;
_data["can_reshare"] = canReshare;
_data["can_react_with_avatar"] = canReactWithAvatar;
_data["reel_type"] = reelType;
_data["ad_expiry_timestamp_in_millis"] = adExpiryTimestampInMillis;
_data["is_cta_sticker_available"] = isCtaStickerAvailable;
_data["app_sticker_info"] = appStickerInfo;
_data["should_treat_link_sticker_as_cta"] = shouldTreatLinkStickerAsCta;
_data["pool_refresh_ttl_in_sec"] = poolRefreshTtlInSec;
if(coverMedia != null) {
_data["cover_media"] = coverMedia?.toJson();
}
if(user != null) {
_data["user"] = user?.toJson();
}
if(items != null) {
_data["items"] = items?.map((e) => e.toJson()).toList();
}
_data["is_nux"] = isNux;
_data["title"] = title;
_data["created_at"] = createdAt;
_data["is_pinned_highlight"] = isPinnedHighlight;
_data["prefetch_count"] = prefetchCount;
_data["media_count"] = mediaCount;
if(mediaIds != null) {
_data["media_ids"] = mediaIds;
}
_data["is_cacheable"] = isCacheable;
_data["is_converted_to_clips"] = isConvertedToClips;
if(disabledReplyTypes != null) {
_data["disabled_reply_types"] = disabledReplyTypes;
}
_data["highlight_reel_type"] = highlightReelType;
_data["is_added_to_main_grid"] = isAddedToMainGrid;
return _data;
}
}

class Items {
  int? takenAt;
  int? pk;
  String? id;
  bool? isVisualReplyCommenterNoticeEnabled;
  bool? likeAndViewCountsDisabled;
  bool? isPostLiveClipsMedia;
  bool? isReshareOfTextPostAppMediaInIg;
  bool? isReelMedia;
  int? fbid;
  int? deviceTimestamp;
  bool? captionIsEdited;
  String? strongId;
  bool? isQuicksnapRecap;
  int? deletedReason;
  bool? hasDelayedMetadata;
  String? mezqlToken;
  bool? commentThreadingEnabled;
  bool? isUnifiedVideo;
  String? commercialityStatus;
  int? captionPosition;
  bool? isTerminalVideoSegment;
  String? clientCacheKey;
  String? integrityReviewDecision;
  bool? shouldRequestAds;
  bool? hasPrivatelyLiked;
  int? filterType;
  bool? commentingDisabledForViewer;
  List<dynamic>? previewComments;
  int? commentCount;
  bool? hideViewAllCommentEntrypoint;
  bool? isCommentsGifComposerEnabled;
  dynamic commentInformTreatment;
  List<dynamic>? clipsTabPinnedUserIds;
  bool? canViewerSave;
  dynamic shopRoutingUserId;
  bool? isOrganicProductTaggingEligible;
  dynamic igbioProduct;
  List<dynamic>? productSuggestions;
  bool? canSeeInsightsAsBrand;
  int? mediaType;
  String? code;
  Caption? caption;
  FundraiserTag? fundraiserTag;
  SharingFrictionInfo? sharingFrictionInfo;
  bool? hasTranslation;
  bool? originalMediaHasVisualReplyMedia;
  List<dynamic>? coauthorProducers;
  List<dynamic>? invitedCoauthorProducers;
  bool? isInProfileGrid;
  bool? profileGridControlEnabled;
  HighlightsInfo? highlightsInfo;
  User2? user;
  Owner? owner;
  String? attributionContentUrl;
  ImageVersions2? imageVersions2;
  int? originalWidth;
  int? originalHeight;
  bool? enableMediaNotesProduction;
  String? productType;
  bool? isPaidPartnership;
  dynamic musicMetadata;
  String? organicTrackingToken;
  bool? igMediaSharingDisabled;
  dynamic boostUnavailableIdentifier;
  dynamic boostUnavailableReason;
  bool? subscribeCtaVisible;
  bool? isCutoutStickerAllowed;
  GenAiDetectionMethod? genAiDetectionMethod;
  int? fbAggregatedLikeCount;
  int? fbAggregatedCommentCount;
  bool? hasHighRiskGenAiInformTreatment;
  bool? openCarouselShowFollowButton;
  bool? isTaggedMediaSharedToViewerProfileGrid;
  bool? shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
  bool? canViewMorePreviewComments;
  bool? collapseComments;
  bool? hasMoreComments;
  int? maxNumVisiblePreviewComments;
  List<dynamic>? likers;
  bool? isOpenToPublicSubmission;
  int? archiveStoryDeletionTs;
  bool? canSendPrompt;
  bool? isFirstTake;
  bool? isRollcallV2;
  bool? supportsReelReactions;
  bool? canPlaySpotifyAudio;
  bool? isFromDiscoverySurface;
  bool? isSuperlative;
  bool? showOneTapFbShareTooltip;
  List<StoryFeedMedia>? storyFeedMedia;
  bool? canReshare;
  bool? canReply;
  bool? hasLiked;

  Items({this.takenAt, this.pk, this.id, this.isVisualReplyCommenterNoticeEnabled, this.likeAndViewCountsDisabled, this.isPostLiveClipsMedia, this.isReshareOfTextPostAppMediaInIg, this.isReelMedia, this.fbid, this.deviceTimestamp, this.captionIsEdited, this.strongId, this.isQuicksnapRecap, this.deletedReason, this.hasDelayedMetadata, this.mezqlToken, this.commentThreadingEnabled, this.isUnifiedVideo, this.commercialityStatus, this.captionPosition, this.isTerminalVideoSegment, this.clientCacheKey, this.integrityReviewDecision, this.shouldRequestAds, this.hasPrivatelyLiked, this.filterType, this.commentingDisabledForViewer, this.previewComments, this.commentCount, this.hideViewAllCommentEntrypoint, this.isCommentsGifComposerEnabled, this.commentInformTreatment, this.clipsTabPinnedUserIds, this.canViewerSave, this.shopRoutingUserId, this.isOrganicProductTaggingEligible, this.igbioProduct, this.productSuggestions, this.canSeeInsightsAsBrand, this.mediaType, this.code, this.caption, this.fundraiserTag, this.sharingFrictionInfo, this.hasTranslation, this.originalMediaHasVisualReplyMedia, this.coauthorProducers, this.invitedCoauthorProducers, this.isInProfileGrid, this.profileGridControlEnabled, this.highlightsInfo, this.user, this.owner, this.attributionContentUrl, this.imageVersions2, this.originalWidth, this.originalHeight, this.enableMediaNotesProduction, this.productType, this.isPaidPartnership, this.musicMetadata, this.organicTrackingToken, this.igMediaSharingDisabled, this.boostUnavailableIdentifier, this.boostUnavailableReason, this.subscribeCtaVisible, this.isCutoutStickerAllowed, this.genAiDetectionMethod, this.fbAggregatedLikeCount, this.fbAggregatedCommentCount, this.hasHighRiskGenAiInformTreatment, this.openCarouselShowFollowButton, this.isTaggedMediaSharedToViewerProfileGrid, this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid, this.canViewMorePreviewComments, this.collapseComments, this.hasMoreComments, this.maxNumVisiblePreviewComments, this.likers, this.isOpenToPublicSubmission, this.archiveStoryDeletionTs, this.canSendPrompt, this.isFirstTake, this.isRollcallV2, this.supportsReelReactions, this.canPlaySpotifyAudio, this.isFromDiscoverySurface, this.isSuperlative, this.showOneTapFbShareTooltip, this.storyFeedMedia, this.canReshare, this.canReply, this.hasLiked});

  Items.fromJson(Map<String, dynamic> json) {
    takenAt = json["taken_at"];
    pk = json["pk"];
    id = json["id"];
    isVisualReplyCommenterNoticeEnabled = json["is_visual_reply_commenter_notice_enabled"];
    likeAndViewCountsDisabled = json["like_and_view_counts_disabled"];
    isPostLiveClipsMedia = json["is_post_live_clips_media"];
    isReshareOfTextPostAppMediaInIg = json["is_reshare_of_text_post_app_media_in_ig"];
    isReelMedia = json["is_reel_media"];
    fbid = json["fbid"];
    deviceTimestamp = json["device_timestamp"];
    captionIsEdited = json["caption_is_edited"];
    strongId = json["strong_id__"];
    isQuicksnapRecap = json["is_quicksnap_recap"];
    deletedReason = json["deleted_reason"];
    hasDelayedMetadata = json["has_delayed_metadata"];
    mezqlToken = json["mezql_token"];
    commentThreadingEnabled = json["comment_threading_enabled"];
    isUnifiedVideo = json["is_unified_video"];
    commercialityStatus = json["commerciality_status"];
    captionPosition = json["caption_position"];
    isTerminalVideoSegment = json["is_terminal_video_segment"];
    clientCacheKey = json["client_cache_key"];
    integrityReviewDecision = json["integrity_review_decision"];
    shouldRequestAds = json["should_request_ads"];
    hasPrivatelyLiked = json["has_privately_liked"];
    filterType = json["filter_type"];
    commentingDisabledForViewer = json["commenting_disabled_for_viewer"];
    previewComments = json["preview_comments"] ?? [];
    commentCount = json["comment_count"];
    hideViewAllCommentEntrypoint = json["hide_view_all_comment_entrypoint"];
    isCommentsGifComposerEnabled = json["is_comments_gif_composer_enabled"];
    commentInformTreatment = json["comment_inform_treatment"];
    clipsTabPinnedUserIds = json["clips_tab_pinned_user_ids"] ?? [];
    canViewerSave = json["can_viewer_save"];
    shopRoutingUserId = json["shop_routing_user_id"];
    isOrganicProductTaggingEligible = json["is_organic_product_tagging_eligible"];
    igbioProduct = json["igbio_product"];
    productSuggestions = json["product_suggestions"] ?? [];
    canSeeInsightsAsBrand = json["can_see_insights_as_brand"];
    mediaType = json["media_type"];
    code = json["code"];
    caption = json["caption"] == null ? null : Caption.fromJson(json["caption"]);
    fundraiserTag = json["fundraiser_tag"] == null ? null : FundraiserTag.fromJson(json["fundraiser_tag"]);
    sharingFrictionInfo = json["sharing_friction_info"] == null ? null : SharingFrictionInfo.fromJson(json["sharing_friction_info"]);
    hasTranslation = json["has_translation"];
    originalMediaHasVisualReplyMedia = json["original_media_has_visual_reply_media"];
    coauthorProducers = json["coauthor_producers"] ?? [];
    invitedCoauthorProducers = json["invited_coauthor_producers"] ?? [];
    isInProfileGrid = json["is_in_profile_grid"];
    profileGridControlEnabled = json["profile_grid_control_enabled"];
    highlightsInfo = json["highlights_info"] == null ? null : HighlightsInfo.fromJson(json["highlights_info"]);
    user = json["user"] == null ? null : User2.fromJson(json["user"]);
    owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
    attributionContentUrl = json["attribution_content_url"];
    imageVersions2 = json["image_versions2"] == null ? null : ImageVersions2.fromJson(json["image_versions2"]);
    originalWidth = json["original_width"];
    originalHeight = json["original_height"];
    enableMediaNotesProduction = json["enable_media_notes_production"];
    productType = json["product_type"];
    isPaidPartnership = json["is_paid_partnership"];
    musicMetadata = json["music_metadata"];
    organicTrackingToken = json["organic_tracking_token"];
    igMediaSharingDisabled = json["ig_media_sharing_disabled"];
    boostUnavailableIdentifier = json["boost_unavailable_identifier"];
    boostUnavailableReason = json["boost_unavailable_reason"];
    subscribeCtaVisible = json["subscribe_cta_visible"];
    isCutoutStickerAllowed = json["is_cutout_sticker_allowed"];
    genAiDetectionMethod = json["gen_ai_detection_method"] == null ? null : GenAiDetectionMethod.fromJson(json["gen_ai_detection_method"]);
    fbAggregatedLikeCount = json["fb_aggregated_like_count"];
    fbAggregatedCommentCount = json["fb_aggregated_comment_count"];
    hasHighRiskGenAiInformTreatment = json["has_high_risk_gen_ai_inform_treatment"];
    openCarouselShowFollowButton = json["open_carousel_show_follow_button"];
    isTaggedMediaSharedToViewerProfileGrid = json["is_tagged_media_shared_to_viewer_profile_grid"];
    shouldShowAuthorPogForTaggedMediaSharedToProfileGrid = json["should_show_author_pog_for_tagged_media_shared_to_profile_grid"];
    canViewMorePreviewComments = json["can_view_more_preview_comments"];
    collapseComments = json["collapse_comments"];
    hasMoreComments = json["has_more_comments"];
    maxNumVisiblePreviewComments = json["max_num_visible_preview_comments"];
    likers = json["likers"] ?? [];
    isOpenToPublicSubmission = json["is_open_to_public_submission"];
    archiveStoryDeletionTs = json["archive_story_deletion_ts"];
    canSendPrompt = json["can_send_prompt"];
    isFirstTake = json["is_first_take"];
    isRollcallV2 = json["is_rollcall_v2"];
    supportsReelReactions = json["supports_reel_reactions"];
    canPlaySpotifyAudio = json["can_play_spotify_audio"];
    isFromDiscoverySurface = json["is_from_discovery_surface"];
    isSuperlative = json["is_superlative"];
    showOneTapFbShareTooltip = json["show_one_tap_fb_share_tooltip"];
    storyFeedMedia = json["story_feed_media"] == null ? null : (json["story_feed_media"] as List).map((e) => StoryFeedMedia.fromJson(e)).toList();
    canReshare = json["can_reshare"];
    canReply = json["can_reply"];
    hasLiked = json["has_liked"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["taken_at"] = takenAt;
    _data["pk"] = pk;
    _data["id"] = id;
    _data["is_visual_reply_commenter_notice_enabled"] = isVisualReplyCommenterNoticeEnabled;
    _data["like_and_view_counts_disabled"] = likeAndViewCountsDisabled;
    _data["is_post_live_clips_media"] = isPostLiveClipsMedia;
    _data["is_reshare_of_text_post_app_media_in_ig"] = isReshareOfTextPostAppMediaInIg;
    _data["is_reel_media"] = isReelMedia;
    _data["fbid"] = fbid;
    _data["device_timestamp"] = deviceTimestamp;
    _data["caption_is_edited"] = captionIsEdited;
    _data["strong_id__"] = strongId;
    _data["is_quicksnap_recap"] = isQuicksnapRecap;
    _data["deleted_reason"] = deletedReason;
    _data["has_delayed_metadata"] = hasDelayedMetadata;
    _data["mezql_token"] = mezqlToken;
    _data["comment_threading_enabled"] = commentThreadingEnabled;
    _data["is_unified_video"] = isUnifiedVideo;
    _data["commerciality_status"] = commercialityStatus;
    _data["caption_position"] = captionPosition;
    _data["is_terminal_video_segment"] = isTerminalVideoSegment;
    _data["client_cache_key"] = clientCacheKey;
    _data["integrity_review_decision"] = integrityReviewDecision;
    _data["should_request_ads"] = shouldRequestAds;
    _data["has_privately_liked"] = hasPrivatelyLiked;
    _data["filter_type"] = filterType;
    _data["commenting_disabled_for_viewer"] = commentingDisabledForViewer;
    if(previewComments != null) {
      _data["preview_comments"] = previewComments;
    }
    _data["comment_count"] = commentCount;
    _data["hide_view_all_comment_entrypoint"] = hideViewAllCommentEntrypoint;
    _data["is_comments_gif_composer_enabled"] = isCommentsGifComposerEnabled;
    _data["comment_inform_treatment"] = commentInformTreatment;
    if(clipsTabPinnedUserIds != null) {
      _data["clips_tab_pinned_user_ids"] = clipsTabPinnedUserIds;
    }
    _data["can_viewer_save"] = canViewerSave;
    _data["shop_routing_user_id"] = shopRoutingUserId;
    _data["is_organic_product_tagging_eligible"] = isOrganicProductTaggingEligible;
    _data["igbio_product"] = igbioProduct;
    if(productSuggestions != null) {
      _data["product_suggestions"] = productSuggestions;
    }
    _data["can_see_insights_as_brand"] = canSeeInsightsAsBrand;
    _data["media_type"] = mediaType;
    _data["code"] = code;
    if(caption != null) {
      _data["caption"] = caption?.toJson();
    }
    if(fundraiserTag != null) {
      _data["fundraiser_tag"] = fundraiserTag?.toJson();
    }
    if(sharingFrictionInfo != null) {
      _data["sharing_friction_info"] = sharingFrictionInfo?.toJson();
    }
    _data["has_translation"] = hasTranslation;
    _data["original_media_has_visual_reply_media"] = originalMediaHasVisualReplyMedia;
    if(coauthorProducers != null) {
      _data["coauthor_producers"] = coauthorProducers;
    }
    if(invitedCoauthorProducers != null) {
      _data["invited_coauthor_producers"] = invitedCoauthorProducers;
    }
    _data["is_in_profile_grid"] = isInProfileGrid;
    _data["profile_grid_control_enabled"] = profileGridControlEnabled;
    if(highlightsInfo != null) {
      _data["highlights_info"] = highlightsInfo?.toJson();
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    _data["attribution_content_url"] = attributionContentUrl;
    if(imageVersions2 != null) {
      _data["image_versions2"] = imageVersions2?.toJson();
    }
    _data["original_width"] = originalWidth;
    _data["original_height"] = originalHeight;
    _data["enable_media_notes_production"] = enableMediaNotesProduction;
    _data["product_type"] = productType;
    _data["is_paid_partnership"] = isPaidPartnership;
    _data["music_metadata"] = musicMetadata;
    _data["organic_tracking_token"] = organicTrackingToken;
    _data["ig_media_sharing_disabled"] = igMediaSharingDisabled;
    _data["boost_unavailable_identifier"] = boostUnavailableIdentifier;
    _data["boost_unavailable_reason"] = boostUnavailableReason;
    _data["subscribe_cta_visible"] = subscribeCtaVisible;
    _data["is_cutout_sticker_allowed"] = isCutoutStickerAllowed;
    if(genAiDetectionMethod != null) {
      _data["gen_ai_detection_method"] = genAiDetectionMethod?.toJson();
    }
    _data["fb_aggregated_like_count"] = fbAggregatedLikeCount;
    _data["fb_aggregated_comment_count"] = fbAggregatedCommentCount;
    _data["has_high_risk_gen_ai_inform_treatment"] = hasHighRiskGenAiInformTreatment;
    _data["open_carousel_show_follow_button"] = openCarouselShowFollowButton;
    _data["is_tagged_media_shared_to_viewer_profile_grid"] = isTaggedMediaSharedToViewerProfileGrid;
    _data["should_show_author_pog_for_tagged_media_shared_to_profile_grid"] = shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
    _data["can_view_more_preview_comments"] = canViewMorePreviewComments;
    _data["collapse_comments"] = collapseComments;
    _data["has_more_comments"] = hasMoreComments;
    _data["max_num_visible_preview_comments"] = maxNumVisiblePreviewComments;
    if(likers != null) {
      _data["likers"] = likers;
    }
    _data["is_open_to_public_submission"] = isOpenToPublicSubmission;
    _data["archive_story_deletion_ts"] = archiveStoryDeletionTs;
    _data["can_send_prompt"] = canSendPrompt;
    _data["is_first_take"] = isFirstTake;
    _data["is_rollcall_v2"] = isRollcallV2;
    _data["supports_reel_reactions"] = supportsReelReactions;
    _data["can_play_spotify_audio"] = canPlaySpotifyAudio;
    _data["is_from_discovery_surface"] = isFromDiscoverySurface;
    _data["is_superlative"] = isSuperlative;
    _data["show_one_tap_fb_share_tooltip"] = showOneTapFbShareTooltip;
    if(storyFeedMedia != null) {
      _data["story_feed_media"] = storyFeedMedia?.map((e) => e.toJson()).toList();
    }
    _data["can_reshare"] = canReshare;
    _data["can_reply"] = canReply;
    _data["has_liked"] = hasLiked;
    return _data;
  }
}

class StoryFeedMedia {
  double? x;
  double? y;
  int? z;
  double? width;
  double? height;
  int? rotation;
  int? isPinned;
  int? isHidden;
  int? isSticker;
  int? isFbSticker;
  int? startTimeMs;
  int? endTimeMs;
  int? mediaId;
  String? productType;
  String? mediaCode;
  String? mediaCompoundStr;

  StoryFeedMedia({this.x, this.y, this.z, this.width, this.height, this.rotation, this.isPinned, this.isHidden, this.isSticker, this.isFbSticker, this.startTimeMs, this.endTimeMs, this.mediaId, this.productType, this.mediaCode, this.mediaCompoundStr});

  StoryFeedMedia.fromJson(Map<String, dynamic> json) {
    x = json["x"];
    y = json["y"];
    z = json["z"];
    width = json["width"];
    height = json["height"];
    rotation = json["rotation"];
    isPinned = json["is_pinned"];
    isHidden = json["is_hidden"];
    isSticker = json["is_sticker"];
    isFbSticker = json["is_fb_sticker"];
    startTimeMs = json["start_time_ms"];
    endTimeMs = json["end_time_ms"];
    mediaId = json["media_id"];
    productType = json["product_type"];
    mediaCode = json["media_code"];
    mediaCompoundStr = json["media_compound_str"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["x"] = x;
    _data["y"] = y;
    _data["z"] = z;
    _data["width"] = width;
    _data["height"] = height;
    _data["rotation"] = rotation;
    _data["is_pinned"] = isPinned;
    _data["is_hidden"] = isHidden;
    _data["is_sticker"] = isSticker;
    _data["is_fb_sticker"] = isFbSticker;
    _data["start_time_ms"] = startTimeMs;
    _data["end_time_ms"] = endTimeMs;
    _data["media_id"] = mediaId;
    _data["product_type"] = productType;
    _data["media_code"] = mediaCode;
    _data["media_compound_str"] = mediaCompoundStr;
    return _data;
  }
}

class GenAiDetectionMethod {
  String? detectionMethod;

  GenAiDetectionMethod({this.detectionMethod});

  GenAiDetectionMethod.fromJson(Map<String, dynamic> json) {
    detectionMethod = json["detection_method"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["detection_method"] = detectionMethod;
    return _data;
  }
}

class ImageVersions2 {
  List<Candidates>? candidates;

  ImageVersions2({this.candidates});

  ImageVersions2.fromJson(Map<String, dynamic> json) {
    candidates = json["candidates"] == null ? null : (json["candidates"] as List).map((e) => Candidates.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(candidates != null) {
      _data["candidates"] = candidates?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Candidates {
  int? width;
  int? height;
  String? url;
  String? scansProfile;
  List<int>? estimatedScansSizes;

  Candidates({this.width, this.height, this.url, this.scansProfile, this.estimatedScansSizes});

  Candidates.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    height = json["height"];
    url = json["url"];
    scansProfile = json["scans_profile"];
    estimatedScansSizes = json["estimated_scans_sizes"] == null ? null : List<int>.from(json["estimated_scans_sizes"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["height"] = height;
    _data["url"] = url;
    _data["scans_profile"] = scansProfile;
    if(estimatedScansSizes != null) {
      _data["estimated_scans_sizes"] = estimatedScansSizes;
    }
    return _data;
  }
}

class Owner {
  int? id;
  bool? isPrivate;
  int? pk;
  int? strongId;

  Owner({this.id, this.isPrivate, this.pk, this.strongId});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    isPrivate = json["is_private"];
    pk = json["pk"];
    strongId = json["strong_id__"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["pk"] = pk;
    _data["strong_id__"] = strongId;
    return _data;
  }
}

class User2 {
  int? id;
  bool? isPrivate;
  int? pk;
  int? strongId;

  User2({this.id, this.isPrivate, this.pk, this.strongId});

  User2.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    isPrivate = json["is_private"];
    pk = json["pk"];
    strongId = json["strong_id__"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["pk"] = pk;
    _data["strong_id__"] = strongId;
    return _data;
  }
}

class HighlightsInfo {
  List<AddedTo>? addedTo;

  HighlightsInfo({this.addedTo});

  HighlightsInfo.fromJson(Map<String, dynamic> json) {
    addedTo = json["added_to"] == null ? null : (json["added_to"] as List).map((e) => AddedTo.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(addedTo != null) {
      _data["added_to"] = addedTo?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class AddedTo {
  String? reelId;
  String? title;

  AddedTo({this.reelId, this.title});

  AddedTo.fromJson(Map<String, dynamic> json) {
    reelId = json["reel_id"];
    title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["reel_id"] = reelId;
    _data["title"] = title;
    return _data;
  }
}

class SharingFrictionInfo {
  dynamic bloksAppUrl;
  bool? shouldHaveSharingFriction;
  dynamic sharingFrictionPayload;

  SharingFrictionInfo({this.bloksAppUrl, this.shouldHaveSharingFriction, this.sharingFrictionPayload});

  SharingFrictionInfo.fromJson(Map<String, dynamic> json) {
    bloksAppUrl = json["bloks_app_url"];
    shouldHaveSharingFriction = json["should_have_sharing_friction"];
    sharingFrictionPayload = json["sharing_friction_payload"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bloks_app_url"] = bloksAppUrl;
    _data["should_have_sharing_friction"] = shouldHaveSharingFriction;
    _data["sharing_friction_payload"] = sharingFrictionPayload;
    return _data;
  }
}

class FundraiserTag {
  bool? hasStandaloneFundraiser;

  FundraiserTag({this.hasStandaloneFundraiser});

  FundraiserTag.fromJson(Map<String, dynamic> json) {
    hasStandaloneFundraiser = json["has_standalone_fundraiser"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_standalone_fundraiser"] = hasStandaloneFundraiser;
    return _data;
  }
}

class Caption {
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
  bool? hasTranslation;
  String? text;
  User1? user;
  bool? isCovered;
  int? privateReplyStatus;

  Caption({this.bitFlags, this.createdAt, this.createdAtUtc, this.didReportAsSpam, this.isRankedComment, this.pk, this.shareEnabled, this.contentType, this.mediaId, this.status, this.type, this.userId, this.strongId, this.hasTranslation, this.text, this.user, this.isCovered, this.privateReplyStatus});

  Caption.fromJson(Map<String, dynamic> json) {
    bitFlags = json["bit_flags"];
    createdAt = json["created_at"];
    createdAtUtc = json["created_at_utc"];
    didReportAsSpam = json["did_report_as_spam"];
    isRankedComment = json["is_ranked_comment"];
    pk = json["pk"];
    shareEnabled = json["share_enabled"];
    contentType = json["content_type"];
    mediaId = json["media_id"];
    status = json["status"];
    type = json["type"];
    userId = json["user_id"];
    strongId = json["strong_id__"];
    hasTranslation = json["has_translation"];
    text = json["text"];
    user = json["user"] == null ? null : User1.fromJson(json["user"]);
    isCovered = json["is_covered"];
    privateReplyStatus = json["private_reply_status"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bit_flags"] = bitFlags;
    _data["created_at"] = createdAt;
    _data["created_at_utc"] = createdAtUtc;
    _data["did_report_as_spam"] = didReportAsSpam;
    _data["is_ranked_comment"] = isRankedComment;
    _data["pk"] = pk;
    _data["share_enabled"] = shareEnabled;
    _data["content_type"] = contentType;
    _data["media_id"] = mediaId;
    _data["status"] = status;
    _data["type"] = type;
    _data["user_id"] = userId;
    _data["strong_id__"] = strongId;
    _data["has_translation"] = hasTranslation;
    _data["text"] = text;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["is_covered"] = isCovered;
    _data["private_reply_status"] = privateReplyStatus;
    return _data;
  }
}

class User1 {
  int? pk;
  int? pkId;
  int? id;
  String? fullName;
  bool? isPrivate;
  int? strongId;
  int? fbidV2;
  String? username;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;

  User1({this.pk, this.pkId, this.id, this.fullName, this.isPrivate, this.strongId, this.fbidV2, this.username, this.isVerified, this.profilePicId, this.profilePicUrl});

  User1.fromJson(Map<String, dynamic> json) {
    pk = json["pk"];
    pkId = json["pk_id"];
    id = json["id"];
    fullName = json["full_name"];
    isPrivate = json["is_private"];
    strongId = json["strong_id__"];
    fbidV2 = json["fbid_v2"];
    username = json["username"];
    isVerified = json["is_verified"];
    profilePicId = json["profile_pic_id"];
    profilePicUrl = json["profile_pic_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["id"] = id;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["strong_id__"] = strongId;
    _data["fbid_v2"] = fbidV2;
    _data["username"] = username;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    return _data;
  }
}

class User {
  int? pk;
  int? pkId;
  String? fullName;
  bool? isPrivate;
  int? strongId;
  int? id;
  String? username;
  bool? isVerified;
  String? profilePicId;
  String? profilePicUrl;
  int? interopMessagingUserFbid;
  bool? isCreatorAgentEnabled;

  User({this.pk, this.pkId, this.fullName, this.isPrivate, this.strongId, this.id, this.username, this.isVerified, this.profilePicId, this.profilePicUrl, this.interopMessagingUserFbid, this.isCreatorAgentEnabled});

  User.fromJson(Map<String, dynamic> json) {
    pk = json["pk"];
    pkId = json["pk_id"];
    fullName = json["full_name"];
    isPrivate = json["is_private"];
    strongId = json["strong_id__"];
    id = json["id"];
    username = json["username"];
    isVerified = json["is_verified"];
    profilePicId = json["profile_pic_id"];
    profilePicUrl = json["profile_pic_url"];
    interopMessagingUserFbid = json["interop_messaging_user_fbid"];
    isCreatorAgentEnabled = json["is_creator_agent_enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["pk"] = pk;
    _data["pk_id"] = pkId;
    _data["full_name"] = fullName;
    _data["is_private"] = isPrivate;
    _data["strong_id__"] = strongId;
    _data["id"] = id;
    _data["username"] = username;
    _data["is_verified"] = isVerified;
    _data["profile_pic_id"] = profilePicId;
    _data["profile_pic_url"] = profilePicUrl;
    _data["interop_messaging_user_fbid"] = interopMessagingUserFbid;
    _data["is_creator_agent_enabled"] = isCreatorAgentEnabled;
    return _data;
  }
}

class CoverMedia {
  CroppedImageVersion? croppedImageVersion;
  List<int>? cropRect;
  String? mediaId;
  dynamic fullImageVersion;
  dynamic uploadId;

  CoverMedia({this.croppedImageVersion, this.cropRect, this.mediaId, this.fullImageVersion, this.uploadId});

  CoverMedia.fromJson(Map<String, dynamic> json) {
    croppedImageVersion = json["cropped_image_version"] == null ? null : CroppedImageVersion.fromJson(json["cropped_image_version"]);
    cropRect = json["crop_rect"] == null ? null : List<int>.from(json["crop_rect"]);
    mediaId = json["media_id"];
    fullImageVersion = json["full_image_version"];
    uploadId = json["upload_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(croppedImageVersion != null) {
      _data["cropped_image_version"] = croppedImageVersion?.toJson();
    }
    if(cropRect != null) {
      _data["crop_rect"] = cropRect;
    }
    _data["media_id"] = mediaId;
    _data["full_image_version"] = fullImageVersion;
    _data["upload_id"] = uploadId;
    return _data;
  }
}

class CroppedImageVersion {
  int? width;
  int? height;
  String? url;
  String? scansProfile;

  CroppedImageVersion({this.width, this.height, this.url, this.scansProfile});

  CroppedImageVersion.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    height = json["height"];
    url = json["url"];
    scansProfile = json["scans_profile"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["height"] = height;
    _data["url"] = url;
    _data["scans_profile"] = scansProfile;
    return _data;
  }
}