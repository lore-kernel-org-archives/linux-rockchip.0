Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC2ECA9EDE
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 12:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/H84hTgRbGGX7B64UUaMvWJJRmMRmyX1TVH+Ge6TQ0=; b=HYH5+rvEfkVgKf
	8/nCQ4o3kzdJoUQ9yBfb1uUJzgO+J7Pke1lFjLvkF1NhKIrP5268Rtd2+pxHrHTtJzNGFPtbIsjCn
	NDE3uYTOEiR7lmPRC74QxsKuz14LlvB+oD0xViFVmCj9G7KyHNKszQeHymvaq1gZv/eezOeY4n0lz
	cSiWApJ7eeGsAkT8QMNU92evPXj9TSxaIIK5KWYwI7ZqN+KR5HqC1uXH0WZg53XDE8yVKnTh69uAX
	haklju2ZdP5DS1AMWxCKstsHlstHNpCg9Gv1RqbxjYe5B5FsJ1x6b6iaJKvtFQat+Te8gHhcpGqla
	QXQNq09Zbg1TOnWw3LLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGEyY-0000000AQVr-1KFh;
	Mon, 12 Oct 2026 12:17:54 +0000
Received: from mail-japaneastazon11023078.outbound.protection.outlook.com ([52.101.127.78] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGEyN-0000000AQLA-2RXW;
	Mon, 12 Oct 2026 12:17:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QgDxJzThEEG7fxdAw9/5tVajb5RbtfLTY1AJh92RdcMM+EPm90IuDcaavtJUlct8F9dbpp3KMGpJolk5hdnmwigcUJ6OXzkxNyBgETutmZtgbfeJ1IFo04jlcoBWSzzd3EHrVKSUNr7bihJ4c7db2mgTyQmItqalO56cDMZkZkABNKsz0TzEihPNfMORBjMglVwFdnUe46bbMEExeyZ214AWsZTOV3kzPGe0eS/qQdHXlBYn9gnIfriWXgvIhqI9ui0861E3eX1YyEBKH2yMMyx2dhEpb5AdD633kPN78FStgHSlSJy2dboozTR1zaHvTQst2GJhLq8cLfoj9Kev0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tZG2WlaoiJfyoyCoLT7NTkFy2Vb7kmNp+WMsJQvza34=;
 b=I3oZyvBlbtRdCU+UnaPjEkfaLYj3Oc1uO7/7Fxwn5UU5aYrpPOSo90WuMjcp7SJ/iQMbu8Rp0u7qkRtPyiBkAAW4xths3YlfeEQUjc+jc4Xg5X2+SyKYMluM/RI62feLo8lnzRHa88e87f2jCjASX9W1RYa9ViCmUTsNqiwT0Sq1pwNxYuqHKV9Xzdn3SkIgJG3EyjEE7opaEAD8IywaSd1Aqjei31hoGNsB+aGjhutr9seF4bUE8i3Xx14K4kuwWVSTpCQU3gcuzE+krpyKblXJpwGm0PdFP4uRBMnhaailQWQMdZwSBRnGjD5puGST9I1SzJQVLj7Tasaqh6vTag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crepuse.com; dmarc=pass action=none header.from=crepuse.com;
 dkim=pass header.d=crepuse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crepuse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tZG2WlaoiJfyoyCoLT7NTkFy2Vb7kmNp+WMsJQvza34=;
 b=GnCzfT/rhE25J3YWEgc93gvo6pW6Zoxh0s8Rr7w75/Qm4N5L+7SDywwKytp9X5YRTf5QrufWsovp9Tt4nF9te9yEkLdn4hG9oVCP9iEIE6xuL0y+gjmlnljnkCU3gC4VeD407kC39OkTXEgKn7BOADrfJZBAo+7GKnoAn4Phu+t/yishRH0EUEYrphhxUC4g2CZDSSOnNGA4bRD25VK/ARxEEfVzxhbCJTMI9hhQq6h4qsKzEJt48B3XqiUyRuDoiFyEuhzhBuPhrp0+B6DyGvCSbQYC5C29EUcAgHZ8ev311sgmvPUveqijQmakzS5oDtcfR+Ai/RZGPwc6NI/Tlg==
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 (2603:1096:d10:8d::16) by SEZPR01MB5629.apcprd01.prod.exchangelabs.com
 (2603:1096:101:136::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.21; Mon, 12 Oct
 2026 12:17:23 +0000
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a]) by KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a%4]) with mapi id 15.21.0496.020; Mon, 12 Oct 2026
 12:17:23 +0000
