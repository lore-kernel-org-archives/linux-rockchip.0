Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99878C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 13:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRCvx/+ixgharJzIsOiOadv5xtHs1E/24dbdNjV7Yc8=; b=CZRS8xgdHQbUpk
	MWZfxdHRMF/DA48PHtF/eW7nJoo3ruVbIff0jcMmF4/p9iQHIx+RQQikQ2FoE9nDBDlpNy1/99+7P
	1N1/FBVdoG2OZP1ktYXa/IhP59LASR+kOq5pmxSGVnXn+ZzuUj0oc/zOywujErikLj8Lwa/s/2Klx
	a+vKKW2LFfdnl5fZR0PuqwW5WgMS57adGr7F52UYt26g4eHtdtT0TDUOUuj7eZl1qFQfRRR3QOTi6
	dttA9WcuaQLa2CC/OrY/Z9IAD2KxFAARVm+sEHsGBuXxQxrNg+OEfudHiaMbJp2EHeYkovF/VKxqc
	GPfEQOdlt9ZtRJo15GLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niytL-009hOh-4u; Mon, 25 Apr 2022 13:36:39 +0000
Received: from mail-he1eur04on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::615]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niys5-009guT-Fh; Mon, 25 Apr 2022 13:35:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TKE0pCYWy/BvA22wNbsSMnxoPdqW+4A3UtfdhXWbRhRCUwKC0EyJ1etJmBp9u5jTYN1Bj9T4F5prMKLXbclHyhuCt+FxdxDohpgWfB28t2Kv4G35alS/BlcAaKjSU8p5jTR5unbsH6c01/d2D4WcjQkIVTeGrQ3IQbH92laM4ehcEBCFt7LsM8t//qn4gtDESHFo1gtnqQ+A6Y9GYCQbQWsvkpq4hPtcmrVdTXpi5f3nMjGdsSpcPD5d2lF7dODfPD62VUoKqMEINrzvWsn2a2RQNT+7GqbpQq/Hp40KUcaOSpKia2n/J4xyKx3kU/EWffQNg88sN2k8QRR814RBpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X21K86JzoBU+F5yD671+jzpMWwIZ8mRc2ENic36l/a0=;
 b=dalm9KtvBaMfqo//T7vpPM2Ej8fKT8HVckHrQDG0coCPmObIEGlytFZjEU5zAcAG/X9PCPREiPqdZPIkvX4Uze7QqUyVmPUXc/UUfYGdYNXkEWiPpBS6Hu/4QNVsS/xpLk1CEgLDDiu3I66gPVyLQH2Q5ioxSbP7/y2iWmgDZdieUQt2TgiyLz8YmM8tpPgEPLH3HKmje6tEakuj0s7X1mbVPw9oeHISSzKKLnz+3YWrLUFQhJjso5tkl4sXq3Fu2S8RvBE/V8nh4EcDEJa8cdVGQPmQ32OuEPvbh4swEdZp3ywat67XCdYcfEHSGsg3lzC4cshUXsaRBNoV9OIbVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X21K86JzoBU+F5yD671+jzpMWwIZ8mRc2ENic36l/a0=;
 b=tLE6GvlU4B6f0fD1UwqGZgtD4NY6qpar0EKMmuVksWOTPe0wSuA6x4yZNGokvtPLy/JB0QPe0vZEiZBrC1SKB+04a8g5qhXT6LBx4qVXbpSTOFfRSL738MiOxosry84Za0KP28vCMKjCzamLpmRLJDFeMLH/zkj0XQ40rUqtVII=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by AS8PR08MB6453.eurprd08.prod.outlook.com (2603:10a6:20b:31b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Mon, 25 Apr
 2022 13:35:17 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::3de2:62a:3915:9d6d]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::3de2:62a:3915:9d6d%7]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 13:35:17 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH 2/3] arm64: dts: rockchip: add usb3 support to the radxa rock3
 model a
