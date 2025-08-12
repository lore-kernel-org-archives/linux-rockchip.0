Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF8E5C87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 12:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rwcqa+bpFFnZrTOVfFIkw11RbC3lXZZAqqwuVSSgzK4=; b=Sbijw2WKyuwWmS
	nT1dUHHHGkab1gaDh0UNKAQGYyiNzpTFoIX6L0VGwQvQM4GxWjFQ7RZw5nfR9OowAzBNJ0JI0uwPi
	f0yaHF/EO9NROFijOyMyIVwtOu8kIxQ7L0yYO8EWn33AGaCWRGpRLcsTNMJfJv7XS+RM7AU3dNd7q
	0zhSLHsYx7O1jLlWPI3SWtcFE3S/05J8WVjABEP0lKbMUkAgr3djtJxB4wHR0MTB+RNJkU8s1jMAt
	Kbs/3AVdRM2P3ysFs4XmZ5wV03SXEVzE8ITr8+n6cMbk1K6TKJ9uWJVw/dGvmpdKU1yxRgpoJrCl4
	cz6PyIMKhpC7UfT1M0ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uloGC-0000000Ajqt-29F8;
	Tue, 12 Aug 2025 12:37:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulkQi-0000000AFXv-1N4t;
	Tue, 12 Aug 2025 08:32:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=iQpTDZH7lXr4FoO7KJPIkTJ/j35kWz/ImE22PyEPmP8=; b=KeB6nkkxVQZcgot7no6Ky4uaBg
	9fqcPV0af4CxhF5cseNcv1gzT3uMp/XF3D2hkwKqpZtwIMkgyc6DE0S5oRhWrpkxswYDQf/3qLSrG
	GIn6REpbTezPkUdE9niV3T3rjQO8NZWnBXePAnjfurX48QacpszCt+9pyvln+FYvtW8513lEFKEzR
	fqhPdjyVoZOrlxi+qL0AWefVTaT37vKfcabQ8+KsJ1esDakSAarOoI9qeVoPOFEoPCArZ3cojpdhq
	nN9A89qt80+ZoZsHyBpiCZyv3d/vG0hN9EMgoohtfykIEfgQeX24nYQqPVT/fKMIuRk7HrJbCeJhO
	5cGqrhqg==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulkQc-0001tw-Hq; Tue, 12 Aug 2025 10:32:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	damon.ding@rock-chips.com
Subject: [PATCH v3 0/2] Add RK3588 Tiger DisplayPort carrier
Date: Tue, 12 Aug 2025 10:32:15 +0200
Message-ID: <20250812083217.1064185-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_013224_377886_867CC5E8 
X-CRM114-Status: GOOD (  13.44  )
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

A board that allows easy testing of the Analogix eDP controller on the
RK3588. Requires Damon's recent work on allowing bridges in the
Rockchip variant of the controller driver [0].

Concerning displays, my current setup is

  DP-carrier -> DP-port -> DP-to-eDP converter from Aliexpress -> eDP panel

which produces a nice 1080p image, but it seems Quentin's experience was
not as nice, as he reported in v2 [1] that his two test monitors produced
dfferent tints, but not real output with:

green tint on a Iiyama ProLite XU2294HSU and purple tint on a Dell P2319H


changes in v3:
- rebase on top of 6.17-rc1
- still should wait on the analogix bridge support

changes in v2:
- collect Ack/Review for binding
- address Quentin's comments
  - sorting in Makefile and dp-connector properties
  - ethernet alias
  - drop data-lanes comment

[0] https://lore.kernel.org/dri-devel/20250709070139.3130635-1-damon.ding@rock-chips.com/
[0] https://lore.kernel.org/linux-rockchip/0582b7bc-e5b2-4b5e-821e-8d2c4301579f@cherry.de
Heiko Stuebner (2):
  dt-bindings: arm: rockchip: add RK3588 DP carrier from Theobroma
    Systems
  arm64: dts: rockchip: add RK3588 DP carrier from Theobroma Systems

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rk3588-tiger-displayport-carrier.dts      | 109 ++++++++++++++++++
 3 files changed, 114 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-displayport-carrier.dts

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
