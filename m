Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44553C83F18
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yd6WGPakXNpGZQUW8V/MsWJLMDtki1vkoBJ/K6n+SpI=; b=b9rz9dRPzeFQ8d
	OY1fDfGQ0+lErFNB/FqjENKVoeK/aaFoBM14SuFOlJRJPzlwT80+/QBKwSLEy+zne8BGB6S8soquf
	aGTB61gBes3egpugh/Qxft8JN0ic7h20F8z/B4BtCfIEi81XAGU8P3TL+BUAo6uHvpBQyNRoIoB1F
	MVRrGrNZJzUYV6ePOsqEbcX6a3OF3EEzze88fQgURhpF4NDHAVleJczLufxoEO1WZEH28UAVVcHp3
	ci0THM8B7LC0H6kvlXVunwTamlX8e9ahBl9CEVLsOuZMYddPtGOZmdEZqJB4nDmRhxwEO9HkqCMXN
	/n4veYSs7KDAAtBKRbHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LV-00BvRc-1U;
	Tue, 29 Aug 2023 17:17:41 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LG-00BvGO-2j;
	Tue, 29 Aug 2023 17:17:29 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bdcade7fbso601477766b.1;
        Tue, 29 Aug 2023 10:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329444; x=1693934244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2/7c2w13BboV5z1fikWu4cjbkqKZVvr9Va+TjvUs/1w=;
        b=jWHczfs+qI/FpLS2P+bT6p9unqFbqC84TjUu7DfIwKTRCqIm1lTKRD/kNPhBv1Eemw
         pnpKqi+VQuah4wacUn5ruX3VnI7i/LKNG//dRgrjID2qw3arKOiRZzBY9cdavmyX/E/z
         o1iWcv/lpXPRWtE5Uu2LIjQvDwzlEqUmZ6Tuad6fKCKcIpgp9LTukUO/qV3ap7lHuYPK
         b2rj/BdsHS946CwkExqvz3oP97dRAI0uyOcUmhtdJt3sPQ2jrihf+17wfsuMZFWEd0yA
         lPgFCcCQ1osOFswhUS7wpUnm0ytiB5Z3hdAF0704VndEF9U96ERnxyN4bVixDF0orsOs
         sJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329444; x=1693934244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2/7c2w13BboV5z1fikWu4cjbkqKZVvr9Va+TjvUs/1w=;
        b=Do5Zp7Sj8hmfh9znjaXuO+n8KKDKQb2vsn8006XxePDXMWRhvxOVM3uwaWtWOzZ0R8
         FYTlPsEhovSlBcz7DpFC44pkaT+87UY6mrX51iYxE17oM3BalTNBy00LWQkWRcyYZw/3
         pO7MUZJZ4SqQ277mbWpxRzfpY+Id1Cx6xgS/bTbdm0NThrpIRVkrxzIFuR78jujrjcWl
         sTF/pCQXXRlDNSdv/JS6GZNFLuYbeH82J47rxTuTzmILG7zdZzT9NE6MLoihfaTvkJOe
         s13z2aCGVufX737VxAMZ1mglAkRaguEUJDRIGd864+NzA1tONzPOU1u452gDRJUIlHMY
         DIhw==
X-Gm-Message-State: AOJu0YyE0jQfBdLtFynibJMiYM6mwauraZhsbuTCN01cH8P3bwIIxspe
	K+zeyeqxFR2iaWMdMslaNg==
X-Google-Smtp-Source: AGHT+IHqEv5vbPGO+pV9UFgXiDlKEXLBsErveLz78eAXFP80cY6iVVWrZNSELJQnKOeXamu627nuTw==
X-Received: by 2002:a17:906:114:b0:9a5:d657:47e5 with SMTP id 20-20020a170906011400b009a5d65747e5mr1356203eje.49.1693329444007;
        Tue, 29 Aug 2023 10:17:24 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:23 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 00/31] Fix and improve Rockchip RK3128 support
Date: Tue, 29 Aug 2023 19:16:16 +0200
Message-ID: <20230829171647.187787-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101727_514773_63EE1AAE 
X-CRM114-Status: GOOD (  25.10  )
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

Hi list,

this series fixes some issues I found when testing my "new" RK3128 board
with the mainline kernel and adds some core functionality like SMP bringup,
usb and networking.

The propably most distinctive change is the split up of the DTs for the
different SoCs of this platform: RK3126 and RK3128. Even if I'm not adding
a RK3126 board in this series: I think this change should be done as early
as possible in order to avoid issues in future.
Actually it should have been done like that in the first place.

