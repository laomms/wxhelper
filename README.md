https://github.com/ttttupup/wxhelper  VS2022重编译版


```c++
注入:
injector.exe -p pid -i wxhelper.dll
或
injector.exe -n wechat.exe -i wxhelper.dll

验证端口:
netstat -ano | findstr 19088
```
```c++
#define V_3_9_8_25 39825  
#define V_3_9_9_43 39943  
#define V_3_9_10_19 391019  
#define V_3_9_11_19 391119  
#define V_3_9_11_25 391125
```
WECHAT_VERSION=391125   
![image](https://github.com/laomms/wxhelper/blob/master/version.png)     
偏移自己查找修改      

```c++
const uint64_t kGetAccountServiceMgr = 0x1B557D0;
const uint64_t kSyncMsg = 0xc39680;
const uint64_t kSyncMsgNext = 0xc39680;
const uint64_t kGetCurrentDataPath = 0x224D830;
const uint64_t kGetAppDataSavePath = 0x25E1040;
const uint64_t kGetSendMessageMgr = 0x1B53FD0;
const uint64_t kSendTextMsg = 0x22C6B60;
const uint64_t kFreeChatMsg = 0x1B55850;

const uint64_t kDoAddMsg = 0x230EF30;
const uint64_t kSendImageMsg = 0x22BC2F0;
const uint64_t kChatMsgInstanceCounter = 0x1B5E140;
const uint64_t kSendFileMsg = 0x20D0230;
const uint64_t kGetAppMsgMgr = 0x1B58F70;
const uint64_t kGetContactMgr = 0x1B417A0;
const uint64_t kGetContactList = 0x219ED10;

const uint64_t k_sqlite3_exec = 0x3a5eda0;
const uint64_t k_sqlite3_prepare = 0x3a66a80;
const uint64_t k_sqlite3_open = 0x3a235c0;
const uint64_t k_sqlite3_step = 0x3a22da0;
const uint64_t k_sqlite3_column_count = 0x3a235c0;
const uint64_t k_sqlite3_column_name = 0x3a23fc0;
const uint64_t k_sqlite3_column_type = 0x3a23e10;
const uint64_t k_sqlite3_column_blob = 0x3a235f0;
const uint64_t k_sqlite3_column_bytes = 0x3a236e0;
const uint64_t k_sqlite3_finalize = 0x3a21e50;

const uint64_t kGPInstance = 0x58dd300;
const uint64_t kMultiDBMgr = 0x593abf8;
const uint64_t kPublicMsgMgr = 0x5938198;
const uint64_t kFavoriteStorageMgr = 0x593b790;
const uint64_t kHardLinkMgr = 0x593ab28;

const uint64_t kChatRoomMgr = 0x1B876C0;
const uint64_t kGetChatRoomDetailInfo = 0x2160bb0;
const uint64_t kNewChatRoomInfo = 0x2509CD0;
const uint64_t kFreeChatRoomInfo = 0x2509EB0;
const uint64_t kDoAddMemberToChatRoom = 0x21505b0;
const uint64_t kDoModChatRoomMemberNickName = 0x215EEB0;
const uint64_t kDelMemberFromChatRoom = 0x2150bf0;
const uint64_t kGetMemberFromChatRoom = 0x2162400;
const uint64_t kNewChatRoom = 0x2502540;
const uint64_t kFreeChatRoom = 0x2502740;

const uint64_t kTopMsg = 0x1d7d160;
const uint64_t kRemoveTopMsg = 0x2166090;
const uint64_t kInviteMember = 0x214ff90;
const uint64_t kHookLog = 0x1304e60;

const uint64_t kCreateChatRoom = 0x214fc60;
const uint64_t kQuitChatRoom = 0x215ac00;
const uint64_t kForwardMsg = 0x22c1590;

const uint64_t kOnSnsTimeLineSceneFinish = 0x1a73150;
const uint64_t kSNSGetFirstPage = 0x2e1bec0;
const uint64_t kSNSGetNextPageScene = 0x2e41a70;
const uint64_t kSNSDataMgr = 0x21dd6b0;
const uint64_t kSNSTimeLineMgr = 0x2dadf20;
const uint64_t kGetMgrByPrefixLocalId = 0x213afb0;
const uint64_t kAddFavFromMsg = 0x2930e40;
const uint64_t kGetChatMgr = 0x1b82bf0;
const uint64_t kGetFavoriteMgr = 0x1B5C670;
const uint64_t kAddFavFromImage = 0x293d0f0;
const uint64_t kGetContact = 0x21945d0;
const uint64_t kNewContact = 0x2519300;
const uint64_t kFreeContact = 0x25199b0;
const uint64_t kNewMMReaderItem = 0x8c79a0;
const uint64_t kFreeMMReaderItem = 0x8c6da0;
const uint64_t kForwordPublicMsg = 0xddc6c0;
const uint64_t kParseAppMsgXml = 0x11b0a70;
const uint64_t kNewAppMsgInfo = 0x91a550;
const uint64_t kFreeAppMsgInfo = 0x8fd1a0;
const uint64_t kGetPreDownLoadMgr = 0x1c0a3a0;
const uint64_t kPushAttachTask = 0x1cda920;
const uint64_t kGetCustomSmileyMgr = 0x1ca0320;
const uint64_t kSendCustomEmotion = 0x21b04c0;
const uint64_t kNewJsApiShareAppMessage = 0x26cda20;
const uint64_t kInitJsConfig = 0x137bc00;
const uint64_t kSendApplet = 0x13c0920;
const uint64_t kSendAppletSecond = 0x13c1150;
const uint64_t kGetAppInfoByWaid = 0x13c5790;
const uint64_t kCopyShareAppMessageRequest = 0x13c0670;
const uint64_t kNewWAUpdatableMsgInfo = 0x1BD27E0;
const uint64_t kFreeWAUpdatableMsgInfo = 0x1B97590;
const uint64_t kSendPatMsg = 0xB2BB00;
const uint64_t kGetOCRManager = 0x999780;
const uint64_t kDoOCRTask = 0x2c53910;

const uint64_t kGetLockWechatMgr = 0x1c85010;
const uint64_t kRequestLockWechat = 0x1c397d0;
const uint64_t kRequestUnLockWechat = 0x1c39a70;

const uint64_t kOnLoginBtnClick = 0x202bc30;

const uint64_t kGetQRCodeLoginMgr = 0x201e350;

const uint64_t kUpdateMsg = 0x21421a0;
const uint64_t kGetVoiceMgr = 0x1e13320;
const uint64_t kChatMsg2NetSceneSendMsg = 0x1b70fd0;
const uint64_t kTranslateVoice = 0x2353d50;
const uint64_t kNewWebViewPageConfig = 0x1b53ae0;
const uint64_t kFreeWebViewPageConfig = 0x1b53d10;
const uint64_t kGetWebViewMgr = 0x1b43950;
const uint64_t kShowWebView = 0x302ed30;
const uint64_t kSetUrl = 0x13dd410;

const uint64_t kNewPayInfo = 0x1bcd930;
const uint64_t kFreePayInfo = 0x1b92450;
const uint64_t kTransferConfirm = 0x2f8c750;
const uint64_t kTransferRefuse = 0x2f8d340;

const uint64_t kAddFriend = 0x1f3a350;
const uint64_t kVerifyApply = 0x1B3BBE0;
const uint64_t kDoDelContact = 0x2310120;

const uint64_t kGetSearchContactMgr = 0x1f9a730;
const uint64_t kStartSearch = 0x22a4200;
```
