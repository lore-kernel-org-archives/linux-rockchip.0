Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697E7C3ABAC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UzS0jRbBPlvFUYpYy2GpQKXL+nxcjHflyYJydNw3CCU=; b=tQif9v1jopkUKG
	G2KMt0wO+XjK2kszcASsTwxCDtRaBnJNMKGCw2Efs2/b5SKTmFRMKxpSa7Fdd1zRQMd4MHv28U47O
	QwcNHHKr79NNzNFtQnrJnmyTEPn3xI5haZJpD7uxT659v7Mm9qWSFKu5QhvkusMVoW9YbMiECXbye
	A8PCX7GVlWtSWk+beTHB7VWIua0hzkGuSDcWJfLIHNQTg4XhKClTVreo5NSLX4QIV+CYtob4gmIXW
	1+ishLpInhtsoJ1VQr6NOm3YM7H5Dzg+GvuY/64nIFpDccqmyhf8khRQ14Nk/GCEGq0tlbqwGhPih
	sXLsByKqKvruYLRTHkPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCFkM-0000000BbTr-2OOb;
	Tue, 06 May 2025 10:41:58 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCEW0-0000000BLqt-47kA;
	Tue, 06 May 2025 09:23:07 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D02F520731;
	Tue,  6 May 2025 11:22:57 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ETRcuLb97ySV; Tue,  6 May 2025 11:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746523377; bh=8YC/nlUWpEAJFTkya/c4smmCYNL/U+/Jg0o0Xd67Nvk=;
	h=From:To:Cc:Subject:Date;
	b=SQrXhASu87Ica13iGsBGL3hk/3b74IZ8UdE9gfAXvfCJpvbOJbELKAkUrgOOwQNNN
	 +iZTHypK30d7KowSXDM7FsxHWtgTSdBct9iIDq/pzCDrYNBsohvfUW5Eq3ktTlpUD/
	 maSDpQTD+dFEE/Zzhy+GVDpUoU1YxaIV8XTYPDCuWt3HaESekUZEhBCKoBkNLANiyG
	 VTaWI2RL6OAnha+091ncXvB914teqnKFfRnE2n/CBjm8Z/waAjSfBzvabHFo8KA4Yv
	 2fGLcKHUao6O0zf1+1NWAmsC9bXMJpGiDItexlX4d1rtinhc25jmJOsNFpKuuW6De6
	 E2TBuSwgABhuw==
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
Subject: [PATCH v5 0/5] Support SD/SDIO controllers on RK3528
Date: Tue,  6 May 2025 09:22:01 +0000
Message-ID: <20250506092206.46143-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_022305_429893_D7D3D0AA 
X-CRM114-Status: GOOD (  11.34  )
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
series adds essential support for their tuning clocks and brings the
SD/MMC one up on Radxa E20C board. Both HS and SDR104 mode are verified.

- Changed from v4
  - rk3528 clock driver
    - Switch to auxiliary GRF
    - drop rockchip_clk_register_grf_branches
    - Rename branch_mmc_grf to branch_grf_mmc to make style consistent
      (with branch_grf_gate)
  - Link to v4: https://lore.kernel.org/all/20250417143647.43860-1-ziyao@disroot.org/
- Changed from v3
  - Drop applied binding patch of MMC controller
  - Rebase on top of linux-rockchip/for-next
  - Link to v3: https://lore.kernel.org/all/20250309055348.9299-1-ziyao@disroot.org/
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

Yao Zi (5):
  dt-bindings: clock: Add GRF clock definition for RK3528
  clk: rockchip: Support MMC clocks in GRF region
  clk: rockchip: rk3528: Add SD/SDIO tuning clocks in GRF region
  arm64: dts: rockchip: Add SDMMC/SDIO controllers for RK3528
  arm64: dts: rockchip: Enable SD-card interface on Radxa E20C

 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 30 +++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 69 ++++++++++++++++
 drivers/clk/rockchip/clk-mmc-phase.c          | 24 +++++-
 drivers/clk/rockchip/clk-rk3528.c             | 82 +++++++++++++++++--
 drivers/clk/rockchip/clk.c                    | 17 +++-
 drivers/clk/rockchip/clk.h                    | 22 ++++-
 .../dt-bindings/clock/rockchip,rk3528-cru.h   |  6 ++
 7 files changed, 236 insertions(+), 14 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
