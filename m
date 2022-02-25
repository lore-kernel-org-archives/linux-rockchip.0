Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B8FC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXHdEqXn/q8S1LSa+14FkiuBll8Jw6jvR79bK7ryXGM=; b=1mZxv72taNKWa1
	Z8yilcZHpAN6Arm9Dkpih3rql79GlC1zzEsa2DlKtz/bIrBTQIrwVLfNWPf7eZbhXYN0o5DY0OnHK
	Kqn4LDXVobR29JlQUGSqVP8nx+4WVp7uQm8qDF2dFOB4zirSXCgf0uD/PaVVgJetXoOBUYQMD46CK
	O8T8fCweyl+O/f0TnQvUkkZxM3mVdzm0XHtMZrafO9iZHtouZNQVePAYjBgt59AaSwCL4mIkpamVh
	TKbN5DUz2c2f6RelbJE1Zo0ga+kXHZce7tUWv86zkcKxpStu4+g8jM9OU7Uiepzx1+NVsn3+ankUU
	UFrp+Z1025/+DB+yKMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNaUZ-0052dl-4e; Fri, 25 Feb 2022 13:18:39 +0000
Received: from mail-db8eur05on2060d.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::60d]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNaSO-0051XZ-9R; Fri, 25 Feb 2022 13:16:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gOMrJnkYtRXOtpClV/ZoQhl/hvQjsTznKanfxQXlFNCePkxAHqo/HVUa6nxH/RZ9OQ5LThWEICMWZdTwQZaT5q2VZ3kU9xNXYH2qfjBPWyqxniMosdToVfbscmcRk7Izkp9b+/wijY1srTessnP6/fY3LXpTfmGN7iJRDTAgk9b8ielobeGDJ3VYBXaEIF32WIyOW8FQBQ1QdJO22VAdJ22TR1VRDGyUrkFsDLh2ogExp8Rt0sIB3g82s/ScHBLWCZf6ItDUnt9771zBNQVkJBwyXV8LN7p8H/rdlkhWNCDcBsA1+XlFVfTqIynxNA3Epyc8TfCVUeuJCFgxDFM4bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jGL+xI1OZjJbyLKHHgr88oDHq1kclPcVolD06Z7fcXw=;
 b=SpFkrL47Bje05iB1xlBlNSCjnDULr/XChnACuZyYJo3mvMmw7DY9Cn/JO7qNF/ZEe0GOvYq9MWyfO4ZqlRHDs3Zpe6nzELpA1iRaK4Bo7YqZRkMFZPQHMcWlAHeHWKphr0Ybe83hLf5sQO97ntdErrUPb+yIVgpOJn1P+il6+Zuw+cW9hWL1iBtUF8o5HcvGkavg2I3C+OBl45uleuIzk+67ehIhc/Taqu61FhWD0NKwgDC+TAnHJrEsIkGF+hwgamGFWFcqvgv5q97lka8vpU4q5SNgMRsfil60YRDrO5+ZlFKsYv7+mACRPDaXd+Pc1W9zMfe/YQnIFUTjXK+bxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jGL+xI1OZjJbyLKHHgr88oDHq1kclPcVolD06Z7fcXw=;
 b=ARYYIk4X/uFe2jp9yNCX37pcpjZd+nRRSadmA7q2EnL3cEiBJTlrrO+zZva7nqvbW3oVu4+rYJEfXNjHidvt2PPHfWibJdOhfg9ABf5Ft49aLIhRMQgpWC1YZzmF+stENEMrJBRiIDlViO+uO/LfbI3NFaZIBxbry5hLSnZi+zw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by PAXPR08MB6591.eurprd08.prod.outlook.com (2603:10a6:102:150::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.17; Fri, 25 Feb
 2022 13:16:20 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049%4]) with mapi id 15.20.4995.028; Fri, 25 Feb 2022
 13:16:20 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Wunderlich <frank-w@public-files.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Simon Xue <xxm@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: add the usb3 nodes to rk356x
