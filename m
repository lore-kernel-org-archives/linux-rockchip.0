Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83599C00140
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Aug 2022 23:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s93vLY4FgjOjmXELja4X6V6A8M8Qrjp1B4nu1kr+8QE=; b=K62e523qGX93Tg
	QvB4bpVtjBwnYUpXVWHbV5DeYMHMbhGvpYPcZ8wHHaUpB3en8yKsbKLSWbbMJYiCL9PNOx6hkr2s+
	qmZsLuPTpz7KMNKR5dRASLXqH4FA8Wk7F2M3mcasdVe8K9DSPjDHPwm0YOEDoFAfz1jGuwbDNZGzT
	65rrp7bOi1q0UyTYXdkAWr7NTA1eT9Fh1dYPqp5xiChLXN6daP6T4TJ6tGp1GGG8oybrkSWWhs2SX
	GYbmzDpVMzmzvLTO2eWeqv032IT037DZA2uqPl9PprLsozc+0mgikBjpF9m1hVfjJKfnHxwTC1yIy
	0p+DIk5DObKfZJuDhn5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK6zs-001lgE-RZ; Fri, 05 Aug 2022 23:44:52 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK6zh-001la1-1d; Fri, 05 Aug 2022 23:44:42 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 844DA5C0124;
	Fri,  5 Aug 2022 19:44:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 05 Aug 2022 19:44:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1659743075; x=1659829475; bh=2y58Lps8rGJPPf3cNfbkq8iW5KpGuxxOYPt
	10jAJuxU=; b=LjvUniO/HnuDxn8egcBot+hst5sI9uEegDfbmuxt9ncZ7aln/Dg
	xMcveYXSL0y67JH/9yTgWtaFpwatjegucGNqkZPSPjzUb3mREdi74ZwFprvdBYrW
	gAlWqZGCgYvAuPT8eMS91ObPKsg/7jTJVkvdR9oqI71Pcvg13AiPjRlykPVfqfyV
	Z3fmALVV39F5j7BppoFqGxXb4f+e+9mlYOmVoBQDLjflbp5mK9u0P/NuNHT2vV7v
	UH1So+F/r9ijXh0YmSy55BID6XNW5/oYNiqZ9gbd2p64D6WvfgRjNE2im0QxT7tS
	lOISn8alwi7L9f0tpeN0h/GBCK1XATHtgnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1659743075; x=1659829475; bh=2y58Lps8rGJPP
	f3cNfbkq8iW5KpGuxxOYPt10jAJuxU=; b=CjdeuTt9rIS0/mk0igc+udF3Yv6H+
	Ayk0BhbR01BaMcUuii/4F9+3Dx/tQxsjkEyNLeld0uRj0TojX9937ESR5wR+b1dH
	R54tX2ExioCUerLvoHj8QtEBzRWNgK2jlcSBnLEND/MYvxmK/8rAl8dPkiTVJYI7
	yGRCzeuNcOyI9SovA6AOKoGO1lFqyvUUd8VBVjUM7ccoc/blWsvk+DU6nbk7J0uz
	Y7ijY4svaf7FjGPRL0AAUOo6mFdy/6YPUmJYjJhAKwLG/wOLADnGE3HRHjsCFaPs
	70etyIharGJQw+V6uqdvaDZ9FsCtwUT28+Hx8zi9ZYwDC363GwB4t0SUg==
X-ME-Sender: <xms:YqvtYnzXq4ARIMlTAwygjtOEg4HrX_XRJ9OI3YJGrlcU0SDPjGs5dQ>
    <xme:YqvtYvRDCqMDYmyTJE_22nSnKNONcpdDDQFlKkEhLtRzUaRX6FAsxmnE7yIbxpxuH
    AHZMlmjCbIeK_LPOw>
X-ME-Received: <xmr:YqvtYhV_vNheGu-90XvajB51wW3OeahVGmvXeX6Ypsi27M0A5MI0f64ypwAn9TVmFv0kHdeN0y8llyvQI-MmMQYQDB_MlgmXIW0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdefvddgvdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffogggtgfesthekre
    dtredtjeenucfhrhhomhepvfhomhcuhfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhf
    ihhtiihhvghnrhihrdhmvgdruhhkqeenucggtffrrghtthgvrhhnpedtgfetudehleejie
    eiudevhefhgfefleevvdejhfduteduheduffelfeffueehieenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvg
    hnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:YqvtYhhmrkToqBYwlpGGPUPNW0Oueg5DYofV54uXjDYhyVE5OkNVOw>
    <xmx:YqvtYpDMXhgMbsE-G1EPiocCjD8xstcrV5cCjgswy7RaW-Jsr3U9fA>
    <xmx:YqvtYqIVzYG0-Egz_DrV3d54S_p7-d-tqNFVEMDIUkDpSLvf-ksePQ>
    <xmx:Y6vtYhwFrIyUEqbS0f9-T2uG_O_Ws-YBrLcyon36iXJrTAURNXuqzg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 Aug 2022 19:44:31 -0400 (EDT)
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
Subject: [PATCH v2 0/3] Add support for the Pine64 PinePhone Pro phone
Date: Sat,  6 Aug 2022 09:44:08 +1000
Message-Id: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_164441_572852_E35D28F0 
X-CRM114-Status: UNSURE (   9.22  )
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

PinePhone Pro is a RK3399 based phone produced by Pine64.

Add a basic DTS for it. This is a working base that will allow myself and
others to add more nodes.

Changes since v1:
* Simplified the DT to a minimal base.
* Introduced the RK3399-T OPPs.

Samuel Dionne-Riel (1):
  arm64: dts: rockchip: Add RK3399-T opp

Tom Fitzhenry (2):
  dt-bindings: arm: rockchip: Add PinePhone Pro bindings
  arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 385 ++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 118 ++++++
 4 files changed, 509 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi

-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
