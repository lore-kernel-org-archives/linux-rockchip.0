Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A091C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 01:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gSGqf28T1IJRUme0Vb2DaRkI13gHPfjiH34IV4IWigY=; b=Y7mdM44mdmk/9W
	NaGXZewfYTOSUAfHC/qPewqBhALZCrmZzW5PdC0CUIdI6jRX/UqCRrtk8ZPzAg15Ow7pGBR17u40u
	eHu9YAQE5AEEe80CSHuX+W4nFg4XYqba+NQS6F3OtGPuQCgq4jXhZVD29xQQbGnojTtEhj5mKVo0b
	yXbTAHgcYLyxqlR4HBwy0N7BXSOaQskf3YtGeiJWaYoY2WJn3M5eGkWwODP0bcvxuLv2ugM16NYuw
	CM2Ci0TDv9LzBz2FKYB6Ixj1VPGbGZtdfODVLIPVcXURZIdaVHJL0yWCu+IHUb73BorI7sHajY2Ov
	zZ9W3ttUahhLZxh3JsGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPwCG-003KVl-GI; Mon, 22 Aug 2022 01:25:44 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPwBk-003KBp-El; Mon, 22 Aug 2022 01:25:16 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id E87FB5C00C0;
	Sun, 21 Aug 2022 21:25:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sun, 21 Aug 2022 21:25:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1661131507; x=1661217907; bh=5rywm4FJkA/bbgcbZKDHp12cJQNkVOO3Ete
	nBFznHF0=; b=VKGZ1PpDSntcxPb6PHDsGy3gdeL6CHW7g2PbxZX7UkmA7fwU+Fw
	wNTOymrSI+4YHp0iSlWamP896CPcFMfsaGaZh758f0unOVkr4J/xlLbQaM8nlZ4p
	HAMUekWS93GOP0iiasVesmhubOm+CNHBZRnrdii25WRwlZ8m3XfUhKh+MIgPfrAZ
	LyqAkabOwdgWKrZj0GkuVUoFE2z7qSDjthLQZmH2k7VlDfVzwKlhbc9v2FjSDVEr
	yGUv1xzs0/jZdBjSjDXVfR+73VDOEAMEDCM3tuHDkhRKzS5KswtLZsJBqJL88fw/
	7FvwVwdSniVMdXWwXxijsrR+Dbugo0aokIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1661131507; x=1661217907; bh=5rywm4FJkA/bb
	gcbZKDHp12cJQNkVOO3EtenBFznHF0=; b=zUsnJtMezl9lBjOFyAItSlrzPenSf
	fD8ha8pCwp7Y/f+FUFja6O3BGF3gqE7In5TQ7img1UBNiKXspuvGgH3hOSBhlpGm
	Z6pO0MRDtZOYluTKdXCbgXdC3+woArm+li7/mOayahgKmmVBDKB1T4XIUR3wTjp3
	ykPxtV5Cf9UDElEUn8VMH93i7PiCQH50/tBzUUJi3Tryy8DXW+7DMacrV466MpHR
	Xn9fzZRgWz1v2m9DI9h1eY9pnhu1EBPTmFtTQ+ErEbGVy8DfF2v3D9opkwUPVmqv
	cg9529OjzmZAi8TPoXJK9PHWiNdSLJ4r/UAGIgyrmw1QIk4lh3Pzwe5tQ==
X-ME-Sender: <xms:89oCY8NWhwmjLzfDFEJyzOUPNRVizZ1RpXA5Eh361ZwW2N55fBQ0aQ>
    <xme:89oCYy8_TQTRcq_RjYC7NOtak65BXijeRYd8cmI481Y1ZCdxCPoLQppgL0tJwHEM6
    CD3s3gEVCXVPD4oNg>
X-ME-Received: <xmr:89oCYzR5XDR2EjvGjJ3AWXaG7f2or-h2jCasXgTkukQA7v3fLV0Y7VrMJC4l-Ewvhmjjx-Y0fLBqTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiiedggeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpefvohhmucfh
    ihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqne
    cuggftrfgrthhtvghrnhepteeffffggfekffdvjeekhfettdfhveettedukeduleduvdev
    ffettdffhfelueevnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtohhmsehtohhmqdhfihht
    iihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:89oCY0u_F3nrOMS7EqL7aBfJxzEtoVgJ1GNy6UslQ0SikUsGIWO9_Q>
    <xmx:89oCY0eZYYR2Gg8J3pUKaO5iQdZ0y7doUNPGpFL_KCvu-AVfIlWAxw>
    <xmx:89oCY42pnm3QV38Ig01p8t0DkfksKR6TPYevVMd3sryFchsQVUr9SA>
    <xmx:89oCY405FgXhT89j2nDhar3-6TnhLGI6986Zi6C1RqjZrv0oTRQw2A>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 21 Aug 2022 21:25:06 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: [PATCH v4 0/1] Add support for the Pine64 PinePhone Pro phone
Date: Mon, 22 Aug 2022 11:24:48 +1000
Message-Id: <20220822012449.21005-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_182513_078562_3B313FC7 
X-CRM114-Status: UNSURE (   9.12  )
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

Add a basic DTS for it. This is a working base that will allow myself and
others to add more nodes.

Relies on "dt-bindings: arm: rockchip: Add PinePhone Pro bindings"[0].

0. https://lore.kernel.org/all/20220815123004.252014-2-tom@tom-fitzhenry.me.uk/

dtbs_check found some violations, but they were all common to rk3399.dtsi
and thus occurred on other RK3399 SoC DTs too.

Changes since v3:
* Fix regulator min/max voltages, to align with RK3399-T datasheet.
* Re-enable cluster1_opp/opp06, with freq/volts as per RK3399-T datasheet.
* Fix gpu_opp_table voltages to align with RK3399-T datasheet.
* Change regulator names, to align with PinePhone Pro datasheet.
* Use DT Generic Names Recommendation: power -> key-power.
* Remove unused label vcc_wl on regulator.
* Fix code style.

Changes since v2:
* Used rk3399-opp.dtsi (+ disabled) rather than introdu4cing rk3399-t-opp.dtsi
* Removed superfluous comments.
* Followed DT Generic Names Recommendation
* Set 'From:' of DTS patch to be Martijn, the primary contributor to the DT.

Changes since v1:
* Simplified the DT to a minimal base.
* Introduced the RK3399-T OPPs.

Martijn Braam (1):
  arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 422 ++++++++++++++++++
 2 files changed, 423 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts


base-commit: 2e1170c71ec0c0fb785ce76fca7c682e930af2b8
prerequisite-patch-id: 41a5419f57b2712f7127d5c6cf1dbf062f6570da
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
