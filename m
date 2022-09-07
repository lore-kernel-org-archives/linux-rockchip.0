Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B9DCC38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YgzBYr5EFxyzR3frKzQhic42RyZ/2XWh5F+DIL5sEIU=; b=VSGQ4ZQ35BZQg6
	YNJehuAOoMnTUIx9cVLdrUld2sZARfvyyHFHt80n21PB4myof9yjVmrCJJgQB0PIEny5k1lkmBmPH
	yQjTv1/TBr4/7bHW+p8mch591ogzIVFA37Q44x8RtTCYQSpsKFj4usGfGpXcJFL9H4scX5oi6bKKy
	XIO+i/Rix5LOLp9VE4RYL2ipNJmKaBtt/F7AaTILHdgb04PGyr7nULWOrdMWhX4yGXGihLb1cVbRM
	oCg9jhZzqRb6EK5BxJTyBd17yVPrnroeRqCq36SZPRzYgKbqaP7Ziivl8eD1o9QRdoMNw57lee9bI
	1BL27wRs9TI/AyeWrLJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVf-007Ym7-Fj; Wed, 07 Sep 2022 16:02:39 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVS-007Yhm-Ok
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:02:28 +0000
Received: by mail-pl1-x62e.google.com with SMTP id s14so5449552plr.4
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=oHtmyp0MjeRW/7ev9U+nQsxJjSYwYzANM1nS1bhyYwo=;
        b=7Fju9Xhz5InFFNpngSUAX9JEcnScxu7+CMDZMlSdfrqW61YAbx6lZxwIx3AlEsNeb4
         Shs9pC57dF6RvlEm1FGNFYME5EiRcfcVL/P8tg2z0w8zsaSbSGK4xvVUUGThF5+nEftg
         ROA6x6AWXCSsHF7leXMvxQPFMLhLvLO7ybf+oiPbnbEj0O7gEHoVcXv+i5megzDTOSZS
         wy7C6cd2M2Tju4iBCXvwwDWWEnl7kjI/U/pdzYdCLxwmYSahn35LnDVwhAGI7GlIuZN3
         O9xxXQrm9U8lCp44nExQMRN+FwyRFXbhGCLzlwtgw3eksjKTECLr44MN3BLVb9POg9mq
         rhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=oHtmyp0MjeRW/7ev9U+nQsxJjSYwYzANM1nS1bhyYwo=;
        b=UeyXD0mC5nGcJe5fj4sdNHRx2Q2jNNdgLIpYZiiNBovZiVFWP8mSN8psci2xfdM6fE
         fblmRVXqywX2WSnGO6xLrX5bdtRPP2SjvNqEtJukq8/IqrQz+Sujac88iAnQLFLNRYbk
         L4lX+TGGDteMyXjHS9i4tLcQe50trBpYjIyREYGXAwS07MrkwMCKvp9dOYYPbvHBSTjp
         pwoa8kds28S6Hm/DvIxo1nweOPo5Hzv+Aa2CkP6IvF8GfwVpyLeFEn6th7qQDm8sEhgE
         agN4cYgYZpA8rxdbGXvZp5KXu9BcYICFmQz19Qv0x+bdaUwmEOzes9pEJ8xyKIPocqCx
         1C5w==
X-Gm-Message-State: ACgBeo0W1dWwgEfLKlSggDjGr01+2nxB0A8GJ5lYUVpw490e3uj5Az3e
	R8Z9ms5xredHwBHHgxE6lVbLow==
X-Google-Smtp-Source: AA6agR5zcPWheEOnJmCN12khZ9DjLxhGpGztu9YSzGjEeswzEFPbQWeYZ6QF968kkuhvrssLDh6xpA==
X-Received: by 2002:a17:90a:4d8d:b0:1fa:9cc6:3408 with SMTP id m13-20020a17090a4d8d00b001fa9cc63408mr4552604pjh.245.1662566544122;
        Wed, 07 Sep 2022 09:02:24 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:23 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v4 00/13] ARM: Add Rockchip RV1126 support
Date: Wed,  7 Sep 2022 21:31:54 +0530
Message-Id: <20220907160207.3845791-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090226_808246_343EEBAB 
X-CRM114-Status: GOOD (  12.81  )
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
v3 for the series can be found at [1].

Tested in Edgeble AI Edge Compute Module 0.

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220818124132.125304-1-jagan@edgeble.ai/

Any inputs?
Jagan.

Elaine Zhang (1):
  clk: rockchip: Add MUXTBL variant

Jagan Teki (12):
  i2c: rk3x: Add rv1126 support
  clk: rockchip: Add dt-binding header for RV1126
  dt-bindings: clock: rockchip: Document RV1126 CRU
  clk: rockchip: Add clock controller support for RV1126 SoC.
  dt-bindings: soc: rockchip: Document RV1126 grf
  dt-bindings: soc: rockchip: Document RV1126 pmugrf
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0
  ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../bindings/clock/rockchip,rv1126-cru.yaml   |   62 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    2 +-
 arch/arm/boot/dts/Makefile                    |    1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  |   38 +
 .../rv1126-edgeble-edge-compute-module-0.dtsi |  353 ++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         |  212 ++++
 arch/arm/boot/dts/rv1126.dtsi                 |  430 +++++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1126.c             | 1107 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   27 +-
 drivers/clk/rockchip/clk.h                    |   36 +
 drivers/i2c/busses/i2c-rk3x.c                 |    9 +
 .../dt-bindings/clock/rockchip,rv1126-cru.h   |  632 ++++++++++
 17 files changed, 2920 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-edge-compute-module-0.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1126.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
