Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E00C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RECqUKjqtTOaN4PxhXw8dVaefmHD20dpZZ5hdjJzdis=; b=1sen1zqLdLAOLN
	QNPMwAQt4kU4YcA45lHC+4lybieIxS6DKdzOPnVjWUhbQaxx6cwJ4xw5Flp/uCx0qZsfa7P+2dMtV
	jDFMA2tu7oIcXAHYxPXi+fPrnmdiEUtARRrpF7cWFU5XD/mkXuoT1SEhXe2tZyMadhWWlISf01Dg+
	Vi7r9Y+Si6gE3Cr/Jou5l7mMuJQb2QWzUjjeVxWxPd/Dodz5v7tt4qH/hZk6TQHkoqIlCZn7lQxgl
	jt+ozbJ+hN5Wodc/Cn40ory6ZMyVxpVRdbCd3+uw8Y64OxVnGc1Z5d1LCX7Zfue10b+FpLBl2lc1I
	HFhPAIg62DtIvlmJtgVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4SP-000000087i4-2eFM;
	Wed, 29 Jul 2026 13:36:25 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4SL-000000087g0-2xbw
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:36:24 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-6ab04bbcc8fso641407eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785332181; x=1785936981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VUY5prEZuzu079/ijehiQd7Jr/No0FbniJJt1eZlTEs=;
        b=KiyVzRf/dV3CgWUH1+3FAk9gAPY0ctvv6IPixxuW/6DrFpWPSa8LF+k/j4eLGHfpsW
         7eRuiP45FIpESFcyFuFghF0IUuJrZ4916K2ATBT9VH9WfmPTHOotQ1MEpLBYLOIHuN5X
         9WxtW59ArbzE3yC3yxZmWcaR6WIacS1Z1VWqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785332181; x=1785936981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VUY5prEZuzu079/ijehiQd7Jr/No0FbniJJt1eZlTEs=;
        b=HpYd+ZL6V8FJs2ZX4z+FhvaXRhGCP9Dicx1AZ2MqP3LwiCgpBKby93mwx8nkaZyJ3M
         WKfrPO+9ng4Vu+G1G+JTS5qDFupsOAQFkAaOhIfFTBAI/79t3gc/fCb8ems+FqiYczMW
         4hapyCG2VWuu6Ssii87XjzOlC2pasn4MQwner0r4Ib3hzT88tNSX4w2tfDn5h00LNiNE
         TLY0uobsl1HIDi5mE+cIE85M4tBfnk2rr7uknqP5QX4uhwHHbEa0x13WSwlpxZ8PvN3R
         SiaHUbOweJDQbDhP68OhJtkHcxwmlEPcjOl5dN8tiSt6oF5lBrJbhgd4EuUfnWUPol6s
         7Xsw==
X-Forwarded-Encrypted: i=1; AHgh+RpeJnckBtB7WrKbRKHrS+Zczdo1CiX4wxzdMVFM9+xhVIrIBo+Is46NO3eJKRiVVkDVQ5KAgSef2zZ1fpKjxg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxDFKQuAREFBFLqdsOVqUEAoYG2CSsHqR3r96Ae5x3rZxevQK9V
	LZQz7PgZb0Dzjdy3hxIBzY0/tWyQR2ZWjq6CGuMuTM2aARdSlcZoD6lje07T6XcAjw==
X-Gm-Gg: AR+sD11JrySlVBMYimb9b6E9qvXYzIKnzNFtmD/slSYPtZ03xDHQge5Nwz1cS6Pd6kG
	PfQE/P6CKyIbLjbD99FTpBBOkJuNw+qEn3q1PjjqrjfhxpS20l6oE4t2055Aau3Is20Ci7Uh+/t
	m1tYlnew+x3iK1ulIFuRdfCXhYgfb15seW4TNOddsTgM1/ugHUPb+FA/uqYXdmxThFWd0Uc2gdv
	o8o4kURY17AibfGZvGXxq0X3Gt6bbxnpCe0riqbeRopTXKnibOcoG6ksfnxwLtA80Rv0D3vRtVk
	emnB3dxIREvw55Q8r/4FDXoulHjB4e5Cl99ZG0jDwCveZ7Z/iCBINGsiLJ6E1k2Gp4BBoN/far4
	e+aykgeq4/081xk4CILSL3hNbU3Y5+pCVVzA9I4AIKHtGNy7u12V8CFHJt1bQLgsZc6TtBMo4QB
	g0SIiKGqQAzu5iA6hkS2hKUsO2sYy3odYEUfqcOFsOk29Ff2atLGCYPE0=
X-Received: by 2002:a05:6820:189b:b0:6a1:7644:772f with SMTP id 006d021491bc7-6ac96d4e889mr3116221eaf.63.1785332180763;
        Wed, 29 Jul 2026 06:36:20 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aca527fe83sm1956196eaf.6.2026.07.29.06.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:36:19 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
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
Subject: [PATCH v3 0/6] Add support for the Rockchip RV1106 and RV1103
Date: Wed, 29 Jul 2026 07:35:47 -0600
Message-ID: <20260729133609.3465563-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_063621_782695_C9DF5032 
X-CRM114-Status: GOOD (  19.32  )
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

This v3 is re-tested on the Luckfox Pico Mini B: the kernel boots to
the rootfs wait with a working console on UART2, timers, pinctrl and
GPIO, and an SD card running at high speed. It builds with W=1 without
warnings and dt_binding_check and dtbs_check are clean.

Changes in v3:
- Add IDs for the internal clocks, so that anonymous branches cannot
  overwrite the APLL entry in the clock array
- Register the CRU as a platform driver, like the RK3528
- Give the internal clocks real IDs so that they cannot overwrite the
  APLL entry in the clock array
- Drop the pre-mux write of the alternate divider, which overwrites the
  safe divider calculated by the CPU clock framework, and the post-mux
  write, which duplicates the framework's own clean-up
- Add CLK_SET_RATE_PARENT to clk_vicap_m1_frac, matching m0
- Use a separate compatible for each GPIO IOC block, since their
  register layouts differ
- Use the per-bank IOC compatibles
- Place the entry with the other Luckfox boards, in alphabetical order

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
 .../devicetree/bindings/soc/rockchip/grf.yaml |    6 +
 arch/arm/boot/dts/rockchip/Makefile           |    1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   |   93 ++
 arch/arm/boot/dts/rockchip/rv1103.dtsi        |   16 +
 .../arm/boot/dts/rockchip/rv1106-pinctrl.dtsi | 1398 +++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1106.dtsi        |  321 ++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1106.c             | 1099 +++++++++++++
 .../dt-bindings/clock/rockchip,rv1106-cru.h   |  306 ++++
 12 files changed, 3313 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1106.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h

---
base-commit: fc02acf6ac0ccde0c805c2daa9148683cdd01ba8
branch: rv1106a3

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
