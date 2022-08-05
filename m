Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15D99C00140
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Aug 2022 23:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvVvCfwiVf3Z1RCjx3SDMJXoCEfyGlQ5hLusX4l3Dm8=; b=0D1TNoLA3fDx3d
	wVIA2DKnkDeiKLlZH1KwR18Pk8a55dAYlhZPR8VeqkQyfhmppQJ6Eav+S885cfyYJ36LlP+VVBw7Y
	o8+5xRqjA1eL/t8l+xm/uIkOjt77kH4AMLc+arUAJNvsjE2+8GvvQKYiTvjyPWxIufnCsq+4ZgNQd
	H55qoTWkIxH2dRJHek/Rjk1Gib5lZerRb+hdBPp3hOBjy1Pc3qAqATj2ZwWnzrb2YrUkJM+j88T1I
	Roi8RaMyG7D4ENEdzUeC6QTpw9O3pAc5M7TJGTmCTpfOqBvtrrcGMlhlRHKSi3hj6Fjxht2DNZjTj
	/HY41IY09jc4oLXthKfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK70D-001lq4-Cy; Fri, 05 Aug 2022 23:45:13 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK6zo-001leN-1o; Fri, 05 Aug 2022 23:44:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 63F425C0126;
	Fri,  5 Aug 2022 19:44:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 05 Aug 2022 19:44:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1659743087; x=1659829487; bh=fnd7IRtL47oZ3GEXBeTqA34XltR+qlUApMq
	Kfs2uGec=; b=Vz49L/nApOKaHAXZ3mZVCxS6X8jFu5qXcksTJpPE0qaAODEGdcy
	IUkOqIUK3BngQ4Tz3v0zLGg9Fuao7xIzcAk7mGGCWwVXsaY6YfLPSnbB50rPrWaU
	+MZAl23NTuxivCMaVCjkQ32Z0BZ8BnbG1tUyabe/5vRiTNzfVPS+2bqxG3/Sj/pg
	+GfMxq7cRn+nrkXz3HsMSPqlcnI9lmGYuNzp5gqWKYd3tppm2ZYzmKs6EcYXuqFX
	3yq25V2ZUzcyfEKDVUeYt00m1EQHtpvxoMZY7NxIXGpSER2JOLSg+QQDGK01iWh+
	xKrHogXQJ/dYv4M48Y28by6N7sNoUPP1ymQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1659743087; x=1659829487; bh=fnd7IRtL47oZ3
	GEXBeTqA34XltR+qlUApMqKfs2uGec=; b=pcM5qPbEsQahc07LTRg87k6zdImSy
	1ofRAmBB0r3qaanJRS8WtpF1LpN0GEtojhi0H9aluoXIpp1CSH2BdQJ5s5Aj3k5f
	FnOxbLF1NX2mF+YmM965U82sD4eB2hIdd1IuQgkVyBYK0YHra2MD/J3A7E9jkzn+
	ifBMvk+6xSpF7sF2e+jkKaTf52QovL6NKdFkP9MJ62nJOCkOyWPiorajwE4fGIcG
	H4Macjw7bitr7Rmq41tx+CmAlmNrT0Gq4To2oppRU46sMfe/Jwak40p2swKWhy27
	84Fy8KsGcMaHxLZkcPmeN38skdLmTXod/l3p+3jcQUyoJyQncN8cQ4YlQ==
X-ME-Sender: <xms:b6vtYqLOHtBrGxLmLDfZNa9o-y9_HxGrFqDKTQ0ytEYjeST_B-jcOA>
    <xme:b6vtYiKjEYyOgEFtdKv-YX7Zbrfx4CHex_CrzIrf9SwslpE2sBhF3KczhfOduG9IJ
    EMj574UhWTbtLBDIw>
X-ME-Received: <xmr:b6vtYqtZy1KtZqqZLIMh5ldSDgrOESravIXZpTQmpGDfjsxrJoC6X51n7o-bS3b9zaHdPVO6LhROAWNMBUUKZD1JzPEpMOJw_-4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdefvddgvdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpefvohhmucfhihhtiihhvghnrhihuceothhomhesthhomhdq
    fhhithiihhgvnhhrhidrmhgvrdhukheqnecuggftrfgrthhtvghrnhepudehfedtkefgfe
    duieelgeegleettdehteefgfeuueegffelteeiiefftddutdevnecuffhomhgrihhnpehp
    ihhnvgeigedrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:b6vtYvY7rCu61ruXFtC-rsJ02-0CtOIN9fhSU1r9BRuoKGUDq2UfAw>
    <xmx:b6vtYhZQQC3I92tCT4ShZueN7ieDc6YU0Ob6tSm-1rxPk_JTVwX7jQ>
    <xmx:b6vtYrB5hHU57hTXsnGnP8cKV5vdLVRC7jnkmUlLmLosQNWkI0Eh0A>
    <xmx:b6vtYlqGdT0fy8w3yyFbbVVnQJlM-5_7P3CTA23vZ6HEwcdVhr2Orw>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 Aug 2022 19:44:43 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: tom@tom-fitzhenry.me.uk,
	megi@xff.cz,
	martijn@brixit.nl,
	ayufan@ayufan.eu,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add PinePhone Pro bindings
Date: Sat,  6 Aug 2022 09:44:10 +1000
Message-Id: <20220805234411.303055-3-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_164448_204133_69076071 
X-CRM114-Status: UNSURE (   7.13  )
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

Document board compatible names for Pine64 PinePhonePro.

https://wiki.pine64.org/wiki/PinePhone_Pro

Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149cb..8ddedbd1ce317 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -494,6 +494,11 @@ properties:
           - const: pine64,pinenote
           - const: rockchip,rk3566
 
+      - description: Pine64 PinePhonePro
+        items:
+          - const: pine64,pinephone-pro
+          - const: rockchip,rk3399
+
       - description: Pine64 Rock64
         items:
           - const: pine64,rock64
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
