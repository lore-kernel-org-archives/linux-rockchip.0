Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D3BC28B2E
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 05:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tmi6d1EWORTwnQ5hCi9iN3+1g0zlGLnj7YxKyz0LQws=; b=Hxh2I9go1RRiNA
	ZYRlLxQIrs3Y8V/zbXRNrCDeUfleaz7tS1p+K3vfWFiOE1q51t5011nssK+N5/M1oNy605Os8JJVs
	ZDVCZYIHzVTIYkqxljzoywWZWAMSuvkiPcrZKGumEqqrbvK/A3mQWBp2sWT07ECBVsY/GNVVzq5/U
	rK5lDhpckKcZeXCGYA29IgguS0geLUWAY319HkBt966mTPRZalTuBb49gQIyrHYt8NdXAR+IM43NK
	v3baOZoFDXoGUWsXf9hfvDGbq5g3/AeyZkWfwH4HvcV/dECHrLgZRWU9JEE1nGw6H40NjVkeAN86u
	2j/edTf76H9z973RI/0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tr9ds-0000000HaJ5-4B2p;
	Sun, 09 Mar 2025 05:56:04 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tr9cE-0000000HZxf-1QpF;
	Sun, 09 Mar 2025 05:54:24 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D4F7725DCD;
	Sun,  9 Mar 2025 06:54:16 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8LWI8nxrMLlW; Sun,  9 Mar 2025 06:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741499655; bh=jW0prezCvhfoXx1hseKEs6i70MPMNW9XLXcHofe/Z90=;
	h=From:To:Cc:Subject:Date;
	b=FuwHSHjNhgaQ/9ZDTlNAHaKkr+AAnhgiC9GGSqpQEJ3irDH7o7GS9pW3u8hg+Butu
	 czIc6Zfi64+EJ/rSj0BK7DjqcpZZ/edH503G5J51gOELkAbGkpiGDz3bdXwd245FUS
	 K5wSti2P52wZ+jv2Bj1bllmEry8Xya3YhmOyhPdMItr8BebDmNmCFdoH2I64JjeWfL
	 WDQ0E7iiqokny5CDP7ICX2bRrjIHi7QF9+CAs6chmMP9EeYCftlb+AqxGlYxn35vI/
	 QXs979nsvMkXiBEAF3mB6/ThQr8M+9ndUKaoD/Wz/OvN5yUf6gtFp4f/yoXepnYwVQ
	 RBw/6LYwGe2jw==
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
Subject: [PATCH v3 0/6] Support SD/SDIO controllers on RK3528
Date: Sun,  9 Mar 2025 05:53:42 +0000
Message-ID: <20250309055348.9299-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_215422_804118_FBFF771C 
X-CRM114-Status: GOOD (  11.92  )
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

- Changed from v2
  - Apply review tags
  - Rebase on top of linux-rockchip/for-next and drop applied patches
  - RK3528 devicetree
    - Fix accidentally dropped status property of saradc node
    - drop det and pwren pinctrls for SDIO{0,1} according to the
      reference design
    - Correct max-frequency for SDIO{0,1}
  - rk3528-radxa-e20c devicetree
    - Don't disable sdio for sdmmc as claimed in the hw design guide
  - Link to v2: https://lore.kernel.org/all/20250305194217.47052-1-ziyao@disroot.org/
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

Yao Zi (6):
  dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for RK3528
  dt-bindings: clock: Add GRF clock definition for RK3528
  clk: rockchip: Support MMC clocks in GRF region
  clk: rockchip: rk3528: Add SD/SDIO tuning clocks in GRF region
  arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
  arm64: dts: rockchip: Enable SD-card interface on Radxa E20C

 .../bindings/mmc/rockchip-dw-mshc.yaml        |  1 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 33 +++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 69 +++++++++++++++++++
 drivers/clk/rockchip/clk-mmc-phase.c          | 24 +++++--
 drivers/clk/rockchip/clk-rk3528.c             | 61 ++++++++++++++--
 drivers/clk/rockchip/clk.c                    | 42 +++++++++++
 drivers/clk/rockchip/clk.h                    | 23 ++++++-
 .../dt-bindings/clock/rockchip,rk3528-cru.h   |  6 ++
 8 files changed, 248 insertions(+), 11 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
