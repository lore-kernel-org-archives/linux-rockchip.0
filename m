Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F8B2C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:05:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFE346113E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:05:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CFE346113E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1PnT8a7ZuyNfPJos9IOAw1BUqlYXI94iXdTIRnzViA=; b=sDy32txHsN1MsV
	KAeZvqgJYldK4jnHMSYmjfeNiu8ITepEj3dh1JLWzXNWOe8qs1VSTJ1gSAUG+SXeec7MY+Ln7Te13
	uwM/7r2uu1wD1U16SWm8PtPMEKGArBIZocoI8MXgCgVcGLTM37NBfZ1+b5U95nvvxkmrj+P9w/g+J
	QriS3ErlV4SNrm0JMY48PS6dTcgtRIrZIE/cVDfi1wcu6whb4Trl2eSr/2zcKRb31SV788jV3aSfJ
	JlFDDzH2w7TzpTGU5UQbnIvc1jlQFw84XJs6S2jXYGCsub2qnESEEVFE3iul5yDl01qgswvaeajN5
	I9FYNNt4Yra/tT2bwwTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBc7b-009M4t-QC; Thu, 05 Aug 2021 12:05:11 +0000
Received: from mail-eopbgr00085.outbound.protection.outlook.com ([40.107.0.85]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBc4A-009KXY-J3; Thu, 05 Aug 2021 12:01:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lo2p6ItmrYvtbgXu+PjwllHGsrSWlGBptHFdZUbLQD51hOSMhq3TzWSkrXCmULCx0Aft+QK7Hz5JcXRLgibrBXINMzHWIEmVN5ThgVRH8tPEHZQ1Hq+mkpRYPxBn6tjacu0wz/YBVtXPr3UZv2RFLGBBOGxxnD9Bwx53SvM8ntXIcPZvXvi9LNNahb2fjp8tpAxLdF/hEs2LpGLxJ0Rtu0KBNdS9ZfmWdM1+bUdQb43IKfJfDhwMjgHK1RHuMYr7KSnuc1LicigCCk+E6J2AkXxiad86pKSij4EGJSN0e3K2ka18poyWb0sRzsxXHx+jc25J4mFcmec9By9XYF7JiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qGM7xdNl8qTh+F2OjSu0oxVzXyI1trZBaIy6nQkBlTA=;
 b=AvJpniLwSFqad3S8+4eVifOLqlEZA6U8ur/HLHTZ4qrsxVvKOu0unNDLYgzu46ANYVeLn2DTWtKiJ+QsyCqK3e/rToCy6rCf6+af2bGufzz7cANcs6cgkS/U1nXSQJlf2DLYWqw+ZhedgVP9jBIbFrGgugMFUooJicNUk/MdR6h7yVtkqCLqufQY3dLT5Y8WkzvaWD9ftvTsGbSZn1Idy5btzjnjVgiQzMI7kp7pQEwHLqByk6K6jxRxV70Ie1YyOjipElG0qAspSRqUo0JhxyX9HVQZQNXozld9oDcGUzo0Mq50owxeTc6Kt1kjeFz0EnFIN0zhftOTvlZOFX84hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qGM7xdNl8qTh+F2OjSu0oxVzXyI1trZBaIy6nQkBlTA=;
 b=z2FZH9fYRay4LqFhJjZJ8tDkM9BpwePltAkNkGTXgc1KwNerejWIzbgvERHyuDdqj3gEv0cPGBAKkOk61iJtqhgJIh6hkw4nNjeCsSbm0zwssdyxspiNh1mSyRaZqLoAM75xLI3JmIZssT+WvulfpU/Mc1H6jtApMLmaALXkFNg=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3865.eurprd08.prod.outlook.com (2603:10a6:10:74::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Thu, 5 Aug
 2021 12:01:33 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4394.016; Thu, 5 Aug 2021
 12:01:33 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 Tobias Schramm <t.schramm@manjaro.org>, Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 7/7] arm64: dts: rockchip: rk3568-evb1-v10: add pinctrl and
 alias to emmc node
Date: Thu,  5 Aug 2021 14:01:07 +0200
Message-Id: <20210805120107.27007-8-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210805120107.27007-1-michael.riesch@wolfvision.net>
References: <20210805120107.27007-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR04CA0099.eurprd04.prod.outlook.com
 (2603:10a6:803:64::34) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR04CA0099.eurprd04.prod.outlook.com (2603:10a6:803:64::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.17 via Frontend Transport; Thu, 5 Aug 2021 12:01:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0362f7a2-7a29-47e1-181b-08d95808c43e
X-MS-TrafficTypeDiagnostic: DB7PR08MB3865:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3865C734A0C6A3B1CB1D490EF2F29@DB7PR08MB3865.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x65xH0eq04fYIXy3Z8Xy8DajLtWj4dcEfgV3GnU/FOMFoxSCcckMWOXymW7CwZ/U2UsluBiYVtLvwgs7KGuiU3RCwm4BGw7aRgCAqN5IppgPMmqIKMOPGi8BHhzJQ0/9/hoGV6qfqDWpH/2y7EBeMCqff+vySXbSVp+itNWBSreSOdfS6KfpoN0sb/anWgFwYDqBeVHuptYU6JKHespEkBTny+aj3vXTFqg9pgE32EASFSMg5znAoBEtq/NEJuA/figZ53z1wiGWP24/DWGYVo+6a0CQc1/lqDqbXHhCp1/e0ctGty3ulqZMU709cXdXiTiNhBWBCG3F49cVWlGFB6TeE5ezjjpyxwXNRzXfOFQ43fqQgB4698D9iSEG47J3AMdkw3EROSXTlPaqsvr3oZ0J+41QotJ7XTwVyoPn/6FuyZQXJI463nuHFB8oFPH2fDCJNFnm0euV4SPHTAGiA20ADKxrRxhJiTdTGJ0+J2HszDgbv65WChXea+RMUDO9kxfwsIqz2umiG6aS2AfUCt7i6FoErQL5AnSR9V0KEdZ3JyTqnl4TUB8KfwL7ORaWQ90HhKTOJRAZjjKRwSsCLR+fHBtvCoTnNPN33Y4Xb/Ep212I5MT+OHZioDrHYNQD6lILJ3SRL+lSPvMoSqGDBOfP1B9TavnW0btGMcW1RpJtL0HZP72BZmyT89FF4l/iDJWbRVUHLSJ7/uwgUEJ7UA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6512007)(8936002)(5660300002)(8676002)(6666004)(6486002)(26005)(38100700002)(36756003)(2906002)(6506007)(4326008)(66946007)(508600001)(66556008)(7416002)(66476007)(4744005)(1076003)(38350700002)(956004)(44832011)(2616005)(54906003)(52116002)(186003)(316002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ho7hqzXwtUVO6PcMr4HtDvJL8lJo8dSvv7X2jUM9Lli3QvV28pPssTGJGi9Z?=
 =?us-ascii?Q?dbMqCym6I7GG/ys/HhI+Dgt5Cyxc4rcOO9Dm8R7i7kV6J+HrqS6rk8bG6OLU?=
 =?us-ascii?Q?i3tdiWw/hLOZUYMwo+FxgBi/OgOXMt/EzLo5dfi6ZtlyBRr55wmod++C4xF5?=
 =?us-ascii?Q?x85FznSoygT8s8h4p6uOX+/SYRYi02xHCBPguh/lEabp8JyHdrI7dk928qjJ?=
 =?us-ascii?Q?Pd4UGKzBgKtqAsrVWasqe8DSnmCM3ifI9Y8x8zE5/SVVolAsLKowpM6eLPBP?=
 =?us-ascii?Q?VMf6tX7xhxF+mGH0KQH3RL7707wq7UwMgqcSXQqS0uQJRlqbq3VL+Kvs/S/k?=
 =?us-ascii?Q?Fl5x8jbZJm8vY7mTX6s4rk0q5BWPZTE7kXE2zbV4hsBtfMzR8ThPlJ18kau9?=
 =?us-ascii?Q?pf6ObEdNNqehNNP0N3oR4hQdwFdfS7jSiS2laqAuwoC7T+687mElwg18JcJT?=
 =?us-ascii?Q?EJMbJfVNGwzTh9s2wmGzvxeVBlDKIZGtaFBX+gZ4GeAsE/tQFBr08vdDecBh?=
 =?us-ascii?Q?YyhEuip/F/Wmac1ZJ3BTZPJdWm1ORAqX6vnpcCg4eg+sEEWDEL2mNy9mUxm6?=
 =?us-ascii?Q?tjqH2yhGAJ7dqZv9F1B0jUfqG6wScsZlsXL3CSwQNxxCu96StLVLW0ySrPFz?=
 =?us-ascii?Q?CHcfaMKEMQH24+XHqx3w3L/qr72VKXooE/BQ1x0RyibjbqR+PAJcObKsvYJ1?=
 =?us-ascii?Q?Wgan0RbxgHUyHrnyijROS3aDkm7oqq3jaUK5AUbKe93EcF6p8DGDy6k3rSdm?=
 =?us-ascii?Q?a5mr1t2paCXRnE8vkJf4X6FpWEJWGGNGL9TucavtUTrK9gujVCPH7VFjfMVu?=
 =?us-ascii?Q?Ievton+eYGeYK2voTGE/aoeIssB31q+rTIb5FdDVhMg6KC2/C3KgtEAE6/Du?=
 =?us-ascii?Q?dqk1naU3FcyZyWKGByYBMvmB0XRzLTEjgn3R6N1El0hvShJnawlCbcnTbQ+j?=
 =?us-ascii?Q?KELYIUegl09WTKIByDHJHuqJL09DoF7cjgocmKVLYXjzU8rlSqgKswNaTBRj?=
 =?us-ascii?Q?7xgBgyrHxJB+dcYhWExjQbYuzCO+gBRoz+YFPYgRhkHk98UuRw5I6rB7lJ3H?=
 =?us-ascii?Q?TaHbAkwYINvV8pKXHtEma3U2ubxy88LL3WNa5pvrvlW08npIuY9HO+/nH3o8?=
 =?us-ascii?Q?I2u09aJO2qrCZ4aj0LbQjJDrD8R7kf0V60+8b67GDi7RdHFhDJp1ryHeyExV?=
 =?us-ascii?Q?RDkP3bdReV5TGeJGS3BDYlSoasW5jfSDhdIVt3k0rekZsmPSg2cyC4RIK7Yi?=
 =?us-ascii?Q?YYs1G4NKKlBx51uY4+HC6MBglbyZisxhj5PAHzKN/2XPhIPhsUjr6d1Ab9AS?=
 =?us-ascii?Q?CCiBhP8abtDT3qSTwKJEZVLv?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0362f7a2-7a29-47e1-181b-08d95808c43e
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 12:01:32.7031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0N5yDLb6C2DVyWmsOIjRqcxwZTCvNDRyWTxr1wVC+YHvTVoS1Thnl8gET5HA44jLqJHEPWR3gVovGToP18Qia5yRF28v/X5jUUAsZ7kJ07U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_050138_686151_FCC44B90 
X-CRM114-Status: GOOD (  10.69  )
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

Since the EMMC pins can be used for other functions as well, we need to
configure the pinctrl.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v3:
- revise alias

 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 1c34d529b771..1bc79e95b2fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -17,6 +17,7 @@
 		ethernet0 = &gmac0;
 		ethernet1 = &gmac1;
 		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
 	};
 
 	chosen: chosen {
@@ -363,6 +364,8 @@
 	bus-width = <8>;
 	max-frequency = <200000000>;
 	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