All patches have been tested on both SoCs:

Patch 01-04 are dt-bindings additions for this SoC platform and the new
board I'm addding here

Patch 05-07 are some clock driver fixes (there is more to do, but I'm
limiting it to the things which can work now)

Patch 08 and 09 adding support for the usb 2 phy found in RK312x platform
to the Rockchip Innosilicon usb phy driver.

Patch 10-14 are DT patches which I did in the "old" rk3128.dtsi in order
to be backportable.

Patch 15 does the aforementioned split-up of the current rk3128.dtsi in
rk312x.dtsi, rk3126.dtsi and rk3128.dtsi

Patch 16-20 adds SMP bringup and cpu frequency scaling

Patch 21-23 adds power controller, GPU and I2S nodes to the RK312x DT

Patch 24-26 adds the second I2S, S/PDIF and gmac nodes to the  RK3128 DT

Patch 27-30 adds fixes for the usb controllers and adds a missing
pincontrol for the sd card detection

Patch 31 finnaly adds a DT for Genatech XPI-3128 board

There are quite some HW blocks which can easily be added for this
platform, but I guess this series is pretty huge already, so that it is
limited to some core devices for now.
I hope the single patches are small enough, that reviewing won't be a
burden ;)

The plan is to sync the DT changes to u-boot after they are merged where
I'm planning to add "full" TPL/SPL for this platform (dram controller/phy
driver is currently missing)

I'm planing the add a RK3126 (tablet) board here as well, but I will have
to add support for RK816 pmic first.

Alex Bee (29):
  dt-bindings: mfd: syscon: Add rockchip,rk3128-qos compatible
  dt-bindings: gpu: mali-utgard: Add Rockchip RK3128 compatible
  dt-bindings: ASoC: rockchip: Add compatible for RK3128 spdif
  dt-bindings: arm: rockchip: Add Geniatech XPI-3128
  clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name
  phy: rockchip-inno-usb2: Split ID interrupt phy registers
  phy: phy-rockchip-inno-usb2: Add RK3128 support
  ARM: dts: rockchip: Fix i2c0 register address for RK3128
  ARM: dts: rockchip: Add missing arm timer interrupt for RK3128
  ARM: dts: rockchip: Add missing quirk for RK3128's dma engine
  ARM: dts: rockchip: Fix timer clocks for RK3128
  ARM: dts: rockchip: Disable non-required timers for RK3128
  ARM: dts: rockchip: Split RK3128 devictree for RK312x SoC family
  ARM: dts: rockchip: Add SRAM node for RK312x
  ARM: dts: rockchip: Add CPU resets for RK312x
  ARM: dts: rockchip: Enable SMP bringup for RK312x
  ARM: dts: rockchip: Switch to operating-points-v2 for RK312x's CPU
  ARM: dts: rockchip: Add extra CPU voltages for RK3126
  ARM: dts: rockchip: add power controller for RK312x
  ARM: dts: rockchip: Add GPU node for RK312x
  ARM: dts: rockchip: Add 2-channel I2S for RK312x
  ARM: dts: rockchip: Add 8-channel I2S for RK3128
  ARM: dts: rockchip: Add spdif for RK3128
  ARM: dts: rockchip: Add gmac for RK3128
  ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK312x
  ARM: dts: rockchip: Add USB host clocks for RK312x
  ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK312x
  ARM: dts: rockchip: Add sdmmc_det pinctrl for RK312x
  ARM: dts: Add Geniatech XPI-3128 RK3128 board

Finley Xiao (2):
  clk: rockchip: rk3128: Fix aclk_peri_src parent
  clk: rockchip: rk3128: Fix hclk_otg gate

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/gpu/arm,mali-utgard.yaml         |    1 +
 .../devicetree/bindings/mfd/syscon.yaml       |    1 +
 .../bindings/sound/rockchip-spdif.yaml        |    1 +
 arch/arm/boot/dts/rockchip/Makefile           |    1 +
 arch/arm/boot/dts/rockchip/rk3126.dtsi        |   36 +
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |  431 +++++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi        |  920 +-------------
 arch/arm/boot/dts/rockchip/rk312x.dtsi        | 1101 +++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c             |   24 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |  147 ++-
 11 files changed, 1754 insertions(+), 914 deletions(-)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3126.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rk312x.dtsi


base-commit: 2dde18cd1d8fac735875f2e4987f11817cc0bc2c
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
