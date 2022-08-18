Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE66C28B2B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ENvbIpziFQN9tBgqvd/Qp0n+pPkuGYUiQWyaNk4DCLk=; b=Rdq6PA/ZtIqgSE
	b01Q6gbeNa2J64bVisXoDXQR4YYftQTKPAvfGnM/pUqoqruGg137/TyXNjw2XstH9biAXOAzfMmwk
	5m+DnHY/IZ1xXG7Of1mva/2DxqTQPt/qDPMwJi1U1s7uBUmBf7fnknMfzod95LI2ndW7KcM3l6DWY
	TzcW0pJI2Td3bF+lMwY2+rMQgWSuAWBGYzo6+RxRNP8X2sGj9cR6BUPCwbSfdUX/HPXQEyogVL/ry
	tYhdHwNVh1NGVrJjrUXR98HgT4Huz0Qu/BPQYovWRBtzPEzKGZm54x8B3sFCrELhXQZaatvXtsZP3
	ObLdT6o4uz6kQthTjCQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfAQ-0050Oe-MY; Thu, 18 Aug 2022 13:02:34 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqI-004jeo-U1
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:41:50 +0000
Received: by mail-pg1-x535.google.com with SMTP id v4so1193368pgi.10
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=TUnKJIFQ1zZdAILaN3dEonwQtoPz0tBuedLrOJLMjrg=;
        b=DM0MbALTY5xAWuobL5DJkF+L+dd6Lx2UVDdjW5x7e+eHKp/9AKeydwlvzbFj+l2rrd
         XF+TNS17zGAKNl9ydWq5e4PwcjrVwcM0gnN9TkUmQdAN9yuYeR+GcKzqs7Y99eR5/wNX
         YVD1iQKxXn6E/aq0zXUgctHLF7mBaqKqav/DnHKcEYljnk7XhyKNrrMDnr3jwhHsEkz8
         Vznc173Cnfpp9oFcQJ9aULdrU1ZNx4kPP0RCZM5/mP6iqbZchBRDbwOY7Q+QfLpMYnX2
         sKgbia/I8DuPDFMFQEdoNw/3ET9axaSjdE7rx7Qx3wlZ90CuGoHQ4Epi/dj7w3modASq
         6w+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=TUnKJIFQ1zZdAILaN3dEonwQtoPz0tBuedLrOJLMjrg=;
        b=J5blTaJAdeVM9Y3Zed+oHwmiFKyYYWJ9DTuN50X6vOUMsp9/ZddHv0V7bTRLsIs70/
         PCDX35eu+TgFqlD93Arr3c2hELlfYdXwnrM112u6APv0kDMCmkvylwgnP7oU81p52950
         5OWVYf3LhKXgnUu5iuT4zywaPzyX/7N5tdFTplgSy7Z+pPxIdXwxqnqw24tAaRJGDd5g
         VFFcq4bDV+gz9t/qtOE/EdT0x7dbMY2ANS+VdMWXl8p0Ym7L6YbumL3XPyD0gtRvmoHT
         rWylyhtYcCKoVmH/7Z8fzyUvhHms8NjK1T9CH+fW4jQoY5SMC/v9sDAfGDER3aC4MGq6
         hULg==
X-Gm-Message-State: ACgBeo1apB8cUENwioI06Y44Yo93aAe7UPgmtzJaL5YYhSHd5nwW66cJ
	WaMLCohCHJBpy3gQUTxzebDWpQ==
X-Google-Smtp-Source: AA6agR5NkPX0+2g1ubxM6fQKnGgUdjIU2IZh1Y18KiBFcX7FjFcNKwYzlt8S0149MUflTuCygRWaHg==
X-Received: by 2002:a63:db0b:0:b0:429:f039:74c5 with SMTP id e11-20020a63db0b000000b00429f03974c5mr2295308pgg.551.1660826499316;
        Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:39 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 00/19] ARM: Add Rockchip RV1126 support
Date: Thu, 18 Aug 2022 18:11:13 +0530
Message-Id: <20220818124132.125304-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054147_112235_04290D3D 
X-CRM114-Status: GOOD (  12.91  )
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

This patch series add basic core support for Rockchip RV1126 and
v2 for the series can be found at [2].

Tested in Edgeble AI Edge Compute Module 0.

Anyone interested, please have a look on this repo [1]

[2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220731174726.72631-1-jagan@edgeble.ai/
[1] https://github.com/edgeble/linux-next/commits/ecm0-v4

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (17):
  dt-bindings: power: Add power-domain header for RV1126
  dt-bindings: power: rockchip: Document RV1126 power-controller
  soc: rockchip: power-domain: Add RV1126 power domains
  dt-bindings: power: rockchip: Document RV1126 PMU IO domains
  dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
  pinctrl: rockchip: Add RV1126 pinctrl support
  clk: rockchip: Add dt-binding header for RV1126
  dt-bindings: clock: rockchip: Document RV1126 CRU
  Add clock controller support for RV1126 SoC.
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier

Jianqun Xu (1):
  soc: rockchip: io-domain: Add RV1126 IO domains

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../bindings/clock/rockchip,rv1126-cru.yaml   |   62 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../power/rockchip,power-controller.yaml      |    2 +
 .../bindings/power/rockchip-io-domain.yaml    |   30 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/Makefile                    |    1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  |   38 +
 .../rv1126-edgeble-edge-compute-module-0.dtsi |  353 ++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  302 +++++
 arch/arm/boot/dts/rv1126.dtsi                 |  500 ++++++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1107 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   27 +-
 drivers/clk/rockchip/clk.h                    |   36 +
 drivers/pinctrl/pinctrl-rockchip.c            |  333 ++++-
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 drivers/soc/rockchip/io-domain.c              |   20 +
 drivers/soc/rockchip/pm_domains.c             |   29 +
 .../dt-bindings/clock/rockchip,rv1126-cru.h   |  632 ++++++++++
 .../dt-bindings/power/rockchip,rv1126-power.h |   35 +
 24 files changed, 3515 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
 create mode 100644 include/dt-bindings/power/rockchip,rv1126-power.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
