import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums.dart';
import '../../utils/force_utc_datetime.dart';
import '../../utils/serde.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@freezed
class PersonSafe with _$PersonSafe {
  @modelSerde
  const factory PersonSafe({
    required int id,
    required String name,
    String? displayName,
    String? avatar,
    required bool banned,
    required DateTime published,
    DateTime? updated,
    required String actorId,
    String? bio,
    required bool local,
    String? banner,
    required bool deleted,
    String? matrixUserId,
    required bool admin,
    required bool botAccount,
    DateTime? banExpires,
    required String instanceHost,
  }) = _PersonSafe;

  const PersonSafe._();
  factory PersonSafe.fromJson(Map<String, dynamic> json) =>
      _$PersonSafeFromJson(json);
}

@freezed
class LocalUserSettings with _$LocalUserSettings {
  @modelSerde
  const factory LocalUserSettings({
    required int id,
    required int personId,
    String? email,
    required bool showNsfw,
    required String theme,
    SortType? defaultSortType,
    PostListingType? defaultListingType,
    required String interfaceLanguage,
    required bool showAvatars,
    required bool showScores,
    required bool sendNotificationsToEmail,
    required bool showReadPosts,
    required bool showBotAccounts,
    required bool showNewPostNotifs,
    required bool emailVerified,
    required bool acceptedApplication,
    required String instanceHost,
  }) = _LocalUserSettings;

  const LocalUserSettings._();
  factory LocalUserSettings.fromJson(Map<String, dynamic> json) =>
      _$LocalUserSettingsFromJson(json);
}

@freezed
class Site with _$Site {
  @modelSerde
  const factory Site({
    required int id,
    required String name,
    String? sidebar,
    required DateTime published,
    DateTime? updated,
    String? icon,
    String? banner,
    String? description,
    required String actorId,
    required String lastRefreshedAt,
    required String inboxUrl,
    required String publicKey,
    required int instanceId,
    required String instanceHost,
  }) = _Site;

  const Site._();
  factory Site.fromJson(Map<String, dynamic> json) => _$SiteFromJson(json);
}

@freezed
class LocalSite with _$LocalSite {
  @modelSerde
  const factory LocalSite({
    required int id,
    required int siteId,
    required bool siteSetup,
    required bool enableDownvotes,
    required bool enableNsfw,
    required bool communityCreationAdminOnly,
    required bool requireEmailVerification,
    required String applicationQuestion,
    required bool privateInstance,
    required String defaultTheme,
    required PostListingType defaultPostListingType,
    String? legalInformation,
    required bool hideModlogModNames,
    required bool applicationEmailAdmins,
    String? slurFilterRegex,
    required int actorNameMaxLength,
    required bool federationEnabled,
    required int federationWorkerCount,
    required bool captchaEnabled,
    required String captchaDifficulty,
    required String published,
    DateTime? updated,
    required String registrationMode,
    required bool reportsEmailAdmins,
  }) = _LocalSite;

  const LocalSite._();
  factory LocalSite.fromJson(Map<String, dynamic> json) =>
      _$LocalSiteFromJson(json);
}

@freezed
class PrivateMessage with _$PrivateMessage {
  @modelSerde
  const factory PrivateMessage({
    required int id,
    required int creatorId,
    required int recipientId,
    required String content,
    required bool deleted,
    required bool read,
    required DateTime published,
    DateTime? updated,
    required String apId,
    required bool local,
    required String instanceHost,
  }) = _PrivateMessage;

  const PrivateMessage._();
  factory PrivateMessage.fromJson(Map<String, dynamic> json) =>
      _$PrivateMessageFromJson(json);
}

@freezed
class PostReport with _$PostReport {
  @modelSerde
  const factory PostReport({
    required int id,
    required int creatorId,
    required int postId,
    required String originalPostName,
    String? originalPostUrl,
    String? originalPostBody,
    required String reason,
    required bool resolved,
    int? resolverId,
    required DateTime published,
    DateTime? updated,
    required String instanceHost,
  }) = _PostReport;