From: Miotsuki Mizuno <founder@crepuse.com>
To: "heiko@sntech.de" <heiko@sntech.de>, "neil.armstrong@linaro.org"
	<neil.armstrong@linaro.org>
CC: "airlied@gmail.com" <airlied@gmail.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "jesszhan0024@gmail.com"
	<jesszhan0024@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "mripard@kernel.org"
	<mripard@kernel.org>, "noralf@tronnes.org" <noralf@tronnes.org>,
	"robh@kernel.org" <robh@kernel.org>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"tzimmermann@suse.de" <tzimmermann@suse.de>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Enable display on UNIHIKER M10
 V1.2
Thread-Topic: [PATCH v2 2/2] arm64: dts: rockchip: Enable display on UNIHIKER
 M10 V1.2
Thread-Index: AQHdWkOitmjpbLvkWkSHeBsWBmcj1g==
Date: Mon, 12 Oct 2026 12:17:23 +0000
Message-ID: <20261012121718.53481-3-founder@crepuse.com>
References: <20261012121718.53481-1-founder@crepuse.com>
In-Reply-To: <20261012121718.53481-1-founder@crepuse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=crepuse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KUYPR01MB8186:EE_|SEZPR01MB5629:EE_
x-ms-office365-filtering-correlation-id: 6baf898f-a6d5-43bf-ccfe-08df285ac55c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|23010399003|38070700021|56012099006|261009223027099003|10067099003|22082099003|18002099003|6133799003;
x-microsoft-antispam-message-info: Psc7vCYVFh1PtwlFZ+9vN3/0vCFyyFHS22kdiISlH1suiKAMI2q4Ldoq0wevZnTpSFvLRSOzLDaVM8aI9kJQwAl7terZW3+jvygnPfiArnwowT1s2TNKoPDQKUX/u08biC+XFPex5sSjnHXocoU6OwPqXra8StcnUCbeCRK6OWFM2wKGm6s97ECi1IkyQlUvZ3yh5T1ge0IUg2dmftOx3/sPyQudWZxVT5VERe/kNqaM0esER4BO6PN0N5wOkW/LhmJsiIZw6g36KG5CVH2MdBt32GKO78vkuif1/L4IYWIPeNlKkGjUteyklZpHTRSYOnfvOTjO4fiYvB4RYxgfov/HcO8hYqJUepIBiOtj7Upzx85xJD89cpAMeP0swzSnKdQ4d3zv/yQCCvJKlyHF1qBcC8j3AaqD4lBKdXwT4PajDWvBxIru3v018yTS3UomJrCGE9OaoB4t43rV8aXp+JzlZXtOoYc9ofn19iitXCPvlnpyeXNpnT9RUfM98pQChycxQ0+P1yWqdba7NQEwx/KqNWqYlv7qugfj5Bw5Eh+VyQoY69Dgv30zGp3X9rKI6OilzQOggGd4S0Q/l0rXcKFXbH84AuVTR8xkLOF3/PaI6JLm66PCKRjw5j+7ryyym+4VsRbWREnxN7Xv82v3uoJ5wFH8wE7zi8JQfSu4VyyBeR4lhag0vCSN/nTogn9aadI9g3lod9NYKjK6VzM+0g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KUYPR01MB8186.apcprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(23010399003)(38070700021)(56012099006)(261009223027099003)(10067099003)(22082099003)(18002099003)(6133799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xzNT8W2s7khcTMQs0IQNlzWY3qWBRRlJJAAjENGTISR4UJp1/gj0bS+FqF?=
 =?iso-8859-1?Q?vapkeA95RRy1A1kmNu9ZDKasHR9/PeHtArQAGO5XEFd+3s+ECRyho0jKDi?=
 =?iso-8859-1?Q?dxAa9XM4gp+3bkUqunK61Fry/kVLk9fUEaQDk1jdwXWoV9FIDIvfud+0Yk?=
 =?iso-8859-1?Q?6+77XThILYgqn8O8iHRFVOYqDeZzaMSbSuEqgo5cJrkNjrReKHeAXc/g93?=
 =?iso-8859-1?Q?oO2Q85AiBK+c5/bTRKW2j1tvedRJYSvhfxssJZrsFZtQRkT5BYZGjIxV/+?=
 =?iso-8859-1?Q?/Em0QJ41Lp1R1aDxs4YMQL8rgMfHozru429dfkdBZB0X+IUYKLpd6hXZoB?=
 =?iso-8859-1?Q?TO3qW7jyjJ71u+uMuuhXqD9zqIz7WDHLm1TwMjFQbqOWM5qIyDWjLhF4oG?=
 =?iso-8859-1?Q?fYi9+ypcP7RTOzS/7YEwLBIC5YWl22ziSgRzN5J+N4cABhh40BqHGTp6o/?=
 =?iso-8859-1?Q?wA4/a7ygJkWXRAh77xGrl5vbaPbjuHbu4pWETsQq9lNDVV1MwLJYdvs3z7?=
 =?iso-8859-1?Q?unJMDdSR7eCIAam387ccjRSSOEZwudNQzurURD5fQWr/Ws/FgnFh5T9Mul?=
 =?iso-8859-1?Q?hsiPbeqqfv38A357NdqXBoWusUIYPUhIzy9ZTH5Sj1LGrf57OPfldmpLAT?=
 =?iso-8859-1?Q?QGyEH554Be6agsqZyGDaZ6mQ0R7LQMR0RmnsgnsOKcKqRUVh40c87uSEYJ?=
 =?iso-8859-1?Q?Enryywre14bZMwkdvvpX/mAMw++/oWwh2VPdjacfVRJrZo92IPewaP92uZ?=
 =?iso-8859-1?Q?PCsGAn7TPLwohnXfrHtp5rTE/7hN5E2ms0hrut293pSVV5AzqUQS65RhIN?=
 =?iso-8859-1?Q?d4XTVmXGRoHhwoJFNnlUc/ZNF7ZsNnHSBZWcOVzcVHx0Pibaq7Z6yyURh0?=
 =?iso-8859-1?Q?EimJbFayb0Fv+8yZNHieTJsmcrAIFBwbDEziBjvXtXXUMuE3AtXkcUTPGA?=
 =?iso-8859-1?Q?QQEX/Yc4D2sNRGCzATIfFSQ4L8uHhNXiz8pyBLjkGMXqMOrn2jxzod2lC7?=
 =?iso-8859-1?Q?5/ydVvWcXtu2PMtK+vBm6tL8bxnrCp35Qw6M/GVMZ6MKDGa0A6yOXsZuq2?=
 =?iso-8859-1?Q?18XapXdx2LKMwWSSyEGL/50/Yy2pT9Xn9ZoT+iWY3W/GU1fFVDcClcqmLb?=
 =?iso-8859-1?Q?ynG8AIhDhVrPvnfdwS5TGy7rHQLCLV/4bS2kcuc4+8oK2sZeDf6Xp8rpjD?=
 =?iso-8859-1?Q?3AGarWhfMT1sS3P4ju5nvcxR61qkqCDacaMwPVfGmg5IJUn8WBGeC5LGZg?=
 =?iso-8859-1?Q?rXBfriTXBpIkXytro46jlgSI+xiI8Mve1xcfrKV8scTQ/g9fISDf4QloQu?=
 =?iso-8859-1?Q?5hiFMKcNsN2pCHpMY6kv6AHzXGAmu5oXxznB+i+XRH0hkP6/1ga+UA9wQW?=
 =?iso-8859-1?Q?rzSE3/YIMQjtbA0+dPzlzvos33dFkY/6BYaJ716d0iZ+XmD5nKD8Y8l1A3?=
 =?iso-8859-1?Q?legwtHpO7jU5ThJ7xdaivkWxdpmwc6NbEwE7C8+ShdLBhyE/L5J7R0q4Oj?=
 =?iso-8859-1?Q?hX7kkElphwVZPIPLT6Oowqx3r/xZrHj/vVV9VM7RurCWT27dWFr0IOxN2G?=
 =?iso-8859-1?Q?7uan4xu7yW80cygUUUlMLuy0wyEyTVrBFZXkkT5sxN9O3R3Va21M2YMXd5?=
 =?iso-8859-1?Q?Unx6aboCnqGYI8oDO5jkw/ERg9zaBD/ZDPf8o4HT04kvdnsLL2/VzBlk7h?=
 =?iso-8859-1?Q?aCmgMHaxINyK9aesPQ3Np6u37cKvlji/tn3fbH3NIG3Qm+QwtDPjXIXtj1?=
 =?iso-8859-1?Q?2cajNgU1+GA1VfXoDJs4LbhmcnupgibKaBkj8u9put0wcs?=
MIME-Version: 1.0
X-OriginatorOrg: crepuse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KUYPR01MB8186.apcprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6baf898f-a6d5-43bf-ccfe-08df285ac55c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2026 12:17:23.2826
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9e189589-0b8b-4283-80ca-b0157c0a04fa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ohxgxTatWKWBDtfpYljdZ+t/NDCZlVI8Eyq9Uhhv9A3s4vMTO2EVHMfMufJc32GV2pFNvj6DhGQVrcuaaVm+7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR01MB5629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_051743_631411_227D0397 
X-CRM114-Status: UNSURE (   5.88  )
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

From: Mizuno Miotsuki <founder@crepuse.com>

Enable the onboard 240x320 SPI display using panel-mipi-dbi. Add its
D/C and reset GPIOs, display timing, and PWM1 backlight, and enable
SPI2 with a maximum transfer frequency of 50 MHz.

Assign SPI2 a 100 MHz input clock from DPLL so that the controller's
even baud-rate divider can provide 50 MHz for pixel transfers.

Describe the 43.2 x 57.6 mm active area as 43 x 58 mm in the integer
millimetre properties. The panel uses RGB565 pixel data and requires the
external
initialization file dfrobot,unihiker-m10-display.bin. No DRM or SPI
controller driver changes are needed.

Signed-off-by: Mizuno Miotsuki <founder@crepuse.com>
---
 .../dts/rockchip/rk3308-unihiker-m10-v1.2.dts | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
index 0c03f118378a..4dc01ea73e44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
@@ -22,6 +22,14 @@ chosen {
 		stdout-path = "serial0:1500000n8";
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 10000 0>;
+		brightness-levels = <0 16 32 48 64 80 96 112 128
+				     144 160 176 192 208 224 240 255>;
+		default-brightness-level = <12>;
+	};
+
 	keys {
 		compatible = "gpio-keys";
 
@@ -154,6 +162,13 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
 
+	lcd {
+		lcd_control: lcd-control {
+			rockchip,pins = <1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>,
+				       <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdmmc {
 		sd_vcc_en: sd-vcc-en {
 			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -183,6 +198,10 @@ &pwm0 {
 	status = "okay";
 };
 
+&pwm1 {
+	status = "okay";
+};
+
 &sdio {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -216,6 +235,40 @@ &sdmmc {
 	status = "okay";
 };
 
+&spi2 {
+	assigned-clocks = <&cru SCLK_SPI2>;
+	assigned-clock-parents = <&cru PLL_DPLL>;
+	assigned-clock-rates = <100000000>;
+	status = "okay";
+
+	display@0 {
+		compatible = "dfrobot,unihiker-m10-display", "panel-mipi-dbi-spi";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_control>;
+		dc-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
+		/* The DBI reset helper drives logical low, then high. */
+		reset-gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight>;
+		format = "r5g6b5";
+		width-mm = <43>;
+		height-mm = <58>;
+
+		panel-timing {
+			clock-frequency = <0>;
+			hactive = <240>;
+			vactive = <320>;
+			hback-porch = <0>;
+			hfront-porch = <0>;
+			hsync-len = <0>;
+			vback-porch = <0>;
+			vfront-porch = <0>;
+			vsync-len = <0>;
+		};
+	};
+};
+
 &u2phy {
 	status = "okay";
 };
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
