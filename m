Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF21AC282DE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 20:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ORpcn8rSfIM/1gYvQmGsDr5LeKPOCRwNssU0lS2WgqE=; b=CZP2BV3PCfkiRr
	H+CV0mdVWW+I4ek1qGE11KSLfL2e/V6u9Ug9lLatOU961aZ+p5zbHOc4taHk+0R51zVLPpqmOHUhd
	gtGYpgUZMsPeBdG8Mi+C/mV48VC3DvIuDuBEt6Bt3juHs3O5qjga2c+VUGu1BHkWUxQ6AZjsH/9au
	lZqboKSqYr5TE21tGo+M0y2SoTvLJcKlSvrMXFcl+DMIewumGm6jU7moPwERrRG+Nvy5Q+U2tsNAs
	PsQG584IBF/bed3WuvdpatZS3dow0Rfa5TQNk027+YjZO0QK5YGVL/RuSr9r8LL1+3f4q4jAv8a0h
	JoMxyC1OXthr1uzcQsuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpv9d-00000009Bmg-0DK4;
	Wed, 05 Mar 2025 20:15:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpudu-000000096JL-10F1;
	Wed, 05 Mar 2025 19:42:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=MDVHg+TSLicnT0GCs2fQQw7a1d/F/xpyIcQlG5vOWNM=; b=OJ2tBU2ZvuSPrqTSiimkf3TDQx
	l8Z0LS6RpID3ktvi2f+KEcijMc4/KvMnvJa3wU0Ts74mUxBA/sWkXvu6MuU/L/7KbeKRQDZ97KcAD
	Z/WXYI21zZhPYP+U+4P0k6elnFbUWgZIunJFj0wNK8KRbZtTkIUReB7SQu7Bvw1K4yYqOUR7VvSqN
	P1FK/+CUhkTB4lL+PKjewV77sE/VzR0ni2XhnB6zrQ4BhgNsYnn5NPRuX3aWsDSQxyMjQjl+1cUsS
	wf42m8pqYBSkK57IVlDrl/z8L1C0Mdd1eeG4c4JhbKwiNTpVULHO39vXSd1eMDEgH3i2e9xorRQQn
	KYrYp/Ig==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpudq-00000000j52-28g2;
	Wed, 05 Mar 2025 19:42:56 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id AEBE820A23;
	Wed,  5 Mar 2025 20:42:51 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jLjYbJU3XEKF; Wed,  5 Mar 2025 20:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741203767; bh=xhnqWstTVBqsoGCfx5R5bpNmekaP3M85MkZUJ3rzXvI=;
	h=From:To:Cc:Subject:Date;
	b=BHsjmw1NIdU8Vfb/85SnYm8FxLRazHlpx5yPR5c2KLnT645/cqBdRgqVeP1bmahOi
	 Oyp6VqYtoI/BEa/elWERqHd89ixylu8sBKE8rxrEnRVoid+OvpXsvkX7Q6JPxEaVDt
	 IiQBPZB4NubJ6Z3cd2B7/SbjJ2Xs0cY1lg57sssGtcAgr3BNSma06qCVM98ISlDD//
	 obyzDfFulvUggNZHymTaNuQ04t8grtiKHmM7qFwufypzqgvIF/vKKM+OgBqnmXH8wD
	 8MuhLKl915iuJcwGltjGtit45NvV1dEhbqlBWE2WkChXC92a1g45kv0M7iz6vkJ+G/
	 aSrEWYkQi/U0Q==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v2 0/8] Support SD/SDIO controllers on RK3528
Date: Wed,  5 Mar 2025 19:42:09 +0000
Message-ID: <20250305194217.47052-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_194254_868655_31EBB5D3 
X-CRM114-Status: GOOD (  11.89  )
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

RK3528 features two SDIO controllers and one SD/MMC controller. This
series adds essential support for their tuning clocks, document the
controller in dt-bindings and bring the SD/MMC one up on Radxa E20C
board. Both HS and SDR104 mode are verified.

This is based on v2 of the SARADC series[1]

- Changed from v1
  - Apply review tags
  - Rebase on top of linux-rockchip/for-next and saradc v2 series
  - rk3528 clock driver:
    - explicitly include minmax.h, replace MAX() with more robust max()
    - readability improvements
    - fix error checks: ERR_PTR(-ENODEV), instead of ERR_PTR(ENODEV), is
      returned when syscon_regmap_lookup_by_compatible() fails for missing
      such syscon
  - RK3528 devicetree
    - Add default pinctrl
    - Move the per-SoC property, rockchip,default-sample-phase, into the
      SoC devicetree
  - rk3528-radxa-e20c devicetree
    - Assign sdcard to mmc1
    - Add missing regulators
    - Apply no-sdio for the sdmmc controller
    - Sort nodes
  - Link to v1: https://lore.kernel.org/all/20250301104250.36295-1-ziyao@disroot.org/

Thanks for your time and review.

[1]: https://lore.kernel.org/all/20250304201642.831218-1-jonas@kwiboo.se/

Yao Zi (8):
  dt-bindings: soc: rockchip: Add RK3528 VO GRF syscon
  dt-bindings: soc: rockchip: Add RK3528 VPU GRF syscon
  dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for RK3528
  dt-bindings: clock: Add GRF clock definition for RK3528
  clk: rockchip: Support MMC clocks in GRF region
  clk: rockchip: rk3528: Add SD/SDIO tuning clocks in GRF region
  arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
  arm64: dts: rockchip: Enable SD-card interface on Radxa E20C

 .../bindings/mmc/rockchip-dw-mshc.yaml        |  1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 34 +++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 70 +++++++++++++++++++
 drivers/clk/rockchip/clk-mmc-phase.c          | 24 +++++--
 drivers/clk/rockchip/clk-rk3528.c             | 61 ++++++++++++++--
 drivers/clk/rockchip/clk.c                    | 42 +++++++++++
 drivers/clk/rockchip/clk.h                    | 23 +++++-
 .../dt-bindings/clock/rockchip,rk3528-cru.h   |  6 ++
 9 files changed, 252 insertions(+), 11 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
