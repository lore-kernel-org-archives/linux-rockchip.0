Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC28AC4450D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+TUm69/fY4/HUy0fDrgmCeV7ziQdwTam1bNMllDGXJ8=; b=SvhyUg+xAxzAzi
	U2MEijWzxDDkrOfi3pc3MXzEnPF7OcVb0+UCRBJufxUWlPJc2rPfiV6SuqqniDpy0q2FCBNlzih82
	s7h8Xc2YcnBK4H5cU5zvy7RZl1mvZL5IYuQBMv7mOIQCWq0Y88RBYUWsh8fusYyomY6s6gMMbEEjW
	pWFGHvHgaE1WdwjQmC02MPbdyNjvQBC131c/K4UwjxwhDjCl9k5N7JLyfb9ViUIlxi/Hq9l6nlzLw
	TjHBF+KGVJz/fI1389GqRefJtG2hIaWy3Ew0bxdHpt2AxlB1HDSw+C8LVSeh7tHYG1fbHcklbk+9K
	/2gjN8gNLEF988r9nwrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwY-0000000D8Dl-2LA0;
	Tue, 14 Jul 2026 19:37:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwS-0000000D86y-0Duq
	for linux-rockchip@bombadil.infradead.org;
	Tue, 14 Jul 2026 19:37:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=yoY75yqFw5mb7tU/+ruk6fsKo/hettBezB5T0NFLox0=; b=l347JcH51XOM34i8zs/yUwox8Z
	32K8tvqqeC+E5Ef4QYbjycTidXoIG5ttu91asHEiGS3ex166i8UPK1VgRGny/rkFHjq7LtAZDuQi4
	21UEvrRH4aShp0FWHKc6tpGvqlnqGca8dXvPxZoiVxqnI1D4FtMYhKzLnCMgbgvufrwt/e1QfPC/M
	HymvBIA2SWT4S4Ue5Ms2kl0xWjEcPJii9HdlMTgRsVyVxPHR7hXhU5o085u0vBUqjy6kb/yroUoU6
	xWoKNWr7OBzkwyghPRshsIwOD5Z5nE9vWgD38X8U6ohAsH/l9+3k+IfpajYpKMbi4WtM7BYfq9U/Q
	IW05c1cw==;
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjiwE-0000000CokG-1oek
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:37:10 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7e9f69ee6f4so1012466a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057823; x=1784662623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yoY75yqFw5mb7tU/+ruk6fsKo/hettBezB5T0NFLox0=;
        b=LB05mXtBzj1JT0J15f+tdyIU1iydAZeG506mF9YdZV9MUJvxlcZ8yzvrNE99IPIPw9
         A5vW2CAZRM/oedFNasUvzp3x2DugwhXA/Zh2OQDk7iZeoVB7l1rlR7EAJ9ES8jH4SHkZ
         iV74xWVkfJVkPJMshp0DEwI8eYO2tcmvwzE7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057823; x=1784662623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yoY75yqFw5mb7tU/+ruk6fsKo/hettBezB5T0NFLox0=;
        b=HPvL6q6WwX2YY0HnBrPI4BHNETDdEJE6P1x9/DsN+qakstAOMnKKqnmH0gxFqE8ihR
         BXrgZw6L7ZrVrkMPSOpL3fqms1+6dYOrFKx+rl5mXhFJWR79fYrG6fMcwkDaEYDvtkMJ
         VEV0TbkirkYCE+PfR6juZ5BsgwOYo8XG4sTH3nO2gl5RUGVhnvnjzG20ToHZ/Xsi/kIB
         siLmgf8qXl3GNIJDWTE9crfTg9MB9v7K0P7z97Oo8ofoZdUppaxvol1OrNG7yV3NH31f
         TIbo62ym6H3XwbVbhwOVf0p7tdS3JdrAOByK2PEf5tvKiMFItc6e/SPr78YgDeo5xemY
         N/oA==
X-Forwarded-Encrypted: i=1; AFNElJ86fB5FfFIGK6ZSWlY3N4dMsaUSYuOxTkPG1Xu33l2ftRAn2KhL1ydKyEbj17Y2Pg9N/hJLShV4XLplb7ipLA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzkdJEkMhPPOA74jCqlxGUNYMCAQ3LsKFWUnJWVXIkm+YtX9Mwx
	/dU1svg4VEMDG080IqTmXtS5pt9F8ZHbQ5Xb3xfUwbm5li2AAR5Rnh+pHiU/4Q/NiQ==
