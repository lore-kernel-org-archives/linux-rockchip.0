Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749D3CCA489
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CNPlc7bdx0ZlRQ6hG8iJH3AFwDFQ0qlqaLtxmsXE72Y=; b=jEiZpom4pSVETx
	GBfbgnFMNvar95baka/znHtoHoW9EAOyj+KK+3quXu4GCvuYMxKQAJ8jYB+lC6EuJOkB5BBn89qtx
	Zqp3iUa2Yz+rVMTYMZqFeI1qD/W1Z5KYl0aJ9n27YicedE6kwGCFCSgbxpn9YY97wT87qISQeBxmS
	wrrYmJ9zOZtaN37+gaHnWArzHPLGsReA7YpHRkfcSuP3H4tD5dC5P2WPDeM2IMSo/Y5ANuwzC1uGv
	8eot/SKAzE2NhfWZehf78eXDQyZq4w2UqxOyZSlBrOIAug0t064RjlS3Ku4yipQWaLApmYMriABUT
	+prfyc/ZmO21VEIFr4tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyo-0078Dl-6n; Sat, 23 Jul 2022 20:44:06 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyb-00787K-Fd
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:43:55 +0000
Received: by mail-pl1-x62c.google.com with SMTP id y15so7211877plp.10
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayxcrf4aJACwZDBwNXjIEXRAZRtLeukNc8gccXG3cuc=;
        b=TxskMipOpJAQRMQevlVB3zLR1yot76nUQV9mYuNkJMSMPrrXNQyYfdZ46JV8CYTmEQ
         ayt1W87Y0n8IMnm2vzLTs79IeJCWuIicYz2cKEGyNfP9TURI2cVSQ883ktgtCCixOlFM
         fSg3W7U4WeKeBfpnSx9Ep37iaqbLFQ2b8rqjH2pbMIzKJGB6f6qjHoPeLrV9UozSRaJY
         FQIKphAHJyuzD3UpX8JoiNOQdpz8Lqyj0rckoUdQXA7+XqTeG9e59yYqyZHUt8MYC0FU
         Er0ApR1b9M7ydsHZwPcsXARBjkbrthG6Rkv1fqYsM/BWiVIY30uI2uTaNiiWjAciQTZc
         YWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayxcrf4aJACwZDBwNXjIEXRAZRtLeukNc8gccXG3cuc=;
        b=j+NZencjtELrtDBwMLfNrSOWaAF93uMichGswXvp43v6KUVRPOuoFHinUHG9vknUxF
         7As5XVz+LG3L5T6jPNV46eSD+6w3i5/ISHTBG4ZuBwl3dIlIfzBtHVJjR6rNfGAmnZIk
         Mtnt2Os2BDlMiehwszN6ru4MrRc3mIHIjibS7Chn9BNrywCZz+0zMuCtC5m2H3uaekgl
         u1No1lXckkpYqg5qeGUTr1Z2FQGY5ro49AewkDtikCMXN+UIkOgzmMLaPPfPuoD9cMmy
         nrv72ayBiWErbpKntErfLUXmbuyJszdxM62ZY8h8p+n0NH4SrXGOhcBIeT2oLHAriQ/+
         uofQ==
X-Gm-Message-State: AJIora/YiR+6kZQ69RE4b6aq9XSQSCevNjjvFr9iYCblmOTFhhtQNbPO
	vMj/rXix9zDeaU9TA4kWrYUWEq5Lef1clascr/4GoG82
X-Google-Smtp-Source: AGRyM1uWp+wiwnB3VavYEe2t2e7ZcOokXRruIdLToV7aJ6tEL01IbFid8VMdczr0mqJlqCJ870ebpw==
X-Received: by 2002:a17:903:2281:b0:16d:614a:63a0 with SMTP id b1-20020a170903228100b0016d614a63a0mr2152841plh.140.1658609030876;
        Sat, 23 Jul 2022 13:43:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:43:50 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/22] ARM: Add Rockchip RV1126 support
Date: Sun, 24 Jul 2022 02:13:13 +0530
Message-Id: <20220723204335.750095-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134353_768143_C576BE3D 
X-CRM114-Status: GOOD (  12.75  )
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

RV1126 is a high-performance vision processor SoC for IPC/CVR,
especially for AI related application.

It is based on quad-core ARM Cortex-A7 32-bit core which integrates
NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
hybrid operation and computing power is up to 2.0TOPs.

This patch series add basic core support for Rockchip RV1126.

Tested in Edgeble AI Edge Compute Module 0.

Anyone interested, please have a look on this repo [1]

[1] https://github.com/edgeble/linux-next/commits/ecm0-v4

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (20):
  dt-bindings: power: rockchip: Document RV1126 power-controller
  dt-bindings: power: Add power-domain header for RV1126
  soc: rockchip: power-domain: Add RV1126 power domains
  dt-bindings: power: rockchip: Document RV1126 PMU IO domains
  dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
  pinctrl: rockchip: Add RV1126 pinctrl support
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add RV1126 clock controller
  dt-bindings: mmc: rockchip-dw-mshc: Document Rockchip RV1126
  dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RV1126
  dt-bindings: i2c: i2c-rk3x: Document Rockchip RV1126
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: configs: Add RV1126 ECM0 fragment config

Jianqun Xu (1):
  soc: rockchip: io-domain: Add RV1126 IO domains

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../bindings/clock/rockchip,rv1126-cru.yaml   |   70 ++
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../devicetree/bindings/mfd/syscon.yaml       |    1 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    1 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../power/rockchip,power-controller.yaml      |    2 +
 .../bindings/power/rockchip-io-domain.yaml    |   30 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/Makefile                    |    1 +
 arch/arm/boot/dts/rockchip-pinconf.dtsi       |  115 ++
 .../rv1126-edge-compute-module-0-carrier.dts  |   38 +
 .../dts/rv1126-edge-compute-module-0.dtsi     |  329 +++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  302 +++++
 arch/arm/boot/dts/rv1126.dtsi                 |  500 ++++++++
 arch/arm/configs/rv1126-ecm0.config           |    3 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1107 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   27 +-
 drivers/clk/rockchip/clk.h                    |   36 +
 drivers/pinctrl/pinctrl-rockchip.c            |  333 ++++-
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 drivers/soc/rockchip/io-domain.c              |   20 +
 drivers/soc/rockchip/pm_domains.c             |   29 +
 include/dt-bindings/clock/rv1126-cru.h        |  632 ++++++++++
 include/dt-bindings/power/rv1126-power.h      |   34 +
 30 files changed, 3620 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip-pinconf.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 arch/arm/configs/rv1126-ecm0.config
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rv1126-cru.h
 create mode 100644 include/dt-bindings/power/rv1126-power.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
