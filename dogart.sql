/*
 Navicat Premium Data Transfer

 Source Server         : rds-shanghai
 Source Server Type    : MySQL
 Source Server Version : 80025 (8.0.25)
 Source Host           : lm-rds-01.mysql.rds.aliyuncs.com:23306
 Source Schema         : dogart

 Target Server Type    : MySQL
 Target Server Version : 80025 (8.0.25)
 File Encoding         : 65001

 Date: 08/12/2022 22:31:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `lick_count` int DEFAULT NULL,
  `flag` int DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of diary
-- ----------------------------
BEGIN;
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (1, '他从来不说想我，聊天记录搜索了一下“想你”两个字，全都是：“那波你怎么不上啊 你在想你妈呢”', 6, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (2, '我的嘴真笨，总能把话题聊死了，跟你找话题好难，何况我这么喜欢你，连口嗨都要挑拣半天呢，其实每一句轻飘飘的爬，都是我难以启齿的心事。我最近越来越期待夜晚了，因为白天都没什么机会能和你说话，只能憋到晚上和你说句晚安。但你可别小看这两个字，它可包含着我今天清晨见到的阳光，中午看到的白云，傍晚遇见的微风，包含着我一天想对你说的话。说了这么多，其实你听得到吗，其实我在说，你仍然是我在忙碌了一整天之后静下心来认认真真去想念的人，今天我也很喜欢你。', 8, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (3, '你有几分钟没理我了 我发了很多消息都没引起你的注意 我想了很多 可能我是一条?在你的海里游 可能我是一颗草 我也愿意被你割 此刻你在干嘛呢？想你', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (4, '我一次又一次的翻看你的朋友圈 你的微博 甚至是网易云 还有游戏记录 你的微信步数 我想知道你每天都在干嘛 我真的好想好想告诉你我想你了 可是我怕你嫌我烦 看你最近过得很好就不打扰你了 这是我最后的温柔吧', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (5, '晚上你忘记关麦了 我听见你爸爸在打你 啪啪啪打的可凶了 你一直哭说爸爸不要 我很着急无论怎么大喊你都听不到 最后你突然大哭求求你别射!他竟然拿枪要打死你 然后传来了啊啊啊啊凄惨的叫声..我放下电话 握紧拳头 咬牙切齿 我发誓一定要杀了你爸 为你报仇。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (6, '她终于给我发消息了“朋友圈第一条点赞谢谢”我点开发现，她没有发朋友圈啊，页面上只有一条杠，她在试探我吗？这种神秘的期待感真是刺激', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (7, '你昨天晚上又没回我信息，我却看见你的游戏在线，在我再一次孜孜不倦的骚扰你的情况下,你终于跟我说了一句最长的话 “你他妈是不是有病” 我又陷入了沉思，这一定有什么含义,我想了很久你竟然提到了我的妈妈，原来你已经想得那么长远了，想和我结婚见我的父母，我太感动了真的，真的，那你现在在干嘛，我好想你，我妈妈说她也很喜欢你。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (8, '今天我观战了一天你和别人打游戏，你们玩的很开心，我给你发了200多条消息，你说没流量就不回了，晚上发说说没有人爱你，我连滚带爬评论了句有我在。你把我拉黑了，我给你打电话也无人接听。对不起我不该打扰你。我求求你再给我一次当好友的机会吧！', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (9, '我爸说再敢网恋就打断我的腿，幸好不是胳膊，这样我还能继续和你打字聊天，就算连胳膊也打断了，我的心里也会有你位置。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (10, '你说你情头是一个人用的，空间上锁是因为你不喜欢玩空间，情侣空间是和闺蜜开的，找你连麦时你说你在忙工作，每次聊天你都说在忙，你真是一个上进的好女孩，你真好，我好喜欢你！', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (11, '你跟他已经醒了吧?我今天捡垃圾挣了一百多明天给你打过去你快点休息吧我明天叫你起床给你点外卖买烟给你点你最喜欢的奶茶晚上我会继续去摆地摊的你不用担心我烦你床只有那么大睡不下三个你要好好照顾好自己不要让他抢你被子我永远爱你', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (12, '你三天没回我的消息在我孜孜不倦地骚扰下你终于舍得回我了你说nmsl我想这一定是有什么含义吧噢!我恍然大悟原来是尼美舒利颗粒他知道我关节炎让我吃尼美舒利颗粒他还是关心我的但是又不想显现的那么热情的天啊他好高冷我好像更喜欢他了?', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (13, '你想我了吧？可以回我消息了吗？我买了万通筋骨贴 你运动一个晚上腰很疼吧？今晚早点回家 我炖了排骨汤，累了一个晚上吧 没事我永远在家等你', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (14, '昨晚你和朋友打了一晚上游戏，你破天荒的给我看了战绩，虽然我看不懂但是我相信你一定是最厉害的，最棒的，我给你发了好多消息夸你，告诉你我多崇拜你，你回了我一句“傻b”，我翻来覆去思考这是什么意思，sh-a傻，噢你是说我傻，那b就是baby的意思了吧，原来你是在叫我傻宝，这么宠溺的语气，我竟一时不敢相信，其实你也是喜欢我的对吧', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (15, '今天我还是照常给你发消息，汇报日常工作，你终于回了我四个字：“嗯嗯，好的”你开始愿意敷衍我了，我太感动了受宠若惊。我愿意天天给你发消息。就算你天天骂我，我也不觉得烦。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (16, '你昨天晚上又没会我的消息，在我孜孜不倦的骚扰下，你终于舍得回我了，你说“滚”，这其中一定有什么含义，我想了很久，滚是三点水，这代表你对我的思念也如滚滚流水一样汹涌，我感动哭了，不知道你现在在干嘛，我很想你。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (17, '听说你想要一套化妆品，我算了算，明天我去公司里面扫一天厕所，就可以拿到200块钱，再加上我上个月攒下来的零花钱，刚好给你买一套迪奥。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (18, '昨晚你和朋友大佬一晚上游戏，你破天荒的给我看了你的战绩，虽然我看不懂但我相信你一定是最厉害的，最棒的！我给你发了好多消息夸你，告诉你我多崇拜你，你回了我一句：啥b，我翻来覆去思考这是什么意思？sh-a傻，噢你的意思是说我傻，那b就是baby的意思了吧，原来你是在叫我傻宝，这么宠溺的语气，我竟一时不相信，其实你也是喜欢我的对吧', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (19, '今天表白被拒绝了，她对我说能不能脱下裤子撒泼尿照照自己，当我脱下裤子，她咽了口水，说我们可以试一下。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (20, '刚从派出所出来，原因前几天14号情人节，我想送你礼物，我去偷东西的时候被抓了，我本来想反抗，警察说了一句老实点别动，我立刻就放弃了反抗，因为我记得你说过，你喜欢老实人。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (21, '疫情不能出门，现在是早上八点，你肯定饿了吧。我早起做好了早餐来到你小区。保安大哥不让进。我给你打了三个电话你终于接了有病啊，我还睡觉呢，你小区门口等着吧。啊，我高兴坏了。她终于愿意吃我做的早餐了，她让我等她，啊！啊！啊！', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (22, '我存了两个月钱，给你买了一双北卡蓝，你对我说一句谢谢，我好开心。这是你第一次对我说两个字，以前你都只对我说滚。今天晚上逛咸鱼，看到了你把我送你的北卡蓝发布上去了。我想你一定是在考验我，再次送给你，给你一个惊喜，我爱你。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (23, '昨天你领完红包就把我删了，我陷入久久地沉思。我想这其中一定有什么含义，原来你是在欲擒故纵，嫌我不够爱你。无理取闹的你变得更加可爱了，我会坚守我对你的爱的。你放心好啦！今天发工资了，发了1850，给你微信转了520，支付宝1314，还剩下16。给你发了很多消息你没回。剩下16块我在小卖部买了你爱吃的老坛酸菜牛肉面，给你寄过去了。希望你保护好食欲，我去上班了爱你~~', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (24, '在保安亭内看完了最新一集的梨泰院，曾经多么倔强的朴世路因为伊瑞给张大熙跪下了，亭外的树也许感受到了我的悲伤，枯了，我连树都保护不了，怎么保护你，或许保安才是真的需要被保护的吧。我难受，我想你。over', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (25, '难以言喻的下午。说不想你是假的，说爱你是真的，昨天他们骂我是你的舔狗，我不相信，因为我知道你肯定也是爱我的，你一定是在考验我对你的感情，只要我坚持下去你一定会被我的真诚所打动，！加油！不过我要批评你一下，昨晚你说去酒店跟人斗地主，我寻思两个人也玩不了呀，算了，不想了，毕竟打牌是赌博行为，不太好。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (26, '你已经好几分钟没回我信息了，在我孜孜不倦的骚扰下你终于肯回我了 你说滚 这其中一定有什么含义 我想了很久 滚是三点水这代表着你对我的思念也如滚滚流水一样汹涌 我感动哭了 不知道你现在在干嘛 我很想你 ', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (27, '明天就周六了我知道你不上班，但是我怕你睡懒觉不吃早饭饿坏自己，我早晨4点去菜市场买了新鲜活鸡给你炖鸡汤，阿姨给我用箱子装了起来，我骑上我280买的电动车哼着小调回家，心想你一定会被我感动的，箱子半路开了，鸡跑了，拐到了一个胡同里，凌晨4点的胡同还有穿超短裙和大叔聊天的美女，不禁感叹这个世界变了，她问我找什么，…………。对不起，我爱你', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (28, '12点队长过来准时交班，出去的车辆按喇叭我也没听到，只因我在监控中看到了穿睡衣出来倒垃圾的你，望你望的入神不由的傻笑了起来，队长过来骂我扣了我一天工资。我委屈，想抱你。你送的泡面真好吃。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (29, '今天的我排位输了好多把，我将这些事情分享给您，但是你一个字都没有讲，我在想你是不是在忙？我头痛欲裂，终于在我给你发了几十条消息之后，你终于回了我一个脑子是不是有病？原来你还是关心我的，看到这句话，我的脑子一下就不疼了，今天也是爱你的一天', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (30, '我存了半年的工资，给你买了一只lv，你对我说了一句你真好，我好开心。这是你第一次这么认可我，以前你都只对我说滚。今天晚上逛闲鱼，看到你把我送你的lv发布上去了。我想，你一定是在考验我，于是我用借呗里的钱把它买了下来，再次送给你，给你一个惊喜，我爱你。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (31, '其实我每月工资6000，但我只给你转2000，你以为我给你了全部。才不是，我一共舔了3个哪，我要舔的雨露均沾，才不会把你当成唯一。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (32, '昨天你把我拉黑了 我看着红色感叹号陷入了久久的沉思 我想这其中一定有什么含义 红色红色 我明白了 红色代表热情 你对我很热情 你想和我结婚 我愿意', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (33, '今天你问我借了两千块钱，说要做个手术，你果然还是爱我的，不是我的孩子，都不要。 ', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (34, '中午你无故扇了我一巴掌，我握着你的手说“手怎么这么凉，都怪我没有照顾好你，一定要更加对你好”  。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (35, '我给你打了几通电话，你终于接了。听到了你发出啊啊啊啊的声音，你说你肚子痛，我想你一定是很难受吧。电话还有个男的对你说“来换个姿势”，一定是在做理疗了。期待你早日康复，我好担心。 ', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (36, '昨天晚上也好冷，本来以为街上没人，结果刚刚偷电动车的时候被抓了，本来想反抗，但警察说了一句老实点别动，我立刻就放弃了抵抗，因为我记得你说过，你喜欢老实人。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (37, '找你连麦时你说你在忙工作，每次聊天你都说在忙，你真是一个上进的好女孩，你真好，发现我越来越喜欢这样优秀的你。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (38, '你从来没说过爱我，聊天记录搜索了一下“爱”，唯一的一条是：你好像乡村爱情里的刘能啊。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (39, '今天好开心啊，和你一起在峡谷嬉戏，打完一波团战之后看到你在打大龙，残血的我跳过去直接被龙爪拍死，但这一刻我觉得好浪漫，死在你的脚旁边，这是我离你最近的一次。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (40, '哥们，求你和她说句话吧，这样她就不会那么难过了。 ', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (41, '今天你把我的vx拉黑了，这下我终于解放了！以前我总担心太多消息会打扰你，现在我终于不用顾忌，不管我怎么给你发消息，都不会让你不开心了。等我攒够5201314条我就拿给你看，你一定会震惊得说不出话然后哭着说会爱我一辈子。哈哈。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (42, '昨天你把我删了，我陷入了久久的沉思 。我想这其中一定有什么含义，你应该是欲擒故纵吧，嫌我不够爱你。突然觉得无理取闹的你变得更加可爱了，我会坚守我对你的爱的 你放心好啦！这么一想，突然对我俩的未来更有期望了呢。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (43, '今天上班不是太忙，百无聊赖，又翻出了你的相片，看了又看。今天是我认识你的第302天，也是我爱你的第302天，可是这些你并不知道，也许你知道了，也不会在意吧。 此刻的我好想你！ ', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (44, '今天你跟我说我很丑，让我不要骚扰你了。我听了很高兴，小说里的主角都像你这样，最开始表现的很厌恶，但最后总会被我的真心打动。你现在有多讨厌我，以后就会有多爱我。嘻嘻。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (45, '我坐在窗边给你发了99条消息  你终于肯回我了 你说“发你妈啊”  我一下子就哭了 原来努力真的有用  你已经开始考虑想见我的妈妈了 你也是挺喜欢我的。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (46, '刚才我找你说话，你回了一个滚，我陷入了沉思，你还是如此的关心我，知道我腿受伤了，让我这样走，好感动！看来你还是爱我的！', 1, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (47, '今天下雨了，我去你公司接你下班。看见我你不耐烦的说：烦不烦啊，不要再找我了。一头冲进雨里就跑开了。我心里真高兴啊，你宁愿自己淋雨，都不愿让我也淋湿一点，你果然还是爱我的。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (48, '晚上和你聊天，10点钟不到，你就说困了去睡觉了。现在凌晨1点钟，看到你给他的朋友圈点赞评论，约他明天去吃火锅。一定是你微信被盗了吧。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (49, '今天我主动给你发了游戏邀请，邀请你和我单挑安琪拉，虽然我安琪拉很菜，可是为了和你打游戏，我还是毅然决然给你发了邀请。你说你不接受，你在打其他游戏。联想到我自己很菜，我突然明白，原来你还是在乎我的，只是不想一遍遍连招一套的在泉水送我走。我再一次感动哭了，因此，我好像更喜欢你了，你可真是一个宝藏男孩！', 1, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (50, '你的头像是一个女孩子左手边牵着一条秋田犬,犬=狗,而我是一条舔狗。是不是代表你的小手在牵着我呢?', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (51, '昨天你领完红包就把我删了，我陷入久久地沉思。我想这其中一定有什么含义，原来你是在欲擒故纵，嫌我不够爱你。无理取闹的你变得更加可爱了，我会坚守我对你的爱的。你放心好啦！今天发工资了，发了1850，给你微信转了520，支付宝1314，还剩下16。给你发了很多消息你没回。剩下16块我在小卖部买了你爱吃的老坛酸菜牛肉面，给你寄过去了。希望你保护好食欲，我去上班了爱你~~', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (52, '彩君，今天发工资了，我一个月工资3000，你猜我会给你多少，是不是觉得我会给你2500，自己留500吃饭？你想多了，我3000都给你，因为厂里包吃包住。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (53, '昨天你把我删了 我看着红色感叹号陷入久久的沉思 我想这其中一定有什么含义 红色红色 我明白了！ 红色代表热情 你对我很热情 你想跟我结婚 我愿意!!! ', 1, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (54, '昨天就为你充了710点卷，虽然知道你不会玩不知去向，但你说好看，你刚才说小号想要还想要一个，爱你的我还是满心欢喜的把剩下的100元伙食费又给你充了710，然后看到你小号并没有买，而是你送给了你的一个弟弟，你对弟弟真好，好有爱心，我感觉对你陷得很深了。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (55, '今天我给你发消息，你回复我nmsl，我想了半天才知道你是在夸我，原来是你美死了，你嘴真甜，我爱你。', 0, 1, NULL, NULL);
INSERT INTO `diary` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (56, '抢银行的时候被抓了，我本来想反抗，警察说了一句老实点别动。我立刻就放弃了抵抗。因为我记得你说过你喜欢老实人。', 0, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`, `nickname`) VALUES (1, 'admin', 'aaa123', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lick_count` int DEFAULT NULL,
  `flag` int DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of words
-- ----------------------------
BEGIN;
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (1, '曾经我觉得生活很难，但是遇到可爱的你之后，生活一下子就不艰难了，街道也好，晚风也罢，都很甜，人生得意须尽欢，没有你我会不知所措。', 25, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (2, '明明已经让她多喝热水了，为什么到头来还是这样的结果', 2830, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (3, '我觉得我挺会哄女孩子睡觉的 一句在吗她们就说要睡了', 22, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (4, '现在的女孩子也太主动了吧，才认识几天就要见家长？我刚刚问一女生去不去看电影，她说看你妈。', 90, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (5, '我吃完了一个五斤的西瓜，也没等到回复我的信息，我想，这应该不是你不够喜欢我，而是这西瓜不够大。', 31, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (6, '你只是看了我一眼，我却在心里演了场电影', 74, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (7, '你在我面前永远都闪闪发光，就像整个宇宙的星光都洒在你身上', 25, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (8, '最近体重上升了，绝对没有偷吃，只是把你偷偷放在了心里', 19, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (9, '有时候你会惹我生气，让我难过，可每当我想要发脾气，看到你噘嘴委屈的样子，我就忍不住想哄，绷不住想笑，朋友们说我脾气好，我倒觉得是你太可爱。', 19, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (10, '你叫冬天，我就喜欢冬天，你叫夏天，我就喜欢夏天，看吧，你叫什么没关系，主要是我喜欢你。', 12, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (11, '你应该在淘宝上架，因为你是宝贝呀', 14, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (64, '“月色和雪色之间，你是第三种绝色”', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (65, '“你是无意穿堂风，偏偏孤倨引山洪”', 8, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (66, '“做个梦给你，等到看你银色满际，等到分不清季节更替，才敢说沉溺”', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (67, '“云飘散在时光里，花绽放在时光里，你眨眼，时光在你的眼里”', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (68, '“你是这世间一切美好事情的前提，你是人间这不毛之地的高楼林立，你是海风渐暖吹过月亮的欢喜，你是春风得意”', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (69, '“把眉清目秀还给山水天地，把松间细雨还给初遇，把一见钟情，还给你”', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (70, '“星河耿耿，不如你眼眸璀璨，晚风习习，不如你温柔绮丽”', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (71, '“浮世三千，吾爱有三，日，月与卿，日为朝，月为暮，卿为朝朝暮暮”', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (72, '“见山是深情伟岸，见海是热情澎湃，见花见草信他们皆有故事，唯独见了你，山川沉默，海面静谧，花鸟鱼虫被光与尘凝固，世界万籁俱寂，只剩下你啊”', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (73, '“冬天的糖霜，秋天的麦芽糖，夏天的莲子羹，春天的绿豆酥，都甜不过你的笑”', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (74, '“世界兵荒马乱，唯有你，方能抵御这岁月漫长”', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (75, '“你眨一下眼，就翻阅了我心里的春夏秋冬”', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (76, '“突然明白这世间所有丹青水墨，山遥水阔，都是为了铺垫你这人间绝色”', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (77, '“你啊，大抵就是那陈年清酿，那七月急雨，是那词不达意的温柔，是我的心上人，天上月”', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (78, '“你的名字，是我见过最短的情诗”', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (79, '“你是字里行间的隐喻，藏在开头，躲在结尾，断句里有笑意，韵脚里有深情，句句无你，却句句是你”', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (80, '“你是远方的风景，我是游走的旅人，我翻山越岭长途跋涉，只为看你一眼”', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (81, '“我的心里原本荒芜寸草不生，后来你来这走了一遭，奇迹般万物生长”', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (82, '“你是日日夜夜的想念和永不落幕的深夜星辰”', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (83, '“你像是一场遥不可及的梦，却在我的世界里真实无比”', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (84, '见山是深情伟岸，见海是热情澎湃，见花见草信他们皆有故事。唯独见了你，山川沉默，海面静谧，花鸟鱼虫被光与尘凝固。世界万籁俱寂，只剩下你啊。', 8, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (85, '早知道就给你糖了，你居然在我心里捣乱。', 10, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (86, '你眼中是江湖，我眼中是你。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (87, '承蒙你出现，够我喜欢好多年。', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (88, '你是字里行间的隐喻，藏在开头，躲在结尾，断句里有笑意，韵脚里有深情，句句无你，却句句是你。', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (89, '还好还可以想你，不然拿什么对抗生活的琐碎和无趣。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (90, '你说你七点会来，那我就会一直等待。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (91, '任你去山高水远，你永远在我的心间。', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (92, '谁也不知道下一秒会发生什么，但是我能确信，在上一秒这一秒下一秒，我还是在喜欢你。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (93, '你呀你是自在如风的少年。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (94, '今天也宇宙无敌百无禁忌万夫莫敌超级喜欢你。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (95, '你出现在我诗的每一页。', 9, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (96, '你是远方的风景，我是游走的旅人，我翻山越岭长途跋涉，只为看你一眼。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (97, '你从我面前缓缓走过的时候，天气都变晴朗。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (98, '如果我能拥有超能力，一定要把你心里的暗角点亮，把怪兽打跑。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (99, '冬天的糖霜，秋天的麦芽糖，夏天的莲子羹，春天的绿豆酥，都甜不过你的笑。', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (100, '你是我身外，化白云任去来，推开孤城万里，吹渡春风几千载。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (101, '因为有你，连今天的落日都觉得可爱。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (102, '你是无意穿堂风，偏偏孤引山洪。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (103, '你是我情诗里念念不忘的每一行。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (104, '我说你属于四季，雾霭升沉的轨迹，烟火人间的命理。', 11, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (105, '半弯的眼，入口的烟，你比酒色甜。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (106, '不思进取，思你。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (107, '你言笑晏晏，如微风如细雨，荡漾于我心田。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (108, '世界兵荒马乱，唯有你，方能抵御这岁月漫长。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (109, '未经允许，擅自喜欢你，不好意思啦。', 123, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (110, '你的名字，是我见过最短的情诗。', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (111, '像是街边的偶遇，突如其来的一见钟情。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (112, '你眨一下眼，就翻阅了我心里的春夏秋冬。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (113, '喜欢三月，喜欢三月的雨，喜欢三月的太阳，最喜欢的还是三月的你。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (114, '你应该在淘宝上架，因为你是宝贝呀。', 9, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (115, '见什么世面，见你就足够。', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (116, '突然明白这世上所有丹青水墨，山遥水阔，都是为了铺垫你这人间绝色。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (117, '糖霜，秋天的麦芽糖，夏天的莲子羹，春天的绿豆酥，都甜不过你的笑', 9, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (118, '要一想到你，就拥有了柳暗花明的勇气和信心，想来想去，原来你就是我的底气', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (119, '像夏至的分界线，是我一生里最长的那个白天', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (120, '就觉得， 你笑起来嘚瑟嚣张的样子，宇宙无敌好看。你哭起来委屈巴巴的样子，天下第一可爱。你矫情，就像奥特曼爱小怪兽一样萌。你炸毛，就像加菲猫偷吃小鱼干一样傻。你撒娇呀，奥特曼小怪兽加菲猫甚至小鱼干都打成了一团，他们也想替我抱抱你。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (121, '走向我，我觉得一日不见如隔三秋；你朝我笑，我又觉得三秋未见不过一日\"', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (122, '眨一下眼，就翻阅了我心里的春夏秋冬', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (123, '物枯荣皆为你眼，我目眩神驰。而你一笑清明，潦倒我的众生', 9, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (124, '是我这一生只会遇见一次的惊喜', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (125, '过了青梅竹马 避开了情窦初开 如今我只想和你两鬓斑白', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (126, '风带着秘密吹过一整片森林 于是每一棵树都知道 我只喜欢你', 1, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (127, '我在船头。失岸于朦胧的扁舟,由你在帆尾,挂了一弯半月。月先坠入水,晕不出涟漪。我才知道,这是你眼中的银河里,我们摘到的梦。', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (128, '说片面是熬夜 说实在是失眠 说真的是想你', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (129, '你是世间最可爱的小星星 我爱了整个宇宙只为了跟你碰头\"', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (130, '其实你也没那么好，就是比其它女孩漂亮点、温柔点、聪明点、贤惠点、懂事点、大方点、谦虚点 ……', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (131, '还好还可以想你，不然拿什么对抗生活的琐碎和无趣', 4, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (132, '在这什么都善变的人间 我想陪你一起看一看这永远有多远', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (133, '想把西瓜最中间的一块儿，果盘里最大的一颗草莓，肉松面包上的一层肉松，蛋糕上最大的一块儿巧克力，天上最亮的一颗星，全都送给你', 140, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (134, '想咬你一口 尝尝你到底是什么东西做的 居然这么可爱\"', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (135, '不好意思了，一不小心把所有的喜欢都砸到你身上了', 1, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (136, '相比这个休明盛世的人间，我更愿意永远住在你心里。', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (137, '你才不是什么小人物 你在我这里，是所有的天气和心情', 5, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (138, '春风十里，五十里，一百里，体测八百米，海底两万里，德芙巧克力，香草味八喜，可可布朗尼，榴莲菠萝蜜，芝士玉米粒，鸡汁土豆泥，黑椒牛里脊，黄焖辣子鸡，红烧排骨酱醋鱼，不如你，全都不如你。', 2, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (139, '未经允许，擅自特别喜欢你，不好意思了', 6, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (140, '月亮藏进云里，如果你已经睡了，那我要偷偷吻吻你。你比一百只猫猫加起来可爱，我呢，比一百只猫猫加起来好睡，你要不要来试试？', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (141, '这是什么绝世小可爱 怎么看都是我喜欢的类型', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (142, '你下次路过 能不能不勾走我的魂 带我走', 540, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (143, '不要再撩头发了，来撩我吧！', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (144, '对你的喜欢可不是突如其来，是蓄谋已久', 7, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (145, '用百分制来计算 一杯草莓牛奶的甜度约等于十 你等于十杯草莓牛奶', 8, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (146, '最近体重上升了，绝对没有偷吃，只是把你偷偷放在了心里。', 3, 1, '', NULL);
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (148, '1', NULL, 0, NULL, '2022-12-08 14:26:59');
INSERT INTO `words` (`id`, `content`, `lick_count`, `flag`, `ip_address`, `create_date`) VALUES (149, '1', NULL, 0, NULL, '2022-12-08 14:28:12');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
