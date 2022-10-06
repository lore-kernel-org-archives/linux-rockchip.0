Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C47C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 19:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HYnWnYyEYAu/BW/fpSR9i0nCiT+x6Af5RvryhCMI+Jk=; b=wPL/H8mJVt7Fwp
	tc9WxK1yvYdYVK4q+8FxQnHMMiZu9aJBYne61tmjAltyvIfOY9KhHy8S2Jg8DC6iKMXFegltRvtud
	tsT/qc/jq/QnU5CucgrV9NJPkq5dFaqrXyAwUjgwhNtSAovxa8MtZzK6+RHMYDo7l2/PWXBKLq6W5
	IWl9zN4yslRjBaRqZhWzb6582hi3sg7vREvPLMde40iPeoKtosuyPx75pg/KV06Y0A0s22LfMVy/9
	xV1PI3+2YRyLrcJmltaveXzgBNBEH934agp8dOlipHANnx+s+50MWA938LTNNThaz6f0Mu63atQ3s
	BDyemf1FRIIhOEwU2LZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogX1B-004t2i-1k; Thu, 06 Oct 2022 19:58:53 +0000
Received: from mail-tycjpn01olkn2099.outbound.protection.outlook.com ([40.92.99.99] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogX17-004t07-7H
	for linux-rockchip@lists.infradead.org; Thu, 06 Oct 2022 19:58:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XmV1jJw4LgOwvGsy6c9jxkE65qGk6gWjukiozR/RvBUaxmQr60VHjIUt9ifZW1HdS8krbi9R13VapjylIsiP3sf0sBSdl+TcuQa0E9L7fOOassUk1i8pc9yLuhfS3Npc2MR5kvOrKV9xrrkbv7oMOs/wDxComH3kTlyJnLsSdT9P+vB1JFDmV9hqdvC+E8qnh2/qCjD3VMOU4ZjHFR58kIKPwRL+Y0MlmM6ARBpfK+Ct1az2mrJK1E3N6gEuZw56w067Z7cB+MznnE3ts6SHMMck2TReGU1JCx154TPZcWwddCZqp53am5COjCi2U57KIp3+4O5NvR3Edj1ph/kd2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=keYgoiM/6Xu46sGyJkq5tP6xvIxOmSyp1sOzWVFOXdk=;
 b=nejuKKHvU2OkXK+apNomUN3mwbNcL/ScU5YtoXRfxIp1v2JR/maBd+xr3Hut00L8krKwDD/TCwA9XwL/+52xaKzEoeNwVYJeTfho3/8UhD3SDp/Ekt9fxEGg2eYnzkbS2T+CIaG52gtXzZmZvVgGlARO628mufmQz0JP2mA+TmjGcTHRBkpuu51GNWZt48gYKYSCP1jCaVphmNKv2q5olfDsfN2n+gpqEK2Y3nNWjKpeLkipKGI85I/OnLPJYo/rdtK22DXWKBDgggVaQtGsFY0k7h8ByTuA2U8AaqXh+dejgUIgWbcWTda6fAulrr+SKgoUag4L17xSbHp6s2vzmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=keYgoiM/6Xu46sGyJkq5tP6xvIxOmSyp1sOzWVFOXdk=;
 b=njlIr+xsl1RVdzsb1pFkB5mJ3ViQw9C6mxb00cGdntWwUTio2ytrIHTOl33WKupPHg1okGag0PvU7jKc612pBceK+MMVYU8CdOAIklQqbPzWaimWBr5PEf53y7SnXuB3L+1pdnqDkZag8WZLj9NJBlELqQw7mX1SZ2aY/a3/WNuu3IH6be4lhJXLPikfhPs7AekM4rgTVo0rELStxugl9OsvCYuCyXehMrs9o4m031UUxdQdmahqqVpxSDZusA579P8CCFEL25G/0jaCy3pLUV/d7MPIQsAcDcbQ3r9OffoSKl3E2yjoVs1VTUtTQ5wT112bkgAvg29dPrlVgNx+vA==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB2584.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.36; Thu, 6 Oct
 2022 19:58:43 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2260:9c8e:887:2057]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2260:9c8e:887:2057%6]) with mapi id 15.20.5676.031; Thu, 6 Oct 2022
 19:58:43 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH v3] arm64: dts: rockchip: Add support for RADXA SDIO Wifi/BT M.2 ekey module for rock 3a
