Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBA6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 16:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6aw5yVZ6l6iZLsnSbnBkxTb77Z6vTKH7qqfjQR5Psw=; b=Ercz5IOjw7we91
	fu12nP+4eqOf3LuTN/njQnDDTfWkT4H9HCleMNSSPmo9xokxmKeEXiLd9EDCmKG6dNNJ2osMH7/JY
	I9ORmkJDegqd7aSek/+Yp3TG/b1AVH255KyVlGIEcA5bnfSTo5h9M1jmNfWkrCNcpSKRLRlTSWxO1
	CiTOmuf1EC2d9CPPZOpHC0mihyYYMsglA+7PknBfPlCgtW0fVhc4HuELi9YtYeHtKKz7cSczCrnAe
	OFAlDWyZSqhPefVxMX53yLpC6ooekw1wMFwCvYmRc4+/uVNs/QM1p/8/u+1MgJ3VpO6LCcuxmCBpt
	KqK2ffijXFxmxB6uSIRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDqXT-0054mH-00; Sat, 29 Jan 2022 16:25:23 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com
 ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDqX5-0054dK-1I; Sat, 29 Jan 2022 16:25:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOQy8L8dmkO9xuwy9wusbTxR741kGnP4VI5aSTsmejgFrjtrbz4kGoa4G1dSft6p6z8EvBVeWnsZewj13HvUhcv74pMMCJGjLQJeZYAPKBdzUHXEKLySkH5fDAiib38FEFfIIZgdMZwirifVvXMKisq/83jV1ee9P1ogG2PD+AjthAD49yA7szpHcDec3JzlZczbhZGOJxo4GBcsb/NOfKlbXdL9+z0Cy6JevMRXf/wEEZMiCu3RXhXd8llJc02dBDxPxE2GUi/bTW0hSUtaKlXr2fsEvISd9N007w/RkRULL67GaqjS/mO1sLSwLAf2nDwBeK62Mtgravpzq4ZJFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U0FeakyisqMtlRH6+thLZICAxRW0lxiOYd4o3nyTCyM=;
 b=h+j5irMTwPLm4BrbChZ3GaRgoAnpyLFek+dYVM9o1OG7KT1Mg1o9wZ31GaI4JauaDr8J8vZquf0JFC+F5pXo4Rclg61yS64nxZD23fvj8M3vF9hRmR7PkGudJoVOvzxM6kAV414dH0qmiWlrRF0TLBSeRZyKh9kXDYPwiiBEsQI5Yc08khlwXWcjgnO3yd6wnjtettqKpDAIJNnfN/kB96SmMO67aSQegqekspNT65NP0jD8X9d+TFW7R0HN7aZm0xXci+jMSTGFzU7li0hs4R6YIuNgipPGVG3LhRnsfqUT5+OXXvD6NELfifi5Z2FiEZGQGix55Rcxly8i8hrS9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U0FeakyisqMtlRH6+thLZICAxRW0lxiOYd4o3nyTCyM=;
 b=S8HLi45SU0msZi+9hsTwSswP9QJQdyhTyyPlSh7IYJAmEJqadyJH0V1h+xjfyoO0gJLx/HEFa9h2LF3diHXiFTZg6OlIu5mFj1zkZFealxATwg2iuy91Q8qDvf0DMxMpvGiqzdxt2WrZRbQ5wNxoqSdmSPaKuWG+ajcpTLGGFG0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by AS8PR08MB6375.eurprd08.prod.outlook.com (2603:10a6:20b:31b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Sat, 29 Jan
 2022 16:24:53 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56%3]) with mapi id 15.20.4930.020; Sat, 29 Jan 2022
 16:24:53 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>, sha@pengutronix.de
Subject: [PATCH 2/2] arm64: dts: rockchip: add the touchscreen controller to
 rk3568-evb1-v10
