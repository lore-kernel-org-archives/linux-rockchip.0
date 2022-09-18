Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE24C32771
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Sep 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uCo1j3qGMaJ0TygbhT3IBt9kK/mUEJ+6WxtpVkt1vI4=; b=Jip/5f9/Dozqzz
	Zcvf/ud0T2AnmgouK1jnnxivbmzeAIqUV1d76/nbyBhyUdwdFoAyAEMkpObrXP2G4XfMnryIdhVdW
	T1oYDboQBDrBj2j1x9vHGCU3oNyYx6clsNVePqUxC95giM/5ocCuYsh9rc0D4xZL+hBnnkc6v+LjP
	uP9SZ6YKDHzQSkYtJ7n2fv/1pw0ImGQO++lWLnFU5twbDIHtsxksTIv8MMuvmQFozKRKTmvIODvew
	PmRAY84roSoDPs7WQxZE4aDXT4tsyyA1ICjXE9dAkpH6ill0JsEZv7ljquiWZ8mRLr9DE/0x4eGkl
	wrG8tqnrhVikfd0NIoiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZnp2-00D16x-SW; Sun, 18 Sep 2022 06:30:32 +0000
Received: from mail-os0jpn01olkn2087.outbound.protection.outlook.com ([40.92.98.87] helo=JPN01-OS0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZnoz-00D126-Iz
	for linux-rockchip@lists.infradead.org; Sun, 18 Sep 2022 06:30:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l1rxFJQcMoyR3ZPgaCwS6fO5M6rJA0SIFWpVKCsH+uaUDHtT1TZ/jRpHm1CpNBxxzl5ka64MnyUeOwtn1mA7418rye+gHo3dBviGYtWVxCAWGZgCJlnjTAsAJ/h1JJSMuOpew2WdFDGGyywMRCSDW66M9mrd7JNtEiJy4coOIfXHXIWVJ/9vluEBgkLzJWkaDaPyqRfbmv9Z7hOZj6yuPFJNuKdRf60c9u++b2parxBZaZBmYZDgO+xkKOh+uOIhLAsO+BJTuEYM46tztmWOh5K4Zpm4BpKcnyMRR50vZq3e8rfCOPG+jirTzxay6oDUkQGjUhRmZAuiHJ3EoiTiog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdzRMovr2mJ66ezEFEexX34MM9Zq+oVyXhREOaVsm10=;
 b=HUNaX83vAO5lALVTz5A1J4E+GYS/saMsyJSNuqGtBdHam63Dl5jzUluGNEVCYReXhe5v/Gim9q4dtB9uMj32jGVm2dND4V6AeAfpsP1Gi2NqfdYSNvdSs5NbizeHOCi14xo+hqiAoGqyAbpm2EeUpIc3Si3nm4eqyNPTTX+g1mePyXgPDoz76vS8n8FnOa1fwjtP8EsjTJ5TfGi6piJdxYVWfDs5xa4x3G6c7/DK49xXnG7rM9d+alulhwE/8f/dPThxDxy51ulYUrZCKNPEv8lkv5cNwI/VfrOchw6mPWoYtNEOib6ahtGQd13Qgom+NIOVgdSW7kXWqytgHDBvug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NdzRMovr2mJ66ezEFEexX34MM9Zq+oVyXhREOaVsm10=;
 b=RGeyKuKAbV1HU+h8mm7tGnjt0o/3CSnDHxMFS/y7Rltdtz5GZqvqaON0ayYgZ4KnXYk2IbyYSXEsXcXeFChYcVaTwbl/fls0rIXGBUw4g+jIYWnaTTOUBphfAcnJEJuO8So5HeuxiDDUVDDJYOFT6RzFsq1smBzeBgm6RU03MXBeuxJ85PD5pPvgPa5eUJfyF9j5gypJHqjTr6Pm9sC96XNLud2T7Lz70KD/BPSnWylFu/ks/yR56844zLPEaXMwXK1mRD2m8e+PLKApg++TE1TpyssEDtP2IO4fdsM+08iwWb2wTamYINjXInPUPukhc3f8M8iM9puIw6oJrsEiYg==
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
 by TYYP286MB1788.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:fa::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Sun, 18 Sep
 2022 06:30:22 +0000
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::76e9:5242:9641:12e9]) by OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::76e9:5242:9641:12e9%6]) with mapi id 15.20.5632.018; Sun, 18 Sep 2022
 06:30:22 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH] arm64: dts: rockchip: Add support for RADXA SDIO Wifi/BT M.2 ekey module for rock 3a
Date: Sun, 18 Sep 2022 14:29:58 +0800
Message-ID:  <OS3P286MB2597A5AF767715138AC0674A984A9@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
X-TMN: [Myaw5tQ5t8UD5lBVAGgG1A3Oj0u4Pvg1]
X-ClientProxiedBy: SG2PR06CA0195.apcprd06.prod.outlook.com (2603:1096:4:1::27)
 To OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
