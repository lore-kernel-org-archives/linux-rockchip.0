Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE86C3A59D
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 15:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpJx6ZKcRCLdpcZxL1ksFqtyLyAnwsK6/Uo7JTiHYds=; b=Eg9x8Ms9Zw/0Io
	F3WTvqQ17rdQsq4CQUpX0q/qtUknqYcG3JWpLHJlI4Tbe/tirE8GJ/NRHqE+iZha9HfqSq6/zfakQ
	JYj/E9kTQ9X0i1dpBoAqGG7YV5TGqUmn2NbAd4DNjAVFGG6eD9m5tbglGHjOZGH0ddkAx0ir5aIc2
	SGbkArjn3gDB9cDOY3lNd64Rqz3tR2KcV/8+v3Eb/XDL2Yo+KnniNrb779D+9cDivCGl4uf7c0ZiO
	iMOqinm5EOv2urPhdSvoG621cJjhuSfwLviNbWldaaHjf7WjZ0baOzn9YwPRcYwa/ZRVRgzjMTZrA
	2oBaB0EzGJWqDpEOedjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcrq-00FZRK-HH; Sun, 23 Oct 2022 15:26:26 +0000
Received: from mail-tycjpn01olkn2097.outbound.protection.outlook.com ([40.92.99.97] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcr3-00FZ5t-Kr; Sun, 23 Oct 2022 15:25:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gr/N48BJSeJECrWzwfxrI1hTSFh9aViWNKheO86nc+ycsm4dVIIo+n3P2UDhpv0RrI6i12lbHoEDoPiaNFJ0J70UBgqKE6ga9hxPW0CVFYwT5QqB6HvpwFdKaa2UYmHLHgvRMIPCaCVxuUi+xWdFf2QE2rhNt6Af55tOCRBrDbXoarUHkBZ556M1Qhy7uCHOLuH9aFhh0WjBTuZz3/BFnhNnmEABcBUSeKuC49GWfBDcQZ9XlwbVu1jWAWcGCi0dwp9PvvQSQEBfFeA92Q7l0l35vK1fBdwljmHDMWYmwBtJn6+ziXLcvXQgxuGzAGBpi90pJu0rjh8G/8CCAC80eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+YkZnyTaSCGaaN81OI187EPcGabNDf+qaTUxTK8lLQ=;
 b=TJqa8rnopYFvsD/Gug46JlSDW9oE2eXJRHrwx7dxFjWLkK6SQ/mdH7SGqtycNo0tfMM6Nw44SOyxf098CBAHEH/jSR79arA4r2qXkfJJOnSomKCEIfikMneAFQtHuFjSQjErIZ3Mk5LsHHd9nVRf+od652Nq0ecAAlLm2vUs6qYwS+VNxNlFjwRFB9zY0F/Qfp7emw152RReDsfJnV9Y1b2U6PMvA/H/q4eKPxRrw6T3oQ/QfyhCEb5zXUIWbgJ7Wuq8d/4ZdVTRB7vy8gbLcIPM8O8wEHwoumhCBCk7DziGxrYz1zXXEPS6jElqV/4V5bNOD0UrhLtqI3SvL4fdTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+YkZnyTaSCGaaN81OI187EPcGabNDf+qaTUxTK8lLQ=;
 b=HYyfFzWk6WKJNXadpgwFt86RYc3GCcP/TYdXwzkVrxlzctAlPQt/lWtidkVWhifAeBM1i7E5u1CdklsU2Nsx36FOeOt3hQTn/hazi4TGpwgveiSGPPZ27hUjYDTqp5BuexNRGMNrFm/ZW8sdVeohJu6Gq/N5XQ3+YLeK/KVt6LcajSoPcvgJRx3zUodap3kupq17f9I6LrzyqQsZJuKaAdyWtZbbkgrXe+lnS2iEN7inh/oO3VGcHCD8hKl0qSQ8fALy6V1XD6+/AXKf7NEsnBmVhhbysAyscSdTnMwHYrkRag9CRjhH/XkegwLLEx2FjN21URajKgF9Unoi4WBnCg==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OSZP286MB2192.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:189::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Sun, 23 Oct
 2022 15:25:30 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 15:25:30 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	frattaroli.nicolas@gmail.com,
	frank-w@public-files.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules to Radxa Rock 3A
Date: Sun, 23 Oct 2022 23:24:40 +0800
Message-ID:  <TY3P286MB26111B077A2293197DC25AA1982F9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221023152440.2546-1-wiagn233@outlook.com>
References: <20221023152440.2546-1-wiagn233@outlook.com>
X-TMN: [OuWKp5PY2JM43QLRWT+RNCtTFU8sYA8D]
X-ClientProxiedBy: PS2PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:300:5b::22) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221023152440.2546-5-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OSZP286MB2192:EE_
X-MS-Office365-Filtering-Correlation-Id: a31e4f4c-e770-4829-b681-08dab50ad1f8
X-MS-Exchange-SLBlob-MailProps: 	HeyTOiyEx6bXUCkHGqUvW+yTD5AlCjqAjMJaomfP8MBERm4osVyGKi0Oo/+5/vzy87drNv426/7L/w8fC3OwS/OCzt+4rEl7WdbsmI+1gmk22GiJxWtC/SEO6tVT2irNo8rMJRWMsL6IqYF9vJgtJ490p2qDay+4ZjtgzKFDCSRzd+IYjTQP9ILx3ZWNgU5gPCtCKzGAdcAQtS6arMd6epaekEwSmjQLhpR73my6ECuOiADaPSduucFyCO3eDREgKyXjbbq7fcU6Hf+Tcx4bpej+JWqVRGBZEzc2/uIzOoBUqJhuY2kXGlZyPaLfRoe+L3eBv4Be+mx8fb/ST4rZ9atScsOfSUuCTsgkcVRJ8HQ0VYDv2ua632t2c6X7gXKRtf4mFxF9ZTg1xbXfKvoMNff5lr+dVqWOYW+LBk0Ru5ehsT3YhHxdvoNvei9rfyN9FH80qhi32CLSRNXUiFYTnSmqet128CfimYDzbEbyztCl1lpEV5DHUo+T/BUv2POUVtwOeCEa+o/9OgDwNtQgPgYwjUTGphCXE0lvAEEpryDqv+iduK7i1+uZ6MWl2uqZX0q39IR+H15Cp2fk/tCyh4QgSyLU4n5CIVQxgpgwWucmSAMd/sTtKsHnnkkWFP6+jS9W7nsjYIZ73chJ85FJyUIc4w46/gtR/xMLvFrxTbrG0YOHYYASVjUSBgdkpS3EOXpczNl2NL5gK2K1EbhmpT5Cz0szFNbhG6JCdYH3Rt+Qz6ya9zN3E/2iyOnBkkl+k9R0RNKQ+K6MXgV+6SHp0A==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	m0u+/+Fb8pflw9ZtIW+eIMjQEL36MfC0aM/LqF9dHX7E1jMdEMlhq9sd6KenAfTnebDSTTapocHLknFGX+aiDky/m1d46gJIvPqFyXSMcIi3ClZgy6XVE83IZSEWg0GFIQahuaBhIt9n2JtJoYFuiWbe5Bl2M2zUGIaHs6TrZPr2EJ9OQAJ2EbahnC26tsunQmwvlTMkVRa/Khg3o9gM43esVYW1nqO8FgpLsUGGfZBU0HDBTgPv7WTVB0KvFBWUm/X/iVOHDNYd36jFfHaz0VpJk+Ylz9r3z/zMHnKBS7i0EVNd4pxx8JPBq/b04JJg6+c9R6VPFTpsQOVkS0BR3L7H8pACkJ1+wnABEmCVlUEiGuXHaBnNhaVXn8qlsnJ1qpxWyjxImUKD418RqNBnlM/KzjyKPVff0FuYnJr22xoWXa88Zz/ciGMpSpLs1XqzplSLlYNKwAehQVi0Ei8sgFVjArGPTnWyF5Xlr1Ytvm9rr/IuAfPs/Hhsq9ZHATFA1MEiX0UGyWaXc5YxuXturthrhgEAX6B7U1yhut0PttjQv9bT0VESpY8FfEGZ82VN4FsxzhSHEUe57vA6SEt5uaxXVLczneESVjdzaUO/tSADooNxS/p7QqBfo0cd0HNna0QMPapuf9tv+PkBlgXht7bLlngzSPQRxhjSkKNvH5obMunts8mRw97QH5ff3P2f
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?iKezHGo3UqR+ROIhCIt73o3cUe1wPKjrxcME/B7PlXWQHg46New13ccdQIAI?=
 =?us-ascii?Q?9LOW8aMp4OwD1X0ygpjqL9qgFqGzeLR66boAhDxLs6fp1IcoQaR/5VkHzL1e?=
 =?us-ascii?Q?ZVTnEXXT5F6zpdSs6xqZ/jle2MXC3N/YzbqaXQy+5NiJCPZGaPvza/WNLjFQ?=
 =?us-ascii?Q?prLFXIo0q+E5khvY7DX0Y3VPoje5FG2Jyv232Egmh20n+PEGn7eTKBqEX2U2?=
 =?us-ascii?Q?DmkDkUKRKKQWjhcm9jgVR5uaXUY3w23RtA3c9TWHiYColXxCLGvsiIr8Dvgs?=
 =?us-ascii?Q?c49AyLsXw6d9i4dkQKnuUNil8pwLEGzdQtG901OR7vdH64vRA8dSaVVat1+T?=
 =?us-ascii?Q?iLfVRE9RJSt/P9QodbU0Re+AbnvbevDQgbSyZOC4S/AiBMTv8rf5e3tdWUf2?=
 =?us-ascii?Q?WQGWBO4XRAbbX/pmIANi3my5viloOWqpZMR7GspczkAfEeku3i5i5pGiK3pF?=
 =?us-ascii?Q?Mq81ipN50WZAPSEDVIDG19JIJVo+itYspU8u3H3lX3AsJ7hh1kP4HdpCWqK7?=
 =?us-ascii?Q?ibgZkEq0Ksd8xqI/2Tz87lfcwdzFIGWGCNesDT1AS0RSAwB4cDsdb2HPv26h?=
 =?us-ascii?Q?NQE4w9HMXQ4tCQRMw+emT3G2Q3EitYcXv/jmHNGW593GIaDbP72Obat2tW5B?=
 =?us-ascii?Q?rOdFADmHMKdJdlznxchTi9GZLrXXJ76W+bsv3VxLFgSXphsPMQyr1l5SY7YL?=
 =?us-ascii?Q?Je0alR8r+IMMCCJXR1QxVjt/QnFC0PnHdnKOyNm1o3Ub/fHsINItQ5VGqO8p?=
 =?us-ascii?Q?mlnPpfQAhgz9XjMxGMl1AW6th+TAv/UV/Iac+UAKvpnRpwuoVdr5J/oIbmfp?=
 =?us-ascii?Q?ZqxPwXYwheYKDdkI/ZYLcKKWTb+YH4BQJwA4VFFytrzzY3KqxhN785Vb9Obn?=
 =?us-ascii?Q?cmF+qCyPm+tMD3Y98lO8xljQcnx36ugHpPjwQAQzbzqzW3Lfx1isgUF71wbp?=
 =?us-ascii?Q?zrIV5XrWGQcJO3Pb6lIbHQ4WYQMTRP2kk6sVh9+NTS3GfX0C5mcrBVveyR67?=
 =?us-ascii?Q?UHRFnV6OBgf3UxFfRjo7KlGY3jhTwXoRogPPPR2albs8rlF5ty1UW77B+eak?=
 =?us-ascii?Q?mkJPneXbQrBErF++TmoGVMXB2B4LALX/8oOc5v7d4QnK39ibz/GnDS8gk4Jm?=
 =?us-ascii?Q?28QtBTeBS9491EPs/jsmQQcMdSB1d7A1BK7HJFnHl22D0GgNcpLbB94xq3w0?=
 =?us-ascii?Q?D3ByfxNr5nQ4XliKCSD6AE0Rr5WFYz/Na5PAs+0qSepEgAEV69aD5zs6dR5c?=
 =?us-ascii?Q?33v2AYfiVNK2lVl9TdtgR1hEADDm729eYYRDu6Zfug=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a31e4f4c-e770-4829-b681-08dab50ad1f8
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 15:25:30.5572
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_082537_716314_533EA4CA 
X-CRM114-Status: UNSURE (   8.60  )
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

This patch adds related bus/pinctrl/power nodes to enable support for
Radxa's Wi-Fi Bluetooth combo module.
Tested with RADXA A6 module, which uses AP6275S (BCM43752A2)

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 9577a34bb367..9cf20f3b4d16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -60,6 +60,17 @@ simple-audio-card,codec {
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable>;
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <5000000>;
+		reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -610,6 +621,26 @@ vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	bt {
+		bt_enable: bt-enable {
+			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake: bt-host-wake {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake: bt-wake {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable: wifi-enable {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -654,12 +685,50 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sdmmc2 {
+	supports-sdio;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <0>;
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+		/* vddio comes from regulator on module, use IO bank voltage instead */
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
