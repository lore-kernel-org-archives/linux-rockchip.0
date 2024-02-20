Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9829DC48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 09:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=10ilFJtr9fmW8vA3OoaVyYmvW2sRY7mKR8FdhYHXZgA=; b=3yBjFYW2FADY1wWvGOo2We1JqX
	WkDbn+IfY0jG8JzL5rFF3UTADKWCBSLCyKvuplX06ulIUaxA3h2S/7d38qtkHUvPZvpqFLIjfq8JA
	/Z46j1RjfkJnAM3OnroPMkGJ1v33pPTpkOE0aUoXXoULGCDG/8zSZMubS5EOBVXuNUAIaxqi58jyV
	rxLc14O/L4s5RTYzpsAZcvrKYZTL86MvIYGxwrs4pDtMppBmPqnKVcDFi2BT8JpVk8Gf+RZMsBv9F
	UDvfu4p7erJU+dHESYgyHNAJ0Xbr3ZSZ98BvRtiYbcghxO0R+Sk2/O9+8EZq3UWD+O6w3AP2WLWZV
	pKORWV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMdD-0000000E3Eb-07N0;
	Tue, 20 Feb 2024 09:41:43 +0000
Received: from mail-vi1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:2611::701] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMc2-0000000E2NK-0aKN;
	Tue, 20 Feb 2024 09:40:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bGL/JCN0L6WcnI5q6/sQlj8rY2fNbhxLF8xd0EkIxAm8dLfc/q6PYqH3lITmBwd1elMCGl4pMBz88dTaK68ih2U1hrbrCqtpS4linKhUR7e7p+AMgLE84MXrklWkEk1h32rFa1o2CBFyVLcknImnqKiHIZ9V8qEkwvr+T7icecW4DAQ1k26n+52448rlKo+Sqz1e/BI/9huCifv7MskaicDslmza7IdaK92bS3ypYeQNRNyeWydMUki+FPOvRymbAoZ3CU7b+RbmS27fjXb4dqXrbLNbkgmZ+L+42dkDraEiZQxDzrYM+hIQ3HEDMvBe+OMgeUWgbEXfFQ2YLuen8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFBNepf4pT5Z+UVSMHeI4wc9QqXpHqSP5xxqc77jhS0=;
 b=QRlt/fhtbDgz78p/bmH0ldVCKgbFIyyvhZ1gwVxJAZfNK5FI04CSYg/1HgZetjHJx1YNwsjqswggL5P8wFJ0FlRhfjQplKzf+IZ4gLuyZ0+KksEGVFF+n07mjBeSjQ4VLi4uEuXJAm4Kzja7vZ8d3oU0rFOMnxfHk1G9Ewf6T0abbo8D8b2BhFnbNiUX4WYGysRg+zVNiPHdkxWYo0iZkYZU9C9sq4wJLoApLN2sozWIs3s31iyQqgz4JRb97iigGk1H6vwSTKUFYb5ZTFy51wWoD9bV7IktqhQiT+1ZvWcYkOtlVTVG1vz2Ojef5z1o5bTxAv2ZISQC0RlUL5ZvPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFBNepf4pT5Z+UVSMHeI4wc9QqXpHqSP5xxqc77jhS0=;
 b=xi5Ov/s6+Azv0UPA+/YcD3D/zthHoLbw1kzctYxyYjjEviTYgAJOIqsbVcU1TyplyiJ7x5RWMKkwj2yODtVud1RlgnBAJjoQzchg59ax1dKhTdM+csOOLcOOr6ziRNXyNTnfPyPP8u1kkCAHPu6CuACi2hUk9kPmI9Kp5nhvxgE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB4PR08MB9357.eurprd08.prod.outlook.com (2603:10a6:10:3f3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Tue, 20 Feb
 2024 09:40:24 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::7409:db60:8209:c9f4%6]) with mapi id 15.20.7270.043; Tue, 20 Feb 2024
 09:40:24 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 20 Feb 2024 10:39:24 +0100
