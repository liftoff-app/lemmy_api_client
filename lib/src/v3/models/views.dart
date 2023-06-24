import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums.dart';
import '../../utils/serde.dart';
import 'aggregates.dart';
import 'source.dart';

part 'views.freezed.dart';
part 'views.g.dart';

@freezed
class PersonViewSafe with _$PersonViewSafe {
  @modelSerde
  const factory PersonViewSafe({
    required PersonSafe person,
    required PersonAggregates counts,
    required String instanceHost,
  }) = _PersonViewSafe;

  const PersonViewSafe._();
  factory PersonViewSafe.fromJson(Map<String, dynamic> json) =>
      _$PersonViewSafeFromJson(json);
}

@freezed
class PersonMentionView with _$PersonMentionView {
  @modelSerde
  const factory PersonMentionView({
    required PersonMention personMention,
    required Comment comment,
    required PersonSafe creator,
    required Post post,
    required CommunitySafe community,
    required PersonSafe recipient,
    required CommentAggregates counts,
    required bool creatorBannedFromCommunity,
    @Default(SubscribedType.notSubscribed) SubscribedType subscribed,
    required bool saved,
    required bool creatorBlocked,
    VoteType? myVote,
    required String instanceHost,
  }) = _PersonMentionView;

  const PersonMentionView._();
  factory PersonMentionView.fromJson(Map<String, dynamic> json) =>
      _$PersonMentionViewFromJson(json);
}

@freezed
class LocalUserSettingsView with _$LocalUserSettingsView {
  @modelSerde
  const factory LocalUserSettingsView({
    required LocalUserSettings localUser,
    required PersonSafe person,
    required PersonAggregates counts,
    required String instanceHost,
  }) = _LocalUserSettingsView;

  const LocalUserSettingsView._();
  factory LocalUserSettingsView.fromJson(Map<String, dynamic> json) =>
      _$LocalUserSettingsViewFromJson(json);
}

@freezed
class SiteView with _$SiteView {
  @modelSerde
  const factory SiteView({
    required Site site,
    required LocalSite localSite,
    required SiteAggregates counts,
    required String instanceHost,
  }) = _SiteView;

  const SiteView._();
  factory SiteView.fromJson(Map<String, dynamic> json) =>
      _$SiteViewFromJson(json);
}

@freezed
class PrivateMessageView with _$PrivateMessageView {
  @modelSerde
  const factory PrivateMessageView({
    required PrivateMessage privateMessage,
    required PersonSafe creator,
    required PersonSafe recipient,
    required String instanceHost,
  }) = _PrivateMessageView;

  const PrivateMessageView._();
  factory PrivateMessageView.fromJson(Map<String, dynamic> json) =>
      _$PrivateMessageViewFromJson(json);
}

@freezed
class PostView with _$PostView {
  @modelSerde
  const factory PostView({
    required Post post,
    required PersonSafe creator,
    required CommunitySafe community,
    required bool creatorBannedFromCommunity,
    required PostAggregates counts,
    @Default(SubscribedType.notSubscribed) SubscribedType subscribed,
    required bool saved,
    required bool read,
    required bool creatorBlocked,
    required int unreadComments,
    VoteType? myVote,
    required String instanceHost,
  }) = _PostView;

  const PostView._();
  factory PostView.fromJson(Map<String, dynamic> json) =>
      _$PostViewFromJson(json);
}

@freezed
class PostReportView with _$PostReportView {
  @modelSerde
  const factory PostReportView({
    required PostReport postReport,
    required Post post,
    required CommunitySafe community,
    required PersonSafe creator,
    required PersonSafe postCreator,
    required bool creatorBannedFromCommunity,
    VoteType? myVote,
    required PostAggregates counts,
    PersonSafe? resolver,
    required String instanceHost,
  }) = _PostReportView;

  const PostReportView._();
  factory PostReportView.fromJson(Map<String, dynamic> json) =>
      _$PostReportViewFromJson(json);
}

