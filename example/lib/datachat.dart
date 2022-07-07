/// sender_ext : {"sip_domain":"chat.mypt.vn","expired_time":"-1","sip_password":"12345678a@","sip_proxy":"wss://chat.mypt.vn:5443/ws","sip_transport":"TCP","username":"phuongnam.kietnt6_fpt.net"}
/// sender_info : {"avatar_img_src":"https://mytinpnc.vn/data/avatar_img/male_default.jpg","email":"phuongnam.kietnt6@fpt.net","fullname":"Nguyễn Thế Kiệt","nickname":"phuongnam.kietnt6_fpt.net","username":"phuongnam.kietnt6@fpt.net"}
/// channel_id : "760296"
/// description : ""
/// attached_file_src : ["https://mytinpnc.vn/data/tool_support/0073530342547324_1.jpg"]
/// attached_img_src : ["https://mytinpnc.vn/data/tool_support/0073530342547324_1.jpg"]
/// text : ""
/// reply_for : ""
/// title : ""
/// date_cmt : "28/06/2022 11:38:23"
/// txt_date_cmt : "0 phút trước"
/// create_date : "28/06/2022 11:38:23"

class DataChat {
  DataChat({
      this.senderExt, 
      this.senderInfo, 
      this.channelId, 
      this.description, 
      this.attachedFileSrc, 
      this.attachedImgSrc, 
      this.text, 
      this.replyFor, 
      this.title, 
      this.dateCmt, 
      this.txtDateCmt, 
      this.createDate,});

  DataChat.fromJson(dynamic json) {
    senderExt = json['sender_ext'] != null ? SenderExt.fromJson(json['sender_ext']) : null;
    senderInfo = json['sender_info'] != null ? SenderInfo.fromJson(json['sender_info']) : null;
    channelId = json['channel_id'];
    description = json['description'];
    attachedFileSrc = json['attached_file_src'] != null ? json['attached_file_src'].cast<String>() : [];
    attachedImgSrc = json['attached_img_src'] != null ? json['attached_img_src'].cast<String>() : [];
    text = json['text'];
    replyFor = json['reply_for'];
    title = json['title'];
    dateCmt = json['date_cmt'];
    txtDateCmt = json['txt_date_cmt'];
    createDate = json['create_date'];
  }
  SenderExt? senderExt;
  SenderInfo? senderInfo;
  String? channelId;
  String? description;
  List<String>? attachedFileSrc;
  List<String>? attachedImgSrc;
  String? text;
  String? replyFor;
  String? title;
  String? dateCmt;
  String? txtDateCmt;
  String? createDate;
DataChat copyWith({  SenderExt? senderExt,
  SenderInfo? senderInfo,
  String? channelId,
  String? description,
  List<String>? attachedFileSrc,
  List<String>? attachedImgSrc,
  String? text,
  String? replyFor,
  String? title,
  String? dateCmt,
  String? txtDateCmt,
  String? createDate,
}) => DataChat(  senderExt: senderExt ?? this.senderExt,
  senderInfo: senderInfo ?? this.senderInfo,
  channelId: channelId ?? this.channelId,
  description: description ?? this.description,
  attachedFileSrc: attachedFileSrc ?? this.attachedFileSrc,
  attachedImgSrc: attachedImgSrc ?? this.attachedImgSrc,
  text: text ?? this.text,
  replyFor: replyFor ?? this.replyFor,
  title: title ?? this.title,
  dateCmt: dateCmt ?? this.dateCmt,
  txtDateCmt: txtDateCmt ?? this.txtDateCmt,
  createDate: createDate ?? this.createDate,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (senderExt != null) {
      map['sender_ext'] = senderExt?.toJson();
    }
    if (senderInfo != null) {
      map['sender_info'] = senderInfo?.toJson();
    }
    map['channel_id'] = channelId;
    map['description'] = description;
    map['attached_file_src'] = attachedFileSrc;
    map['attached_img_src'] = attachedImgSrc;
    map['text'] = text;
    map['reply_for'] = replyFor;
    map['title'] = title;
    map['date_cmt'] = dateCmt;
    map['txt_date_cmt'] = txtDateCmt;
    map['create_date'] = createDate;
    return map;
  }

}

/// avatar_img_src : "https://mytinpnc.vn/data/avatar_img/male_default.jpg"
/// email : "phuongnam.kietnt6@fpt.net"
/// fullname : "Nguyễn Thế Kiệt"
/// nickname : "phuongnam.kietnt6_fpt.net"
/// username : "phuongnam.kietnt6@fpt.net"

class SenderInfo {
  SenderInfo({
      this.avatarImgSrc, 
      this.email, 
      this.fullname, 
      this.nickname, 
      this.username,});

  SenderInfo.fromJson(dynamic json) {
    avatarImgSrc = json['avatar_img_src'];
    email = json['email'];
    fullname = json['fullname'];
    nickname = json['nickname'];
    username = json['username'];
  }
  String? avatarImgSrc;
  String? email;
  String? fullname;
  String? nickname;
  String? username;
SenderInfo copyWith({  String? avatarImgSrc,
  String? email,
  String? fullname,
  String? nickname,
  String? username,
}) => SenderInfo(  avatarImgSrc: avatarImgSrc ?? this.avatarImgSrc,
  email: email ?? this.email,
  fullname: fullname ?? this.fullname,
  nickname: nickname ?? this.nickname,
  username: username ?? this.username,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avatar_img_src'] = avatarImgSrc;
    map['email'] = email;
    map['fullname'] = fullname;
    map['nickname'] = nickname;
    map['username'] = username;
    return map;
  }

}

/// sip_domain : "chat.mypt.vn"
/// expired_time : "-1"
/// sip_password : "12345678a@"
/// sip_proxy : "wss://chat.mypt.vn:5443/ws"
/// sip_transport : "TCP"
/// username : "phuongnam.kietnt6_fpt.net"

class SenderExt {
  SenderExt({
      this.sipDomain, 
      this.expiredTime, 
      this.sipPassword, 
      this.sipProxy, 
      this.sipTransport, 
      this.username,});

  SenderExt.fromJson(dynamic json) {
    sipDomain = json['sip_domain'];
    expiredTime = json['expired_time'];
    sipPassword = json['sip_password'];
    sipProxy = json['sip_proxy'];
    sipTransport = json['sip_transport'];
    username = json['username'];
  }
  String? sipDomain;
  String? expiredTime;
  String? sipPassword;
  String? sipProxy;
  String? sipTransport;
  String? username;
SenderExt copyWith({  String? sipDomain,
  String? expiredTime,
  String? sipPassword,
  String? sipProxy,
  String? sipTransport,
  String? username,
}) => SenderExt(  sipDomain: sipDomain ?? this.sipDomain,
  expiredTime: expiredTime ?? this.expiredTime,
  sipPassword: sipPassword ?? this.sipPassword,
  sipProxy: sipProxy ?? this.sipProxy,
  sipTransport: sipTransport ?? this.sipTransport,
  username: username ?? this.username,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sip_domain'] = sipDomain;
    map['expired_time'] = expiredTime;
    map['sip_password'] = sipPassword;
    map['sip_proxy'] = sipProxy;
    map['sip_transport'] = sipTransport;
    map['username'] = username;
    return map;
  }

}