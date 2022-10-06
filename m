Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF99C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 18:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wZfzrp3McqkXI4OKZM+oNa4RtHW9S1siCFQ5GsEkZzA=; b=Bn4RhXI9R1wBee
	C8Zz96HT95XnO3TcazweIg3CS83pA7d6r4543V1xANRc9598AkprMycZEbVTGHuUyaBbQ1Y+VxhCQ
	0hSPeDdyhzRBC2SMAOZtopBHj3qI6kbLEpQyyzju6Us4zrLE6jDlxl+IkbQzbxwaOUrvhwkAbMY+2
	dbguETNQltiM5Za3vZTSOn3EYKFA/iYLP/lhFnMhB07crZ1PanaWAisv+f2oaMO3Pp1T5HhDRnwUc
	4IKjKplE/PIY2o0SZiQxVUYfOhw+FVPtzPxDx4pPOMdLKmlcrKivXefFwIsuA7A/pktHh2rwSMRA7
	O5OYrm4XG1B/E3Xotgeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogVdf-004TOR-IS; Thu, 06 Oct 2022 18:30:31 +0000
Received: from mail-os0jpn01olkn2057.outbound.protection.outlook.com ([40.92.98.57] helo=JPN01-OS0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogVdc-004TNP-Sn
	for linux-rockchip@lists.infradead.org; Thu, 06 Oct 2022 18:30:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0F2rX+lGnjTksjkWNXg+ymPmd2rtC7/y14ZJLoqFQkV0bF81cNMpQKnLznKcIgo6NF+6DB6qGqQAh7BGz5RKU8mBuSOaaR23GhMsJbl+256x3OYCMhFjYOEJo2Atl2OnMUGOwum94vf4aodTN9gChXomN6BrfuqnTqeVCnrtyu826LplRA8Vf3WGzQICUmUqJOVWIDmy53jgmF5g2TeYeI6lJLGeIlKP4FutmQqj2Ggqo4weSfbDUwEtv0eYLGfypA793ybgHVIATlW7b5S834MP7oE48nD+qsPnB2anNhcW4+n6k88FV9viTUwYCUt5I67UC4qt6K/FWWMi2Y15Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4xVxMw12xCNijIupY2QObd4L6RDJKyhcrehrMa90y0=;
 b=QEuUfd4rmCzsr+MnXMljTP5lxtDhKvf05rOMK1XH264Jr3o9jswKsQmtW1pIDhgDOB8sOQAPD8aFyz/LTZPfMoThc1boMOfChfXUtF+h8niDzvNPUqu/LfEZoKXjhE2Lln5qbpDGfZZlGF87Iwc00LZp9+2ybe09ijlt+Rgu/d+DYBSSwx2KNP/ONGjqbGzoyZdDRYwfCyS83IyHVhyRl95VmY4HpNb9DR0R2BS7HewlPF17kJjh6k/ZsH7Hsj4hUd/aSoB/jHjq42WxnkRzEzrMSWPFT8xl7p8vVw1urKvwhjLLsJdwLUg4urWnN7GHp5bRcNfVIdq623ToaoLn4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4xVxMw12xCNijIupY2QObd4L6RDJKyhcrehrMa90y0=;
 b=KFb4CNyK2jhGiwG8RIqszhCEQntz24R4cbVboz77dZc0Wx+HdAReJohEww0grpQjNDlYMI+WUtyn2QxHbGrCp8ufsQyuNSdWYOROyVyL9WDoo4VJfCA8KYE89hsa0hO24fnETy5kuMr0+ZVh/huHJin69RhqM9B0JgckPzFxc+qzDYeKrfh1BVcNJ1shFMQaDDG4Wq4v58RwGJk6F1ODDT79FCc98K4GXJ+4M8q3vdhmebXPfd6j3I7K/EAK+VpPVugY1g6918sbTTrK1SURkaF3gyDcTELZuaVLP3DmnWArZrtSpr1t6eT3d/YVY/rZMlnS38VbbhFv3GGgGWCgjg==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by TY3P286MB2530.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:223::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.38; Thu, 6 Oct
 2022 18:30:22 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2260:9c8e:887:2057]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2260:9c8e:887:2057%6]) with mapi id 15.20.5676.031; Thu, 6 Oct 2022
 18:30:22 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add support for RADXA SDIO Wifi/BT M.2 ekey module for rock 3a
