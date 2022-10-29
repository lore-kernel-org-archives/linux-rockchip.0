Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9BF7C38A02
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 17:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpJx6ZKcRCLdpcZxL1ksFqtyLyAnwsK6/Uo7JTiHYds=; b=KQwaCkkswtZMDx
	6jVMXdzl3sdFDrvPSd2Ye2ClUDsRSjbyGZVfLe27RaVakWqoeiynDHN+LnzFZvqx/2eoGaMpTHKgJ
	VHPXX9V4078x4tdQLrzKbkn/kl33DYLll4Z1kahoWvXH0CCFysxXBlgaJIudDCOSJeLiM9f46mJ6S
	qk/VdqKrAVM60UHBjL2/GsLSTyooFvteyGkYYRYFyE9PRagzps0bZK/h0u8BdLRs2uudx5oYUQGwj
	h4mStwhkdHYbiSQbX7VmdE70MGht4k4tKRtUTxk35AgDQNb86MltKls748ACnSAEFx4r4uvn40wwD
	4Obyf9QQzwnINkhILZdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oopMr-007VtV-OY; Sat, 29 Oct 2022 17:11:33 +0000
Received: from mail-tycjpn01olkn2072.outbound.protection.outlook.com ([40.92.99.72] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oopMV-007Vh7-U7; Sat, 29 Oct 2022 17:11:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VfexCqKmdhmimhbPgGoiqD8xXk9c4wVspJPMlLZU3YdxUrQsc/p7r3ct+ATUep5fT7Hbyck6AwQPnKU+r9t/YxDh4knOzm2fULHDafJ4HOu8XRTZtX0ywlL+PxV7DQ6ZE+QMnBFWL00v3/ehFAMYZtlcqbWWr2f66e3GRmwYhltaZxOPFxDEAm209wCfmNYhODmLvB2+uFqzc4rRYSoZOFEo/0dZ5oscF9eUG8O9B8jk5Liw5GWlZ2a12NJ+1QNFiohrlUhCyfjM5f4Rox21Eyd90lvAyVqWf8asUY1xnSbuPqFjdkyH8vprj87xw1Dd8M8o1MtzBO+LgCwIBzupKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+YkZnyTaSCGaaN81OI187EPcGabNDf+qaTUxTK8lLQ=;
 b=Fxt8xVlSnmvJyhApHbHOPdT7hr7LfsVrh2x/CzQ510LfUnZAiFxkFFZC/0gm73IKF3XeRz5Lnw0ZqCM2rOXOUcU6zqfgeyI55M4bE3MSdK0ApaSXMByUysYlX12IEautCqidtBpKSo8EhF3RgrF1D6BQapM9nbwDBRvjSiUhlZACILklQpQxyOoKJ3lj62Px90kdHTVVCrBDsymfH4tQ6vfX24SXzg6nEknSO6uiqRCJJj2YERxl8rlvR2b6aFg39B0bzLdBFmTaBHcPPhn6hNVJtAHXj/eVobERSZQCKyvD2xBzLd8014euyv/54261YY8K1R7QKOXksEwauKqFLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+YkZnyTaSCGaaN81OI187EPcGabNDf+qaTUxTK8lLQ=;
 b=qoFoAKRwDf1wiGAquYLxFXAglT+bIBl4J1u0Ba5FbPvReGbmwjmthXVnaDJq85l3dGajNzcsSndD9LUDMZwLAcizQukEYf8uGYSKyuxqLjIDtyd9tSVEX8v8OOaLZM6rF1FD5XnWGUGSutiGq5QdGUkzU7CvL9/vhcgoF/88Zw9stYd4MwyM4WQvZxs3vLSpdbLB8yZry+nGSxK9jyh3bUwaPzxpNdlTPeHevS6CbCWSpTb6mEHt+Rp4VtGeKZEZuq/Plf01eIb3JAym20ycwPsqL+pYeVtWafBrLxz9qwyg149lzcBMl2Clqep/4b3IJOV5QNshmkpUYEI7H4Xt0A==
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
 by OSZP286MB2094.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:16f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Sat, 29 Oct
 2022 17:11:05 +0000
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd]) by OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd%7]) with mapi id 15.20.5769.016; Sat, 29 Oct 2022
 17:11:05 +0000
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
Subject: [PATCH RESEND 3/3] arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules to Radxa Rock 3A
Date: Sun, 30 Oct 2022 01:09:08 +0800
Message-ID:  <OS3P286MB25972313C916A68698B1CD8698359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029170903.78-1-wiagn233@outlook.com>
References: <20221029170903.78-1-wiagn233@outlook.com>
X-TMN: [uMY36obgrLNwUbv0uYzdJHdFamS02GCw]
X-ClientProxiedBy: TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14)
 To OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