Date: Fri, 25 Feb 2022 14:16:01 +0100
Message-Id: <20220225131602.2283499-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220225131602.2283499-1-michael.riesch@wolfvision.net>
References: <20220225131602.2283499-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0109.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::6) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d1b69717-7160-4e5f-e7c3-08d9f8610329
X-MS-TrafficTypeDiagnostic: PAXPR08MB6591:EE_
X-Microsoft-Antispam-PRVS: <PAXPR08MB659196ADE8A53BA8733AF70AF23E9@PAXPR08MB6591.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZsJ8TgSc3nOGoOop/5SWK8NyyXbltZ8dBgyERLpuAotHd+Nb1ZHGXJLasxyBpge8qbk7AJKYoosSMJHs1ifmg2qaVBJs1t5qOyBXM3Vs6hOXGJMo5xw8Qjh3lhAy9mj/Socjx3zidSjOAULKAXPbNv7OIPnV0nKhr2pRTr/KE2Ilf5n7m7JebGfn7dkB9kQGPYq70niMD9IfuAvj547fjzO4Krfzatspc/JXOm1Q/lXiGCEwBI73G/qxdxpG2r+T64PtvS/VY62QG6L0X7q6EQQmspIi7aEe0elGs1JzKp7w1VAakr0VwTihejVwoBMLl3Y1rh5Jlu6/1ku7Gierh6oPOoc0XBiD91Eww1lrOZMZaD6xdjJkAfBjkpjBIcxkH9PxunD9eP7fqkkHb335yXAGoE6w+F9Cm/Ob6giS5eO+QRSaJMvVgaPzlBG6zos/+IGFcElqYUz5tNfQGnlJXf97In93o1G1cdlk63sVxlali8WVSIxFvQl3B+gilCN5b3cdDQqLpDg+9w//R3cZpRt0TMoCMkwyeDgWwxiY/v76ThTKkSAYjrYekAnf8xLvY2+sBqmLBNlKDN7kE01WDBrcLO0LEZXo5UbjmealpM1R+Ov6USLXNLHLmvmjAScERxZWMvwF5DC40QKrlL2y9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(39850400004)(346002)(396003)(376002)(136003)(186003)(44832011)(6506007)(36756003)(83380400001)(1076003)(2906002)(8936002)(86362001)(8676002)(316002)(7416002)(4326008)(2616005)(52116002)(6666004)(508600001)(6512007)(38100700002)(66556008)(54906003)(5660300002)(66946007)(66476007)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yCTO+N3wIrOZmfXjam/AUzjmewIikF5pJUYfRfEEodhpUvorYU94OGyASiyC?=
 =?us-ascii?Q?Bm99OVy59ll7tC2Gikh4NebCK41cCOZl9w1e4UPhuNnUiYEtlk+cKQ2SqDBE?=
 =?us-ascii?Q?3KoYyf52UjUEvPEzhMC39yvoZt1QKU7hyWjUSbeRZFuqwjCJN5tWZ7OxuTHX?=
 =?us-ascii?Q?bDKrsSv7U8Jd3Yl6Sr1BDaV7npA4jJTDDu8eWhNnJj1wDil/6z2KBam59Y3S?=
 =?us-ascii?Q?bQhcmmZqZobYDHflNQWP5tXyAbGf80Aqb4rLiO0MxUeSV83e/pJ2sGX4OES2?=
 =?us-ascii?Q?M/PtdoMfQKoTw21ZbPDBjky12HT66dYfqiLjG4lqlAPhxRbGyxkSAGcjV+jy?=
 =?us-ascii?Q?Z5O8r79GdUkqa95GuJAV3HnsKk93Akx0serd98ltQSa/7bul8JW2kQhhrhKH?=
 =?us-ascii?Q?Ornz4w3I9A0XaDCV6s3lTF2ogrzjos4UVS1/49q817cXBdAW9kiftc7OOuP4?=
 =?us-ascii?Q?+tZfio++Lh9K9K1iPuTTcZQ5f13MDV6MMr1yL5X0/5g6fM9XcAfyXrvVsMya?=
 =?us-ascii?Q?/pzMbGB6Yi99mHSID9iLOIn/EQhAYkgwgOipE00Vz44pSFM869boQY8+0Ux4?=
 =?us-ascii?Q?B3gnvFvCkIyFF/zT2EeN2Ln80lILoXCDOO1ZJHY8SIq2LITfH6dkwFpNJRsp?=
 =?us-ascii?Q?kkUesq8T20VlywybYABFMKlsr63Rkn4S3q+V28HHLaiJ94yiFljdMs+tRcZS?=
 =?us-ascii?Q?wX9ScI2izkx9l+x7gzSNQ/A3nz4taqRGWLnEo6ZToFnAxFpogZqYqTthPb7a?=
 =?us-ascii?Q?jo8Yf3WrhwrpJ7l8LzCuqub1txNnmqOkknVybNXedOVxfK91BGwwxwZZ6E3F?=
 =?us-ascii?Q?9lNShpGRyFkDOGzqlU4sZcF1iorU7ebkDGETEqxcC9IBnzezTJEtjjVzOCt2?=
 =?us-ascii?Q?f/NJNKX0JaLfcRAWfqgeQFPA1hSXdecEBS30FQW95OMT8O8w/nqljK2sx5DE?=
 =?us-ascii?Q?pRTHQhFn7OZbSiKYSVP94D23B8mIAYzFYbiy8JdVgQE+ke+Iyv/niePpo8qv?=
 =?us-ascii?Q?zHk8pCIobseiXZizzALMmKunqz0/XrXp/IoI8ABzq60qxtNIAUYVCGTCx32g?=
 =?us-ascii?Q?8xNHXnPANxb5gF5f9BS1a4otwZwlMTH3/ZKA8ALeLXV05S4nmer/sDIUd4+3?=
 =?us-ascii?Q?DOx8JEp8/nBjIBfaG9RJ+87x0bmp5LTQOkMPOc8zjVcIbmi+WVSUYJ+g4qgW?=
 =?us-ascii?Q?/6QW4d/b4PKVqIB1omjTEm+9CpVbMEeSWX1pACZXNLhJw9h2cu1n/2SfcFqQ?=
 =?us-ascii?Q?X2SPE3h61MSr0u0T8EENaLXNGSOIbGsWkq67q7GsjU/PM7fUzAMFQPo1zNfk?=
 =?us-ascii?Q?UZXvqI157ESIWBDHvX8I3fx4SnXMDsQ3w28oKdF38YcG4d68KG8ptDYaSlw6?=
 =?us-ascii?Q?3M2GbTVdCiTGIviNPHi/i0sq3Bq617Ck5vmGvj4+xJpH1kEKdhShDJsap1pt?=
 =?us-ascii?Q?ALKRs1QQoNml8+RSlD5KsddbIfzU8XbZdmlnEuoxpw2pTpHXZ+nNGM0TLIGC?=
 =?us-ascii?Q?PFu2a93rBGffkYu/asW4Mm1Trz5DYthIG6CplH/2VDgUHyyWLfjChpU44Tin?=
 =?us-ascii?Q?muSTI4mJD/pJMJ2DYBkbjztl0t8ZZw7YqG4o5hkLMNA2Wx5UHUZbvwCp4Gua?=
 =?us-ascii?Q?EnH0NzBxDSLOA8eiGOj2g5vkWWE5qaAZyUw8uKIrzUSoWeMnd6tYo2T3sjpu?=
 =?us-ascii?Q?QLauTS6KuIu7hjM/OW+aLkvY9o2OCVsX9ZOR8DBChqOujIf98R/nL+OD0p7x?=
 =?us-ascii?Q?NuquLWTIM9wuFO4y9jhCWqJT4w19ssM=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d1b69717-7160-4e5f-e7c3-08d9f8610329
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 13:16:19.9479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r0VfYZyBlZaBWwkyNfunjfjuTQgeWNoESS+TUQExLUXS6eMF5Uv/4IrWZw6s+ky75SqKrHcfkzSd3nZdGlfx4u0z2/HXh8bufExYdXe/E44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_051624_402431_2E42CBF7 
X-CRM114-Status: UNSURE (   9.64  )
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

The Rockchip RK3566 and RK3568 feature two USB 3.0 xHCI controllers,
one of them with Dual Role Device (DRD) capability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi |  5 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 30 ++++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ecc0f3015915..25f6398e5a66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -100,3 +100,8 @@ opp-1992000000 {
 		opp-microvolt = <1150000 1150000 1150000>;
 	};
 };
+
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
+	phy-names = "usb2-phy", "usb3-phy";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 742f5adcdf2b..9ea6f551b9f4 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -230,6 +230,36 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	usb_host0_xhci: usb@fcc00000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfcc00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
+			 <&cru ACLK_USB3OTG0>;
+		clock-names = "ref_clk", "suspend_clk", "bus_clk";
+		dr_mode = "otg";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG0>;
+		status = "disabled";
+	};
+
+	usb_host1_xhci: usb@fd000000 {
+		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
+		reg = <0x0 0xfd000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
+			 <&cru ACLK_USB3OTG1>;
+		clock-names = "ref_clk", "suspend_clk", "bus_clk";
+		dr_mode = "host";
+		phy_type = "utmi_wide";
+		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		power-domains = <&power RK3568_PD_PIPE>;
+		resets = <&cru SRST_USB3OTG1>;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
