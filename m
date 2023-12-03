Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83CD7C10DCE
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJ7S2QUGbjAj5z3y75eO9GuZbQperD3b6eVjBLTR4qE=; b=2l48608MZQjZJz
	luqRh4kHOxAdz/Ja13uqFWJSPJP4SqLYELf8/0R9ZMUOV5a5R0jUV4l2ytKCT6JxNGd/Zg+S3td7P
	Ppiw/kdfjysLL+tcOWpUPJQrLogkpozsv3APUJDYsRJv0keaubWi9xNM35QOJc0auIMRF2cGZ4l16
	5awumVOyIiNC0t4BczrJrtL1q8MtcfNFckpetcxp6YyEln1F1MeiaDMZI7P/d53ZlgELQUzlf0fdU
	VycxCQyWh3ja0aA2jYYD7JrCk0WEaFFuPFTiUG2kNyoaJsR/pf8c06TGOIm69bEW3IHJEwJ2V66zk
	ka1OfGnt8UR9gfXxaxMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lm0-00H02c-0T;
	Sun, 03 Dec 2023 12:40:36 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9llv-00H00L-1O;
	Sun, 03 Dec 2023 12:40:32 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id D378C5C01B0;
	Sun,  3 Dec 2023 07:40:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sun, 03 Dec 2023 07:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607230; x=
	1701693630; bh=fHjqMIVkUoOeZZGQ1RvEQKU4oOmmUmOkrhmvKngdij4=; b=O
	FcTly8G3zoochwKapCK0Ox9OXcMlcXT1kPU+G2XaNtPXSLMaaYJoHchcfeFaDl32
	FZTeHTzibJrkebxTH4GS2FK7eUn7MBevo0sD1jXJMrwjCz+ZKElswKCA1HcB1Z9h
	Rk4y3igvCgyK+XYDUMbIap3DcWivRozAIRY/Y5kO/lkIjqBkwRn3+0D6CnhLYGxd
	FYnbHvTdCkt0lv4bvX02jiiXqj+8pJhrcx7pfTy6MCom1jfkD6x6RWcbpbGu0hwT
	LCjeNmwCO/wQVAzL/GRqxNWbk6eTEOsjAFO91ewL7kt9SSbMKLL10XbURPffY3Zv
	B/jNEcae8KMMA84btqO8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607230; x=
	1701693630; bh=fHjqMIVkUoOeZZGQ1RvEQKU4oOmmUmOkrhmvKngdij4=; b=a
	3otkyWEtX4FN6yDMBFJw9teC79oeglliRuafTFepdIMPFXMq8VOYqFzCizBlEe0w
	8ytXbY+P0yPsEo1A2pM5EScSUIIa8lU74/a7EnBgW4nLciCZBL4EwdDz6qLxm9dd
	JEd6zVNSq53HHUHfz08/y+mGgjd4uV034vbsXnjeD3AXQESOcI4t9sQYlW0oscI4
	HwGSP4UIrmKzEMQCPonCgQpwi+TeEO5/9+QhUKrCRqqC5x6yqeqaPcggNBHhMwrI
	cq2zoGSmtGQAE+OANEpf1/LoAm23nDHLpqo2SOMBieS2HvBtbsiZChcKKg3k74ud
	1jzz+CNfQi5rZ4RVBdaFA==
X-ME-Sender: <xms:PndsZa54Wl883adNnvvVfkdnQEh-iRZUVy9JSx-7cJOmjdRguT6WMA>
    <xme:PndsZT7ST05nPX8AUrOhLLrBUn-A8NCyVKUCzSaWbn8F4FkR-xvbM2EZ9Lgx74Hak
    V2IYg2p3g>
X-ME-Received: <xmr:PndsZZeQaJt2xpbYSkQw5p3IZ9xW_HR3HDc9hNUMLQaN-wneteRsbmKAK0wlcOgfx_D05GHXUAmFTPODaDpTKxQJMYI6iVHuOT4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:PndsZXKmhJ9VHkFCasDpqYlFigKR3abmxodyhglw2WGV3svLFomtTA>
    <xmx:PndsZeIOYaJnpGrbIBkaSQT_XoY3nWh4YsIXnb_yHvzzLoRgDbUbXg>
    <xmx:PndsZYz-8Ivjb5fUGFEHeTjKxHI4itvlfnx_T5GaT4Nsctc2BHSiQQ>
    <xmx:PndsZfpnavjRWvXv5EH27mjpQPvEMT_dkTl7NMJQeICWUefW9CjxSQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:25 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:22 +1100
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
Subject: [PATCH v3 1/8] ARM: dts: rockchip: rv1126: Add alternate UART pins
Date: Sun,  3 Dec 2023 23:39:57 +1100
Message-Id: <20231203124004.2676174-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044031_548167_CC2D112C 
X-CRM114-Status: UNSURE (   9.51  )
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

Add uart3m2_xfer and uart4m2_xfer pins for Rockchip RV1126. These are
used as serial ports for the indicator and Zigbee radio on the iHost.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index bb34b0c9cb4a..4f85b7b3fc4c 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -263,6 +263,14 @@ uart3m0_xfer: uart3m0-xfer {
 				/* uart3_tx_m0 */
 				<3 RK_PC6 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart3m2_xfer: uart3m2-xfer {
+			rockchip,pins =
+				/* uart3_rx_m2 */
+				<3 RK_PA1 4 &pcfg_pull_up>,
+				/* uart3_tx_m2 */
+				<3 RK_PA0 4 &pcfg_pull_up>;
+		};
 	};
 	uart4 {
 		/omit-if-no-ref/
@@ -273,6 +281,14 @@ uart4m0_xfer: uart4m0-xfer {
 				/* uart4_tx_m0 */
 				<3 RK_PA4 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart4m2_xfer: uart4m2-xfer {
+			rockchip,pins =
+				/* uart4_rx_m2 */
+				<1 RK_PD4 3 &pcfg_pull_up>,
+				/* uart4_tx_m2 */
+				<1 RK_PD5 3 &pcfg_pull_up>;
+		};
 	};
 	uart5 {
 		/omit-if-no-ref/
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
