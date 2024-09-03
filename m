Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A71B6CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fD8lOVjTUy8ozebbnXl5vfEwNqU8tRtzSlwn2WNq1uQ=; b=3r8ENUWs2UD33/
	L+l4H9SHH3AKcewch02+xbvy5VYk7yIpIDx1moPkkao/QSz4CIwkWotWz+zZMZEyr+zIOF19yKUNH
	OC7YEzMstfVZ2oxuKYMlwzNYxbdc6J1Xxhkl/eb9rzjIEqdIeZATrxmQohWwzUPjCxnJPJJxW8NAi
	K6X2K5aU/Vy6heMngbGqp7utI1d/TgkI2wicbU7jPjORBQX2NRANEdsRMUMugpA3f5uYLvrL3H8fw
	5LB5gkzA2owcMJBw6lfzE2CigmohL1n62XgSBuu4LtNmhsYz++29iaFU0ruDnI1EYk0Cfdv8kKv/C
	lRWehbCPvix7XGN1+mxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRDL-0000000HRFU-0nXZ;
	Tue, 03 Sep 2024 10:56:47 +0000
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRA1-0000000HQ85-1sCZ
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:53:23 +0000
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTPS
	id lNWIs2jbynNFGlR9lsUNih; Tue, 03 Sep 2024 10:53:05 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9hsJ7DD2GFYlR9jsRlvf; Tue, 03 Sep 2024 10:53:04 +0000
X-Authority-Analysis: v=2.4 cv=GKAOEPNK c=1 sm=1 tr=0 ts=66d6ea90
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=PIVyUoi6X9y6bivDt_YA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=/MAIKAPNBs6sHSm33nKmjtfGOYqIhfEVYi8ZeIyp5Xs=; b=IRWLiByrr8YsgosLolDYWGayBx
	qy5wdihlmrT1CdlW96PilXCj1wafxM8eHncPMupSEA2oXt6W6G8LiVp8fSqSmrR7ocRcdvThdxJsF
	l0ijglKpqdU/9gdRjtT2bsEySrHl4R5t22Soeu65WA1gudMtGK7xXyeglXyKqC9xjl5e1Hc3Wii7m
	HF1x+jVder0U0Isz9ndI6FqN90+sK/64ckwxoVNmHfqRrqwrB3wtCGxxW053ImE4eOFYzEuWL6OQ9
	RFU3QNDvDMts0TuxLAmARpnZGMymU0GV7sXBSH5LLaSYL2fsCezV3B2zKz8GW1W/jjLNVs8BquKW4
	FT9baP6g==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9f-000Elu-32;
	Tue, 03 Sep 2024 16:23:00 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v2 2/8] ARM: dts: rockchip: Add i2s0 node for RV1126
Date: Tue,  3 Sep 2024 16:22:39 +0530
Message-Id: <20240903105245.715899-3-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9f-000Elu-32
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 21
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGjDGfKGZFni/VpeDSOCcBJWLBx2aGM7tJytja1kMRs2UW9k2MJXLbiXojTvdmmsBuxOefxGCuYFV8Md39z64yicK79D4xuIib7awbL5+8BqfW5TqRQw
 27ZNSP4CmqgLF3Q+Wa2/z/kk6vgU2IFR3MxbptOZUrFrKOKOuunxRLsxySnV9Wnxu04Ope1V3cn3X/0fddL9cDR/6dK/2nDnyIxNd+jGLOkDZz3HqngAdQkU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_035321_890231_5D9DEB71 
X-CRM114-Status: UNSURE (   7.42  )
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

Add i2s0 node and possible pinctrl for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - fix usage of underscores in node names

 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 102 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        |  26 +++++
 2 files changed, 128 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index be666b25b830..a3714ab0af32 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -123,6 +123,108 @@ i2c3m2_xfer: i2c3m2-xfer {
 				<1 RK_PD7 3 &pcfg_pull_none>;
 		};
 	};