  const PostReport._();
  factory PostReport.fromJson(Map<String, dynamic> json) =>
      _$PostReportFromJson(json);
}

@freezed
class Post with _$Post {
  @modelSerde
  const factory Post({
    required int id,
    required String name,
    String? url,
    String? body,
    required int creatorId,
    required int communityId,
    required bool removed,
    required bool locked,
    required DateTime published,
    DateTime? updated,
    required bool deleted,
    required bool nsfw,
    String? embedTitle,
    String? embedDescription,
    String? embedHtml,
    String? thumbnailUrl,
    required String apId,
    required bool local,
    required String instanceHost,
  }) = _Post;

  const Post._();
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class PasswordResetRequest with _$PasswordResetRequest {
  @modelSerde
  const factory PasswordResetRequest({
    required int id,
    required int localUserId,
    required String tokenEncrypted,
    required DateTime published,
    required String instanceHost,
  }) = _PasswordResetRequest;

  const PasswordResetRequest._();
  factory PasswordResetRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetRequestFromJson(json);
}

@freezed
class ModRemovePost with _$ModRemovePost {
  @modelSerde
  const factory ModRemovePost({
    required int id,
    required int modPersonId,
    required int postId,
    String? reason,
    bool? removed,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModRemovePost;

  const ModRemovePost._();
  factory ModRemovePost.fromJson(Map<String, dynamic> json) =>
      _$ModRemovePostFromJson(json);
}

@freezed
class ModLockPost with _$ModLockPost {
  @modelSerde
  const factory ModLockPost({
    required int id,
    required int modPersonId,
    required int postId,
    bool? locked,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModLockPost;

  const ModLockPost._();
  factory ModLockPost.fromJson(Map<String, dynamic> json) =>
      _$ModLockPostFromJson(json);
}

@freezed
class ModFeaturePost with _$ModFeaturePost {
  @modelSerde
  const factory ModFeaturePost({
    required int id,
    required int modPersonId,
    required int postId,
    bool? featured,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModFeaturePost;

  const ModFeaturePost._();
  factory ModFeaturePost.fromJson(Map<String, dynamic> json) =>
      _$ModFeaturePostFromJson(json);
}

@freezed
class ModRemoveComment with _$ModRemoveComment {
  @modelSerde
  const factory ModRemoveComment({
    required int id,
    required int modPersonId,
    required int commentId,
    String? reason,
    bool? removed,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModRemoveComment;

  const ModRemoveComment._();
  factory ModRemoveComment.fromJson(Map<String, dynamic> json) =>
      _$ModRemoveCommentFromJson(json);
}

@freezed
class ModRemoveCommunity with _$ModRemoveCommunity {
  @modelSerde
  const factory ModRemoveCommunity({
    required int id,
    required int modPersonId,
    required int communityId,
    String? reason,
    bool? removed,
    DateTime? expires,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModRemoveCommunity;

  const ModRemoveCommunity._();
  factory ModRemoveCommunity.fromJson(Map<String, dynamic> json) =>
      _$ModRemoveCommunityFromJson(json);
}

@freezed
class ModBanFromCommunity with _$ModBanFromCommunity {
  @modelSerde
  const factory ModBanFromCommunity({
    required int id,
    required int modPersonId,
    required int otherPersonId,
    required int communityId,
    String? reason,
    bool? banned,
    DateTime? expires,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModBanFromCommunity;

  const ModBanFromCommunity._();
  factory ModBanFromCommunity.fromJson(Map<String, dynamic> json) =>
      _$ModBanFromCommunityFromJson(json);
}

@freezed
class ModBan with _$ModBan {
  @modelSerde
  const factory ModBan({
    required int id,
    required int modPersonId,
    required int otherPersonId,
    String? reason,
    bool? banned,
    DateTime? expires,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModBan;

  const ModBan._();
  factory ModBan.fromJson(Map<String, dynamic> json) => _$ModBanFromJson(json);
}

@freezed
class ModAddCommunity with _$ModAddCommunity {
  @modelSerde
  const factory ModAddCommunity({
    required int id,
    required int modPersonId,
    required int otherPersonId,
    required int communityId,
    bool? removed,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModAddCommunity;

  const ModAddCommunity._();
  factory ModAddCommunity.fromJson(Map<String, dynamic> json) =>
      _$ModAddCommunityFromJson(json);
}

@freezed
class ModTransferCommunity with _$ModTransferCommunity {
  @modelSerde
  const factory ModTransferCommunity({
    required int id,
    required int modPersonId,
    required int otherPersonId,
    required int communityId,
    bool? removed,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModTransferCommunity;

  const ModTransferCommunity._();
  factory ModTransferCommunity.fromJson(Map<String, dynamic> json) =>
      _$ModTransferCommunityFromJson(json);
}

@freezed
class ModAdd with _$ModAdd {
  @modelSerde
  const factory ModAdd({
    required int id,
    required int modPersonId,
    required int otherPersonId,
    bool? removed,
    @JsonKey(name: 'when_') required DateTime when,
    required String instanceHost,
  }) = _ModAdd;

  const ModAdd._();
  factory ModAdd.fromJson(Map<String, dynamic> json) => _$ModAddFromJson(json);
}

@freezed
class CommunitySafe with _$CommunitySafe {
  @modelSerde
  const factory CommunitySafe({
    required int id,
    required String name,
    required String title,
    String? description,
    required bool removed,
    required DateTime published,
    DateTime? updated,
    required bool deleted,
    required bool nsfw,
    required String actorId,
    required bool local,
    String? icon,
    String? banner,
    required String instanceHost,
  }) = _CommunitySafe;

  const CommunitySafe._();
  factory CommunitySafe.fromJson(Map<String, dynamic> json) =>
      _$CommunitySafeFromJson(json);
}

@freezed
class CommentReport with _$CommentReport {
  @modelSerde
  const factory CommentReport({
    required int id,
    required int creatorId,
    required int commentId,
    required String originalCommentText,
    required String reason,
    required bool resolved,
    int? resolverId,
    required DateTime published,
    DateTime? updated,
    required String instanceHost,
  }) = _CommentReport;

  const CommentReport._();
  factory CommentReport.fromJson(Map<String, dynamic> json) =>
      _$CommentReportFromJson(json);
}

@freezed
class Comment with _$Comment {
  @modelSerde
  const factory Comment({
    required int id,
    required int creatorId,
    required int postId,
    int? parentId,
    required String content,
    required bool removed,
    required bool distinguished,
    required DateTime published,
    DateTime? updated,
    required bool deleted,
    required String apId,
    required bool local,
    required int languageId,
    required String instanceHost,
    required String path,
  }) = _Comment;

  const Comment._();
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class PersonMention with _$PersonMention {
  @modelSerde
  const factory PersonMention({
    required int id,
    required int recipientId,
    required int commentId,
    required bool read,
    required DateTime published,
    required String instanceHost,
  }) = _PersonMention;

  const PersonMention._();
  factory PersonMention.fromJson(Map<String, dynamic> json) =>
      _$PersonMentionFromJson(json);
}

@freezed
class RegistrationApplication with _$RegistrationApplication {
  @modelSerde
  const factory RegistrationApplication({
    required int id,
    required int localUserId,
    required String answer,
    int? adminId,
    String? denyReason,
    required DateTime published,
    required String instanceHost,
  }) = _RegistrationApplication;

  const RegistrationApplication._();
  factory RegistrationApplication.fromJson(Map<String, dynamic> json) =>
      _$RegistrationApplicationFromJson(json);
}
