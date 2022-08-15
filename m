Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AEF0C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 12:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvVvCfwiVf3Z1RCjx3SDMJXoCEfyGlQ5hLusX4l3Dm8=; b=QEjxX/Vf2ZeMpC
	uyjV8V/BRQBJn22CXh27KLJ4N3el6MJArkf7nEXN0tBOAuNNUvWScKeH9yE7N66dpMiPpeChcrtDD
	dfcjGDkiUsTh+modD3ADDZ0RZRLhY6K7YC1y3dW6i+mHh7vFpWyjRTK9Y/KlRrXSsUGxPJGbhREBQ
	4DS1J7fKVDsUtsPxobmeJbQo5FY3Esl4lrLhjMEA0LyHhQGRUU/pUOhf/94QScHsBw1e4IbHBoY10
	+32OkLAzSxpZk3gzDEugV+CRwhWiuFgJO/Ir2sl2yeE7MZAZdfFp1HV9btOQK4P8Xi6eQwnT/xD7W
	BZSSCjef4sYFcNtTdi9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZFQ-00G8Jh-Pb; Mon, 15 Aug 2022 12:31:12 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZEu-00G83C-NO; Mon, 15 Aug 2022 12:30:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 21C9C3200947;
	Mon, 15 Aug 2022 08:30:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 15 Aug 2022 08:30:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1660566638; x=1660653038; bh=fnd7IRtL47oZ3GEXBeTqA34XltR+qlUApMq
	Kfs2uGec=; b=oWNiRhjZ3jF76mANDWLqGxuvN+2Na6BQ/exB3v+jhP9nMjb6Ot+
	HA45SHhepaE2bp86bOGKhWqExJSVYo0xH6ztMmDRp2fQULPDqvIlOOKVlEWFGiXR
	gfawMKFi6RVZfMDLF7a5FhIZMLwH4K6sBjPNgvDsJTBC2Z+BH2XhTSIjbsga/IN4
	xgy4ZTOtEN1/mNRlwMqdbksQijaDgrpLKQJqfaxLuJKcHYXRMN641g62NrbERKk/
	Ht3v/wtovrXh3ASFgyt4dH4hEqt+Yh/jMeGXRsfYjGjbHdOONYraK3AYFSqrv/ZF
	M506JZlGQsnl5L9BZ5j+MLqPcZKjVMTjyEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1660566638; x=1660653038; bh=fnd7IRtL47oZ3
	GEXBeTqA34XltR+qlUApMqKfs2uGec=; b=tuv49HflFNRBFlr+KNPeLJrt4UyJj
	iXsztMJutTgG7QFQbAMFK+JDQBGAT5MA9r3bqpUmOsIDFnzE4AwDUVZaX0hg2JJT
	sXkH9kSVQaLa9IwiAeiQSnJbXDgc17C1RuPZKdPlhLkURmt9z1WjtkQcqdyeZ3b6
	1crlSA03yo17v04E2MM3xvr/9ugpvpP2BrsnbNmGdevsc2HmwKoF0VY5CYJoB7LH
	s9zd8BRTkEiTSHftv+yyJhfmJBJ4Vn9ziiXJR2R98Ra1SWCcrncWnRbm3CYBm+UA
	XyIda4Gqh1bEsR2Wl7AMV9igJDy/JgZkqFuCz4JeYg3/PODnYI+q3Utew==
X-ME-Sender: <xms:bjz6Yl_AoWqXeprWOguqZn1RmUmcC5_V5QWl-BTmpljFDQsNK-FDGA>
    <xme:bjz6YptePruN6zkcOGYTB_MndJAPZeMMSx-ZtMoGVHMwug-a5wJ1doh3RmQi4-RKY
    zdDDngshLgtPLzDbg>
X-ME-Received: <xmr:bjz6YjDi0Vq-lM-N4w2l2Xo2CJly3eP5N25XU2RAav9qzKi0qctBRS_93v3XZ-nKkugeeeGXgAhhjg-mVkT82fUbhuHZ7N7jh0Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehvddgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpefvohhmucfhihhtiihhvghnrhihuceothhomhesthhomhdq
    fhhithiihhgvnhhrhidrmhgvrdhukheqnecuggftrfgrthhtvghrnhepudehfedtkefgfe
    duieelgeegleettdehteefgfeuueegffelteeiiefftddutdevnecuffhomhgrihhnpehp
    ihhnvgeigedrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:bjz6Ypfat6WJd7B5UNZ2vyUlZqgZGsnde-v3vom5n1CKlpffqIqe0Q>
    <xmx:bjz6YqOAI29ZIvoNqRbXwkcOUHM2pwlFBehbuDSW8JLOOi_1n66mgQ>
    <xmx:bjz6YrnT2qj7E5LY2RasVNJllyr-6ayZ5RJ3Dbv2-GZQyyCoA3enUg>
    <xmx:bjz6YhnvfgL2Daj_vy4gPBULFnSDk9H98HSlgJhQHokqApwq5T1lqg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Aug 2022 08:30:34 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: martijn@brixit.nl,
	ayufan@ayufan.eu,
	megi@xff.cz,
	tom@tom-fitzhenry.me.uk,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	phone-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro bindings
Date: Mon, 15 Aug 2022 22:30:03 +1000
Message-Id: <20220815123004.252014-2-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_053041_182690_99772477 
X-CRM114-Status: UNSURE (   7.23  )
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