Date: Fri,  7 Oct 2022 03:58:27 +0800
Message-ID:  <TY3P286MB2611D245D322B1DEB4E09689985C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
X-TMN: [oSDqCqVq8wIFsN7L0xDdh0/0cRL0oMea]
X-ClientProxiedBy: TYWPR01CA0004.jpnprd01.prod.outlook.com
 (2603:1096:400:a9::9) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221006195827.1747-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB2584:EE_
X-MS-Office365-Filtering-Correlation-Id: 055c7a44-9162-424a-daff-08daa7d52bb5
X-MS-Exchange-SLBlob-MailProps: 	znQPCv1HvwVP9LDKHF4sLv7okkcMocOkA8lZB2b7KfNTJniEYkPIKjZnnbmgo5cfIe0JTQBYoIYIFxbUdutJMmsPx8JqxkAUOHPAQ5DHuPAyP+boQ7RYNtd48yh4hfjrZ56T80nQnhWYF++KDfKwTHcXnZzwBtLlRZ/W8dW5RnqRmvk0rYOWJHCPzI8xXLefltkb//86g19IU5FTKzedtqFpDzgLp2pul+Cc0h04MThn/2S1oFnBfUtmUpU1/nguQPiunYDHXy0r3S/QU5y5NU3QkmldN++LKQiAoz9Tt+4ATUWb8XO61USt214dJLRM/hZfJwiv6iDh88vCL3Sp42KABJ+DZ/Mm0JyLonAO94Cv0DgiLxcC77UedppvtGJHVAmwL4Jb91eu0c7w8eKd2u4Mjuy8/3B3+U3RtQG80t4HmpURYGDa+2nQRC5AuTKiI6i24SwF3FpEz3+qT6bQ0ncDaE5Oek3EZ8pFr5Q0FQ8u+PfYTimtdE1ObDvAkwJLagXIeZPy95jwmm6NdV18fIb6/bRis+V9ij+3EMLPns31Ht+ecwbShzXeQC6a3l9DdS+tl7INzViYrwNVtRZR63BcaFzEDMSqyhmitijOUuzavJzRjpzo7nfsLqBpsIxvjw+BtyqJa6D4dyOeYpr1hCJ5H3Y/MgRn7cc4/KfPAsNKNMox3xl88eITcYVI4qygZ5Sc0hu4dkdgmMlyLhjl6TYwI+g4eJA/w4FH+pInxQhmSVlaXvG+K7m042MaTK9cPIrYttSbcis=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	oZoG4V0T3QC4ri24UGA7Nn47OFsyJjrKOdx5etVD84VsWPF4mcm5W6JrVleLsow/Br4hFhey4mBFc+ElGWNdzDx4k1UBAiZF77KxTNKo9f4pF+o7b6V2o3gUO4An0IRPPwrK9SB1MmdFgLkrQr6bOLeQMiglnhGu5f+9//rkqNw9WZlJY6A/QyOcrlZnJvOzovs6DY/jlSJRsCjGRd7eq8MKuw6ODbjIYb4aXq1y+jKBQC640buXOpe8YUkPa8E9uhjtK7/rl5Zmwsnv7yHe4BXzxBa0vfjWqOjc5V42NM3Kdd8glMeg12pnQ96YqFHFVMmCcGzzm9aXy1DzCNemtxOjmgCPly8ctfdlN3M/lZ7sFBgCRE7Xb+in+rjhZmI8VSpwAtRB7l+1QZlDRXsv8tJ6WEYFs6I3KMvJ1zvPAE7oMNKGY/rf6tOl57DLGSmUY4wi4D0BIHmta4fWqc1TXh3jyb3vhmYispJIgc646D9GnowMC8ZFtSe+eTOe3qU0/Pt57z/hf2LE4mFLiR9R+GCnmoIMLx7R1wvACiy9w78Rme4baH84rEr2K5JlWQPYukp/QddaubW6091JVwvOtt2yek1npNUS2+Gty3gpNJSrc4FvPmFYXxB+AJX1xLaqPDpXK7yZRULRKCpSPMVszTPFP2xxBZfTnQDzdJxTdqA1SHe7YSQjkD1YBiubFQcB
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?hycKh9uiz6VacXk4DwklJBCdfeCHssuYpqdRNJPT1FT6MXVcrNwph8xNF5ph?=
 =?us-ascii?Q?friaIQmNaO3IYGryWhY+ofelJS6p8cj9OyXGNu421nkBv9JHL3ZvwGDgPmi/?=
 =?us-ascii?Q?9p/qZb2ST21pB3dGfKOtook5CZG0JxnlfpFe6mXrzmsJvMGE0y8nvH/86D2M?=
 =?us-ascii?Q?H72GXTqJMGkMTu0PL/cHcQ5CcIi0C2vLOX95oFQ5B3uZzuQ3WYWDnGy5iUnZ?=
 =?us-ascii?Q?PTukM1DDwio0XBiu5OG3f1RnrMQMcbTh8B9Y8yfXt8A5cq0T+zfxu9cnacZE?=
 =?us-ascii?Q?3WO9cRx4tS5hquO4Xd2F7MM7Ro+YjkGkoFQzDGTvi/wIQGrvGtXGFhimTFTf?=
 =?us-ascii?Q?Fwwh5mDSb4gwNJ6i3QmzlBYFcl6hqoy7swkDbPy/Rev37dt6sDHxTqZ7G9NW?=
 =?us-ascii?Q?iA0uiNXOePtr0RPxoqgPk0/PGwr7qSgihhHDKa95sanx8FSF9QOU9QabHgc3?=
 =?us-ascii?Q?dxPd1gEHYuNp6rb0uTvDH/01fDo0zWA6PPjKD1jhdIfgb0MobTE/eK/1Eoei?=
 =?us-ascii?Q?Zap4227hwL2xMlED2UYD8wT+HlA8o3ihBrnwjgsP4uWVhGvxPo5VGwo4/j/x?=
 =?us-ascii?Q?TplW++UDO6UTPphatoG+I9hMpZTuJu8yUOu10hb11XVD9ru+eDO0NU6dvfaW?=
 =?us-ascii?Q?bSmwU4lMQrAIMeDQOgr+Pb6wDTz/BKM5YZmnK/YrG6XexMyatZC4D9/JERia?=
 =?us-ascii?Q?iQ5QFUmnQuDiOLmj0wfa9B3kLB4Rl46zLzyBTIM9Ty2yoByVdR/+GYSrXQae?=
 =?us-ascii?Q?XEOiDeziniWhtLXOA9H4nn28rvkpDG8sW+46sLbUwtcM482PfWCmLbH9rxzd?=
 =?us-ascii?Q?JGAGsUvmeRRDSSWUG0xI0r20DalC9q75lvbuuQZQaUoW49l8dvaLHhRZ5s/C?=
 =?us-ascii?Q?IJrtgQfjyBtYjFWkDsaattIGjGBfZ9bGU+vJuEO5fSri911O77t5Ld2RwkG1?=
 =?us-ascii?Q?Z2eNE6g3vySTPwBYeqp0m9UIxs4pA17F6XU3XIPXY3zYFUohzVpv+i0gIZgc?=
 =?us-ascii?Q?Z+3wmDPDwLmoYFy/PVT3N+8RVqwK8QzwukcsqEi9ooS5jRKQnaZdHNOBZP0Q?=
 =?us-ascii?Q?AXSdCES17U45opWdSxConQnH+nVZecAYi23T5OooDpjW2hVNAqReK4wrsRbY?=
 =?us-ascii?Q?UxInf8/tRFQmpy3sLU81poUxnMLLoPqBDAxwJYgw710tqnoJY9UyJ65KI87x?=
 =?us-ascii?Q?wr/VhtPKs8X6BSGrI8odk4arRgkO2w3KpcHkzOFbPMKb7wYnLAiP/lwOIZj/?=
 =?us-ascii?Q?Mjbup/+7GYmpSYHMdwbWrLaOxEwSH+gIZxvtf6Rd6Q=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 055c7a44-9162-424a-daff-08daa7d52bb5
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 19:58:43.2369
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB2584
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_125849_297243_7189D331 
X-CRM114-Status: UNSURE (   9.41  )
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

Changes in v3:
- Fix UART1 vbat/vddio supply configuration

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 80 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 +++++
 2 files changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 6b5093a1a6cf..37676e8a258c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -60,6 +60,23 @@ simple-audio-card,codec {
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
+		/* On the module itself this is one of these (depending on the actual
+		 * card populated):
+		 * - SDIO_RESET_L_WL_REG_ON
+		 * - PDN (power down when low)
+		 */
+		reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -449,6 +466,11 @@ &i2s1_8ch {
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
@@ -492,6 +514,26 @@ vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
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
@@ -536,12 +578,50 @@ &sdmmc0 {
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
+		/* vddio comes from regulator inside module, use IO voltage instead */
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
