Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F996ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 18:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pUhjkXoHX/hDgb5IZd8HY8bq0WoopJJhWlk56WT++L8=; b=JBjCI44GgK2PIr
	WiEAJFUoC3amA7Ec/+8uYZygaBLVueeebH4nLi70FyP60GrhMuhDApMQ47D+AX1QWI9RRfQd4ZzVi
	7IRY49YocVsA7iGLsxT6MR4uKheHK7+eKftFb+JJHmdNRifZygt9ZBJnGuXpUU1GI9FHqW4D/AJ9+
	gOs4fVF45ot9qNL5j4tYUMDgMzjX62dr44dWAzDL9OTy9+fQqTZLUDqerMNPASsHYMi/HYPKECwYg
	CMZyJeJhqeErob+Xw+X/NvyB7JwUHTLhHHSjLaSYh7gPekmEUFjtfNFRY9QSadZSaWKKoGfiAnl+O
	fmRAznDoOYuB7/toJVUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSRO-007ZBv-QD; Wed, 31 Aug 2022 18:27:54 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSQE-007YbR-2m; Wed, 31 Aug 2022 18:26:44 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2222E6601DE7;
	Wed, 31 Aug 2022 19:26:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661970398;
	bh=4pQt5BtWVNf8Fup7IlMr45mg4gWqKsxHBcj9nchNGto=;
	h=From:To:Cc:Subject:Date:From;
	b=Jv4NT8A9HPTtuxnodSPXShoC4HuiX7+fKxO7ZDKI6GEzwA9E1jNEJwyAXf4jTK9Zi
	 cbdKOXzzM6A18HusTGnrN2kC1SmSNVPED2PRSirQ8ya4rP5J7U2xKZgfxSLyKiVg0g
	 czDKorJw4iApU2HId4PM6hh1ukUQCFjaVfArjjBh6xDBgmMcFfvPizZuadG9zNhUcc
	 ZEXvTiXRadS5blXMyvP4C5y8IfIV7+MKrZQhVsHNYniyyrZpNsfHJwTteaD94vma5a
	 MJkaCe+oD/ygnWyb9v++uiPVwf2cwSbJnYzED/aAdqoxg59Mtr39i0+NWcdxkkev7u
	 SNH4ZbuF4DPrA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id BEAF548015C; Wed, 31 Aug 2022 20:26:35 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/6] RK3588 Power Domain Support
Date: Wed, 31 Aug 2022 20:26:23 +0200
Message-Id: <20220831182629.79255-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_112642_379953_D2708A3E 
X-CRM114-Status: GOOD (  10.21  )
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

This adds power domain support for the new RK3588(s) SoC
series. The series has been tested with ethernet on the
RK3588 EVB1 board.

Unchanged:
 * DT header has not been dual licensed (no feedback from Rockchip)

Changes since PATCHv1:
 * https://lore.kernel.org/all/20220623162309.243766-1-sebastian.reichel@collabora.com/
 * Rebased to v6.0-rc1
 * Fixed typos when referencing rk3588
 * Collected Acked-by for the DT binding

-- Sebastian

Elaine Zhang (1):
  soc: rockchip: power-domain: do not enable PD

Finley Xiao (2):
  dt-bindings: add power-domain header for rk3588
  soc: rockchip: power-domain: add power domain support for rk3588

Sebastian Reichel (3):
  dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
  dt-bindings: power: rockchip: Add bindings for rk3588
  dt-bindings: mfd: syscon: Add rk3588 QoS register compatible

 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 .../power/rockchip,power-controller.yaml      |   2 +
 drivers/soc/rockchip/pm_domains.c             | 101 +++++++++++++++---
 include/dt-bindings/power/rk3588-power.h      |  69 ++++++++++++
 5 files changed, 162 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
