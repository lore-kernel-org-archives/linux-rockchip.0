Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B709C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:21:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F2AA60EC0
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:21:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1F2AA60EC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/iT5M0l5vN2RbNVht7XGU0WEakVCAl2Ho3sQUret9M=; b=ZyeuIB+ZGODK5P
	X5OiyVtOmXQE6iW8jBM4yURf/b7knEHTtOtu6nwxE1ixdcJdoWqdULY5HshgOh2j8SNvJI5Elnavg
	Y9Gp4E/kpXk6TrDfe5JadUFFZn9kZ8Z34a2WpP+40I/7rUmjG3qMnA5rIT8FO3tHOA950kNzUiomx
	kKmJ7kyZ77xuEB4TukNmPtvod1zA97TG3QoIXdd3tdrfX+ClCIIqEfrdu8BGBjU8B5LnNt9/pEfgj
	K2dYnhinyPeNDjgAhpr0s47F6JZjEY32lUY4wFRUd6kAJV60UKXl4zx8WlYKvfsPYcXDta6XwMvbg
	4AvgYE3r2EO/gTwuljOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8mIw-001aMK-Nn; Wed, 28 Jul 2021 16:21:10 +0000
Received: from mail-vi1eur05on2048.outbound.protection.outlook.com
 ([40.107.21.48] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8m9c-001W6y-N0; Wed, 28 Jul 2021 16:11:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hxY4v8h8YkGDmOBC+OZIH/UKwOXLJo3Yy8H+jV+YgHx4d7ryD9jg2C/09Hq7+xVax7yDqKUN3DSs5VnWEQc492SBNMnFDJJN9K++KRP1vzMqekouzQoTuR83utE6l6C4PhWrgXl3x56C5yt76CH8zZCtqj7zJPIxZIJGHUkxDMo7T+LIubnGmypDOAMuNQ1v1mq5pcB4DyohZekAb9Gr/VHs9hdBzsT/j/v2EnGkDv3h8mE7ZAGXOBCVIa1SpS4+sgR2Pu1Dl/w9o4kT00xDxJCL3c2dA6kIjNwptRWgpR9qNos9Xb3dg0jdkOayx2GGZGue10dwbEqYjfusBD+gMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZsEGH/2QpechhZqBCSFYTYl1I7nPrtHfqwt/0Or2IE=;
 b=e0GSb8oQoI3BQtcES1rjTwTOj5rLdmdfG63zaCfpj/93nRxElkZarO5kOXkfpEWfvP29Lzki/+TXialFfnzxNotgjWCgemTMQK0bBnWXf6g2K6lYmm/3Nw16yhX9bK6EmoKaKfFnnFsvbPuW1UNYjCh/mWDbJ723dY1A/T9wzcmzU5wKCDfO74bF/yKEVSYp6eddRm6rBfur7KOTH91w1pgDfOqm37KMHVYWq7UW/3Q6XK9U00pjULsSIxRWcL1/Q9ViGRqlAic7abLF+QUmXk2cbGCoR4/QGLDOu6aKvavClpw7Pkk8NDd6rO3dBwRzYaCmTYj9KPjR1MuUnWsKSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZsEGH/2QpechhZqBCSFYTYl1I7nPrtHfqwt/0Or2IE=;
 b=2Ct6H2zZBGP1EMO3yzMviKjhrMUZCDXYaBLT9RuJsiX/SJMDC65CI7+GyClLTefY+XUnd4NDc0a5cRBVmMNBuKoNdgEocNTSOL0tiD4a8YFpigAalRqQpzqQBypj7FSVgqI0ZzU5QClmVXnnupd/JJL8kgQEiXK+cFewcyqUEno=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3195.eurprd08.prod.outlook.com (2603:10a6:5:1e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Wed, 28 Jul
 2021 16:11:29 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.019; Wed, 28 Jul 2021
 16:11:29 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3568-evb1-v10: add ethernet
 support
Date: Wed, 28 Jul 2021 18:10:20 +0200
Message-Id: <20210728161020.3905-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210728161020.3905-1-michael.riesch@wolfvision.net>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: AM6PR0502CA0068.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::45) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 AM6PR0502CA0068.eurprd05.prod.outlook.com (2603:10a6:20b:56::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Wed, 28 Jul 2021 16:11:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1704915a-3c0f-4668-173a-08d951e25b65
X-MS-TrafficTypeDiagnostic: DB7PR08MB3195:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB31951DD5E1EFE972F0C7FFCDF2EA9@DB7PR08MB3195.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1002;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EnDId1vHABCYyrwZ008WtT1WxK/Wzcd7eOHxZn4AJ1T1KRHr2jc14xQp+uC6gIt59uh03NMd71gQw7XwBU6Sz/9+Ps5GUJNji2MvBg+uPWDNgCtgxmUFY6uSMVlCnBKyqo6OXip+ucgnlOV85g7hatqjLsAFjjaY1w0WwC6IF1bAAD/MguPxX2joyBxYlOMxZXkNaNh2fgvM289PdSOmWrhDCDVWAejmc9f2i6UH76OlAW/KW3vnIBlkON46ebDZfiNviavVzRQUTn3Ce9kbJmXYV5/JqlfIFVqfPABid3baRrUZNSxlThKFT0Y9GRJ2lvFc2SpYHOQS9wGvVNondHeuu2BwdiZ4J5MtM3iro3U1hySet0BF7JIdsggQZadZDxkSLtwmz6zFh8tK3UfZVqegkQdTt52MqZKAkH0xnFaU2RHnrRZamLGQ5zo4GBd28NnuRwt+LRFCZJ0LcNNGOc9lQzV/oITrTsVOX5K9Uz0B92cr77k0ntMyvNuKUersbz6VD3pmMkGcov1FljSSNsxrWzOfK/aFkGy4Q+Sq5VqusrizPFWluHvflAod1lKkrraluWZKFZE93ZG765+2neaN69qLdsyaqvchlIrjHyxyLJxcjQ92eq8OeuG1hut+wzw3XNfwJ9usgybZlLjVmwnb2BM3YwUg/jyMq4uATTlGXw6Ukk7rkJIOaIWNya5wV8vSun/h8vRxXGU88FjXRw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(396003)(39840400004)(376002)(86362001)(6506007)(66476007)(66946007)(8676002)(186003)(6512007)(5660300002)(8936002)(6486002)(36756003)(316002)(26005)(4326008)(83380400001)(2906002)(52116002)(6666004)(54906003)(38100700002)(478600001)(1076003)(44832011)(956004)(66556008)(2616005)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Il05wt0odPRHxt4IoKoR3pN9hlpXhR9DFad+LCgCD0Aho1dbyJJ0lkP1/G9h?=
 =?us-ascii?Q?IE8QhpQ+0SwCcgHl+RSPWZi4VX3u9jpBCCn/mK29YID/9i4QUQvm4nCafy/4?=
 =?us-ascii?Q?3geFgmBaJU3gBvy63Radu7uShA9Gj7Y0B8E8q5WrKiOIJR/zzsbAxxY+EKY4?=
 =?us-ascii?Q?srlFg2018FEgKO2XJwCiBPrV80XU8qdAZv8MypPQkzyYUIlzZG8rQE2b3QZZ?=
 =?us-ascii?Q?sR5YpNEIfwaLvH4fWQMittooIGOg3AL3uBGrjEZIdu6No3t3AIf7YasUSIvw?=
 =?us-ascii?Q?GxSqVU/OeQKpliRSdfm6sye+TXpr+nDj1glmKUyWuEbBOUOLejiUjJEcN2Lr?=
 =?us-ascii?Q?ovdQ1iQ6n0lj2iSMHK85yPZ+89QoHlZqQiWxohKUfbaNikC/ovsgNXWtuq5t?=
 =?us-ascii?Q?y3VhZ60SRrHuYuYm2y3AzG2IfmUoHn2vjR+7ixymWeSrIqy2iOI5jAaCn/FC?=
 =?us-ascii?Q?kM21qQc+/ay5P7ShEgAcExG5k2T2zFVJTaY5YK1yMXAQayWol5ClzFwJT+IM?=
 =?us-ascii?Q?M3wvSXrQ3bdnSWC9C+sFfYMn0EUsiaYu59VqlfWvASR+HGCOG2c0moI3WEZC?=
 =?us-ascii?Q?eljEmMfPCI9vEM13r41ArX3W0Bu1A77rPOoVCKxBA5PeEBb9ZVb4DD/ioVx2?=
 =?us-ascii?Q?D8k2f5uIXuAXEm5vFNF7AbJP6sFY0DSf8hvJi61JYfkfSQb9fAFNpKj1GfGE?=
 =?us-ascii?Q?/C/AuFBiLg51zOFVvYRtBWPIMPov3pPYtsS75VkJ8Gu3doqaCyQ09TMy8GhJ?=
 =?us-ascii?Q?3Y4inWAtDAqb6jD8gBG6sM/RdpzLbNkRs9baM7TuUSk7x1iyjb0zWzOxZOyO?=
 =?us-ascii?Q?8AILFLwQMh9EZ7XUfNC0COIna9rhtIumriRRIWYi8O0F6WwzFJoK/YTT2ov7?=
 =?us-ascii?Q?6LeHhiVb3H426ZGTvYWPmW6UawtA4DkvxTHuw/QUxIwVTuBKJFvJ6F/+AYF+?=
 =?us-ascii?Q?UTeUC7M+5MewACnJkpegJHk23j7NURTM7daPtbjIlydoNuN97Lv/W4mwA1H+?=
 =?us-ascii?Q?jhpwRWOoCgwkOzY9rhHlHlIMhkwGXAgx4Lrf9U/e5amdmHy3h3ywWM10SBHy?=
 =?us-ascii?Q?gVzp37yeaWh59amXjusYMb568wgT1yKw7ByvrXnDeRWlQvjNqP9ti9ODtf84?=
 =?us-ascii?Q?wMA/L2063tiG/pZYZ9s86wj/BCANWu0JQXctreo6pIXcoeBfq8WJG7A7B37U?=
 =?us-ascii?Q?Zfz03QjFTr4NDLPII/sP0MW6OKhz5GLNw1coX7wlCuO4ljyimUFDEjjCOsZN?=
 =?us-ascii?Q?JtGf2kM0eRXkh4cWGR4FRLxDyEbY+WaxE9167LQxg+v3HPoBF1txdUkDgF0Y?=
 =?us-ascii?Q?Y0nqZcnw/6uysw53Ky0KB/OZ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 1704915a-3c0f-4668-173a-08d951e25b65
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 16:11:28.8955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D88v5gPUR2DG7GCUmSTAWNmIeY+pDi0TduQqe53WqSDPuRQcculmxM1T2X15dOoRCcZWV04VTKZjnyZAGVTDEIeGh55sb7z2oCKU1SzGjbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_091132_829358_F3E92C07 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 69786557093d..8f4c40d71914 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -13,6 +13,11 @@
 	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
 	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
 
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+	};
+
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -67,6 +72,70 @@
 	};
 };
 
+&gmac0 {
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+
+	tx_delay = <0x3c>;
+	rx_delay = <0x2f>;
+
+	phy-handle = <&rgmii_phy0>;
+	status = "okay";
+};
+
+&gmac1 {
+	phy-mode = "rgmii";
+	clock_in_out = "output";
+
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x26>;
+
+	phy-handle = <&rgmii_phy1>;
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reg = <0x0>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reset-gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reg = <0x0>;
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