X-Gm-Gg: AfdE7cm9vMERdIb576irAIp01XY/LnWRWsOqzOxlTE+WaV5frqhRuw2Vi+lDadsykPk
	O1vjkOlDbTPDXTudEXQL4aLEJvtu85St4mwvlp9AjWPeMQnd9WI4jH221R2R46foR2RZCn95P8q
	FidS9c+Rs7El3gLrXSc7zYmBN6oZwuysvNU1tekuaq+2ne9xa9Q/dn7AklTCPd+o3pghqg10M7P
	VwWLzo16dgBoFLZfu7MLxjiGrJCspfB1S4jHFEVnHMdjXd5Hos+o6q6+ffVs/Qh2vzliK6B/bBP
	5oGqBp4oLgehnegRI1tRJlMG6gSZQiLkcIrsyDAQSQiQ+aHOQwmhZWFOg4v/9rHO7L5Sud2bGmC
	QE1n0frd9gv1Vz/3Rnc+FcPpHgrmLJj3Lydujvkzsw/nBf1q0M89xdfUWMVREraYs7ae970ky4v
	bNHRqSdaO0vukOyoBUOg==
X-Received: by 2002:a05:6830:2306:b0:7e9:ead3:4449 with SMTP id 46e09a7af769-7ec0967b3e2mr9214494a34.6.1784057823394;
        Tue, 14 Jul 2026 12:37:03 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcaf742e1sm16004026a34.8.2026.07.14.12.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:37:02 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] Add support for the Rockchip RV1106 and RV1103
Date: Tue, 14 Jul 2026 13:36:37 -0600
Message-ID: <20260714193656.2196447-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_203707_406598_5AE61441 
X-CRM114-Status: GOOD (  18.35  )
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
work of Elaine Zhang. As with the RV1103B, no resets are exposed yet
and the CPU pvtpll is initialised but not calibrated.

Following feedback on v1, several parts have been split out into
separate series: the pinctrl driver and binding, and the serial,
watchdog and iio bindings, are submitted separately to their
maintainers. The mmc binding is already applied for mmc-next. This
series carries the clock support, the GRF compatibles and the
devicetrees, which depend on the clock binding header.

The devicetrees cover the devices needed for a basic system: UARTs,
SD/eMMC, the SPI flash controller, SARADC, watchdog, GPIO and pinctrl.

This v2 is re-tested on the Luckfox Pico Mini B: the kernel boots to
the rootfs wait with a working console on UART2, timers, pinctrl and
GPIO, and an SD card running at high speed. It builds with W=1 without
warnings and dt_binding_check and dtbs_check are clean.

Changes in v2:
- Renumber the clock IDs to be continuous, starting from 0
- Provide the MMC phase clocks from the CRU rather than a grf-cru
- Mention the MMC phase clocks in the rockchip,grf description
- Provide the MMC phase clocks from the CRU via an auxiliary GRF regmap
  rather than from a separate grf-cru clock provider
- Drop the grf-cru clock-controller child and use the syscon-only
  group for the main GRF, since the CRU now provides the MMC phase
  clocks
- Use a single gpio-ioc compatible for the per-bank IOC blocks in
  place of the ioc and pmuioc regions
- Take the MMC drive and sample phase clocks from the CRU and drop the
  grf-cru node
- Give each GPIO bank a syscon for its own IOC block, referenced by a
  rockchip,grf phandle in the bank node
- Add gpio aliases, which the pin controller and gpio drivers use to
  identify the bank; the rv1103 removes the gpio2 alias
- Split the series by subsystem: pinctrl, serial, watchdog and iio are
  now submitted separately
- Drop patch 'dt-bindings: mmc: rockchip-dw-mshc: Add RV1106
  compatible', which is applied for mmc-next

Simon Glass (6):
  dt-bindings: clock: rockchip: Add RV1106 CRU support
  clk: rockchip: Add clock controller for the RV1106
  dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
  ARM: dts: rockchip: Add support for RV1106 and RV1103
  dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
  ARM: dts: rockchip: Add Luckfox Pico Mini B

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/clock/rockchip,rv1106-cru.yaml   |   60 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 arch/arm/boot/dts/rockchip/Makefile           |    1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   |   93 ++
 arch/arm/boot/dts/rockchip/rv1103.dtsi        |   16 +
 .../arm/boot/dts/rockchip/rv1106-pinctrl.dtsi | 1398 +++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1106.dtsi        |  321 ++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1106.c             | 1100 +++++++++++++
 .../dt-bindings/clock/rockchip,rv1106-cru.h   |  300 ++++
 12 files changed, 3304 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1106.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h

---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106a2

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
