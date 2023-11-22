Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9516C61D9B
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUTrAd6eh18z8/KCc0C37E+7sFgeVaz0AI297v7gKwc=; b=v4QyHxURpvAKXi
	ZaFveXM+Cb0lVOMBPWYdRDQNXUwo0K9zFhokUIQyAs8aPWg12pRWoAHZgAnEJC7dO0OaIpkhiS2oL
	/Y8YrbvkHZdXm+76XfRkxLSWR9mRgernOoh45PreRnDmIZmbdIJJVRuDssQOCf9cDh/YPc452T6Mt
	3ApAmY2v4rtSnviH7K+T1cm47pPChKU2tWBbPFb34SP+q3uc6yw7L06KBAlNzeKy2EjaHA8c2R05o
	qjFLH3cOnsW90Ox9veK3p7XL7jgiBlUym6UN9vJNNCHoY3UGP8SGjC/8oD8ACgLe6wv2CauU6OxHN
	Pa68MMKxUZVn2VMjegaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGg-001mv1-29;
	Wed, 22 Nov 2023 12:23:46 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGV-001mmY-1a;
	Wed, 22 Nov 2023 12:23:36 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id 3294D3200B13;
	Wed, 22 Nov 2023 07:23:34 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Wed, 22 Nov 2023 07:23:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655813; x=
	1700742213; bh=EfSIpF5QpRJ/kH88XgJaJqNVfScOGC+iP6Jlp3rOY24=; b=I
	9v2mkDboYLJqiyqnALxwW6oW1DqlQxn9wVmo/c6Em1rbWsfEfvrEjiLvffcRN/76
	U1seAeATdL87VR0RCJVu18YGmQ2DD2YqAdlOv8U9TKLxhSz0a24uWdc4Yem4xD9a
	B7xQZpHENsRiDoVb51TnYgPlQO1IlIvY3V/Q8JVMICw1+0JWw2ScqcGNOgbGe/kl
	cOUOPdk79k493cQpoYCynh93l+VCN8p6U90AHrYmKbADlC7dO/mPoybB0hfonHq/
	HEeQcHu37e+dyxjOFKKmSmyh9N0BbrcEL6DsX/03QxOiG025bAFaXbXYvRu9Iv0w
	Pi0quzV7SJ+14Yom2wyuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655813; x=
	1700742213; bh=EfSIpF5QpRJ/kH88XgJaJqNVfScOGC+iP6Jlp3rOY24=; b=A
	Ats6AOTGg68qyNG3t/rwfz0sFgO2iUqRN/6bOCuQkll2JY68xCVFgw/o1xYfI4to
	KVLpXt0oERM9CT8n3uDYEm51yCnDeFyLGB8ASUKEARPJ5qapxEi6NzB4h6RBUzBC
	VJU+zIemuw/vGYQ6YvMeT1vmNaQ/uUtEUzaFJsRF/IVeyWl3uKMUoyJSCXgmXfqv
	m/ZtJXEqGwv64eRj4o0aJG6rmZqMZ3YKpnIiMnVS5pCgufy3/m12rpymOMYpGyEf
	+aI2cZv77LYMauk4sE/deHuUy3nHBHdZ5md8UpoM6vIItLPpMovKZwovlCLGhnqv
	mx0QMKxD5L7WO5bT/vXfQ==
X-ME-Sender: <xms:xfJdZZnypb0TxiXLsvEkvaWpeyLqRJYFcSLXTL_hklsGH5q_UmhHdg>
    <xme:xfJdZU3dn3KighPuZVrOJFL1Ardj45bP-nEC3Ez2Mn5SIu9GNKgaKMT9FFkitgWf7
    kp_HLOa8w>
X-ME-Received: <xmr:xfJdZfq_QC_3FGAHuHJnQOTEwawpuOscJkqVB9_qITUoXAuy2RjhQv8s8P2OPf4Db9jatgKtkvKaatfo8bmox8sNZ1RJJfVZ-H4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:xfJdZZnFZ1ZxzzFy9NLdUkr2Xxfqv-bjrgmqXtMnC4eW9m6EuSGQhA>
    <xmx:xfJdZX1cBhn_Hz_qNrBZUkaQn9gGZwAF1-SKkQeJH78d_XF2orq3zQ>
    <xmx:xfJdZYtL8Iijdmf-iPnN6CE1kDP6D7Xf8XEyJypD5zowOsZfQ6ZCjQ>
    <xmx:xfJdZclUn3NccG5cvO_-QN3Gv7m0EKq33bcedZtekKhyLsjtahJsGQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:28 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:25 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Wed, 22 Nov 2023 23:22:27 +1100
Message-Id: <20231122122232.952696-5-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042335_570880_963758F4 
X-CRM114-Status: GOOD (  10.70  )
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

Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 4f85b7b3fc4c..167a48afa3a4 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2_xfer: i2c2-xfer {
+			rockchip,pins =
+				/* i2c2_scl */
+				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c2_sda */
+				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
 	pwm2 {
 		/omit-if-no-ref/
 		pwm2m0_pins: pwm2m0-pins {
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 6c5c928f06c7..cf1df75df418 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,7 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		i2c2 = &i2c2;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -236,6 +237,20 @@ i2c0: i2c@ff3f0000 {
 		status = "disabled";
 	};
 
+	i2c2: i2c@ff400000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff400000 0x1000>;
+		interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,grf = <&pmugrf>;
+		clocks = <&pmucru CLK_I2C2>, <&pmucru PCLK_I2C2>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c2_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	uart1: serial@ff410000 {
 		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
 		reg = <0xff410000 0x100>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