X-Microsoft-Original-Message-ID: <20220918062958.1995-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB2597:EE_|TYYP286MB1788:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ef56bec-de57-4adc-ed81-08da993f4351
X-MS-Exchange-SLBlob-MailProps: 	Cq7lScuPrnqwZHg0HfSFdi9a7pamOgV9svwRp5AwAz8xK9p994jMFDn53L/6r0Wi7m3MsNB1ASZRDUPVeu0/raExxBPGFljwkYJ3BuPw2x5VBbIgiOPKQclbtSkua4kNoVdtSCg7WE/Jd4oDtj7dg1oqL+e1KonJBrDEKr8eP6uWZYhdyzrSFQH2aYx7MZ9wHeHITjwUF36mQ+ZKdrIH3xD0QDiRVXAxAgzaOtIFWb+xiXDQrZi9oZT6mPaaTYKU1CEXTYc9wYj0u423FJdVL4+IZeu2CGLlFHJCXXYrTSxXwiB2cvuMk4cQOqUdl2H8vx3mvbIOwQjwNuPRI10dyBMorS1qsi7zmWCnYM7N/23AF5caGcpDvAmsDvfMNSWyadwjTP3cXRE6i+4aOzXP+j6IOsC3Q8PaQvuBLyrTWFpCIDinbezi4w6RumeLCxgapSf/u2PtbSXWPAdRVTkw8G9bK1IC3DgyWa11QaccGckWNJYta3fhj2fXG1js8715Ab1z00NKVx3k0F+0Yl7kZ26D0AnLTN/4gwnxSDPUAB7gMaRo6m4oMsu8EMVpv19BN5FpddbHgId35+B2Kqz8VbwSqRxk+7ejIRGIib458eKr5RTAmOsecjzHCrRxedAKpMO8WvJC2kGaURzZFDz5Ecx/uNSKWhPZP2dphY6kKdIKDgFqyIOM2Kb9SvmS3vE/nOUHRK0vTY+4M0dyBxpxYtpZ3Dug74o4/gROe4tWC64asQ+Cjs4mIoKSvGO5ac5iJjz+CQMT0rs=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	IrYcs5+4ArugccmloGkLl8peO5RMi9YgAAUXCptVqiRCfuZkOW/XS0RB5PpByuGUGcmSZv6iUHRC4oPk4pvlfqIZJxxLhjjbIFEI7mkRSVE5wBHr/MkPgDB4MrlNge0nSnVsgE/BgC8B0P3NqDIhlxJGAz64OFBQ5ZZ1tIEhx0ltdo4rGRpDWuFRIB+UpkdVLYjmJF5oBxo7OqTOyQB+ti/TQnUSoK7E8bfI+znBPf/NCLU/HJQ7uPQau0m02Z8aukF2aY9OGsuJVPk617N89h5URauhB9MFRVN9tVF4g+n/ndi0Ml/OSnBDhpAs+mqTB5QhI3qFW3QwqT2ZihunK6UUyDV9EcIzZSj0hgYJHXGrXcb2NXbQUGfnY5+XdSR8KFOvmGKr7h0tN3Lm2md3/PhVVJ/PwKpbgYdxaimUwXNb4KPCaA752tBJ2Gh33rZbolQlmvOZ57DOb7Ly1P6ApCUzpKpryIZCEbZcaExMW+8KUhNWIWHvZMLVV76zCVaPg5D3clsl5/I3faqItjkBXrzvaiQARfwgFp2qMFpNyUHeEMA8J9KKaGA/GiEHYoBiuQ4EcxLkvuNUl2VG5vbuqtOVaSpQmDkamAaXvJzKL0WKgj9hOjNaFoUfR8rrqWgU0jqmRZkfnMcTm/YjbD089Q==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?oAiREEgMQ3GY/d3OJf1s6Lzfh2hBjiCsKAR0tGJMJf+tqOUI3Aqz046IDuEl?=
 =?us-ascii?Q?7eZrQ1hDPpFtcNdJlJhKHNK5LyuNRwHyAOwDiEaIMWsjsgS5mnKAN7zfogTo?=
 =?us-ascii?Q?xhEVOxL1aqImLvfBoiW8kbxV4YLVmXPVTiIHKt2q0aPhxwAAAPeSHDKGBqFq?=
 =?us-ascii?Q?x4X+EtgpzvfdsdeLyRLtENji+6qt06Slm953pFPsMAUgBADHTSCwpw/1xzzt?=
 =?us-ascii?Q?cTzQ+PPMLzJud1VkmKBwVV+5NTtEO2ZXcigx01U2MFzc6jy7QeaW5LZO7fcn?=
 =?us-ascii?Q?XCWY/2Gy/dwgwRrhm5TlJivkm9gOT0gtfm3yn0VjfgV3g42/PQD2pdOUmsha?=
 =?us-ascii?Q?VGlbcZ2rPgt8gdbKa69+BYq5/GUYurMP8NEPQO7tNJz+3tM4NcH4bW/T+XOX?=
 =?us-ascii?Q?uSXyHZvx23qKGvT8YtewywDsdC6yNmr9P92bLeeSeSB63M30fnHf4KpquHCO?=
 =?us-ascii?Q?WSouz5SH1PeX4L5ecYmgTlYCblJQmuiZeK11n2B2hjqnA8CRJMRYsURVn9tX?=
 =?us-ascii?Q?f+Y+szZY7UB7Uqhcm2hh8byVuK1cIOhIFlWSH8aF7uTJy9279PpNLHsctwIw?=
 =?us-ascii?Q?hVXWKWuExGQf80gkBWTC6+F8UFSbk5BPp3nzxCK0Dcf6GQu+IxzKWO0R+p0G?=
 =?us-ascii?Q?s3SlCM0Sxy7A07IRrxg9F1PxtDfS2On/3nYeUJPmGfgjqv6f72uTjVn/DHZ4?=
 =?us-ascii?Q?E2axTEUytJnG12Yh8TqZP61Yt0wXM7yW1TdOfBQUXVrqy04UubAsAIC+t6NG?=
 =?us-ascii?Q?BcalE3+uS5E6PqGeCM05YtRGQPqeg8TXRdEeL1VOjfo98T0Qhn9se5JlkZjd?=
 =?us-ascii?Q?uiRzrGPwmYeeNiLHtKigAyBcixgzUel01A/rC5zNL/Q/un+e3b7t5olA4W50?=
 =?us-ascii?Q?N2xF2xQNwfUpnjQmXYpfVQj+86y5sqsFmO9c3wc7PEt1HKKvL5xx4JAmgQcX?=
 =?us-ascii?Q?RuhvnjmHXR54KLqEHLxtRgt9mAJXOfLhoQv1LWQcJFgxZOTjElBJwFVI0/Ff?=
 =?us-ascii?Q?Z1/zc8rJVNZ4BslxL4WHfN4+vbUsGAm+5BOGfuWFLAs+G1NcUrqHAtkveycb?=
 =?us-ascii?Q?74afZ3Z+mP3/5S3fnf6P2MJe62T1ihLnI4n3X13wbx3Zy47csScIL3X5sEun?=
 =?us-ascii?Q?XRQB8WeEv2tKEwhgVLpqHqqKvoYr4JXc5LLDe3BjEY7Ga59uNyzP6moB07OA?=
 =?us-ascii?Q?o9NBld4M69EpGgUMFAeFwHciu3aJ0pwnFMCyo2oZHqMPFhKEJ0qvreDLn7qH?=
 =?us-ascii?Q?j5s3SG43f48SccvceWCtwoVg+dv1wDhtrdHpVwzeVg=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ef56bec-de57-4adc-ed81-08da993f4351
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2022 06:30:22.2777
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYP286MB1788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_233029_660790_11EB4957 
X-CRM114-Status: UNSURE (   8.16  )
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

