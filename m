Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF7EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W90iI1ZS8oUqr69J4qajvCntcuevt9yBoJ0s/5o+Dlk=; b=n9xA87lIq90HIO
	JU5hqXPCbyuBr43DKt2UpxsdPw2ImOMIJnA4N1NOZJ96cKwj2UAe9pASBvUXQEz0LDq6CJ9J4i47Q
	z3fd0mXbTceZ4sDspoqEq/7uhE5BDHgTig+WRzCg+OGvfjqCVTkc1F9bAp3CmzGgxJzmilpbOuzjg
	olufkF0onmvqXmT1VLTLkdNhs198rb4PcEmfC/G7bD5ydrpoh/RUPGZ/pZBPGWdDKn0M6zGYUjw6C
	9p0eYKMLWyN9w17EV1aySqremr/vG2gv9LSkHqapbrIqCoHt1VV06Ers0VqYUuPVtyZwfGABrMHma
	/2jC1MsZBN3WrHVp9bww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelTT-002u5q-0m; Wed, 13 Apr 2022 22:28:31 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelL6-002q6Q-Cn; Wed, 13 Apr 2022 22:19:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id B5DB05C029F;
 Wed, 13 Apr 2022 18:19:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 Apr 2022 18:19:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649888391; x=1649974791; bh=r6
 8Xnm3H33EQgdbz7LYraAskJdNQ1ivO7aFZEAoIKAI=; b=i1JMYe+VYvdvr43zkv
 rDuNGZ58Ro3xDHMyKyBN4OnEAlxiHGLPtCA4+O4bdMEUCj14lZE8046cnZCJ9jnD
 8DLeXDbxxpqVN2xqdlD4cKBi3N/KFWK+l2jmNrrj3TD2wIAfJcE+PH1IyjO7KMkA
 5h+nsE12K6BGbwmLolsUNvj7e1/0ZVxxEcd2LrhvLve6b2Hd2ZGPkb10J8DTfg1N
 n/4Il/14MsUqiF4LmQ15q2tSfeI+3eEab/HWqd5/OY5Bttbjkf7zkhJtr37YIF+d
 1/S+sHJdKWT9rxKu/K2a0xb/s1bpv5XsegcU6zMXBylPARz6LyaWebpxLNBunYxI
 0qYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649888391; x=1649974791; bh=r68Xnm3H33EQgdbz7LYraAskJdNQ1ivO7aF
 ZEAoIKAI=; b=oJmZjkvbs64pHexVyL74MFyo9GHxVwHCiDfNn4xRbkQq4HDfreq
 QStpQ8heF6cB14ziPQPfc/GPgN0wbD6qAgc8KvyZjnTrDvsTtUFzBqRiKW81EBu1
 7K2TUQ8fm84JxB/xtYY2MvqGO3ln2axczz8UPpfY9/kNAb7Zw3hl9HyYGFK1U+lD
 2RXkZTz9/V3qRhIRgvqtU/VPh6ZWwm34BSY5LkJn7y9cw5IwT08i7kHCgzmZj8oD
 QecYDvudLylKTpyEDTqNAIpHTwMelF+BocUpWdFy1MT+BPSQsEJrx1ew9ksbQS0Y
 akqFdJqTkcpdv7usqoKqzH4oLDWqxd0mNTg==
X-ME-Sender: <xms:h0xXYr_0kS_F0wycl6-5Oe5zb3iylMP3AjT5qD2-O-CDdemnxZUqPg>
 <xme:h0xXYnvrEu3BVvUcrngelESvvNLqMaJ94oUD81ZWqQNT0dWLoNEgk5_LsTKQMvdyp
 vmJEmrSB5VtgDm9tA>
X-ME-Received: <xmr:h0xXYpAdY6cBxnSldvsjmitlYMaIIvBgkB21yxcYqv9qLombZaeMJMp9uuJHQYFP522krfsjECkdKeY3VnSsviy7u9nuzb1kG5JmdQLGm3Ww5H0u1Y34WmKMSZ0Te3pCLIiuKw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:h0xXYndiZrcC_2nDLoKdaqIpEktczpH-hXSLG887NJidp0Dsd4RfVQ>
 <xmx:h0xXYgObBkd1TDUaMvi5vg8La8vBp12YPY5uVC65iPvkKxi5cBq_cQ>
 <xmx:h0xXYplOvy4QEZxBl-r2Ea6WdGZtASpsnB1gqNovxZxul-bTqK8VaA>
 <xmx:h0xXYvM0kgTVrC8H6SQTFQi8hJNrZQEQUyJIaApc1MO8MsBDCEndPg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 18:19:50 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
 Alistair Francis <alistair@alistair23.me>,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <x@xff.cz>,
 Andreas Kemnade <andreas@kemnade.info>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 15/16] arm64: dts: rockchip: rk356x: Add EBC node
Date: Wed, 13 Apr 2022 17:19:15 -0500
Message-Id: <20220413221916.50995-16-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413221916.50995-1-samuel@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151952_573450_41F2352F 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The RK356x SoCs contain an EBC. Add its node.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..58c26f240af0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -508,6 +508,20 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	ebc: ebc@fdec0000 {
+		compatible = "rockchip,rk3568-ebc";
+		reg = <0x0 0xfdec0000 0x0 0x5000>;
+		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_EBC>, <&cru DCLK_EBC>;
+		clock-names = "hclk", "dclk";
+		pinctrl-0 = <&ebc_pins>;
+		pinctrl-names = "default";
+		power-domains = <&power RK3568_PD_RGA>;
+		resets = <&cru SRST_H_EBC>, <&cru SRST_D_EBC>;
+		reset-names = "hclk", "dclk";
+		status = "disabled";
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
