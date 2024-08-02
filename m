Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61F97C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xf1E19v/JqCpmU4ea7r1LfQGRdMoF8FVZ5Ca2TurMNI=; b=KWwaOKcpVSdAKM
	aJ0vXB3Bm9XYHNK0grrNT/xTNJo8e/GQyOcJp5+KMbbUSfJL6Hx1TRe6xgCC3vvC4RoonL9xd4Wq5
	xVyrhvXCXIpBwuvnudgjke8OAo8DG9WhKkqkPWX80PgLnHFECosVpOQfaAg26sp6QSKsW9HHNFjxq
	N6BA47CZXZ9J6VZB+0zCEh9dcefzmVzEtr2jEdFa6QwGsCfcnpiWXmDz0E4cddOtgwB4iGsrXbyO/
	B5XmDGDj2+a5CUK0CvXK9eUMxyK2WPlopWdmKy/sO6QJg44qKAeGB8bWVo5j9/edWiOsjKOdxEECt
	idQVeI5+EvKpsZhKQzIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa00e-0000000A8q4-11wN;
	Fri, 02 Aug 2024 21:40:24 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa007-0000000A8gg-2Kuf;
	Fri, 02 Aug 2024 21:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722634790;
	bh=3ZPQZra9eBgn9X+DOhPsgFW4rgc5sg704GwOCwXXYRk=;
	h=From:To:Cc:Subject:Date:From;
	b=5AGDxnIdVhv9ZeigLksbEeUZysb+kQpZcf2GgCB9wQybwtRYRzwgnczeQ7a5EXn+z
	 89RJMgjFnlEwTACUQ0HFrm3XRNxKhWgxfY7OauJoy57a6qS3IfqjAn029VGumpFjHY
	 tN0ehYZLthxJ+RLmBkwkDAl0PINARx30RCHkO70Vw9/jVbSLI8uN8Z/Zu0m3IaxVml
	 AFKWPhSX/Q+UWOQ0zLJ7p/vyMVC8b0Q0DoT/XGiRtQxbVbh8I5U55/pclFBKo5i0kE
	 DN010XYZjNodBlikCT/JRlKl2rgDrVh3ECEdZRpQ+p/B7pVaIxm/sJs8kdWCqBVaTB
	 h34PBmSBVicuQ==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id ED5913782215;
	Fri,  2 Aug 2024 21:39:47 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 0/3] Add CRU support for rk3576 SoC
Date: Fri,  2 Aug 2024 17:35:38 -0400
Message-ID: <20240802214053.433493-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_143951_747621_C785CB88 
X-CRM114-Status: GOOD (  11.70  )
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

Add support for clocks and resets on the rk3576.
Patches from downstream have been squashed and rebased.

The resets have been renumbered without gaps and their actual register/bit
information is set in rst-rk3576.c as it has been done for rk3588.

Changes since v1:
- Remove reset defines that are probably out of the main core
- Separate resets and clocks bindings
- Renumber the resets without gaps

Detlev.

Detlev Casanova (1):
  dt-bindings: clock: add rk3576 cru bindings

Elaine Zhang (2):
  clk: rockchip: Add dt-binding header for rk3576
  clk: rockchip: Add clock controller for the RK3576

 .../bindings/clock/rockchip,rk3576-cru.yaml   |   73 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rk3576.c             | 1819 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   53 +
 drivers/clk/rockchip/rst-rk3576.c             |  555 +++++
 .../dt-bindings/clock/rockchip,rk3576-cru.h   |  589 ++++++
 .../dt-bindings/reset/rockchip,rk3576-cru.h   |  484 +++++
 8 files changed, 3581 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c
 create mode 100644 drivers/clk/rockchip/rst-rk3576.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
