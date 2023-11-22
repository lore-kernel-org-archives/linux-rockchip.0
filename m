Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49AE8C61D9B
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//ToCcA2p2feknktxBrS/xhyBE0f2JV340HU91oouW4=; b=tcGo3eci03nss/
	4DCZUU3ZYRfjDJ67ZDPnGvdSBDsJ35ew+8bKdQhFSaMXVtYLzcZD3jLOF+U8RUvBOv9QhkRHEe4FZ
	u/C1SmrS3dysthLnBOLO6gRS811xn1dfTOaYEKjzNxvIMxo/MfwcC+pK2BMKGjvAdmBpTfmwST88u
	QjDcUne1p9RWyDnq9bwrYgl/vtTRQmRo5/kneSkp5Qjsz2+ywB7ChEiU8HlLgMjG7BHfWSJ7bMBUe
	LE2OUCafpZX8XX4Rip7LIMuOmbYo23GPq2yGeB7KXM0pwHzwzfrFkUKPA3ltjzNEDv7ZW6EakFQtq
	C7he3ccnKn4ay/54vqyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGs-001n2c-0E;
	Wed, 22 Nov 2023 12:23:58 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGp-001n0V-0l;
	Wed, 22 Nov 2023 12:23:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id E117E3200B24;
	Wed, 22 Nov 2023 07:23:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 22 Nov 2023 07:23:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655833; x=
	1700742233; bh=1SRr4Ih5PLOOsRIZ49fFm6U42iVJbTudjHKlpq9tr60=; b=F
	/Bfc2k7SI3SxLqHhQsAEW8UMJEilxyIEQ8T2GWNldBlTCZUEHoEuMez2SSJRGKP8
	lFYbdEwuUU80HajztmDL6sL2zoXmclK2xudweP1L9nfHtaAQIM/XccYAb9uGL7GD
	Y1c4QVU1ey4tRitu6M91h8E/7OMsq2VefNFuhc82wM8qNrTOvmRanBZWB98NfP2r
	w+XayH49kUWcV6y44oT+5948jhxJeixBKJCt6I5EWlojXFBqqClrG6bs0Mkanw4p
	zaP0RQPe0ZPs5kTyu1QNkEX+bqJaJQ/OxdvpQnd+NW+PWdo7JFhmWLCn9ptaYUWa
	Q1/XvFPmWaeVDwHHMSb7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655833; x=
	1700742233; bh=1SRr4Ih5PLOOsRIZ49fFm6U42iVJbTudjHKlpq9tr60=; b=L
	5ixfLOsOMKGPUZrgjqZ087kv+rv3BiOtm5yyOKo2FcxG4Rj1KB6LP+oEUXC/JFJc
	tCiD4fiDZImjmaIVBKOLTys/YU5Sc3Gr8+H7L5X/P6oj/ko8v8ouz+QHOrCuu/Vy
	hO7dHIj1nYY1HHXRuR0Adlgnw8/+jLN3wzWzC+J+CQ5JLtPwo5m3TevAIqahJXof
	CBn1U30rlJLKjvVf+4fhqd0gWmFB2JunTmYUJqp2DzAboqLfs3y43BVhzQAWfK6g
	cWmO996KdNL8HUi7Vyu9o5RpQ0xPatDwdZPpHDOE4YPvYnw5St2bS5YF7LI/zqDs
	hYPb5O+k/iWkGOVpyJN5A==
X-ME-Sender: <xms:2fJdZfswPZNLL-ZaiUvxicPL4Ig8xhzxGieY9YwUFz1pt03smpih4w>
    <xme:2fJdZQd5acQMovfSXd7Al8KxX5tLNMeuKHEZttD_hwn2dMeIcpSP0S2BHrrBdlUH6
    EiK65ncUA>
X-ME-Received: <xmr:2fJdZSwqef9fJRn_FG-HC75NBniXihYW7WF4TPuGQ8wKeqCDVNoNkSSQsaIjPwtDiLdXl-mcXFOa169Y5v_iqGdMMBloqtZ2CjM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:2fJdZePo7e8JC62FzGpJocUpePQeBVAkafViJ0w6BonR7gX5e0JjYw>
    <xmx:2fJdZf_eD68A2OzWTuRr2QWW_V9dcb774XgnjX5cW_ljuXk75pwGaQ>
    <xmx:2fJdZeWoFQLsxRGDskBBLDNLUhweKWL2MGzDGIeedqeHmighflBJ2Q>
    <xmx:2fJdZQNTTxsLVt8Obncoyfr1Hui0RLuw7fGlMheJJjYqoYoB4N_Xdg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:48 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:45 +1100
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
Subject: [PATCH v2 6/9] ARM: dts: rockchip: rv1126: Add ethernet alias
Date: Wed, 22 Nov 2023 23:22:29 +1100
Message-Id: <20231122122232.952696-7-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042355_305893_2BE6F789 
X-CRM114-Status: UNSURE (   9.31  )
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

Add alias for ethernet0 to pick up mac address from u-boot/DT

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index cf1df75df418..bfbd4918e745 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -20,6 +20,7 @@ / {
 	interrupt-parent = <&gic>;
 
 	aliases {
+		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c2 = &i2c2;
 		serial0 = &uart0;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
