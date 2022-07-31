Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10161C19F2D
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5SkE3WpyRfXHx92INGQ3ihaHaAoX3e5JqFDpIBH45bw=; b=uUzo/RoVgVwbi/
	sjQEt75uPVCtZWv34s167pyE8oYF1Lr+A6Sg6rTRqqf7f6AkFHY2wgttjBgZMG6Gg4gyy0hHI4eqL
	J0VpJMqWhMTRCdC1/P1Uw18eTuUyGFErKrhbwNIWBnISYTi/d2DQMPFFShq8UcGQe5U7/OuHIMV4O
	opLUYIruNfblyeGWcAq9+3lG2sYbY8si9P3SBTKu9GZnOcCGDSvsA5qic+U+/98Ku0umCbAb2ofz0
	xzobP5xtoW55O5jgH8vwL8G2lm2Eku9Qe7fxAZYHhWb1fvtAH+9adzrq+rZrYaLcsiHGfgob6bfld
	zZvbjp5PnHCNHDAV29cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2i-00Ee78-VY; Sun, 31 Jul 2022 17:47:57 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2S-00Edy7-VO
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:47:42 +0000
Received: by mail-pg1-x530.google.com with SMTP id r186so7819699pgr.2
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=kOlJryni2mOgiS6QUvArt36eMtTHRpJ86WtsC9yowsI=;
        b=VvfuGV+hNgaXELjXo99xAFteQxjSqz1sx8UjFVhnYPk4D0pDp9YNta3StsM6f7DlXm
         GkDhs35V7wziOrhE0aua3KysaUV/fprHDKMDHO9+SthPBPTZ0bEdVgOqAPSZjMPdb0o1
         S7RRbN0UtHOmIwJ34TM9NXhLJxdS2bbYoJFB/a+JvBM9uiwSfXnloPOxfAH6Ndz6Wxjr
         M/1orx8g/lczROU4zHiggNlenJMQgfQeho5eXmfUS4WbjcltVL094fLtIdiGGqrFpJKa
         K8VdKYwFJFOY5osW9WzYgTPGWphv9YePN4Wa1Rqa1x7EqEdGCcsItnBA1mGqZ09C3MoE
         sXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=kOlJryni2mOgiS6QUvArt36eMtTHRpJ86WtsC9yowsI=;
        b=EN1FvsWxmOiUfkLbol8tGJpQqEFZMFgdpiAniuNB/WxvBC4cNpodEiScUuzsRCCzBI
         3FQJVlYm+FKXWyG6En/mXHl+0Vgvw3NVTBwc9TCxSa1Qi/+R4zSw5h9f6pwbeKylh3cc
         7tmi/t2wAXFMiPSwmRU4lNJcBcOZDfTL6XlqlVRf8rCVRVtY9TMEI5/qiTbBTRezB08b
         tGDyIrbAxQ15tfJ5bDwDB+NGIG4pc0wbh+uHj6OJfRtHnHl4+32Vy31nrurpFjDnQMT2
         DzDfdJBlP+fV40fzkLVH+ABhQzuUe/bRle1MrkwprdiZGaime5RSJXeyk2ObNqHHUOHL
         ytvQ==
X-Gm-Message-State: AJIora+0JXCpySS5rtAe6jakxbljMcb+Ees2euZ0peIQBuyUbx0bTid6
	Q4awnCYqhOJqO8Gzdvz8415fng==
X-Google-Smtp-Source: AA6agR6z9FFK6acl0RC3akO4sM8FlnHLmdp5RpAcCJW4NQvVMzWhnceDt3xj4/su2jWuEaLOHvlp+g==
X-Received: by 2002:a05:6a00:1812:b0:52a:c171:7cc5 with SMTP id y18-20020a056a00181200b0052ac1717cc5mr12600245pfa.81.1659289659179;
        Sun, 31 Jul 2022 10:47:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:38 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 00/20] ARM: Add Rockchip RV1126 support
Date: Sun, 31 Jul 2022 23:17:06 +0530
Message-Id: <20220731174726.72631-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104741_225983_8B3EE764 
X-CRM114-Status: GOOD (  13.29  )
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
v1 for the series can be found at [2].

Tested in Edgeble AI Edge Compute Module 0.

Anyone interested, please have a look on this repo [1]

[2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220723204335.750095-1-jagan@edgeble.ai/
[1] https://github.com/edgeble/linux-next/commits/ecm0-v4

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (18):
  dt-bindings: power: rockchip: Document RV1126 power-controller
  dt-bindings: power: Add power-domain header for RV1126
  soc: rockchip: power-domain: Add RV1126 power domains
  dt-bindings: power: rockchip: Document RV1126 PMU IO domains
  dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
  pinctrl: rockchip: Add RV1126 pinctrl support
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add dt-binding header for RV1126
  Add clock controller support for RV1126 SoC.
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
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
 .../devicetree/bindings/mfd/syscon.yaml       |    1 +
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
 include/dt-bindings/clock/rv1126-cru.h        |  632 ++++++++++
 include/dt-bindings/power/rv1126-power.h      |   35 +
 25 files changed, 3516 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rv1126-cru.h
 create mode 100644 include/dt-bindings/power/rv1126-power.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