Tested with RADXA A6 module, which uses
AP6275S (BCM43752A2)

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 79 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 ++++++
 2 files changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 6b5093a1a6cf..4c0dbd117135 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -60,6 +60,24 @@ simple-audio-card,codec {
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
+
+		/*
+		* On the module itself this is one of these (depending
+		* on the actual card populated):
+		* - SDIO_RESET_L_WL_REG_ON
+		* - PDN (power down when low)
+		*/
+		reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;		//WIFI_REG_ON_H
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -449,6 +467,11 @@ &i2s1_8ch {
 	status = "okay";
 };
 
+&i2s2_2ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -492,6 +515,26 @@ vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	bt {
+		bt_enable: bt_enable {
+			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake: bt_host_wake {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake: bt_wake {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable: wifi_enable {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -536,12 +579,48 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sdmmc2 {
+	// vmmc/vqmmc is not needed since M.2 power supply comes directly
+	// from extern DC-DC
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
+		// vbat/vddio comes directly from external DC-DC
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..73df56107db4 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1009,6 +1009,28 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
 		status = "disabled";
 	};
 
+	i2s2_2ch: i2s@fe420000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe420000 0x0 0x1000>;
+		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S2_2CH_SRC>;
+		assigned-clock-rates = <1188000000>;
+		clocks = <&cru MCLK_I2S2_2CH>, <&cru MCLK_I2S2_2CH>, <&cru HCLK_I2S2_2CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 4>, <&dmac1 5>;
+		dma-names = "tx", "rx";
+		resets = <&cru SRST_M_I2S2_2CH>;
+		reset-names = "m";
+		rockchip,grf = <&grf>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s2m0_sclktx
+				&i2s2m0_lrcktx
+				&i2s2m0_sdi
+				&i2s2m0_sdo>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s3_2ch: i2s@fe430000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe430000 0x0 0x1000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
