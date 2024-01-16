Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BDD6C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 13:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7o0wsrYsPYNUops14VU9quLyLNenbAYSQmWGnhaEtw=; b=qhzneJw/dZdzKM
	aShs5eRihitP0txV+lSpCgetmQBNdoxW6POVcjKTIs2DtILUoTtP2EqG4eZBDFyMc2XH4yZ64D67x
	nEPUmysM03nZKuI300XMQ4T2FGgG/ruEqNgnAc3Zc9yfL7UdVMNzPyWXrtU2x2H0Xdm22fOqcDsNY
	AtvNvoPrh/e38W6dyVDujCwCCroTPNDNDLbeSmnr+TtzR94OVfuHOaWS0qE+uiy/VNXhrNPq1Nc/x
	R4XOG/uIrVxF7dpCjUpS1YSIs/1G9nHD+bpJj3k9Q5QShhUZRvEbQfT6pBx381/aEK4J8veShMSPq
	Ix1vUWXT+LhZtmI3WSWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPjNf-00CA1U-1W;
	Tue, 16 Jan 2024 13:21:27 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPjNb-00CA04-0n;
	Tue, 16 Jan 2024 13:21:25 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id E51075C01A6;
	Tue, 16 Jan 2024 08:21:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 16 Jan 2024 08:21:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1705411275; x=1705497675; bh=YOvwe5sp9z
	vUo6Rpj6VCafW5qclDGLNfQgRXc/raG44=; b=tJXofF7Ipkw9IK/+JxHNfSGWdP
	lOwP71PTukALc49FwudQYa9RTAEE6XZOXPiZm3ZnkJV+koW2pKoeB9TtM14jicXn
	c8FfOdy5O5kOWjwKUGJWpfqoc+YSbxupMNrDTv+DQ8nB0aegAqzCSX5pZvTVtdxH
	hw83yEdDdfX4Rww0Uo6ET3hl/FhJErlcqlmlvv2DUFL3aDebk888wSH0c9Ybn/KM
	D2FZSlEdyoJm/mEw4c7tuo6FOJaKuhVeOaCBylyB+GEF9fiFEinxRhKWS0UGKy+9
	KavjiDHQp5RHpBLRcDRTkYb2plo2sb33dmPlJ5jL2ENjUIzSIRZSluqy0rhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1705411275; x=1705497675; bh=YOvwe5sp9zvUo6Rpj6VCafW5qclD
	GLNfQgRXc/raG44=; b=coCSC9JgdPguzEjD1s1erwzPKwp3oGEA93/64ie0+gOd
	FIQK2jUjesbOnd8EhD8siya7S4kh+qAqdzGSpKBBFDTwIpnud61fAMrd5KFHRG4v
	6N+6G6zOK8Q3upYCWcGjCyCszIWGp/49OZrMH2RSaqgNjgjuR+XgVn78a0nlPc4R
	HFSPyNr6lc6MaCO1FAVsyCt3G3rFND97a+Q7G1tOV1Fx+kWY+ImA1XW8j6bdlc6+
	zRtDzXWE9l2FT1h2TQ70jPsgRDJ+GqlErqIRhdbcg6SYcJGcrX9w5i2eQyb8VTce
	PIODkZ0tbbi19jTA2GUzqTvPE11SVOdsSmWuLukUEw==
X-ME-Sender: <xms:yoKmZXdRgGyXIjljxBNhU8oRTdbv0-x4yRJ5oRQSLh9Yr1wtWYd_xg>
    <xme:yoKmZdO1fQ_oelj3FNYr-b8-6xTaJF51ATszze5EytCGmY5QND-U02JUbsL6sMZsY
    lczn_2YzQ>
X-ME-Received: <xmr:yoKmZQhVxhmUkgP_amlnDQqa7SfAV0kl_tC5tZmt24fwhv-77ZYif-oHH1W7s4sY6h14kYPuSB6H3aGU8oH-IRtUT9gpoUD2LqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejfedgheduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfhimhcunfhu
    nhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrhhnpe
    duhfdtveeujeejjeffieevgfdtudegfeffvedugfetteehudevteehtefgieeitdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvg
    grthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:yoKmZY_QGsJcWHpSm5Qi8aZCiLiH7F3Frxi1wRwqaKxtusaObZPH5w>
    <xmx:yoKmZTsL4z6e3OiDX_G3IBYLo6WxbDvFfB9PQNCE3jFzTB3yQEJCNA>
    <xmx:yoKmZXFmDcilmX18hs_8zSHEhbDv4QxOHeDKR5ta7hJuRnl9KcttYQ>
    <xmx:y4KmZUni3oRHt9N_TyfKBAIyuu55VVtd_B3O1-H6CDBVmfd2ULrjXQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Jan 2024 08:21:08 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 17 Jan 2024 00:21:03 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] dt-bindings: rockchip: Add support for rk809 audio codec
Date: Wed, 17 Jan 2024 00:20:59 +1100
Message-Id: <20240116132102.3272682-1-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_052124_511923_10998CAD 
X-CRM114-Status: UNSURE (   9.69  )
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

Rockchip RK809 shares the same audio codec as the rk817 mfd, it is also
using the same rk817_codec driver. However it is missing from the
bindings.

This series documents the audio codec properties in rockchip,rk809.yaml
bindings and updates example.

Changes in v2:
- Fix vcc-supply warning detected by dt_binding bot
- Fix missing include and pinctrl for codec example

Tim Lunn (3):
  dt-bindings: rockchip: Document rk809 support for rk817 audio codec
  dt-bindings: rockchip: rk809 fix existing example
  dt-bindings: rockchip: Update rk809 example with audio codec
    properties

 .../bindings/mfd/rockchip,rk809.yaml          | 46 ++++++++++++++++---
 1 file changed, 39 insertions(+), 7 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
