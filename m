Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDEB8C54E5C
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 08:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fn023tN8XFSk0or7sfr9qygDOu/rfnkqVj9TQKZLEsI=; b=0Wxp+m0crYVRin
	JA7xPtKdviAC+gjKDIqd6omJxGLU/N/fBvdWb4hfXhPXswMxgyR9r4NpJeg6YThUQQCsRHukfezBu
	dh6rb/U6qr1gh+rp2I/qJ5xv4jSZ7BnqjzXJobEFP8BBt9gi2niH+kQ7VOrgS+/cSLq+Qhug/Z5lL
	SGNL0p40QdhRj9TWQ/NKM8RULaNoSuylusaCSzZlikJt3O5KI8oLh+dIKuxKFoSl+Fbe6xczlpxOZ
	8XJONRrcYenOpGcUVZljYc//+RjUjBxyo+jt0tshaRrY90Re7eKvqc2H7r5XbfgvaL0DUdvQy/W5O
	dUE1wX5jthMgXMVbAfIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVyV-00000008RCT-2TmV;
	Fri, 08 Mar 2024 08:53:07 +0000
Received: from mail-db3eur04on0730.outbound.protection.outlook.com ([2a01:111:f400:fe0c::730] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riVyO-00000008R3v-2gHj;
	Fri, 08 Mar 2024 08:53:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+nMJm2Xqf0rvFNFi0QW40WandIpQE9bGCUAOxu63xdiapAFr5Pmn3y/0fJbvZdSYO5WuppKGjX9Nat5g0rj2RQMLlSKzq91khZDdLp0yXEKKgwaFSUri2nRvdjEimAgokSnUowhjG5/KhjtmYuGvjuESM4t2GWd3RmiNUyfG4xiuBdwLcDB50x4WHBSsk5bHp7uKfTBgZ/cSve/IivIwvoMAa7WFw5yJqKyRTHoD1BcEKyIOZoeyqxXaxSZQqz2IvAOr9/eWSSZcyLc8T5V/Upo3P/f3PzXIIh0JuvS5iYaOnhYeIfjFYad8694pdG2joWTcjn6s+4zmM7N32IcmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7BkqQ4dOvk7yLhvzqDkcZ1PTRXcalauvyNlAG5fCuio=;
 b=Wusg+R0HlT6121ZJScmR5OiHIEgwRowVZTd1fRikawYbMt22jV/WFjDzUbwWlht3LjNmRVbxI+Mhz+B80qYbObJoSkIhxw86AY9sd1KqYzTMYlfdTPtf048U/WOLiTxjnWRkJrOoiHVvAe/25dcFnFJKL9PcLoHiQhHgJbsa2736th/BQNDKnPseddH2GXKJ65bKuIl2YNev4QHmB1V0qCanlHYM/vd24KZ2Ts9dSsKeljVDw1/E++bj4qfHwlCcGBUFmvzF3A5B//0LE+dAeZ6MX8feTjA8N0Ui8M0TGa+W/HwiWPupaCzs13kaxXyXtLufXuwIdee1rO/GCgnsLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BkqQ4dOvk7yLhvzqDkcZ1PTRXcalauvyNlAG5fCuio=;
 b=FI89ULkTUXrvyMSYbmSzV2faqE9YvrhO8g9LXpsfaL8W+6R7yJ/8w1R+fEUjtC2wB0Osh7n26V6Atlbl2yK/L9RCEL196HYBIk4AjkQitdbNiS/YDleLSHGL0rQJO//xcTaScZirsznqPKecQHZ338q/JfRhKyPon5E63yd54rYgtdmkU7FA9QNWxD17gTz/uJuzwDcc6wmhLuCdDiOQ2m92tQFvhZm0MuXAhR01iqe2QRiisnf9Z/AvZHmXpfzMMxDXVjU+vvy6lg/weF+smV8IaAsrgZs3MrYWOwRqs/VWkE0qmGoH5LY0S2ETgL502CjyDojyE5PLiCdVKl+oJg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from VI1PR04MB6013.eurprd04.prod.outlook.com (2603:10a6:803:cb::15)
 by DB8PR04MB7131.eurprd04.prod.outlook.com (2603:10a6:10:fd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.26; Fri, 8 Mar
 2024 08:52:54 +0000
Received: from VI1PR04MB6013.eurprd04.prod.outlook.com
 ([fe80::8881:4979:e635:7fbe]) by VI1PR04MB6013.eurprd04.prod.outlook.com
 ([fe80::8881:4979:e635:7fbe%4]) with mapi id 15.20.7316.039; Fri, 8 Mar 2024
 08:52:54 +0000
From: Iskander Amara <iskander.amara@theobroma-systems.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	vahe.grigoryan@theobroma-systems.com,
	angelogioacchino.delregno@collabora.com,
	dsimic@manjaro.org,
	alexander.stein@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@theobroma-systems.com,
	Iskander Amara <iskander.amara@theobroma-systems.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix alphabetical ordering RK3399 puma
Date: Fri,  8 Mar 2024 09:52:43 +0100
Message-Id: <20240308085243.69903-2-iskander.amara@theobroma-systems.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
References: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
X-ClientProxiedBy: VE1PR03CA0020.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::32) To VI1PR04MB6013.eurprd04.prod.outlook.com
 (2603:10a6:803:cb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB6013:EE_|DB8PR04MB7131:EE_
X-MS-Office365-Filtering-Correlation-Id: 26f594da-8ed4-49e7-c02c-08dc3f4d24d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t3p+v2d1iI2QX54R5FdGBZGx4vr7cpP0QZVuRLnVM1CRi9wH90J5XSwx6lq/Joo5ippk8p6sB4dfXEqvy1m96g6ytS+cr/toLBaZDRtmPHCmOYfZoWuq/HX2UlOspHlY5k/12fd68s3biHXvkFeJo3RjNKCOD5XIdkye9vt2eWIzmRgUBO7eEI5ZiwCiCO3FSNCaTTUa7edetMEcY71qrbWxpSk1FB/X+vDWRkDbXkFKL+Jy6sfgn25Lv4Zb55vF83dj9t/fBSs1vijUAR1+HU2g1Gnph1wj1p/7tKsmEMhvbToj3AzbkPkcQ65YKWoiAZn3IKQQJuBrvYxK4iCf30kSW6ybfXefoUlKMfveyd2BVZob36tYB4JCnFs/7yOQ/4ZM4p7qXuHer1vrmo0sja6dZquLgZOGWZhWw7A9RYI+wyTcUonxxsEtqrHnit7lz8C0t7e2t/IXLyMu/giXXv921PSz3/bp4c7dsj+nPbnofV68LsJFiBjCX2dNwz0Yjtyovy2MrGBSj+O9LxtB9JYuN0Bn5AWTLNH0w+cVKs2AypIXGwSFc+4zAODtkcw3058GzA0HiLEYAi/rYpn+qURF7L/Vrk/Jyyz8DXZG9uWj0lcHKWeoFd2Bvw/U+oorgEwgGOnaPPtB/Rofi9IUbqZeqFxZvrBwFjitq8xrcUL2uBmTTHtU9oqYwHcfu1CNMbwRCOdQRuEkxuHyu21ygH7Fm343yBR2yw6ZZQAzOYA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB6013.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(52116005)(1800799015)(7416005)(921011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uEJP4ufdL2OE4aDH2licuRmCavh81ZNi0a8nyuImDjmyHAmuAsm4fdFbNDHl?=
 =?us-ascii?Q?kxCWQmK1hihX/uiT084eIs25KLtPn73MuGNCGCLWk5mW1Hv+z8ZDOggKqLLQ?=
 =?us-ascii?Q?Yvfkth+7QQQSZcyCIMWiAM9c2Hob8MS5D6qIljdAmcAZ7dl2vvrcpoz/MRjo?=
 =?us-ascii?Q?WRqCLoTQOCOSyNtaMiursB0WQx37ruQ/WoNKVB2NjZr+WCqPuICECsBxYzc7?=
 =?us-ascii?Q?igSHi3swDhMuqiLGIuywuUfXW1bDeimHfIhQnbBZPt8ZL/KyKDyHKXkbfHMl?=
 =?us-ascii?Q?hzrhZld+08Md7aeiZh3xQBIGDWCiXxOcYBYSuFh62xvSKvsxhjyuYMEC8M8L?=
 =?us-ascii?Q?qSd/j8nUGxLJ03bG+ijybOyxmbr9uKXZKEeQKM/j1HGcvY9LXy7fjB/6iy7p?=
 =?us-ascii?Q?KS6exEEIksfy/GQOdCR9cpbpQRlqK+ff2h6nlm0359U7zsTw76D6u3G/l4eh?=
 =?us-ascii?Q?nGFgEwgAw1i/4QibJCwuU/hTTMa7+Cg/5l/1pJ3Um8mdztlKpQT0MPDMJsjB?=
 =?us-ascii?Q?SXylXrlkOstMpGl+wOAd1YhajL+9Kerz8rmhsqzeRHfXi2+oUdLoqzfUv5ez?=
 =?us-ascii?Q?jh6zjGjk4nbH6SmKVkldEAPFgmWz5wV8sw2OLKCRTmXZn7x5oeTALABuOSE+?=
 =?us-ascii?Q?MydPqJl3qJzcVZTSLLY7w3/xUUKreD4+u9yvClNy0kmuU6LkSxeurKQlxO23?=
 =?us-ascii?Q?mdGuxETljDaCdW/dja1KmTMZ74rNinq4qygEnvTuX7qtqbOLuTnlzUnEvczc?=
 =?us-ascii?Q?mYD5elZB0SpJicjmp1vFoAEa1BXKY3MGPztkIDLfBTPcad0gxxr13e3D7bPX?=
 =?us-ascii?Q?tvUudaEqx/NLsNLeJy1S0gWMo5D2C+yqlvy4sU8T+im52iRwxakcm0v2VNkk?=
 =?us-ascii?Q?SUfjvHP2m5aajyBdW6spRg9pz5riD9bS1np0IrBfVF4JGd7yqpvnni1Tbpl9?=
 =?us-ascii?Q?tb769+zu0AVk3VKdsaZABbqmIDpztcgdp15pXd2m2qaG8fp69PNkpMXcxM3/?=
 =?us-ascii?Q?73MkWhz/lfvnPDb2THg6gUAondfPT5zJTtaQBiZNEvWM0zpZBPuvitmg2VAo?=
 =?us-ascii?Q?1I/DpPkubayj7pRG1bGRD7ylbBib9q0RRpERmhHgiiP1qtDfQ6M2axOtMZlF?=
 =?us-ascii?Q?tpDVw31eYl/2uNCI+saoob3jOxUj+uG7HvY4JPuNNYar2RYc+JhFuxja42z6?=
 =?us-ascii?Q?EdoQeviG8Nt1hsgqh0jGKhnOewCR6rSm8VxCP+fFwbu5Lcpk0cWq9vXox7sw?=
 =?us-ascii?Q?2237Uflk8cOtMs0FPGdbzL9pZb3HBv1WgqRhzUYVoWxwNqjbJ66LEEFtz9pc?=
 =?us-ascii?Q?c0Sckw5AsSCrOs2wQgQUwWX90ATbso4NCkkS7RMJKV3cssfqFwpzVYbYOxmP?=
 =?us-ascii?Q?Ctmkva7bynqbsgLspthfy3jgYdARad7X+boN0NEMWmBEognxcziOLn0Jw4Fg?=
 =?us-ascii?Q?80HzwUC1WX9d2hzytWK9m//2ZQj0KkZMe2SwhhNeIF3phaL/hzel8lI+Nh7x?=
 =?us-ascii?Q?ndhZNwN4PPlA+sw/2MKAl6yaiGsjbjl1Mq2TImeNEKByiG0yghPFdh61RMZ8?=
 =?us-ascii?Q?6/q4XnD8g8qepVI+bWGClw5Ef5xRvERBWaAVQt51mPdNeKNgdfEl2AXv9zGh?=
 =?us-ascii?Q?sbyHvc2TevOKBsk3/B7+Qs0=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26f594da-8ed4-49e7-c02c-08dc3f4d24d2
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB6013.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 08:52:54.3816
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +vywGMBDBc5R+qduXm1UWlc5Am5uCE4Y7BijZfc8TyOARsI95HiJn+yNE5ct1RzAU56/hXjzL6Yh3h9OWAfa5xM/SWOk1CFMWmI+R49KgWYxGJldYVsStFaEmIBBlXri
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_005300_997173_98F515CD 
X-CRM114-Status: GOOD (  10.00  )
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

Nodes overridden by their reference should be ordered alphabetically to
make it easier to read the DTS. pinctrl node is defined in the wrong
location so let's reorder it.

Signed-off-by: Iskander Amara <iskander.amara@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 06f3e97af7cd..214ea62b24a5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -416,15 +416,6 @@ &io_domains {
 	gpio1830-supply = <&vcc_1v8>;
 };
 
-&pmu_io_domains {
-	status = "okay";
-	pmu1830-supply = <&vcc_1v8>;
-};
-
-&pwm2 {
-	status = "okay";
-};
-
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&q7_thermal_pin>;
@@ -473,6 +464,15 @@ usb3_id: usb3-id {
 	};
 };
 
+&pmu_io_domains {
+	status = "okay";
+	pmu1830-supply = <&vcc_1v8>;
+};
+
+&pwm2 {
+	status = "okay";
+};
+
 &sdhci {
 	/*
 	 * Signal integrity isn't great at 200MHz but 100MHz has proven stable
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
