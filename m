Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE62C47DB7
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jan 2024 13:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eFa2tti85xduCYGKVCVkbNwQhRzgPCFVz5VTG3hyaOg=; b=tZZmDHoXAIti5e
	abaXXgkCaPzNMZEHFZEZeYt9qVEWZgPLOm7cbLyjvIMNN1RHuQJWxmA9Qwgbqgkpjy9oGAFcIwfuC
	3b32QOPl3W/0IEcQBscOVBUyKDPI6S9yR4cCohx9Q9GZgOY8iJGHluR7bFHjoFmL5zmC5NYrXTl42
	62MDH7/p+LMgxMNFy/8dXQb8bGxGQDL2iYzWK7l0q3j5D35UC2TW9JLXL6E4vYva8FuiqbZUyxZMw
	U3Mjldp/TjN35CKR0L6RrSaHVaTx6YasnpW6rPqQMuttwYeTnCyqXRjSn8JRIuKzqIiJ5Y0gD7r9a
	nXOaHVpOf6BfqgRti9cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRBpE-007w2O-24;
	Sat, 20 Jan 2024 13:55:56 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRBp7-007w0Z-1A;
	Sat, 20 Jan 2024 13:55:54 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id ED64F5C00FE;
	Sat, 20 Jan 2024 08:55:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sat, 20 Jan 2024 08:55:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1705758942; x=1705845342; bh=9ijthPNIeb
	SJSQYxWt79GWhaSuh0UMR6m/aWq9NGuS8=; b=B7o8g2gesQQ32xjebrNMFDgsxm
	owB+ZpUxM9FAqJrQ+5okB6KXgjJ3wW/xZb0Cgj/q7Xh3IzdKBb+WdY1rpDKfSnm5
	u6uRezdKTylz9hjbm/0zgrJWgNGPCyi/VyZ5vpIKgJaKcXEXaTU8c3avnP/1EaEK
	0YH7TddjoglH05Ubn1yUKSGUUrtO2Cyyk4V7BQ/nK1GqO5et1yCzFlJEA8tfXAvp
	NnITfU9huOIGnU8KdYDmhNJtpZMNgOeI0FGTmPrZO+bgVegAyOVEe0Svb1Pm1dMB
	zAXjUpR5lTPCrJI0IqDXrY88+UhCDd7CXqsb9DArlbRQtYBama74rr9fPoMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1705758942; x=1705845342; bh=9ijthPNIebSJSQYxWt79GWhaSuh0
	UMR6m/aWq9NGuS8=; b=OU0Y1Li0hxUHJREOnyBxc5an8vQDj/Uo9VfyvhaQCv1W
	SDePqeI3lwRBZDTsjaiKKHzIIb5ToASCc7rrWrojkbnWYD13CotL3fCdDVPCtb+n
	00BmSc1BHhrUxNiyqbE7Syl9VU76rD/fjo8Q4yFKyL5p/wNun5K+dj+lTPHXOOcr
	0/uZRSECpmPrT+JgjvncNNWUbBAwSjU5I8NjX0wUATyvCMaaD282rSCawY2u9b57
	+ezLyVuT/Y/y4x1mpKKc3x/qynRQS6HhxTpRS01Q6x7w+pV6KtTTXz1Rsr4HACRw
	/SpHSUpQln7of2gHTXwnRDWfxAgddQF3vsrJEmH6JA==
X-ME-Sender: <xms:3dCrZXv1F2HmI57sidI02oSqtT-nFZhjGbs-4LA1k11tSZJ_5EXWIQ>
    <xme:3dCrZYcjGh2bi5rr_gVLFG4kISKKPegQDW3JeIzYIfmUb9Xn8XlycF0Il30wAfVdV
    RTGttktMw>
X-ME-Received: <xmr:3dCrZazC4KmsbSxJ_ttpV9EQFCJhXLCNdVMd0kqWCafELus_Tm8Ak8wRVS7rBOfOvoLfZH4G2N_c-baD4Zz9vBOAnYWX7fvzX94>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekvddgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfhimhcunfhu
    nhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrhhnpe
    duhfdtveeujeejjeffieevgfdtudegfeffvedugfetteehudevteehtefgieeitdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvg
    grthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:3dCrZWPXDCfzkzvJdXYL-p6xCSBkzIp2bAiuM_bjyXnZ8mB6nwj4Fw>
    <xmx:3dCrZX9rgs8fogj9mBDx1Z8_fnTtf_w7sBwkLXhDu7y3CL-nYlUldQ>
    <xmx:3dCrZWV7FkMM4D8wyQbw_xxENwLqvjg3NwC9e6pEw5iYAn1tqhI8AQ>
    <xmx:3tCrZdcUaUbI0E2FAWcAERSsCeRIsOhtBAySSvOdvtZ5lkqBAQpIJg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 20 Jan 2024 08:55:35 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 21 Jan 2024 00:55:30 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	conor.dooley@microchip.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	Tim Lunn <tim@feathertop.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] dt-bindings: rockchip: Add support for rk809 audio codec
Date: Sun, 21 Jan 2024 00:55:26 +1100
Message-Id: <20240120135529.899403-1-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240120_055550_624448_DB6AA4BA 
X-CRM114-Status: GOOD (  10.04  )
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

Rockchip RK809 shares the same audio codec block as the rk817 mfd, and
is compatible with the existing rk817_codec driver. There are already
about seven rk809 based boards that implement this codec in existing
device tree files.

This series documents the audio codec properties in rockchip,rk809.yaml
bindings and updates the example with their usage. It also fixes a typo
in the existing example that was causing the example to be validated
against the wrong binding.

Changes in v3:
- split out clocks into separate patch and group example properties
  where properties are introduced.
- Address review comments
- drop clock descriptions that arent required
- set maxitems on clocks

Changes in v2:
- Fix vcc-supply warning detected by dt_binding bot
- Fix missing include and pinctrl for codec example

Tim Lunn (3):
  dt-bindings: rockchip: rk809 fix existing example
  dt-bindings: rockchip: rk809: Document audio codec properties
  dt-bindings: rockchip: rk809: Document audio codec clock

 .../bindings/mfd/rockchip,rk809.yaml          | 42 +++++++++++++++----
 1 file changed, 35 insertions(+), 7 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