Subject: [PATCH 14/14] arm64: dts: rockchip: add vicap node to rk356x
Message-Id: <20240220-v6-8-topic-rk3568-vicap-v1-14-2680a1fa640b@wolfvision.net>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
In-Reply-To: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
To: Mehdi Djait <mehdi.djait.k@gmail.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708421995; l=2396;
 i=michael.riesch@wolfvision.net; s=20230803; h=from:subject:message-id;
 bh=RKZXPNXHmUaOg5wL+hV6LweGPMEPN+5I6UNCMOLdLas=;
 b=J8OtPxGHxTeFBcoWvj2EBzbRwi1DObzht3jj3cSjTISl1PYORzE+Y0n5WAK+yZElkPJmUAARN
 ivdndc10u4/BsiCucaFKJdTxkt1ptSSoOTD1kaSslea4UXFGiE474ah
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=9ral3sulLe95bLcbaiNXTgUTRiBayRBEFZ5OVIEHp+0=
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB4PR08MB9357:EE_
X-MS-Office365-Filtering-Correlation-Id: c1a1c8d8-93aa-4b0d-51c3-08dc31f7f6c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fp7OkyOO7SX8TTu90S8JA5ZOfQkQUk4fQ2kviKXxAWjDdb/lZV5ul1yFuYjqE8r7lugzh35dVVfDPEUntk49GdLFpDJ6yBIgxF6QXfRtX/rHxBSK/cPwi85/3pabG6gbxWqXgcWAy0N2iig2GJhmY+8wegTUP1SFk9WFoZyaB9WsfusfuedebXXXpDfLvnd85oxVrqtGJKKdGSy3RENK4RCNu5I68UNrmiar10Xe5eXPrVKSzrSWDr56n0QN1ccjY4W67Flr5zPQVxNxDm6yY7Ynor0S6XTzRfP/URsEMlkvFD2bITp65nJ4oUPK/u52MHCeljFx7/x5VZNdI8TfFb5C9CdPNhtwWqzk4Liypatq4ZRheHqpr8bMKyVdAL78fWPNpXQ0CIDpeJFVxX3WeVT12ybqPuLBF0Iaajz2CqTL418RjBI75rzQ3QkUd10GEBJhU64ebL1FM19nQLZKxar+Xv2fnDzx8jMQfJLMuj+XIX97oGDadeZ32rqTaztUnJ4/sGpr4IgHHiy1q+GgAx1By4h0hdSUbxWYe9QBsplGFxlb9a8pLmv7eH5f/U6lDda9e9ME6/nUsVMYmA8BKz94skWi2uU1Y9SvAEy3/kfxOUQLF0rIZygM/uUrqXA8
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38350700005)(921011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGYyYUJIOUZFeGxsanR1a0EyMklYSEIvRDh4bk0wZWc0dGJrWGFRODdueGdT?=
 =?utf-8?B?azE2TCtzY20rdU1IT2wxcWU2cmFVRE9ld0IwNUY0RGZQYkNaYXdWQUxRTnlp?=
 =?utf-8?B?aVdlaU5tRm9QUERsdm9aS2EzK2VpZXRCU1Ric0J3bG9PeWFkeVR6T3ozaGVk?=
 =?utf-8?B?T3hSTUI4TUhNaEVNazU2ZXZINXFEalF3SExWQUFnaTV0QW5yUGV5Z0VXaDBQ?=
 =?utf-8?B?UFgzOGk0SE5yTHhCYU1jdEJhSS9Ua05aY0dCdUVwWE1JMStLZHlLdTFUVCt5?=
 =?utf-8?B?dlppRWRTd2p0Q2sra09GckZXQlBVQ2xKTThPc0NNc3BlM2RTOWRlK0hXdU8r?=
 =?utf-8?B?THpsenZKOGVJTmM4K2pES3AzM0FlVFV2RFpHdisyV1RTTzc5dWtJRDNLUFhN?=
 =?utf-8?B?ZGcyYkFaTnN3RnFJdm9oemk2ZVcyRktqVzR2TWpZWlJHYjJ5ZjB6Z0Z2c1JH?=
 =?utf-8?B?aDFpMVU4clNTTHRMMGNTSzRxTTFJcVd5ZXlNbysvYWxJdVpURk95V0pObkcv?=
 =?utf-8?B?ZGhCSVNQRC9VdnNBUFRDeVdQcHRxVGdWZHdBZDNpdFdvb3lhQ1ArTnBFNG9O?=
 =?utf-8?B?MXhaTS83K1pGbVJsTWJlRUYzSTlFdVVjMG5lZ21WTUdSeUdxYmFPS1V5eWo0?=
 =?utf-8?B?U0VuTmlicVl5ZTRlZWwwbHBJQUVoOWRNdi8vSndLV2l4dXdHdzhvMzdUNUlZ?=
 =?utf-8?B?MUMxVEx1N0xJSllHdUxWMjRUMUpUaU8yVWx1TUs4dkpZK2IwRlErNmo2dFJX?=
 =?utf-8?B?S3greWFscTFmN2dBQW1QbGlPeXBHWG12Mnlna2tuV0FDeXIybGFQNjR4ZVlE?=
 =?utf-8?B?aUlTaWRHVkFWM2VDMkp3K0VKbzhMY2JNS01SblJINVN2UGQxN0wweFhUSGV3?=
 =?utf-8?B?eldwNnpMd2VIQ2xPNi8zYXovMFl1L09sYWNYQkp5ZUNmYkF1SUZmbG8renRG?=
 =?utf-8?B?UGtLaTYvVmN4Q1R3NmZhaVdyOWJJUWc5MnduUW5iVVlIeXBmS2pYb3lFbW1C?=
 =?utf-8?B?aGg3ZWIrTGF3bURGSWh3VTA4UXM1N0pvZUUrL3d6WWxsemhHd1hEZU9sU3Yz?=
 =?utf-8?B?NVNrRzY0KzlxNnRNdHJ2a0hac3drR0lFc1g5SlVxNmVzWjdROFVEVlBBazJB?=
 =?utf-8?B?STAybHVnQ3E5bzFTTXBoOUJSUnVweHgyRWpFRTBpUTQ1T2wvVGFjbzRMNHhz?=
 =?utf-8?B?OGt4ZXZEQ0hERXE3b20xemZEaUtyS2pUL0M5TVlaWmEvejNFZk8waStFdFB4?=
 =?utf-8?B?VTBhMnRESjFPVkU1SHozd1lrRGhmbXgrTFdWWWFic1QzSVlmeXphQjY4NWx2?=
 =?utf-8?B?bHZFdWJMRWZCZGozQ2pnakFwMS9NdFd3VHZkbmZvTWVub2VzUklFU0NxcmQw?=
 =?utf-8?B?VE5RQXhMZlpDWDUzYTVuT1lRTEVqQlJFSksxQ0dpK3p5Y2JtaHlweWwvZTcr?=
 =?utf-8?B?VDNlTEw4dmlyc2dOT3EzdFVqWXRad1kvTHkwbnJVSnRwWVU0QXZpalNFSlVT?=
 =?utf-8?B?YnJ1VkQvaG1WSHo5QkRDZEc3ZWFndTQ2N0ZSdThjMEJwNjRpbHllU3dwcWIx?=
 =?utf-8?B?eGxhdG1wb0VDZitNcUc4bDQ4T3BSbWx5RXhLVGtzdmJmSWt1c1BlUit2Ulhy?=
 =?utf-8?B?SWFrRWhIOGVsVVljZFYrK1ZJck8rdU9aWGFhQVMyLzBZYzF3SkEvOTlKS01K?=
 =?utf-8?B?eHhuRE1kOWx2K1NLS2RRdjI1Q09PL3M5eEszNWpsejNiVGFqb0kwZ2FENnJE?=
 =?utf-8?B?SUVTR2hrVVJMS2VocWQySi9CT2dNUTUrUXJ3aWV4OWY3UkJ5Z1hZbXNWZVlr?=
 =?utf-8?B?VE1LZFFXK2FRTE1RVFJWaFpKMkthRkxSdk1OdlI2SVl2MHVkVFVxMTgvNFo5?=
 =?utf-8?B?QlJ3bjl1QWpISWc2aWtJZ2pxV1Rka2RsdXhBL1NrYm0zNW1hNm52NE5QdUFn?=
 =?utf-8?B?NGx1Wk9qdnRQTHp5Z1dVY05pMEhIa0JyaldzUFFZWHZlQmhLWUwrQzhTS0FW?=
 =?utf-8?B?NVF1N1IzdmR5T0kyN0I4dzNKLzQzUDI3bk40RS9rQ29hTHQ5L00rK3J6L3Bo?=
 =?utf-8?B?NDJVOURBazM2eWRCb0M3UUZSWlJiU25UbDNLalp0SGtwcEVOSDJJMjFUR3lU?=
 =?utf-8?B?R1EwMUNFYTExblBabms2NURQOWJXVUZhRlV2eFByNStHOFZqbm5UU21jWS9H?=
 =?utf-8?B?alE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c1a1c8d8-93aa-4b0d-51c3-08dc31f7f6c7
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 09:40:24.7551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VRbhh20BwTEcBxxN+ZAG9DuFwFUqp9Lm7U/Yte/d0ZzbGkb5lTFkt0RBTLBLzvcv6aJ14m0fmWeqD3Nm5xpvHLnZVzO7LlwAkgrdnCUshQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB9357
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_014030_757289_43C68528 
X-CRM114-Status: GOOD (  11.11  )
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

Add the device tree node for the RK356x Video Capture (VICAP)
block.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 45 ++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c19c0f1b3778..ad61afd84c12 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/rk3568-cru.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/media/rockchip-cif.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3568-power.h>
@@ -593,6 +594,50 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	vicap: video-capture@fdfe0000 {
+		compatible = "rockchip,rk3568-vicap";
+		reg = <0x0 0xfdfe0000 0x0 0x200>;
+		interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru DCLK_VICAP>;
+		assigned-clock-rates = <300000000>;
+		clocks = <&cru ACLK_VICAP>, <&cru HCLK_VICAP>,
+			 <&cru DCLK_VICAP>, <&cru ICLK_VICAP_G>;
+		clock-names = "aclk", "hclk", "dclk", "iclk";
+		iommus = <&vicap_mmu>;
+		power-domains = <&power RK3568_PD_VI>;
+		resets = <&cru SRST_A_VICAP>, <&cru SRST_H_VICAP>,
+			 <&cru SRST_D_VICAP>, <&cru SRST_P_VICAP>,
+			 <&cru SRST_I_VICAP>;
+		reset-names = "arst", "hrst", "drst", "prst", "irst";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vicap_dvp: port@MEDIA_ROCKCHIP_CIF_DVP {
+				reg = <MEDIA_ROCKCHIP_CIF_DVP>;
+			};
+
+			vicap_mipi: port@MEDIA_ROCKCHIP_CIF_MIPI {
+				reg = <MEDIA_ROCKCHIP_CIF_MIPI>;
+			};
+		};
+	};
+
+	vicap_mmu: iommu@fdfe0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdfe0800 0x0 0x100>;
+		interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VICAP>, <&cru HCLK_VICAP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3568_PD_VI>;
+		rockchip,disable-mmu-reset;
+		status = "disabled";
+	};
+
 	vpu: video-codec@fdea0400 {
 		compatible = "rockchip,rk3568-vpu";
 		reg = <0x0 0xfdea0000 0x0 0x800>;

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