X-Microsoft-Original-Message-ID: <20221029170903.78-4-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB2597:EE_|OSZP286MB2094:EE_
X-MS-Office365-Filtering-Correlation-Id: 8081f9ec-8091-4cf7-7114-08dab9d09013
X-MS-Exchange-SLBlob-MailProps: 	HeyTOiyEx6bgxvvtESq6ioKsiISu8URdpihDO+bNBRaW00j1rYw9bii8p2jDXde2lagQWnpjhlb0bPJghuy3zohal0LnzgqYw7p9jUnmkC1VRSue2SAinFjRk4YV6cqcsT8YS6i0OviKs2DLk7UNZFBzJ2pn3W6vP+EJ8cT/EcvBOlrfDDUtz/i/tw4h7mFp1HQXt2lSyS7uGE97i5mcDBjQ+d/Ej/yBI1rGfZwHMPPDlJrSm/50pXmGK475Mw+PZ9yb1z2wsrFJz9AnvhwgXKvjZieZiNSTws2WVeo2QOSkXouhxcJuE0pQa8UYE6nLj88/t727ogZmtf0ZgLq0E2ze0J+xf3HVN0ciQs9m6t+gk9C4/DcmRKw2kyhzQAW8grNkcE8PROh/srY7VH5JtLVbOleBnTl8BGXIZD8t0CPz91jjjkCbm3n446D4KaLHxLU11noXOqgfQlwF6RcRocW/05yAVCDoEUKmj2FiP08cCO6mjj4W0MGJ3aZ0qTnJ9fqawT4R3N+SKFEvkDLe7ic5Ym66yzfDA3hMh2OQVK2W9OtT4pzLU7njCTcfSkhqLYXu8+rglhRp7LHtURUVSw6519jsPYIq/qPjvMAIWGSGgu//dEaCyUN+1Ojmrblhclr1tq+IXGPDdajkTcA0eG7R0JB3UmOW93yI8UvnizgumbXLXaT0lC1DtxV4O6bNWmaY6bd4CQxBK1CQKTJ1frMqzzfuWEM4E+tPvgV30vE146XRNM11+qZQZQsFg1QikHRhNf0Be3hiTD3PB5qIIQ==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	sdj2tVzCcjMtfyQoozpH4zk/fvg9FHZn3HH0Kcllg793VxCFnpMtRWbKXVIiQFyBoii1IBpHkZtb9EpdUWi5ClV5qifHC09zIxylXv1IZuiY7S+6ymZcehJdL4BtklsazyufFCy9I6SB52kSJZ95LANN/8/y9xuPpa3WFkTMw4N0igyOHOxEbuolWZYr0Qx4t53oY9RO0iSz13A5RI/nG5xGgvk0dAMZ/qScz/1jmUS6RvJxuPO6vStS4qIdrnoKNHIIN1cRHkpuh39uMOp5n2DvfywFtWEqCguwCZIBaoxW2uEGDghLITKXpxxOjDud7EYDLm2By1nmb2kglIiGHBabeGwVHkAdbT+P6eLkJU6RW1BDt79CBHOYIh8HkqESpl5E/S8PFw+JPLDGV4MJaVGcoPudnUk7KIDYAWs7E52gFbKOX6vUo/Z57cLfhx9O4zRhslrbmhVncRXo3NtUi8F7WkOZXxw1RoOcMWV+6dwrsJ3PwLeQy9immea6WZO5PXq9qNHPZX/6XbdGiG5j+f+P7P4pvs+EJ6O0uM+V/MHLAGI9sCRPwr36HI0cLc2ByV5nMrXO4IFmPTUP65zHHRjexF7sdgMYDuRH6H2ORDsSJRCwI8W5NuHzJDSNMXJvCuVbrH6iaEPTpyty6+QjX1Es7aS7XSdEKe/vbiunS3NSdlDvYc+FysC/Cfpa15Vn
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?alcizD5ncRk5q/fEyI/ZzX2sEfqzAjfhVn6PZhidTCsYOsTh6WfgmUkA3Ey1?=
 =?us-ascii?Q?YQOpthOTkYWslpOwOgPR2skdI3jDUwa9n6R4nUJChhi5zJZ77zD5cvvfRLPI?=
 =?us-ascii?Q?iT/ZjbzN/n88ELPKEBUEHLmOZYSLFQyeDmB5+eIf9IQUg1S3YlZJ+YaEYg9Z?=
 =?us-ascii?Q?sGIrmrps1uLeCyAoAzuyAI3gWlCdhl3kGid+pDsdXlT3iFlRxqMy7cEgdd6y?=
 =?us-ascii?Q?tzYLwSbF+pDVzxR69K6gUQFMHb4cTin58uCIS7B6K/SUB4yNrhA2pLXt7bms?=
 =?us-ascii?Q?Q78WRRYFqajgj4Im+fSv8hKmWBdUMI353dEO5vc3RyzT3XctUguvXWvevkJM?=
 =?us-ascii?Q?G/ZuokhBzGQHkEMF8nFGZyR3MiVIkq4UN7LD3ftYPfc+3QeBbrb514mBUlgg?=
 =?us-ascii?Q?DPaMHg0IP9WY8RM3+yRr9cWkSxvCDGSfyCzySkE+XRrbFuCJKVj6K8gLfT+H?=
 =?us-ascii?Q?RpYOCFSGe6fD1SkgmosKvb1s4OL2PiDWSB88hghB2pYdEyswEppneeJatXxg?=
 =?us-ascii?Q?Gx0MEscJT9PlwfYbeJADwaqMR2k/db5k08TaXahErV6yW6tkVptsZrhPAHnQ?=
 =?us-ascii?Q?ub7YWvtSSaAaton0uc5HjaiP+vdopDaslLB4b78BxBKV8hRtN9YEnBywbmhp?=
 =?us-ascii?Q?A/s2rHSnfEX6IKQgqHOOBcRzi3vfp7W9bg5fwgM0evY2CWM8fNz6BfVlO4oL?=
 =?us-ascii?Q?aOhQ7+gcufERwyHadMez3qQRpQ7d6rGgR2Bfea/I/su5Ri7LqjmQ798Nh8gg?=
 =?us-ascii?Q?j4TGovxDoKAM/5Oo7KMEC/gktCrwctzQG1Gkdua3TZl1KK6sQ9OfKWE4Hhr4?=
 =?us-ascii?Q?bLTb2GglHmZy/U2T64otuJ3dckIYIJM1bbMyp3AXK6wA6RJpa5+J1jlKyetJ?=
 =?us-ascii?Q?wigGnQSfyb416fjjJBrgVOz8ecglGpG323EbWYk8r3g5OBD2ggRg/SU8Y6yc?=
 =?us-ascii?Q?Hg9axLAaPRsU7zFeLmrLMOI2mis37xtqvlYXQFXePDmIaHcHbqq+3+gUzjNu?=
 =?us-ascii?Q?yoQKKY/Q8huJpIc6UtLOKnpi4V2oWD+LSc9EJHccNyAJBjI4TermmO64S3g2?=
 =?us-ascii?Q?Nlp0sCswfTfTEzsF5bITe7Yu05/zotYH5gv9C1F2YPR9vDQN2uav1VO78Z4d?=
 =?us-ascii?Q?A6rPoV3JYVHTtdrypXJAz0yHobugzv+VkrgyPssyQsVwWg6vlGIxTzzlSQms?=
 =?us-ascii?Q?kszrNgGiCrUyeixwtRyVByNVdfI/m1cgww5pBPQLYWvO6ECyeVoRkGPrndgT?=
 =?us-ascii?Q?G6HqS6RsUOlsrmtZA/nwjg0AUcu7eevSuu8Anl9kMQ=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8081f9ec-8091-4cf7-7114-08dab9d09013
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2022 17:11:05.0375
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_101111_999410_4D9FE164 
X-CRM114-Status: UNSURE (   8.86  )
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