@freezed
class CommentView with _$CommentView {
  @modelSerde
  const factory CommentView({
    required Comment comment,
    required PersonSafe creator,
    PersonSafe? recipient,
    required Post post,
    required CommunitySafe community,
    required CommentAggregates counts,
    required bool creatorBannedFromCommunity,
    @Default(SubscribedType.notSubscribed) SubscribedType subscribed,
    required bool saved,
    required bool creatorBlocked,
    VoteType? myVote,
    required String instanceHost,
  }) = _CommentView;

  const CommentView._();
  factory CommentView.fromJson(Map<String, dynamic> json) =>
      _$CommentViewFromJson(json);
}

@freezed
class CommentReportView with _$CommentReportView {
  @modelSerde
  const factory CommentReportView({
    required CommentReport commentReport,
    required Comment comment,
    required Post post,
    required CommunitySafe community,
    required PersonSafe creator,
    required PersonSafe commentCreator,
    required bool creatorBannedFromCommunity,
    VoteType? myVote,
    required CommentAggregates counts,
    PersonSafe? resolver,
    required String instanceHost,
  }) = _CommentReportView;

  const CommentReportView._();
  factory CommentReportView.fromJson(Map<String, dynamic> json) =>
      _$CommentReportViewFromJson(json);
}

@freezed
class ModAddCommunityView with _$ModAddCommunityView {
  @modelSerde
  const factory ModAddCommunityView({
    required ModAddCommunity modAddCommunity,
    required CommunitySafe community,
    required PersonSafe moddedPerson,
    required String instanceHost,
  }) = _ModAddCommunityView;

  const ModAddCommunityView._();
  factory ModAddCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModAddCommunityViewFromJson(json);
}

@freezed
class ModTransferCommunityView with _$ModTransferCommunityView {
  @modelSerde
  const factory ModTransferCommunityView({
    required ModTransferCommunity modTransferCommunity,
    required CommunitySafe community,
    required PersonSafe moddedPerson,
    required String instanceHost,
  }) = _ModTransferCommunityView;

  const ModTransferCommunityView._();
  factory ModTransferCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModTransferCommunityViewFromJson(json);
}

@freezed
class ModAddView with _$ModAddView {
  @modelSerde
  const factory ModAddView({
    required ModAdd modAdd,
    required PersonSafe moddedPerson,
    required String instanceHost,
  }) = _ModAddView;

  const ModAddView._();
  factory ModAddView.fromJson(Map<String, dynamic> json) =>
      _$ModAddViewFromJson(json);
}

@freezed
class ModBanFromCommunityView with _$ModBanFromCommunityView {
  @modelSerde
  const factory ModBanFromCommunityView({
    required ModBanFromCommunity modBanFromCommunity,
    required CommunitySafe community,
    required PersonSafe bannedPerson,
    required String instanceHost,
  }) = _ModBanFromCommunityView;

  const ModBanFromCommunityView._();
  factory ModBanFromCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModBanFromCommunityViewFromJson(json);
}

@freezed
class ModBanView with _$ModBanView {
  @modelSerde
  const factory ModBanView({
    required ModBan modBan,
    required PersonSafe bannedPerson,
    required String instanceHost,
  }) = _ModBanView;

  const ModBanView._();
  factory ModBanView.fromJson(Map<String, dynamic> json) =>
      _$ModBanViewFromJson(json);
}