Date: Sat, 29 Jan 2022 17:24:40 +0100
Message-Id: <20220129162440.5415-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220129162440.5415-1-michael.riesch@wolfvision.net>
References: <20220129162440.5415-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0103.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::18) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6cfeaa16-47ab-46a2-b061-08d9e343e153
X-MS-TrafficTypeDiagnostic: AS8PR08MB6375:EE_
X-Microsoft-Antispam-PRVS: <AS8PR08MB637549AB2AFBF6DCFD9B88CDF2239@AS8PR08MB6375.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1091;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vMawCHpuxOk/3J8UcfkSYCAdtKxib0zcOzGCbgaVF9IH6hzHpz/dJ0Kri0+FE5FqdO73FEIfMC1/6uP7Lj/bMzBW+wpuvEm9nm5P6YrPr8Lvpu9HGCDolpTgaGCP3WiCIFUQ+5w7M3RbbyYrxOzdhK9a/HN8r+0ZvfdOcHfVF/VYVtjhAGJrRbc5UD2jEDO65+l+GaOWtQYmYWCzhaj4DbZ0Zxi5JiUOvRQ1xQcjhv7vhz/S2bt4iE4NinWOtTkvDhfOH8Tufc0XM7FnRfWhTT5XwFZBg3E8y5gYdbvF0HQP0LdJhW7o6/vQDFObdyJY/xadfupTIWqlE7pv7NUC1C64AIybJu44bp+097wasZI0fEa7vLpJ8BfnsjXGgeIFSTfAv53BasePe/jAuaXYTIwiJbb/3tODUV/OXgRx49+datWjjGah4rpAcYjAEyteP+Hp9FCziH5BcjhI3SaIqbgmlLaTFsFAnE/yaLAL13DOP94/w+YqLvK9RgYfe3MnccU7zaxynB4QUt4s5U2mhaHnBdI5u9nu99Z/5XVYw4hTVp1npyJN18lcq+BOdbpttelW6x5sB1vCGjTSi73lEWTQbYKMa5jBrlM1YL2MS0ZZU1Mlcp6G66Du+lOaKJePR7nO7w4vwsQq0HbRZqjMOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(508600001)(5660300002)(316002)(4326008)(66556008)(66946007)(8676002)(6486002)(54906003)(66476007)(8936002)(86362001)(6666004)(52116002)(38100700002)(36756003)(6506007)(6512007)(1076003)(186003)(2616005)(2906002)(44832011)(20210929001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3h3rdn5ypr575RbyAD4zzifK9Ms1umUx7EKD97GhB2msHzT4qKKav0LahWYX?=
 =?us-ascii?Q?e6MISx9u4KJ1wlkmCSkxVnyVKAVnIpojPUxQavABRJ5KwAousudL7J1qUcHD?=
 =?us-ascii?Q?9CRxhadmYOo6ZqPb2GmjlZBbbIzOx+G/a0EeI8Rnt65PclS+RAfV6w9T4mVl?=
 =?us-ascii?Q?BmAH3TVnd2aT7Con772H3bZ8o5eAX87WK2nU7ZZ03G7UPNEmfo0S9dMGFSNX?=
 =?us-ascii?Q?DnGSaLmMZzjCUiUYMesKlyBP75y+5SQahxUOjK9bI+KoRRMZOtatTaRP92m7?=
 =?us-ascii?Q?nNCyEn65KlfHV5B6Xy9ATr2pEqSPPst5g7lCYCwTUcfsbzxe/ENs9AZVdpxX?=
 =?us-ascii?Q?qsUkOcWfueTaPwogjYFhBCSWA5LMaTNLz+MFS8TbjtFi2zBTNqNQfz6peyUv?=
 =?us-ascii?Q?gcEfzIxkqcOHi5mCiz804qwlpQHVBju430Y4TTj+y9mIi5s746XGpu9AGrh/?=
 =?us-ascii?Q?4JQZeokPFpZZTb4Ep/M1u9/IQoZVm2qFpVvC/g47Tak4nDAQAYfDKNPi7xWj?=
 =?us-ascii?Q?r04ZjxqWXq8e9eaxS99XnqF+zQCwX5xUM9Dyz6UFeql4lXGxMc8J3XLpblif?=
 =?us-ascii?Q?8tOAyDHATEUEVpx2CaDRZgSkzVZBSvB4+EQFIrfPJYfc1YvJNZ4ECvMBxxH3?=
 =?us-ascii?Q?3XL7rDSCNer2aFR8Cu1n8IvM/UzfocmZNyKFs/Y4/bLRyvzui0Q5UMI1E0fl?=
 =?us-ascii?Q?3BeNolShvwskcBL0TVpn/IF/657NF5wdMSCznAdS6tX/nxqM8UQgkWdstTAW?=
 =?us-ascii?Q?CZ9MBQBhtw2xBEj1+TK0Nm0OSmBC+tYggQoqQ/6VNXYNW1XWXNA1Wo4zMrFo?=
 =?us-ascii?Q?UE7rAnnAjXtPMPS7sOy+88NEq04svQ+Y3A9YmarwmGDvQbxJI+dXxjwqe3Qb?=
 =?us-ascii?Q?KeqfSvtONQEkRJ+iB7DN/9xpNoZfvDp6fcE5bruuRLmFz8xnFGCtWp8f69hK?=
 =?us-ascii?Q?Ag70xGBphDCFBkebfajXXXg1/1qYqBvK+WrMnxticlHnIza/BwStItSM7SGm?=
 =?us-ascii?Q?P4NkPIOzU2IlxTCv7enKm6aZANTzAu/VDUpP7LfcJjgXEDTv3jfWJYL/Z8RK?=
 =?us-ascii?Q?XkLQWeXrFWpCbRaZ2Obp2qACuqAl5mHFYs94mw/FwvGMq7NYVwCkGbKXiDIl?=
 =?us-ascii?Q?t57H7uMKRLT01h6TxpGvhrwxptr51tviFyDLGQGo8Jmb4MXrTDNzQCXNixE0?=
 =?us-ascii?Q?N5cGzgrcfXty3wlCeGqnv9LR2NJlKKx/J2kURidEtfUa66NXE9ZaOKP/LLsp?=
 =?us-ascii?Q?VtxGs87IgH+niv5La5X0HSxEltr8islpC7wVd6uWxmyaKV+QmUPgMmbBYKeJ?=
 =?us-ascii?Q?76YztH3HM9eCxWirnir6ucDXYbtmYDql696WQKHPsqLtiHCiCyFbTcGd7t8N?=
 =?us-ascii?Q?mqwPgk1v3CPdVsJkbIeB4tTQaufYpgu4FqL7WzvqnPgSJMriaA1OA5W82Lc4?=
 =?us-ascii?Q?PSR1LK8iIFV6DCarUhEOa/uXzFEeGfkoyxde7y2fftjhbzAEcT+wRLPjonK2?=
 =?us-ascii?Q?vdmPaF3IxL/C9km68T4h70b+/91c4jzJQToblI2KGDaNmc+b/jllDkQREin0?=
 =?us-ascii?Q?G05KrVCoxDW8tfEukBMJ4xNKYaZ3OcXLgcz6e6vMHlXxSEzrv9Y98ULJltyB?=
 =?us-ascii?Q?3kYpHs6yzXhGbkl486AAUtegaODzAUlyhW2gdi7YEMqWEHcYIfw//rXirRVJ?=
 =?us-ascii?Q?X9QEmtMnQD9cFVSQvI6t3YDPB8TvaZwMULkI6gs3sStuWaQBV2QjLtlTESeh?=
 =?us-ascii?Q?6zvmwSGNsZAggOmU+vaRzXGmza+3jew=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cfeaa16-47ab-46a2-b061-08d9e343e153
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2022 16:24:53.3870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gHuNvFfPXyA0I3AEO9lC+GrxLCYP+x7UdT+VCOkN2GEKk4U8sxvDabSWjm65dSu1zAknNECHmyyJAeXOaBLo2hAaxEpCrwxjsMIof9cQ5Hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6375
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_082459_269353_928A0BD2 
X-CRM114-Status: UNSURE (   9.23  )
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

The Rockchip RK3568 EVB1 comes with a mounted touch display featuring
a Goodix GT1158 touch controller (according to the product ID register).

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 197aaf7ee348..d8c20a23e856 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -330,6 +330,23 @@ regulator-state-mem {
 	};
 };
 
+&i2c1 {
+	status = "okay";
+
+	touchscreen0: goodix@14 {
+		compatible = "goodix,gt1151";
+		reg = <0x14>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB5 IRQ_TYPE_EDGE_FALLING>;
+		AVDD28-supply = <&vcc3v3_lcd0_n>;
+		irq-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_int &touch_rst>;
+		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+		VDDIO-supply = <&vcc3v3_lcd0_n>;
+	};
+};
+
 &mdio0 {
 	rgmii_phy0: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -366,6 +383,15 @@ pmic_int: pmic_int {
 				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
+
+	touchscreen {
+		touch_int: touch_int {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+		touch_rst: touch_rst {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
