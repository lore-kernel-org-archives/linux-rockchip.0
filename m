Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70F45C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 08:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gs57tUoX9P7YgngEqX0W6zMM1ccf0EILE4s+xlFrRi8=; b=xTAVYiHHgykuCy
	AiKhdJOqUKDcjJUtl1xMVXsZKt0AwnKpRhcP1tJJCatLxDmt6+plivEkHz6itB62hrfjwWw3tjb+f
	v4Q4losLQ0vZGflM3gE5eXcdQK1ss1PUCczv0yPzOlImJoOINMtksaUf4p3d7R5FEUKjWfvWkhwty
	+7nfGywN8ekwFQycwEUqXbjwvkzi6963GArudZzujw5ICUjecKqN9hxnRQ/s7G1ZHicqyQGgNcuMe
	gKem6LgDSkGeqqfl+h2YevEghpqghhGTG8/dS4V35hzjITSGK/BJX6MQFyanAnTkXcmT+IqfNmY7R
	rJ33Jjyq3A0bLKAbTjig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLf8r-0000000G4ON-1mzg;
	Mon, 24 Jun 2024 08:33:37 +0000
Received: from mail-psaapc01on20702.outbound.protection.outlook.com ([2a01:111:f400:feae::702] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLf8j-0000000G4H8-1VhE;
	Mon, 24 Jun 2024 08:33:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LyPFjDRAFE9mMZRnZ8u8EMGjbPXiXnRUCi4igKPXMgSQbbaf80Ekb66wmWgoYvsNQ7goo409Wcn+zTO1Y1tUSccDdI9DbFc8R6iXWc5wh++s/2y1YS44bBEZ8Sv6jQlDqZkepd1x6P0k/vPKNfpw4uuHz1Yue0djfqKeQnfZDCtow5QpQhKhtkKgHZVCevMjxeGN/elv6JJmVuPY2GttHt3CVXUzn5I6iTjtCpRnz7pB/jIcWmjKU7bwLJnpPz08xNFzDAwQzsSN/e2K1v9LZL9j84ZbzIHH4STc3/PTjm2v+TEQs/kSZ4bKXke951LY5eE68G+xLhePlSNl2C7XLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LnlOEn4GS58Qn2XFXnX1/gT9ceh3HRewoyzMbRqqK4w=;
 b=T9DzqGasx1MF+TQ4L4eIY2i1zR5FUrqpJbqJvLnecu4llZ6qrySEGFBRd631u9z1NPzJO1WWaXHyWUC6EjeGu2mt3vUO4ikALDprsytTkEL742gRdZurVDlYYlwSic+odkQBhyL6WpetJbBOylTyKGqopz5dkNB1iNxOrsX5la4jRjn6qMytdynlfcU7RboO1QK3pIjKxRbWKk3r6MjD5RhyAYidgWsi6PPthRKRWPbtPeyohmcwR/XZcwuNFHf3QbomzAR0nhKsHHUhBZ/RZojV5wq1M8vXpV83WC3XP9twYQQhr8LknyPAvbFe2rtGCNkJOd12q2DptSKshMpZqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SG2PR03MB6456.apcprd03.prod.outlook.com (2603:1096:4:1c4::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.26; Mon, 24 Jun
 2024 08:33:15 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.024; Mon, 24 Jun 2024
 08:33:15 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: nick@khadas.com,
	efectn@protonmail.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v4 2/2] arm64: dts: rockchip: Add bluetooth rfkill to Khadas Edge2
Date: Mon, 24 Jun 2024 16:32:36 +0800
Message-Id: <20240624083236.1401673-3-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240624083236.1401673-1-jacobe.zang@wesion.com>
References: <20240624083236.1401673-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SG2PR02CA0107.apcprd02.prod.outlook.com
 (2603:1096:4:92::23) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SG2PR03MB6456:EE_
X-MS-Office365-Filtering-Correlation-Id: 94a335e6-e1c4-4407-5850-08dc942849b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011|7416011|52116011|38350700011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2Nmr9sAlJm+t/ieLvFos/i6dNoT7xyt0E7e565TFFCmyc+LxlGHfWoaZVEQd?=
 =?us-ascii?Q?hA5Ks+Juxj/XdVwiUMVvZKDmYcT/C4WS56+qrUC3oSj8raFgO/Hs6jJl0c0Q?=
 =?us-ascii?Q?/jHunvOd6IGEktcDp9yO41YMEeJ8+P5/DYUWGtTcjw6YzFfx1+BicbjkKd18?=
 =?us-ascii?Q?aQigyaJw187YOYCHu6PeOr0hGTTAaXxGHq85H95I77mf3p4odPJCkDEj6pvk?=
 =?us-ascii?Q?t3IqnSQ5h2NTK8TAGwt1j/B+9GSivOwvYTI855jZM66REIrvjQh1MT3B++CR?=
 =?us-ascii?Q?0ECSQvvrmxBifmaQXT4OPC2zzbmUDO1spkd6CteJ40/WoR0pa5BIE4J03NLa?=
 =?us-ascii?Q?k+fvkh53ngFU3+miZYA+EKTsrCSyV5Ww8/JzvaqicKyj+RraWK9ekHmJCh+D?=
 =?us-ascii?Q?APVm6009rTObfJYFCAVTySav9+vFQ41QuDsZ2aTy1+auwXrfHiDF+qIyacu+?=
 =?us-ascii?Q?T0/guI5tiZ6bQCpyRlNSQsiGxbz/xF5kHoIbNzHSavkoozxba1a0h5SeRGnA?=
 =?us-ascii?Q?h89t+LvV52mpluSDocawJYZP0XO3wxEkeSPkZFELkdPFswznm5JLwxrJ95sr?=
 =?us-ascii?Q?6tlAfNISWXaLNFkKqn0s/X02TU54vqPmcbV31kfzgpzlYLPYYL2+iHUGKRa2?=
 =?us-ascii?Q?djieZhvAxB33VH3m9SZKFrNC/UBOGUenSfdGQtK0LYVpOTimFtK2dPdXwfbd?=
 =?us-ascii?Q?XWzyDUH9C9EByVnQng6UYPXvIepP16XD20vyiEO0+Xn/nx8NkE+8NOoChcuG?=
 =?us-ascii?Q?J5VAKmL9BSq+mTF/T93oLo17/BhZWmRCvM1MuYIvzCF2IW3ZMADslou5gjBk?=
 =?us-ascii?Q?VcD7X4sc/ekT//lB5OvXSVpT2drYW0Fz3/mnQqDIzoOYqsQtYXrz237OFV9V?=
 =?us-ascii?Q?4fstdfPgDRvnWnuYu+QFsbH0IWFkq4g+nGIZHMYsY02+RBNcRPMo+EsSjJEv?=
 =?us-ascii?Q?CkFRwWTNl/ryuoUJ6mjWmfGY3Fsm1y54fOCzen8GaeJzMxuKPlA3ee8GuxDg?=
 =?us-ascii?Q?nD6kkxBB76wELecrQNjcG+Gv1MV925KO9D6Bd4Mh5XBpZU04DUHDdX48iw1t?=
 =?us-ascii?Q?Y2jtHgi913sF4gO5E3Xh8yEKlh1gs2/jFygH/SKhq2Y5FNPYZcuM3x3mRt87?=
 =?us-ascii?Q?u3CksN5VO3rI9lX3hPPyIn+MPe8zbY9QchfqWUDDUN6TVzAA0VFP6zCBvOs+?=
 =?us-ascii?Q?RqdnF48dGCo4wXKZiwsfJ9WzGp1K79LrUNvvDnGoRpXdpKVrw4Z/S8ywe5Ja?=
 =?us-ascii?Q?4vxeetRsERmMy+Kapsyz7Ooh0ploF/WJRA4vNHEWv6vfDf+9KNqd/0kXnccZ?=
 =?us-ascii?Q?Z5JRSAzcSdh/FjUD5tptIyTEduXqvhjBY82LNaGJS0/VfBPCz2CdC2HHM9cX?=
 =?us-ascii?Q?MaTCwKQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011)(7416011)(52116011)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UXqdmOYPQnqUeVxgc4x1cQQqIFAzbo3bx1TFTcGmn/6UMNufbr80UAN7/hka?=
 =?us-ascii?Q?y96z9jkjTRdFOcwtAdbtyV+q8sJQUWsrpmH1KivFWgFdNIidZgysDQtBTbdW?=
 =?us-ascii?Q?tRZ82bamVTtUvcUlbvr5qyfUE8TqaG5A+wSnlTFd77CSPGxsD5a45GWH4/Vh?=
 =?us-ascii?Q?FfF5J9uG64CaRxZ1XYg1SLNS20UOS1z7PBvGtIMO3e6cOVhLWTiI5UTo1IWc?=
 =?us-ascii?Q?BxMAv/HLfutJxu8eudimZRzIIqhtvwKzbL3BCEhytPrJ82jUtQPip0U4L8Ud?=
 =?us-ascii?Q?A8K9ikh4c65oMjM28rdFYkpjrhYLHWOzkI4WqPttZpvga7bYF7Oytix0n+mt?=
 =?us-ascii?Q?XRcwecYEsPO/aCMgXmwPJak3Bl8bxmRWpqNvBFnBZfWacKB8xDLVFnrMt/sY?=
 =?us-ascii?Q?5Bjl/UC4xlEmXEGNYX3J86c54xHBplxkD66/2tuDbpMPblQndwe6oKoDll11?=
 =?us-ascii?Q?v0+x1KxSf4LyuLkw/AYlQJJZwE/P8qSOZOtgaDV57TRvgby2JAodTtVECIqo?=
 =?us-ascii?Q?zXeE0tCfIktX99IKVaBg+wKGdgj84+5vMSEXSoMb04bUQQCg2U1euwiEXY1j?=
 =?us-ascii?Q?Ox6xgk+ffiFjynYMNDjtFcs93mG5M1i+bmeMqPcR90bKGv3qheZjc2rAWHbs?=
 =?us-ascii?Q?I6/Xm5cexsCIU4sd80t1bObbOWelB3hQP9yeD0Vu6rXBWnZZ0PcOEr97ZNe3?=
 =?us-ascii?Q?0FmfukR0UwBbOw5leZ/lnbkNyB1P83AHpxR6+RqIt4+2mR5Q/iFx2QzbLtht?=
 =?us-ascii?Q?EkAezPQoG7y7hTjQtvCnp1Tk/JTPQpVieIJmAAaBjEOQyDBVb1JYyM6k2mWW?=
 =?us-ascii?Q?aKsV2+uc/IIIuUbUFirUu0wocDBWR6M0sga2rpbuX6r9NUvNtNDlip0mFNnI?=
 =?us-ascii?Q?aFai4OFowcPmFS6KmjXVXe7RJhKFanuBclhzWE/XApGQEYwjgP2SuTDaxEVT?=
 =?us-ascii?Q?/94Jh8r4LlKiu6BIHtnSOqxHQCv9hIiVq+cjNryMt0tZm/7rwqFfxOpf6ohr?=
 =?us-ascii?Q?eNcyz6D7PNT2osN2DSpa+pa8M32VBBoRU1sPwOtwjgo0O7W/0+rPYa/b6dUr?=
 =?us-ascii?Q?SoFRtFWJa7KHY3Dl36Amf7Y4jiy0QN0dRziUDIQwKncpHPoAH4SdDliUoNAS?=
 =?us-ascii?Q?GMXt4CLO/uRsmREtSSsukYwV9D/XlTKdb6CvWgppfO19W0Cyi0GwQnG8wTl4?=
 =?us-ascii?Q?Lt82TXBRSNgdnfzvhOkPGjZcPe3pwKTO0pQE54CIW/HK8eoweN/TYkaFsv5X?=
 =?us-ascii?Q?/rKWD2q/J3m78RlkNueYV8omXRASd2zRP4yYu8T57ECYcEtFQ789ft3eDt5w?=
 =?us-ascii?Q?DjvBFMVShvzzGVaqN1AiZApPfZyMcwk7NM1R8iZB9Yl+GyFx9pN0t4wmqvyK?=
 =?us-ascii?Q?AREeWrp39Hb4sRGpFpgRO3pDbMv819SVPv6uwgpJRIDrxCxaNNyu680ynNWO?=
 =?us-ascii?Q?KpLi+0IfZoD9pz88Toq6zJ7cbXaTUQdJwPY5izCgtwNJfN2sPjEfz7CUyzgY?=
 =?us-ascii?Q?Z32gOmhS5nRl+IWb5G0Zsckbap01FAMmhnMSrAJ/qHbLIqyZjT2Eqs3F+1mX?=
 =?us-ascii?Q?ckK3BDdTt5scxopfogN58R4eeNISq6uhr17uXH+M?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94a335e6-e1c4-4407-5850-08dc942849b7
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2024 08:33:13.7971
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9YEaqoY+Zg/mw3V5fWXXiJzQaYXlMrCuKMEMZUvpMAnGiatGyAuA4zt15IgJVPU0mOQRet+tZk6Jv+O0YFgCNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6456
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_013329_446923_24885A3E 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This add bluetooth node, in uart9 add RTS node in pinctrl.

Co-developed-by: Muhammed Efe Cetin <efectn@protonmail.com>
Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 8c0bc675690dd..3b6286461a746 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -750,8 +750,15 @@ &uart2 {
 
 &uart9 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart9m2_xfer &uart9m2_ctsn>;
+	pinctrl-0 = <&uart9m2_xfer &uart9m2_ctsn &uart9m2_rtsn>;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reset_pin &bt_wake_host_irq &bt_wake_pin>;
+		shutdown-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 &u2phy0 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
