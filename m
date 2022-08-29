Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08591ECAAA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 05:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=33+NHbZxnh7Odp35tX27pON/f6pzRAwC6bC13coB3EA=; b=SPc8CWvko7lAWg
	QFG+Cb++UgWm2u1DRKcFjWszFUeDcfYupSG+HWe2xDeKa9DHdrRy6xy3sFm20jn0OxP9/bLEqU5bR
	BryIfFH5Iu5n8vyTa/YPmuEDzjUIntwZgHXizMknURtLiB5IfAsvrpOWH1lUhkvQftuvEu2mk/iV5
	5uTV6jsgKA5XS1zaSHjAsgNVZbHPCVhzGYg7/kqWOmlbLIk5JjaW073MGejm0iLgFrqa43mfQvzYQ
	GNLlkSxwIYAljGhrpp0xPjjEk2c7NWjJ61Sh2+Jyh+O/mfPBl7i3mt2CT4n9g6j041DIAwJunQl3V
	WLV2ovquca0wKtxg/ozw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSWto-004gmR-DQ; Mon, 29 Aug 2022 05:01:24 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSWtS-004gfd-GW; Mon, 29 Aug 2022 05:01:13 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id EFBF232004E7;
	Mon, 29 Aug 2022 01:01:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 29 Aug 2022 01:01:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1661749260; x=1661835660; bh=t7Mr+gvF/U2yE7cshYpx9FNiT7NXPfbo+hP
	40/AhEyY=; b=X5XZli79rw1n2HAZH0ZcvmcKn8BEiN1PdEMgRN/FO4kOtUD13MD
	p0y+oTKYmD15Bv2eQw1cB8PyER/+EzKlnboAfQNTYKhiwZ/25fsEeu9OkFwQD/Bl
	iT1JwpUXSLwsKRD69izPyoBAuFAxnAL61unRsApMefShcjCZzO7VJfQ1mc9iCSmK
	KZ8xjev/M3F6o+biOfQHdahTN3Si4gsIr+85teVpXJPgTeVcVyZQqVGqzhscbbTw
	z4ZreLim7l6uvLbNfcwmr/RXXp8HoGT+m+R53ftkjwkwEQVNxdv8DXfkLUtG/UzT
	yz7O+dl7zDAc11Hawg2xpB+0PC2hB6xON2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1661749260; x=1661835660; bh=t7Mr+gvF/U2yE
	7cshYpx9FNiT7NXPfbo+hP40/AhEyY=; b=TKFUnRnjmv60I09kxk3DjO2Cp9UIq
	fjU8toH9JA5jYTvQavuQn/mCRjLk2tRx3zYSXh4rzVmoHcxd9mKOu9WAw/YBAw7z
	wcn4bAgGiJlmuskYG8M4EYMQOMkcxnYuYjEUABCiuBpFOXRbZUKF5DsWPhTo9lvA
	sy8mcqP8GFGBTeZfhI03+EwI6BZoGA/wh5A24zupGGcW3AOZpkT2kbdaaiEkHwyo
	OLPZ6rpFx2QpyuVEbu6/4xOEJyXngwry/c4nioVOj3zgLPB/OtnuLp1puXdnKv1+
	/hhW4HT845lgrjVwlBdSMegYUSqM/CpheGV62FnJELgw66Eedkv95Ip0A==
X-ME-Sender: <xms:DEgMY_tMjozZJut3Dt6JxUTpnf7V-yl4wrTQnV6WL-NBcU92v-HMqg>
    <xme:DEgMYwdlGpvgJgxyKuRJf59kaK9bZwOdwZFftOT_mcE9ZJgwp44NFZZYz-Ue7_0cy
    NI5s5zprtDAkQ0CQg>
X-ME-Received: <xmr:DEgMYyym1exYx67lwog9cnLBtxLaqym9ecRMtULWvaT5KZ30hjQiuoLm0Zf-3JIW7c3Wv6PdR7N->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdektddgledvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpefvohhmucfh
    ihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqne
    cuggftrfgrthhtvghrnhepteeffffggfekffdvjeekhfettdfhveettedukeduleduvdev
    ffettdffhfelueevnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtohhmsehtohhmqdhfihht
    iihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:DEgMY-O0tmeTUxsaQx8krT7iNRQZAxrt_yr26MuBPtaU_MM1E9LJ7Q>
    <xmx:DEgMY_-61iaI6uEQn_7fZqLibAUipcKPaMU_i1Gnxfk50Xx2FqZmwQ>
    <xmx:DEgMY-VUaXsG_S-o6d8W6hYZ8kR6RXn9qQA34YyoCqKZgNGaKqd4LA>
    <xmx:DEgMY-Vqwr7ksEd5wvGEB4YtHUbaZQZndEIC7Vo-D4650GFcS8I7Ew>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Aug 2022 01:00:58 -0400 (EDT)
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
Subject: [PATCH v5 0/1] Add support for the Pine64 PinePhone Pro phone
Date: Mon, 29 Aug 2022 15:00:39 +1000
Message-Id: <20220829050040.17330-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_220112_131593_06574506 
X-CRM114-Status: UNSURE (   8.96  )
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

Relies on "dt-bindings: arm: rockchip: Add PinePhone Pro bindings"[0].

dtbs_check found some violations, but they were all common to the
rk3399.dtsi (and thus occurred on other RK3399 SoC DTs).

0. https://lore.kernel.org/all/20220815123004.252014-2-tom@tom-fitzhenry.me.uk/

Changes since v4:
* Add regulator vcc1v8_codec.
* Un-enable unused regulators for codec and touch.
* Fix voltage ranges on vdd_center and vccio_sd.
* Un-modify unused gpu_opp_table.

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
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 398 ++++++++++++++++++
 2 files changed, 399 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts


base-commit: 2e1170c71ec0c0fb785ce76fca7c682e930af2b8
prerequisite-patch-id: 41a5419f57b2712f7127d5c6cf1dbf062f6570da
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