+	i2s0 {
+		i2s0m0_sclk_tx: i2s0m0-sclk-tx {
+			rockchip,pins =
+			/* i2s0_sclk_tx_m0 */
+			<3 RK_PD0 1 &pcfg_pull_none>;
+		};
+		i2s0m0_sclk_rx: i2s0m0-sclk-rx {
+			rockchip,pins =
+			/* i2s0_sclk_rx_m0 */
+			<3 RK_PD1 1 &pcfg_pull_none>;
+		};
+		i2s0m0_mclk: i2s0m0-mclk {
+			rockchip,pins =
+			/* i2s0_mclk_m0 */
+			<3 RK_PD2 1 &pcfg_pull_none>;
+		};
+		i2s0m0_lrck_tx: i2s0m0-lrck-tx {
+			rockchip,pins =
+			/* i2s0_lrck_tx_m0 */
+			<3 RK_PD3 1 &pcfg_pull_none>;
+		};
+		i2s0m0_lrck_rx: i2s0m0-lrck-rx {
+			rockchip,pins =
+			/* i2s0_lrck_rx_m0 */
+			<3 RK_PD4 1 &pcfg_pull_none>;
+		};
+		i2s0m0_sdi0: i2s0m0-sdi0 {
+			rockchip,pins =
+			/* i2s0_sdi0_m0 */
+			<3 RK_PD6 1 &pcfg_pull_none>;
+		};
+		i2s0m0_sdo0: i2s0m0-sdo0 {
+			rockchip,pins =
+			/* i2s0_sdo0_m0 */
+			<3 RK_PD5 1 &pcfg_pull_none>;
+		};
+		i2s0m0_sdo1_sdi3: i2s0m0-sdo1-sdi3 {
+			rockchip,pins =
+			/* i2s0_sdo1_sdi3_m0 */
+			<3 RK_PD7 1 &pcfg_pull_none>;
+		};
+		i2s0m0_sdo2_sdi2: i2s0m0-sdo2-sdi2 {
+			rockchip,pins =
+			/* i2s0_sdo2_sdi2_m0 */
+			<4 RK_PA0 1 &pcfg_pull_none>;
+		};
+		i2s0m0_sdo3_sdi1: i2s0m0-sdo3-sdi1 {
+			rockchip,pins =
+			/* i2s0_sdo3_sdi1_m0 */
+			<4 RK_PA1 1 &pcfg_pull_none>;
+		};
+		i2s0m1_sclk_tx: i2s0m1-sclk-tx {
+			rockchip,pins =
+			/* i2s0_sclk_tx_m1 */
+			<3 RK_PA4 3 &pcfg_pull_none>;
+		};
+		i2s0m1_sclk_rx: i2s0m1-sclk-rx {
+			rockchip,pins =
+			/* i2s0_sclk_rx_m1 */
+			<3 RK_PB1 3 &pcfg_pull_none>;
+		};
+		i2s0m1_mclk: i2s0m1-mclk {
+			rockchip,pins =
+			/* i2s0_mclk_m1 */
+			<3 RK_PB0 3 &pcfg_pull_none>;
+		};
+		i2s0m1_lrck_tx: i2s0m1-lrck-tx {
+			rockchip,pins =
+			/* i2s0_lrck_tx_m1 */
+			<3 RK_PA5 3 &pcfg_pull_none>;
+		};
+		i2s0m1_lrck_rx: i2s0m1-lrck-rx {
+			rockchip,pins =
+			/* i2s0_lrck_rx_m1 */
+			<3 RK_PB2 3 &pcfg_pull_none>;
+		};
+		i2s0m1_sdi0: i2s0m1-sdi0 {
+			rockchip,pins =
+			/* i2s0_sdi0_m1 */
+			<3 RK_PA7 3 &pcfg_pull_none>;
+		};
+		i2s0m1_sdo0: i2s0m1-sdo0 {
+			rockchip,pins =
+			/* i2s0_sdo0_m1 */
+			<3 RK_PA6 3 &pcfg_pull_none>;
+		};
+		i2s0m1_sdo1_sdi3: i2s0m1-sdo1-sdi3 {
+			rockchip,pins =
+			/* i2s0_sdo1_sdi3_m1 */
+			<3 RK_PB3 3 &pcfg_pull_none>;
+		};
+		i2s0m1_sdo2_sdi2: i2s0m1-sdo2-sdi2 {
+			rockchip,pins =
+			/* i2s0_sdo2_sdi2_m1 */
+			<3 RK_PB4 3 &pcfg_pull_none>;
+		};
+		i2s0m1_sdo3_sdi1: i2s0m1-sdo3-sdi1 {
+			rockchip,pins =
+			/* i2s0_sdo3_sdi1_m1 */
+			<3 RK_PB5 3 &pcfg_pull_none>;
+		};
+	};
 	pwm2 {
 		/omit-if-no-ref/
 		pwm2m0_pins: pwm2m0-pins {
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 59de848c9a83..09ecde58c553 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -434,6 +434,32 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
+	i2s0: i2s@ff800000 {
+		compatible = "rockchip,rv1126-i2s-tdm";
+		reg = <0xff800000 0x1000>;
+		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru MCLK_I2S0_TX>, <&cru MCLK_I2S0_RX>, <&cru HCLK_I2S0>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac 20>, <&dmac 19>;
+		dma-names = "tx", "rx";
+		resets = <&cru SRST_I2S0_TX_M>, <&cru SRST_I2S0_RX_M>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s0m0_sclk_tx>,
+			     <&i2s0m0_sclk_rx>,
+			     <&i2s0m0_mclk>,
+			     <&i2s0m0_lrck_tx>,
+			     <&i2s0m0_lrck_rx>,
+			     <&i2s0m0_sdi0>,
+			     <&i2s0m0_sdo0>,
+			     <&i2s0m0_sdo1_sdi3>,
+			     <&i2s0m0_sdo2_sdi2>,
+			     <&i2s0m0_sdo3_sdi1>;
+		status = "disabled";
+	};
+
 	vop: vop@ffb00000 {
 		compatible = "rockchip,rv1126-vop";
 		reg = <0xffb00000 0x200>, <0xffb00a00 0x400>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
