Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3164EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 11:06:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8E066120D
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 11:06:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C8E066120D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nh17z1k3EOU9CvbMKJAI3mZskvU5zxp5EVIA5oObXbo=; b=mpzymgOWXi9In/
	jwQcejCCh93/ygHeyU/b4x3mg2mc4q4nxZw0p+vFSonWQ5Ty44eOOVR0NGDIFiiI21t6UOaDq19Pq
	2uBSy3Q34ks06/DpXMvTJ5NKv1rw5ukkVCTU95uGolHpXzE/EI4w2p8bGD+DrA8Zh1COcvT9WD2Kl
	hSrhKRW3xVqHhO5V4F+dUdWd+vEX07zk2FzzB4aYnoScdas35t2nIktygByyrDD6MxL9VqxZmeKDi
	2zXoQEDOuAElNhw0bnkysXu3loFwT07okPyQfNm80oGjGuUyVjJUZvRRO+fllbzNGG9cNlCOGorrp
	L1xQLO8EWx7vJW2SjOCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRBhI-00DqKA-DL; Fri, 17 Sep 2021 11:06:24 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRBh4-00DqH6-VA; Fri, 17 Sep 2021 11:06:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGwRu7///Q1cxQxLjcU1QvlzO+oJWARm4Dl/htwqsEadCsWzPnkeUBPIWD4Jh4qQX3KUGwQKHCFCG/fzP97jmgP6/v569/xcESt3opC0SkLbGqbh4JOu14UMJWkJd7KhROVQUKgsqcLikbz1quXHjljIf2MPbP4sgWXk416VhFBSgs70Txwk1+CD61QSYe03i1KjmGjccK+8IJc7cTbWSHgLPbZ9yKL67yhTth5+c4ejaxaCw25QnjGOm0mN4diAOG+a9vIPADgXErm03ihAxJzd2ZeVPqmumqjRhAZ+GSJ0KYJwmUeI3giJ0Jn+rgHNM03FC/O2VGmwzWm9YCaw9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=HK//l9cS6DoixLEubtZ+1JbssvQRWe20pE5zGDdrZ2U=;
 b=CuOV/oQMQRLqdjPKfehF9am/cJwD419UEzcokdqolYXLHsH0YPEXEZ+M0phekzGeKJcqEp7X23xCROv2E/HTy9yP0gjyKgu4COksFmqVZGkSM8VET4dtXwpD5FVep/DD+E4TeWRXYuDhIeMc/zuJ45OCQZfCx+OuerjUng+/akDI1PwCCSEtlLyNjXYjz2MVzmeS/qaRbghnkY/woxesUhYBGg1XtjW1uP9voIDLxLuypIi/D9TMdi4NaejC1/OfAKrTSTD6mBtO95zfHqsJjsipRgB3NsSwrCbFLBxYB9LUV4nTkivmLx1HaAk0nMIkgm0JmXJ2pEYMNOwV54Aa9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HK//l9cS6DoixLEubtZ+1JbssvQRWe20pE5zGDdrZ2U=;
 b=Nvazpq4ghsRm4YAOxD7nmqj5P5V0hnzTD3vdZ1hkJi+EXj4p8b9gpLOoO9C1EcIvonV28mdX2TWXAA35ASrEfhXqZZE4robAeK+AxD/48Fnfu6a5LIoCdojIpqy8ZB83RzHv7IilfngGZiS22Bx5XyO8zoVD5kOpUKe+ch0++vs=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6331.eurprd08.prod.outlook.com (2603:10a6:10:251::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 17 Sep
 2021 11:06:01 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4523.017; Fri, 17 Sep 2021
 11:06:01 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Simon Xue <xxm@rock-chips.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH] arm64: dts: rockchip: move aliases to rk356x dtsi