Date: Mon, 25 Apr 2022 15:35:01 +0200
Message-Id: <20220425133502.405512-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425133502.405512-1-michael.riesch@wolfvision.net>
References: <20220425133502.405512-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0010.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::20) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba4288d4-2be7-4719-4c2a-08da26c06fa1
X-MS-TrafficTypeDiagnostic: AS8PR08MB6453:EE_
X-Microsoft-Antispam-PRVS: <AS8PR08MB645303EE4B021FDD34CE4645F2F89@AS8PR08MB6453.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MMxVanhFQ2ANza6j9v8PSIjxfgQ+p/ygK/r0Xr3LzPooyRF2awAJEnUe4iWon7Ch0JjQ2vr1kTrONQ+v4fJ9FC3XNPPKOE7FSDI0QSUVlUGsCXiQ1XEu5IhOesul325xw3V0P+MgoAYlztvtRHAvtHCLjjIRvZdDWFHwtK7sRp6o1XgCWoR9wZXB5Woa7IIqXcXHhMeMvUKjB8qisdaG6PtfuwN26efjvF+4TN4xECg9/o3x7M72T7yECH5t06zNzsQamTQlhxyVRoThepN7ddLMu0bacbQyYhs6KO04kV1lRaUtvpczk+K3Zn23786j4PFDVsteE5IsDi8yHGz1GsVIEqNZmnAiEDUpogAhAI3OLOJk4Ik2/V+oksMdt5abAUYHltVLqdMZ+zbKSb6vcNY3CEv9FlwBlROKh4Gmg0b8Bm9rWTQDj37nQcAo2/dlug0mmmeSuqX9T/WtXDTB7sykA1i5frYjzZUxzrxScBzB/NtCUSQ1iANL0N0FYLUJydff5hO+AMEVsLsF9mYJ2RoTyZY7lHMvFg0v9ouYhfGr6cxn7sdqRSTlqZUXXycUFYpnR4L7idl2Cbq8mLg13G5RIvE978S/L4LZSDgYMup16PhLxjsfiyhx0ZzYdK9PSsFzO78yzFUDDw39mphhaZi3z6lIaD/goeNErFCFZKiCOiageVvpg5FGeJAKGARgS+NvAtMmcIufAS5oYdSWRQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(396003)(346002)(366004)(376002)(136003)(39840400004)(316002)(2906002)(54906003)(508600001)(186003)(44832011)(6666004)(52116002)(36756003)(6512007)(66556008)(66946007)(7416002)(66476007)(5660300002)(6486002)(86362001)(8936002)(4326008)(8676002)(1076003)(6506007)(2616005)(38100700002)(129723003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jfcRJ0mZP8cdhFy1QS8aIq2ARK7KazFQ94z0QeJZAf4d4NIXH0G9F5igu3+P?=
 =?us-ascii?Q?S8lXyFJgA/OICNVbmgxQNk5bO1kVS9TYroQQs5nGx5vcTGF08tYx5Tomn76i?=
 =?us-ascii?Q?VsBBu6A9Hju2gf70vi7LIRq5Fz8vwqzM9M8RYJm1ldmIXKIm830XUE8M/0ba?=
 =?us-ascii?Q?y2ODl1Sv/EzAxdmg3/E6PynsX98UYCCOy8gZ/UI4QakVJ+7IF4bCgg3+mfnZ?=
 =?us-ascii?Q?hhbOve6UsCMQCSQiQM0f5q0VvPVqEgVz9mjuPnITjVe5V1Inw9BOVCubL379?=
 =?us-ascii?Q?WbQqWdQzj7ar3k24/wpirxmTrKOu3hSBi48PmFy3QyVReI+ZWTwmFME/YNZw?=
 =?us-ascii?Q?GYqZJlRnJaWS5r9/EF6Jj1nJ77EUG1ODB3RG6zX+3uU8tH+3jHmtcMc6n6Ri?=
 =?us-ascii?Q?yGSR63GlSkZC3UkDb/mhEDQ/NxcXwv7vOhcpwK73k6v1++BXNQiwD8bh3RQ8?=
 =?us-ascii?Q?PZvxtnH7ieMzY1cbe/bPKLkroP/vqhYYcuyCY4gwUFlX6GxkVfl4OML3sHRD?=
 =?us-ascii?Q?lDjnwNpMyQdeGSBYXJ7QZMvObKI9psH+ENlj9Uxl1Bw5wADJd+VfU+4eLp1o?=
 =?us-ascii?Q?3p87lSvCya9GWpRz8urUMef63r5Kdpla6oXzle1DyHUP7kx5IXCRqsIM5iST?=
 =?us-ascii?Q?1JbKpSEsXT/e0+cBuJN5m6W9w3bgi5o7po89L1s8/dGAP6zyqf28jare5hRr?=
 =?us-ascii?Q?Rs+anrpYKpH51buwjfJPA0D7qGDTghDNqHONJ00OhQvg7BIZgUTbo6rBuQGC?=
 =?us-ascii?Q?iuck+U8DvgDHo22i6RNDXHOO5Ex6fWsUpG5jRGdEeIqSJxNysJOO/xWe3vUV?=
 =?us-ascii?Q?798Xp77LBnHjEcB6CQxCvDu9AQ/45KDfwJSvBo5iAOrOPq6wDD4axmKWSfu6?=
 =?us-ascii?Q?KZ8dvjo+aJ60O9fg3b1s4/pFX1hDuflCQgzFDv7sBakNJo4UQgsTxZ53v+GL?=
 =?us-ascii?Q?VGmJfcHVSqQkZ+5s6OJpp6moWZSzdrvkSp/2wnYZs7rFiwKEMesLz9SD3WYw?=
 =?us-ascii?Q?KqjH3ZNTjM7Lj1aOET06RnOz74hqgJ1g2e9v6lPwX60TKHLAXkEavKpIkGa8?=
 =?us-ascii?Q?6yLT5OW4F/uhhdLO3D98BtI5P/5GBar3Ut4+LGevC9D/W6ct6KjDThf2aTgT?=
 =?us-ascii?Q?v6zYu/RaYBnuU4jnpRuvNBFuXH7o65rMZRNK2AJ8UAGcdtybGZFCjBpwDO7S?=
 =?us-ascii?Q?HanL+9++CVJzSJm9U9pi5CUyp3K5lxNLMJjxRQBL5awr0kz+PhP8ZXfX/nXo?=
 =?us-ascii?Q?Bst9K6NMb1KvFQ+fJKg9JlymjIoyJn4Q6znY+iFvoCNO9QfVkZs2AY1LPWkX?=
 =?us-ascii?Q?BIaXZIJNwbSd0pHItY7sOMFw2YHIUcI8XL4elBYTUIMzAJ0IcS3wTpl3Gh62?=
 =?us-ascii?Q?PKqD6HCplbMDxXnoZcx83GJp9TKCb35weC2dVqdFQzal0Fm/P6qLBqLZXyZu?=
 =?us-ascii?Q?Ihw/FiAY7JUTuWhMI/WpsLSnqucDBQXiRR7KvXTz3hLZZRBBWwBxg+WrNNhH?=
 =?us-ascii?Q?6KdYBeMFlCxZLC+gt4i6IYaD7B1SnU39tCT76rJj/kUuqI510zGhDrsifiDI?=
 =?us-ascii?Q?ObNykmYIU8CGUgI1wk9tmHVPE4/TB+s7EzO4mZ0Zz45MUB5+qcjx7gN2KrDm?=
 =?us-ascii?Q?sTonXnKV2hFU95khbVaRb2E2Z66rWT1fHvGemr3brTLwVqWOTq6HWZTWkdiR?=
 =?us-ascii?Q?CrX/tnbOOrm75L+tcMLhhuzXqd5tGrJYg8D60VzWCjI5QDcVJwjwQ/7Bf4Ju?=
 =?us-ascii?Q?IOs6f9TmTwNGhkq/S4CmpbEOLkLMZ9Kk/VzVic1QQo8fKIYVsd0M5T0oRzNy?=
X-MS-Exchange-AntiSpam-MessageData-1: 5P+v0ddZTxHjEtWFpmmByns99zJ5aB4HE2lSblfCuHjEZnNlFd2i/CWH
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: ba4288d4-2be7-4719-4c2a-08da26c06fa1
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 13:35:17.6014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GlPQRolNGU+XhTP9ywY4EprxuRV4FeyT9KEi26aVgmtMWgCeE4xXnv2zXgu759/qD1bFHKTz/FSCuvOMlb5FiFAqTl2fhgNx6Wb6nRzAems=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_063521_568159_0041F4CD 
X-CRM114-Status: UNSURE (   9.08  )
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

The Radxa ROCK3 Model A features one USB 3.0 host port and one USB 3.0
OTG/DRD port. Enable them in the device tree.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 53cf444ecb04..d7e2bc96fde7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -96,6 +96,26 @@ vcc5v0_usb_host: vcc5v0-usb-host {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_usb>;
 	};
+
+	vcc5v0_usb_otg: vcc5v0-usb-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en>;
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
+};
+
+&combphy1 {
+	status = "okay";
 };
 
 &cpu0 {
@@ -416,6 +436,9 @@ usb {
 		vcc5v0_usb_host_en: vcc5v0_usb_host_en {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+		vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 };
 
@@ -479,6 +502,11 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -487,6 +515,24 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	vbus-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
+
 &usb2phy1 {
 	status = "okay";
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
