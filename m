Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B22FEC43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=++OXXoH9RbNM86R/Oi6aion0/7msFgil0vHBv/Lt3xk=; b=YtWU9KIE6E2aIn
	dtzrpoEyTmxqMwgJN+7ZO4c5EIShaSaVRKlmtsimpR/9UcnFP3x8q+z0iW2v2cUpZ2HSMch6qkN0n
	z+PxN1QakmBTFD7G4AJ12oQsr9U52AnMvzAHgyukQRhjeXo3RlCkwUn10TkXr6jOiRQ11qFkMPyFx
	5QVeI2Au2q/eMVya81L6N0UfRhzPlJX8t1hmDz5uQeuKkdkRB69rkcl2Hk3gckrf5p5aP3AnzfEUg
	e9NHpf+oGz5CQX2WywXV5HTFhkfZ7I9g7dOLt0xRPjaK4m6jtn3KkqZWib86g06BvMy7QOkbOey4h
	ClsIuttRcbYBU9pRsJEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpT1-0000000DV2n-1TtZ;
	Mon, 06 Jul 2026 19:58:59 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpSx-0000000DV1r-1dr9
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:58:58 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7eb5bdb50fcso1663672a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367934; x=1783972734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YlT3WnM+OJST3BZ/4dqDMJmxXkYErU65jgqgDcmWdqE=;
        b=TEZT/PVJvYaWkD1ohagGYoT2d0JXdj8V1qhy3BMmmDRw2cmvD4QaAbQiHl+nmreyv5
         oXVeoCb2wawInKemX61VB+aKPIZdL/aKhAObohU15yjja3iBGMnS3VUqoH6EWgMs57Kh
         IR7KLFifALsmsafM4NdPWPWUeVD4L5kCZxmz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367934; x=1783972734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YlT3WnM+OJST3BZ/4dqDMJmxXkYErU65jgqgDcmWdqE=;
        b=fmZMtBU2kv2FTb8Mo1JiWUdhrqZmTFkJVKveTHT/6rsq+XUR30LV+uz2C9MTQZxUGT
         BcazmWbrx7doQjlsppxa5rmrm5Jas5LOfZpIwEzlybG+tuUzVYCc+faFlqtRf19QTNWp
         4I+JiyuojjttLxb5m/yiBJy3RIzESP5T46/Dwhm0ciFexsAm+DNh513sF22lw2I2SMii
         yJ6Of/1SOsj4JcqnP5bIo/Ags0lDlj4iRJozfjISx4WS4ZQPVUnjusAOryBSTOVgCIF9
         xLEnzWkI37MHlpaQQLjBkFMpmKBuyfI3nUvsM26BozFrPa7z6lIUcTjxUaPGwKFm3TN4
         MZpw==
X-Gm-Message-State: AOJu0YxSIsjvVGAM6ic1NIt5zRYIbGlEonIe4zHkub8Bg0Jcaf3wsfai
	7cdAHM8iM/39IITKKV+ArpSh1lYlKba6tl6AnCfYNUUrhNYq+KMxYc8OLY95shu55g==
X-Gm-Gg: AfdE7clQdIXrhY/+9YU6FJsx7+fwTnSY/SRDCM7ChPxmSrz1yMOrZe0fcn5IJQuNb6h
	E0bFU2mzITjEHefnwN2L15Si1dketD94Z1UZWONe7YT0HXlakv/5aXVwCxJOuPIo1SN858YB8dl
	ttdY3tuYVoIlkQxa1Dac3lb4PFkmcFDfD7MVcMc+wDDTUoBhV5hbgZ3AyAGq6s9s5vqa4k3wus6
	E2pQsgQ/RxC9OhvQqlyPxSQWGtsQd+O5fPCtjGlGB93xjdqsPTRxwNSRrPY0a8ietObfyDTsSEW
	oW/lfIR3vB8leBEC82Z32AeaPzewQaWu9FdQCYdKVvghdT1R7K2uaosCtn1ixQHW9KJcx4NRtYG
	PtrXwZqgIxDRaP075junrd5nzgq7CiyLW9HQ+ToyK91mOarlzGyB76jBIqiF87x4A7nn1QTvE95
	kLiKFZUNI=
X-Received: by 2002:a05:6830:4882:b0:7e9:3765:79c2 with SMTP id 46e09a7af769-7ebb22251dfmr1322732a34.12.1783367933546;
        Mon, 06 Jul 2026 12:58:53 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:58:52 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Andy Shevchenko <andy@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Jamie Iles <jamie@jamieiles.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Michael Turquette <mturquette@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulfh@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 00/12] Add support for the Rockchip RV1106 and RV1103
Date: Mon,  6 Jul 2026 13:57:56 -0600
Message-ID: <20260706195818.3906949-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125855_432181_E0916982 
X-CRM114-Status: GOOD (  15.87  )
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

This series adds initial support for the Rockchip RV1106, a Cortex-A7
SoC aimed at IP cameras, and its RV1103 package variant, together with
the Luckfox Pico Mini B, a small and widely available RV1103 board.

The series follows the structure of the recently merged RV1103B
support. The clock driver is ported from the vendor kernel and is the
work of Elaine Zhang; the pinctrl data also comes from the vendor
kernel. The clock binding header keeps the vendor clock IDs. As with
the RV1103B, no resets are exposed yet and the CPU pvtpll is
initialised but not calibrated.

The devicetrees cover the devices needed for a basic system: UARTs,
SD/eMMC, the SPI flash controller, SARADC, watchdog, GPIO and pinctrl.

The series is tested on the Luckfox Pico Mini B: the kernel boots to
the rootfs wait with a working console on UART2, timers, pinctrl and
GPIO, and an SD card running at high speed. It builds with W=1 without
warnings and dt_binding_check and dtbs_check are clean.


Simon Glass (12):
  dt-bindings: clock: rockchip: Add RV1106 CRU support
  clk: rockchip: Add clock controller for the RV1106
  dt-bindings: pinctrl: rockchip: Add RV1106 compatible
  pinctrl: rockchip: Add RV1106 pinctrl support
  dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
  dt-bindings: serial: snps-dw-apb-uart: Add RV1106 compatible
  dt-bindings: mmc: rockchip-dw-mshc: Add RV1106 compatible
  dt-bindings: watchdog: snps,dw-wdt: Add RV1106 compatible
  dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible
  ARM: dts: rockchip: Add support for RV1106 and RV1103
  dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
  ARM: dts: rockchip: Add Luckfox Pico Mini B

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/clock/rockchip,rv1106-cru.yaml   |   59 +
 .../bindings/iio/adc/rockchip-saradc.yaml     |    3 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    1 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   30 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm/boot/dts/rockchip/Makefile           |    1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   |   93 ++
 arch/arm/boot/dts/rockchip/rv1103.dtsi        |   12 +
 .../arm/boot/dts/rockchip/rv1106-pinctrl.dtsi | 1398 +++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1106.dtsi        |  299 ++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1106.c             | 1107 +++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c            |  208 +++
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 .../dt-bindings/clock/rockchip,rv1106-cru.h   |  301 ++++
 19 files changed, 3529 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1106.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h

---
base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
branch: rv1106a

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