Date: Fri, 17 Sep 2021 13:05:28 +0200
Message-Id: <20210917110528.24454-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR06CA0106.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::35) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR06CA0106.eurprd06.prod.outlook.com (2603:10a6:803:8c::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 11:06:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 95ac4489-c19e-408c-b8b9-08d979cb2268
X-MS-TrafficTypeDiagnostic: DB9PR08MB6331:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB6331AC9536C2203CD5F6A20FF2DD9@DB9PR08MB6331.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mWfYTm5LoFY9nZ9PL2zfVcIRqmFqa+CO7C4Tre+GO2+YY0QhcrqGC2B/0XRLAu8uH+kjb3Nh39iyJk/TiZDD+AiExJo9G0Wzs6+L34e7BEMpnV1p7cf3NZc9dScAut1UsCUBNklSRVk52rpFGSRDFExycGM1PmryMzlvmJkPwvk4AERMbEJ9rhLOYBpiwLWl6cbBNrfwIIIiFrl/csM3TJiEpEG2RYuXYS2h/1EKNsp4kz6b7HjA6xPziWR0CZ//ZC99O/mLFFZ7D+C3GhD1vqz9x6UWFycsRh/uuR6AhJzqxTaJQFuEy36pYcgSxQ+3w01+LVXZHWH1Pcc4x75RBNBpPQ3Rqdaej8u262+PTKG04QARzBJ7rfpqRhj6vbqLt9aKi2pH4VGPgJuso4inM8nMvfb3LuFrzyQ+JD4y7Nx7RamRYlaN+CGEqHcJYSFHPZRV3zhEUIJ1bfUSwlkWmhQKdsbEfa17YNEB6+5SjBuhwnfcHftNkx2XlD86/jW5MehOzT/sKl5OVD8HkdOdgMvJ2+/ZBd8iBFnryYs30KPo/Bx5Hwyra2CKxsOOMEzeEepd/Fe4/u2EiLr9iqbzsouVxxrL4iFRv+eIQU+gU7zSKOzAJerDTCkwJqci/OKlGUgKpItxikMgBKvtsvyKcV006ibkfRWJP1kOf416jmRtSfCPz3wA8SI3jHXPykwUKEjFHQBHee70Apkh7gghHg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(39840400004)(376002)(396003)(5660300002)(6486002)(4326008)(66946007)(6506007)(86362001)(2906002)(186003)(54906003)(1076003)(8936002)(508600001)(44832011)(26005)(8676002)(956004)(6666004)(6512007)(36756003)(38100700002)(52116002)(107886003)(38350700002)(2616005)(316002)(66556008)(66476007)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k6077RALLficqLzp1g3kQz8XeErP3+nxJ7S/eXsiDLpzSV4OPeT4+fPjqqKS?=
 =?us-ascii?Q?hG0JB7c2F5EvhIlZMqgytY+iFzX7u5MS4uLXjOdt9Aj3SlGpjYHCr0vARLG+?=
 =?us-ascii?Q?GlMGcH47NDjvGdwsc/3mhMr3ezY4Yue919k4JIfkmhDv/CU9LP9U2Mo5KAr/?=
 =?us-ascii?Q?SB436sbzhzY3GWFCo/7b4LdCvXwVOPYSiSsOPILpaFnRJhoGIewryy6b0WgB?=
 =?us-ascii?Q?K4W+ZfV7HrnejPOCs0OOjH6MNGVLlfY9fq16koRYFj8d82jMA/IKpd5E3v72?=
 =?us-ascii?Q?corli0Vik79+J6ijH8RinQlOsOqauU7eg4fsT1VSJsC9WwJuc0J4ae0eeEcl?=
 =?us-ascii?Q?Rr5U0XyeD9drpQ99A2xkfCg3uVdiZR8fZPtp/n3rDakLv2tKxuVQALGQ0s/b?=
 =?us-ascii?Q?Mjvclmw+MwdvqWpqaIxMUh65qedqYav8fT/Pc8D/HtgVOfluNGgxbRN6M85o?=
 =?us-ascii?Q?biYyq4fX8YppYb0IqZYNIUpDlmThl28sAU6/Efwc2sDO0SKsvexik/n9BCXF?=
 =?us-ascii?Q?QBeW95uebBc1KQN/bZeongpEEiEx+gBj/Bt7MpwXzlbsuU88Q2AOF5P8fGwE?=
 =?us-ascii?Q?xZCwHkDT6wHLJXARBCwDZaNG774yx4dXPC/DAEEZ3UJgbz7v4pm8+U8za5i7?=
 =?us-ascii?Q?7sBl1K1sgNBgKrKbcI3jltfqGGxsO5mCe90AnGnaYzEiwqOdBHfXA/rvU3Z5?=
 =?us-ascii?Q?VNp/Tch685GlaYsvNmdNYPM+wCJS4G4HmzHdoGa+JYLAi/GfYmPJyvDDEI2/?=
 =?us-ascii?Q?Sn15q19q67v+VJ+mSWs06BZXF1h3ockZbBoFHQveaFTNFh5Y5cfpgWFtYUql?=
 =?us-ascii?Q?WslKR3iVsgD7Y95mcOLCqbLmKts19lnyilnCTnFh8VYSRzuczYjCBMdTNT64?=
 =?us-ascii?Q?fzlJhzBbvmOmOuceS0cp9n45qnwq24DXIOpT2ziCxrd/QmFlICbCpvHQHhYI?=
 =?us-ascii?Q?aFmuTfDRtpy2ZAiOiqGK3gPmgHvKbdlNRzx5QIM1C2YlVyenX+go6jeX0O/K?=
 =?us-ascii?Q?ioSg1LivS4TfX+6KvOhEjFdyAGokpaZrsem4WG+NCd1ZWu8D5eDzh0B9jntD?=
 =?us-ascii?Q?AMa4W+tzjrWoNF6l8Btwnk9QXCin8JfEkpGAa2lT/tv7t/KMOQZPhbEUr/X9?=
 =?us-ascii?Q?CL7cYxNRZo5L+U/PJYDv2bsfsXK5OVgNT/45WWNWisonP6lfDc+tefnDqoXR?=
 =?us-ascii?Q?GN1PaaXu4PwW46MUY/yeBw6U5h3g7Q2VrhoPhmZJfm3TvgXhJ4nLNVPIwRj1?=
 =?us-ascii?Q?fMOdhVgw3W/dcjGWRX8YsIuuTiDEYLLVAfZkK8mgHnbS0JJYUwWLaFfVfbof?=
 =?us-ascii?Q?Pi2Vp0vGkb+cHqraeiEsi3yj?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 95ac4489-c19e-408c-b8b9-08d979cb2268
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 11:06:01.3215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ll/z2O3DD2QLlbMLCCjfq17Ru7cZV0jffEJYkklWFYynRvxg8I2EfVSRBC3tng9ZlwWRqH7ysloT9r36McJv88BdlfdmwHqFpLRlm+hfEpY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_040611_050826_56210A29 
X-CRM114-Status: GOOD (  10.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

In order to ensure deterministic probe order over different boards,
move the aliases of on-SoC components to the corresponding dtsi
files.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566.dtsi           | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   | 7 -------
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 5 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 ++
 5 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a244f7b87e38..156bbb8aa4c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -10,12 +10,6 @@
 	model = "Pine64 RK3566 Quartz64-A Board";
 	compatible = "pine64,quartz64-a", "rockchip,rk3566";
 
-	aliases {
-		ethernet0 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
-	};
-
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
index 3839eef5e4f7..c1b3841caa77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
@@ -4,6 +4,10 @@
 
 / {
 	compatible = "rockchip,rk3566";
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
 };
 
 &power {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 184e2aa2416a..218f85af730c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -13,13 +13,6 @@
 	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
 	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
 
-	aliases {
-		ethernet0 = &gmac0;
-		ethernet1 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
-	};
-
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a295f8..dd0e800cf752 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,11 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+	};
+
 	qos_pcie3x1: qos@fe190080 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe190080 0x0 0x20>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index e42fbac6147b..bb0540d3008c 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -29,6 +29,8 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