@freezed
class ModLockPostView with _$ModLockPostView {
  @modelSerde
  const factory ModLockPostView({
    required ModLockPost modLockPost,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModLockPostView;

  const ModLockPostView._();
  factory ModLockPostView.fromJson(Map<String, dynamic> json) =>
      _$ModLockPostViewFromJson(json);
}

@freezed
class ModRemoveCommentView with _$ModRemoveCommentView {
  @modelSerde
  const factory ModRemoveCommentView({
    required ModRemoveComment modRemoveComment,
    required Comment comment,
    required PersonSafe commenter,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModRemoveCommentView;

  const ModRemoveCommentView._();
  factory ModRemoveCommentView.fromJson(Map<String, dynamic> json) =>
      _$ModRemoveCommentViewFromJson(json);
}

@freezed
class ModRemoveCommunityView with _$ModRemoveCommunityView {
  @modelSerde
  const factory ModRemoveCommunityView({
    required ModRemoveCommunity modRemoveCommunity,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModRemoveCommunityView;

  const ModRemoveCommunityView._();
  factory ModRemoveCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModRemoveCommunityViewFromJson(json);
}

@freezed
class ModRemovePostView with _$ModRemovePostView {
  @modelSerde
  const factory ModRemovePostView({
    required ModRemovePost modRemovePost,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModRemovePostView;

  const ModRemovePostView._();
  factory ModRemovePostView.fromJson(Map<String, dynamic> json) =>
      _$ModRemovePostViewFromJson(json);
}

@freezed
class ModFeaturePostView with _$ModFeaturePostView {
  @modelSerde
  const factory ModFeaturePostView({
    required ModFeaturePost modFeaturePost,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModFeaturePostView;

  const ModFeaturePostView._();
  factory ModFeaturePostView.fromJson(Map<String, dynamic> json) =>
      _$ModFeaturePostViewFromJson(json);
}

@freezed
class CommunityFollowerView with _$CommunityFollowerView {
  @modelSerde
  const factory CommunityFollowerView({
    required CommunitySafe community,
    required PersonSafe follower,
    required String instanceHost,
  }) = _CommunityFollowerView;

  const CommunityFollowerView._();
  factory CommunityFollowerView.fromJson(Map<String, dynamic> json) =>
      _$CommunityFollowerViewFromJson(json);
}

@freezed
class CommunityModeratorView with _$CommunityModeratorView {
  @modelSerde
  const factory CommunityModeratorView({
    required CommunitySafe community,
    required PersonSafe moderator,
    required String instanceHost,
  }) = _CommunityModeratorView;

  const CommunityModeratorView._();
  factory CommunityModeratorView.fromJson(Map<String, dynamic> json) =>
      _$CommunityModeratorViewFromJson(json);
}

@freezed
class PersonBlockView with _$PersonBlockView {
  @modelSerde
  const factory PersonBlockView({
    required PersonSafe person,
    required PersonSafe target,
    required String instanceHost,
  }) = _PersonBlockView;

  const PersonBlockView._();
  factory PersonBlockView.fromJson(Map<String, dynamic> json) =>
      _$PersonBlockViewFromJson(json);
}

@freezed
class CommunityBlockView with _$CommunityBlockView {
  @modelSerde
  const factory CommunityBlockView({
    required PersonSafe person,
    required CommunitySafe community,
    required String instanceHost,
  }) = _CommunityBlockView;

  const CommunityBlockView._();
  factory CommunityBlockView.fromJson(Map<String, dynamic> json) =>
      _$CommunityBlockViewFromJson(json);
}

@freezed
class CommunityPersonBanView with _$CommunityPersonBanView {
  @modelSerde
  const factory CommunityPersonBanView({
    required CommunitySafe community,
    required PersonSafe person,
    required String instanceHost,
  }) = _CommunityPersonBanView;

  const CommunityPersonBanView._();
  factory CommunityPersonBanView.fromJson(Map<String, dynamic> json) =>
      _$CommunityPersonBanViewFromJson(json);
}

@freezed
class CommunityView with _$CommunityView {
  @modelSerde
  const factory CommunityView({
    required CommunitySafe community,
    @Default(SubscribedType.notSubscribed) SubscribedType subscribed,
    required bool blocked,
    required CommunityAggregates counts,
    required String instanceHost,
  }) = _CommunityView;

  const CommunityView._();
  factory CommunityView.fromJson(Map<String, dynamic> json) =>
      _$CommunityViewFromJson(json);
}

@freezed
class RegistrationApplicationView with _$RegistrationApplicationView {
  @modelSerde
  const factory RegistrationApplicationView({
    required RegistrationApplication registrationApplication,
    required LocalUserSettings creatorLocalUser,
    required PersonSafe creator,
    PersonSafe? admin,
    required String instanceHost,
  }) = _RegistrationApplicationView;

  const RegistrationApplicationView._();
  factory RegistrationApplicationView.fromJson(Map<String, dynamic> json) =>
      _$RegistrationApplicationViewFromJson(json);
}
