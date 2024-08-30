Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1404CA1018
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 20:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mWGwxutfaTAc5KB+9xkz0HHDyWb26bJesz0BaMeAORY=; b=ozq5ymxVc4BbWc
	qrDot3hFLEJ4C1MMRFBTgs3vndXiIU42EKyqSbw5fq6ZLT5Tu8GExMyGW2SYw1hPSdQUtIRvmcw69
	cDguh3FQEit7EzwX+J8DoWnJyEIhq5pVyIY8V3PEEofCvhzwyThgPV9C7cUa1xin2dbgwtYxTdvcP
	0my4GSsk83UjS2QW98FEzjpFejHB75BjxTKUofn2pPyQbTC60jl/xpGbBQRrJ9J2zifokHCT5G61+
	R0jRdszdGbSOdQ7V1sp5O7J8cXM2/EVReuorbtNSrLCS/QET+lBMLSKxE98uUmN4rcogCY9C6xXMd
	W9RJP8etABX2aIfMMBzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8Py-00000007daT-3J7M;
	Fri, 30 Aug 2024 20:40:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8OE-00000007d4n-4111;
	Fri, 30 Aug 2024 20:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Y87Wj2BoC+XSVLs7maxMom4zaevBF7HD4ifA4tnI7jg=; b=ghLJuRGJLkEfPm7xljKFc2h7E1
	iAgsV+/4FjNg4GSXxbdMGD6+b186qxKCFT69Gj111CPKIi40rF9i91SUvY9qdpy+UbljQ7lxJtB1o
	r6qbOL2gJRthMpXsIXWljaeBKpLwCsQIAdIK5H2o4xvEZkNRL4ll4Gk8XJsiv1Kjw8eTXNx+OW3+A
	NM8snfN7TryAdh2NHpPbSVXLNN/DmxxrSGfEtEpdFDBcAINr3XOeYGOxGho2CYGIkgSmBQihbW4P0
	/ag6//15A+CoHKVhIO5PEplld9EV86hvi8N9FjKjchaBUMC0u027sIBuwl2EZWK9EwEoc9/2RGTF8
	rWYJ6xjw==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk8O9-0006ey-Hx; Fri, 30 Aug 2024 22:38:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	marcin.juszkiewicz@linaro.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3] Fixes for the audio setup on the rk3588-nanopc-t6
Date: Fri, 30 Aug 2024 22:38:16 +0200
Message-ID: <20240830203819.1972536-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_133839_041638_51BA241A 
X-CRM114-Status: GOOD (  10.89  )
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

The Nanopc-T6 board does contain some devicetree errors, that came to
light with recent changes to the board.

clock and port properties need to be part of the codec-binding like used
on other codecs already and one property needs to be removed from the
board.


Heiko Stuebner (3):
  ASoC: dt-bindings: realtek,rt5616: document mclk clock
  ASoC: dt-bindings: realtek,rt5616: Document audio graph port
  arm64: dts: rockchip: drop hp-pin-name property from audio card on
    nanopc-t6

 .../devicetree/bindings/sound/realtek,rt5616.yaml    | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |  1 -
 2 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
