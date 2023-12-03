Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E1FC07E97
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7/isz3hE+NCUbmMXHG0hXClHthckb8mzJtkHSQMnoE=; b=EJRAa331jdM1+s
	A9zNfCA6u+oSkhXy0bGRBDxdYrqJJxqik/mIWJEmR6+Kr11Rg94QWWD+kdzn3BONzFRmPvhserJ8V
	hArgi3EWA2DDpKHKGBdFvVNhYRCcNFzk4Jvlbn4U2iGiX2AtS49ldsoUI9GRqTbMDiXGAOSVGGM7r
	OSuQ/dIjmqFink5PYofdiE3shtNy+6wuN8fCBm4pF3p9MYNcRSc8BoGJcsi7C+DUqnBw/iLqpDfid
	9Lzlekj/Wf/KPGNEeTxZaa4CjYOxotV65WjD+POezYro1ifLF7+OmpdwGghxEZ1bLPxSpX1oPyo52
	Gfy5np1jSQ9sWlFnXKIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmR-00H0Ix-1R;
	Sun, 03 Dec 2023 12:41:03 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmL-00H0EC-2I;
	Sun, 03 Dec 2023 12:41:01 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 1763A5C00C7;
	Sun,  3 Dec 2023 07:40:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sun, 03 Dec 2023 07:40:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607257; x=
	1701693657; bh=dG67hqy/xUpkoYBM8AvxOHeaaKO5Yx594TNT7UwZKEI=; b=c
	Yzz9sjT64bbS1ieHDbddpAQdrGyeBw5c+r+hQYCP5op+KiEctS8cBsL5NVTrQhkq
	cQ7nWD3sekkgaTTPYzoNbMxexV//iEswEyURqzEv24R5nYHz92TwmZBH6CYQpgI3
	ibnztEkWQo0MP36Qi7T9s0rBaPeeBeUxeOZDVZwT0MFRpEbWb5YvoB/gyJWZ8Tft
	gDrNe3W5wamF2jUuLJ+4yy59wln8JdSpie+BbnBLGzPZZidJiMaz4cDrCqN7Soza
	xV97bm2f574da+M8f3Ekk2824lUpqfNOrTkbrsNZeAmqDXsHxNMfZjQMnZFPddT1
	ONwRzmz205nszZg+sOThQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607257; x=
	1701693657; bh=dG67hqy/xUpkoYBM8AvxOHeaaKO5Yx594TNT7UwZKEI=; b=Y
	o4Qtbucrop34N6ys7++lJsQrWjPX+lx4urwYiJjLWQRkFq+D47pgLJLckNwrnYqC
	SkXj3ioDn4x1cQo+VAxpnFgfLhNoGQOoOgzUD39Kl4wmKpDU/k8ElQpfrue/vJcJ
	xPpF7mYHpz/GkGshFl9D9nz7K1CGG4oHYb7WTBW1xAAtK5MLyrVH9+9RzsrCfNSH
	AMr/pib7H6v85X+xOgnrwV8+LzeVor1drl7ZRHKrvlv6RA6fM7Bzz09o+54m79tq
	WPK32nztErRiZfwIhT5eVdIzfC9Y60Cv2woyJL48FhNSD/irdLXgMYKr4tsygljX
	tQ56fCQJYXF50w7CDqunA==
X-ME-Sender: <xms:WHdsZRzwIc9CgTCLs0879YbYQAAcpU_OckftlAyOTuik3NC9rWn8nA>
    <xme:WHdsZRSA8pi2boQzKDAqZeKszKKmIv79OzH3LbbDD6ABzxzGcltWr940PO33vJguA
    PpXktzRbw>
X-ME-Received: <xmr:WHdsZbXYImBaYFuxeR-O_B4qTPyyoxtpiDKAzQMXOBFY_dUwXtaiYBaG_sEN2stV_A19yPUNvIeZrRK5TRYXYuzgObjJyjIMhNY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:WHdsZThPSD_7rnlREnGgcqFmp4k9SNBiX6a28GbA_fRGiftXCiVsOw>
    <xmx:WHdsZTDP2bxcQsWIKYCc6eXJPoq0NE7u6tmbGQSonYGUxRbvBYv0PA>
    <xmx:WHdsZcLzCDr4SepSXXts7aShoSES3sbwNM6Dzf34n6T2s5Rt49-U0w>
    <xmx:WXdsZVA3DDYqLozxyfpd4pk-ebnlN9tYfHnn2SOa4OGE-88gdAVnCQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:52 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:49 +1100
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
Subject: [PATCH v3 4/8] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Sun,  3 Dec 2023 23:40:00 +1100
Message-Id: <20231203124004.2676174-5-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044057_879398_52C72D2A 
X-CRM114-Status: GOOD (  10.06  )
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
index adb11a43c5db..bb603cae13df 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,7 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		i2c2 = &i2c2;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -237,6 +238,20 @@ i2c0: i2c@ff3f0000 {
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