Date: Fri,  7 Oct 2022 02:29:41 +0800
Message-ID:  <TY3P286MB26113F62973AAFEE32AA2167985C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
X-TMN: [ETYnadwJ9A+tLgUJMvhkncxfvy4VqpTu]
X-ClientProxiedBy: TYAPR03CA0024.apcprd03.prod.outlook.com
 (2603:1096:404:14::36) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221006182940.1333-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|TY3P286MB2530:EE_
X-MS-Office365-Filtering-Correlation-Id: e1bde7a2-8807-47b4-0292-08daa7c8d3ca
X-MS-Exchange-SLBlob-MailProps: 	znQPCv1HvwVP9LDKHF4sLv6hmKMXfxmZTWCXHfp7IzKmqyO7P8SHrsnBqiN7LgbIWv/6oaDDatH+uMpuCrpCNRhCiW31NdnAa9Lon1HkEoBzpZ73kIaMfEJOhZS2JzOSodBlMCtlQPVOuPKFgVMPo2Kb3OE0/6E3UebYbo7Fy8Z/hyEE/5wdNCuVCMg/7yPIQu/11tJ6sz1arn0D1vCHE7B2sHbBORlnmgzyDRCXZL1yZ1ZXRa6oGZYN9+eY2kqilji5fAozCBvdzoePkv/2JnXCCZq5VvIc4eynqPEwEnRcWJt2p574xqmYges7hMBrGJv1SWz3kSQcOCBz+/yDmRXqLqNCLrW/PkFcJRd+pIRB+EBDU0AvkIZYkcF6b7Gg7yNiuWhVqBgbXMfHEWUUr2BGSzU9KvPQjKE8116NC9pG2v5Fx3j+DboVcYr44qRLt0hIWA++Aea7Pm1lTZf7Qcb52qcDm529hIRo8M3f0PAUblZDlNaoTnvDdStUQ1+to8GK5UWPQmFN6jsSJFO1molLn3Ckrk4F5XzzrNAY06Y96m/SRHPVFZqfwfq7Ze1ZzX9/RwJN9CpbZnTyAaJxbdZzxgzLQJ9vH2S7OPN8FwPh9AGsN42mkPxI8dcZyoan45XA7MGzzpo17Hx2ORMHYXMICsT+nnCEyKMLNa4HPZN1QGSJSsF5276n3nf2EYiY0Isb90rgH1kBisUp81O9MXrLxyZTt2NH5CqCJ1rVqttd+YYpYpZ1qvJVTVk6gHDeZUMuXevNFxY=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	eNlBTnuI6PAdcA2C2VuLAxoWeizz+HP80HtsCP78CsOfEYMCCPZhrGftAea8lgqaUI5glyNPynI+IVK1gVIZ8ewci6e4kBVjFbWQdT9638Wx8uqBVOxnDJGe4tJYOrJ6QQoGfocrmKAC7ahDs7yM//zSXrx4wgCi1hyiLhWsr7o+pqB8VMY1ok/gpe2TriXM+HXiAQ8TQ4MJggJxxRLkMi8o4N0qgVPjBSInMxTnkREtTi6qeAjO5BvfTSQqInUfduStbpkP0f2/cd2mCDXb9vpFKchE8uHBTgU6MbVF+WGk6blHf4cFpH+CQgiQ+MFchrrlbNm4ttuCqZnr5u5t7WjBEl/DNE82tFhDeL69/n2PI1x0Iw9nT6hz/lqJ7NtaK/r3z7M5/Y3Htnog1Gmlts902Si3c2t+fqBb2Sz9obH01E6pLwsOsZtsTjYsXDzzWi/E705ZdU3ReORmkO7a29Zst/92Q2XR13IH5zoy5QwIlNJgXX2QFkvKqEah8wD0QsSlx6/ipSXv+xaaHZX7DZK4Nq9L9yLF/6rNmffp7c6HoLWQTek9wueibQrpsL0AITdrX1Y2CnQm+RCaYZbyWc+gvmuxhDCMeMQsAMzaYBbBwM4KAI31R0m4q08uCj8OL7MsJcSaVXuyy+yCxrl+1a66H3bFRavUWAwhq3nxrlpYbmf6i4YsgESfjEBZ5LTI
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?R+5Cb0dHMW/MW/Ksn4zMM67n+y43wCpkEOXg2IIHgZAexbAGkdXw3o7HKa3e?=
 =?us-ascii?Q?ZZJMurTq4oCxPHkb3RkOPOl/cpuGSgNWdnIKHQDynr5tctDFYLj/eR9vY8ik?=
 =?us-ascii?Q?Zp8VSxcGty12F2GLfLXAs1eK5jxqO1S2ytCnutk/8E2FB6+HEJaz4YIcmHdx?=
 =?us-ascii?Q?zWnjkNojnnZ/nYOWBeOy0ZBX6mCHj0zm4HP+rV7elPV4hYic0L/zwYIpxvpg?=
 =?us-ascii?Q?vE3EyYX3ejUC8ekrWGNbswExN0qIB+ZIiLdISjdgHsUNuQsTR3l5i63igko0?=
 =?us-ascii?Q?GdfULRj3d6O3JWwSLE6gt7utJk5pqgcp8VooOaDr9LQ9W9einI9qxDtC8Aoi?=
 =?us-ascii?Q?c+eUk/E05CD3G70nxaY+W2b5L+5OEgRNmdLYq1XaZWGkBOqjh1CE/BcJf+5+?=
 =?us-ascii?Q?wkbDInDDi1YCw/4wTsF4x7crU4yIuKDDUzwAUfdw35o6L2jhQ/Hw3ogu1fOB?=
 =?us-ascii?Q?GrLnjQ109RiHw8nwYbQiD7rm6xB8eP44J0D31DT49Pww5rxgU97FqaUUNJBd?=
 =?us-ascii?Q?EP2kw8AmCGxqEnP229WsyYVkm8JSbkJGOf8hgdsGGo5BAdFXgiHndfo27WeK?=
 =?us-ascii?Q?1V3vjrIVH9z8vxuEfZxe4iERe7Pz+YGsO0/DMsj+qOzN6AJL4ZwPCY/nRi5O?=
 =?us-ascii?Q?n6hwg6UGshARPAZt1rBPJbq7h7K8Au5Aust9jnQEaLQaicZlXDmhbdSH+vVv?=
 =?us-ascii?Q?CUSVkl9LpNYorWx+9q0P1oa/laJ5XBLCVFWtEgSjBWOcg75MHHQkysEesfpr?=
 =?us-ascii?Q?RRH/xH8c5dgQYmifVuhPem2mbhKohQWloOsj70beYR+WiqHimX5kwbmXkbpA?=
 =?us-ascii?Q?K9F1L3TNEDWRGS8QUXu3gXRm05DMnQkn+r/1goDynp9yPtz1rLLS/JDQQbEG?=
 =?us-ascii?Q?HedEOk3b8PuG0a/wbpt0aVeCYvmYdw/9BJoEcT+Ifwwfl1BuwSGKeE+qkTMN?=
 =?us-ascii?Q?Zo1w5BLh0X8Itg829Cv7W1qS/8RyjiafgGRHbOxeA6ta4OqOixlv9MjwlH+S?=
 =?us-ascii?Q?MdF8Av/JYC7w5Xk6g8l50/0xh3aNdKeb+XKzyWkyBJ1hcG/gX4RM2Jg4sC/m?=
 =?us-ascii?Q?+TsxSpO5XodeLv+6JOEmVgRqQQk89fOZsQfl37i16YiaFk71qUj3QX8ievyZ?=
 =?us-ascii?Q?6SCeSiDWkK9KuQnnXmKJRqfwdDckmjeNXH1fVGwbNpzHLU5qDirEUPmosCqZ?=
 =?us-ascii?Q?TNe8+AXZhQJq9Cea4YIzKIeeLUICTjwsPfAt9xShG5YOfZ5/r8NLkwwiPzpt?=
 =?us-ascii?Q?GhFFz5iORh4uNYuORuHMb0MIBb4m/KRUQtrpSUUZrw=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1bde7a2-8807-47b4-0292-08daa7c8d3ca
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 18:30:22.0989
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3P286MB2530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_113028_983595_20AC8337 
X-CRM114-Status: UNSURE (   9.12  )
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

Tested with RADXA A6 module, which uses AP6275S (BCM43752A2)

Changes in v2:
- Fix SDMMC2 vmmc/vqmmc supply configuration

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 79 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 ++++++
 2 files changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 6b5093a1a6cf..04caa3027736 100644
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
