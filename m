Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81804C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhrMMYVrfOddG18pSz48jKz9ZOfTMdbDRFdt1ORv0L4=; b=dFxV2j29ZG8ynF
	1ADCvbeiutQgt5IuY2XJLMYLmOqcPc3Wbl0qa+xLlkyS4QFix2Tx7sGr4gBVFEfF0Hk7kcfhuhs2r
	pE6F8azzV9bxQvoTTfzTGtSDMiAgq/H7RB5JJw+mREYabGLzABKHd4T908s7HOCz/R50cqfK4u69z
	QJlgEzT6XgbyWcKPiFZci7fiLLWMhW4XSQN3IKqtXYwHh4IZmCxretmqJHVKmPaxlzuKHNMrz6vr2
	hvWDZAiDQ1TqPirt0dsq9uBp/eVUw1SYgJHTo8hNx8nYe2ObFTm2Vhn3zN0aXarKkeuldDCdgk9Gm
	2zMLQ0WapplNrQip8lbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmZ-00H0OS-01;
	Sun, 03 Dec 2023 12:41:11 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmU-00H0Kr-0U;
	Sun, 03 Dec 2023 12:41:08 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 8199A5C0107;
	Sun,  3 Dec 2023 07:41:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sun, 03 Dec 2023 07:41:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607265; x=
	1701693665; bh=6637XqfC1TU1Zxz/vKsJf0uaCKGteqr2+3uCTcMSoVw=; b=q
	JWZdwojCWKJig/bXqNyWzVdje3x6Mkv3O6QoWEOf2fJPHfgPjzjyP2NErIkLGUtI
	xXtJ47zmo3/RrU83fSSGRWQ/tn9CTd9n75I/xEro5psg8X7lQv+QQimWDjxB5OTz
	2wdezz7MuWjt79ldJSto/UjMpGaxmtknMCz64v2N8PCfWvge/rOYRHap7cL4I5I4
	Nfvh07jaCemKvwTJ+Z6cN2Oxd93yC4FSBoQmjSKB4VHa14f01Yz1JiWis3zCEHzH
	m52S8IUisbEcvL9kC4JO7pP7LEAPXkAXKeEwLT7Z1NLY+6yBpvWaAVq0fQ/BuNIp
	Ls6sxCgZUa5Fr7gHj4Dig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607265; x=
	1701693665; bh=6637XqfC1TU1Zxz/vKsJf0uaCKGteqr2+3uCTcMSoVw=; b=m
	3bHE4jzeVfv5fndXwKUEnf/U9MwVssbp83ftfb/KIEL/9+jOpHSio24wd4gv0M2N
	10B9Ir3K+tMhUcSRtM+ZYc1BDmIL2DEcvm1Kn0o2LdaWrBA9VfTU0HgH1oq84N6n
	i90bVjyDguE4RCfNRDB09jxVfPH/6MliE1DrWKg5vRUjeihxQcdenqHpSW8OTQEi
	EE8d9NUUmb8IlXdb+ht+37GJyl3Wg8mMdzcGWhjbQuTCec+piWoO9nZ5mboopvms
	pzPo2eouum6Sav20EyKx4n9eDjVf7Uh/cilmp0w39Ubgx/uUXs0q+0O8kJUXCNGg
	IRhowZwVvKA/Nxv9J+few==
X-ME-Sender: <xms:YXdsZeaes49_b_evg3faPPrRZ3t4NJHWEM4O1kfTN-2jVBEiwa12lg>
    <xme:YXdsZRZoO8j8lS2Gbgaz6bBXSSOARCVuZL_A3frEnhQFLPfkvqDUynGHbXjxH2Xo_
    ztkUA-Y2A>
X-ME-Received: <xmr:YXdsZY9td6DDQInLKxo0k-iXHUmOdW7DuKMB-34jO3Yg6AV2yuHYVPCqj-rgsDXI-EUOGif60nF_hUcRIW17UEDIQQuuq2kQsfI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:YXdsZQqM_-XSx84EYwLLVuj4KTl44EEB1iQaYjAK9GzgNusquGScsg>
    <xmx:YXdsZZpgG4eXwG36dHPSEMM1UKs4ajN706oCp3PSVY1MSsRvBtvwWw>
    <xmx:YXdsZeQZUTpAPBSGK5Bn_duUkWtnfqqvZdwZ6Tq9T5CFgqGm_8KeaA>
    <xmx:YXdsZdIjR6rjJ7GzyZhB8Y3UKYB2VNBvKta0Nt_S7lKCc3BS6tb1BQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:41:00 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:57 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 5/8] ARM: dts: rockchip: rv1126: Split up rgmii1 pinctrl
Date: Sun,  3 Dec 2023 23:40:01 +1100
Message-Id: <20231203124004.2676174-6-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044106_352511_2A6D4501 
X-CRM114-Status: GOOD (  10.79  )
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

Split up the pinctrl definitions for rgmii1 so it can be shared
with devices using an RMII PHY.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   |  2 +-
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 46 +++++++++++++------
 2 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index f09be8405964..0c2396b8f8db 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -61,7 +61,7 @@ &gmac {
 	phy-mode = "rgmii";
 	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
+	pinctrl-0 = <&rgmiim1_miim &rgmiim1_bus2 &rgmiim1_bus4 &clk_out_ethernetm1_pins>;
 	tx_delay = <0x2a>;
 	rx_delay = <0x1a>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 167a48afa3a4..06b1d7f2d858 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -115,36 +115,56 @@ pwm11m0_pins: pwm11m0-pins {
 	};
 	rgmii {
 		/omit-if-no-ref/
-		rgmiim1_pins: rgmiim1-pins {
+		rgmiim1_miim: rgmiim1-miim {
 			rockchip,pins =
 				/* rgmii_mdc_m1 */
 				<2 RK_PC2 2 &pcfg_pull_none>,
 				/* rgmii_mdio_m1 */
-				<2 RK_PC1 2 &pcfg_pull_none>,
-				/* rgmii_rxclk_m1 */
-				<2 RK_PD3 2 &pcfg_pull_none>,
+				<2 RK_PC1 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_rxer: rgmiim1-rxer {
+			rockchip,pins =
+				/* rgmii_rxer_m1 */
+				<2 RK_PC0 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_bus2: rgmiim1-bus2 {
+			rockchip,pins =
 				/* rgmii_rxd0_m1 */
 				<2 RK_PB5 2 &pcfg_pull_none>,
 				/* rgmii_rxd1_m1 */
 				<2 RK_PB6 2 &pcfg_pull_none>,
-				/* rgmii_rxd2_m1 */
-				<2 RK_PC7 2 &pcfg_pull_none>,
-				/* rgmii_rxd3_m1 */
-				<2 RK_PD0 2 &pcfg_pull_none>,
 				/* rgmii_rxdv_m1 */
 				<2 RK_PB4 2 &pcfg_pull_none>,
-				/* rgmii_txclk_m1 */
-				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd0_m1 */
 				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd1_m1 */
 				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_bus4: rgmiim1-bus4 {
+			rockchip,pins =
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd2_m1 */
 				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd3_m1 */
-				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
-				/* rgmii_txen_m1 */
-				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_mclkinout: rgmiim1-mclkinout {
+			rockchip,pins =
+				/* rgmii_clk_m1 */
+				<2 RK_PB7 2 &pcfg_pull_none>;
 		};
 	};
 	sdmmc0 {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
