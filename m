Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDB82C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nytQ5E9yspF4JGzTCr4afUCgPYI/vXRSmY3IlDsCMQM=; b=WRPQtoy1lCnHEk
	0yl6lxf0IKpWN24QgGNmwnufRy+mpKPJYuxFccb7y5Wg8SsfmzC2zS0nQnU3aggj6oJ37cUAOWIPp
	85IWI0wuXYtNH4EZKo98MuVpEiCGYM+MKz0zl+2hKkT4OKkLsT6SiAP+CYPoQRGeg0w3/NdO7OHLG
	k6/8YKp3zPU5UZGAorND8ufumAmAODBYj28Jo2p359S051rTp6V/H9KGIRTQTS8mnDX6hLEYwNyNi
	bdqrf9QrCKrG8+nYaQblhrafRQ2Li7MgXbCv3Dzo0wmsUo8dvPknW/NpDBoX0gn430ImPx2G+f7fz
	yMuQavSsQoIlfzlG6g7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfDb-005sdK-8D; Tue, 08 Mar 2022 19:09:59 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfCq-005sA8-UU
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:17 +0000
Received: by mail-pg1-x52d.google.com with SMTP id o23so17246912pgk.13
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rMJkwmlB3bZLriNMyZ8DsEqjAAJ48EVoT2JT0CYAPOI=;
 b=mFv8IBEzTTgFYmOv2AjE+XulYFfLNCNLTODKhgvOeLdxUff238mHz2Gw8Fs0lYl0ci
 VTam7LL2nPiV1HzWpZFavC1ztRY9JiJB2fg61y8mZkqGkIi0fr/Io6+IF1aLIAFEWJwU
 tUIF3XMafY5M3rcyVRxw3AwA7dOU/S4H8ZURg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rMJkwmlB3bZLriNMyZ8DsEqjAAJ48EVoT2JT0CYAPOI=;
 b=vju3z0BCHfrnegr417NwE0gAIr1mEAdEwZV83/0Vl48XcyUVr9kJQjbU3Tv2T+jb4Q
 TMxC3FMPSEbI5oNcN22d5nJpjJv3VQwSsRBRVtaBAh+QsQVEpZ1sPmDrKGNSPKfF8dc0
 PqEdyBPwsBQKHPA+f5VeNmN5lskeGO0+D7Qigxz9TDw4jVZulCr82Hp7JwpkeF31AImd
 ps4sxvJLX2gO1VFC7ixgUFX1eBUEgEXB/tEdUPkrb9hrnfDJeUsAvc/jXbv514COezJo
 96CvUMgPSzwOGyFFvgZbFM7Ttqk57CySZv3ZFMzTfFCcQGcfSNk6ixKDpLyvj0SwKmBc
 jwBw==
X-Gm-Message-State: AOAM531q/7nRn3g9c9BzzG2X/U5p67G5tvyo2US6i3PWvdyj7Dx4uHlt
 qZowWwfjD97laUm7sVDJWducoQ==
X-Google-Smtp-Source: ABdhPJyTeiljTXCBL5iqIKZD8ijrU6tja6kun6B78QjGlQLnEGaZINsOakRgSTrCt66UtHE71E5O6w==
X-Received: by 2002:a05:6a00:2296:b0:4e1:905f:46b6 with SMTP id
 f22-20020a056a00229600b004e1905f46b6mr19879888pfe.16.1646766551838; 
 Tue, 08 Mar 2022 11:09:11 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 b13-20020a056a00114d00b004c122b90703sm20059044pfm.27.2022.03.08.11.09.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:11 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 01/15] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Date: Tue,  8 Mar 2022 11:08:47 -0800
Message-Id: <20220308110825.v4.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110913_001612_4BAE8F4F 
X-CRM114-Status: GOOD (  26.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

I want to add, deprecate, and bugfix some properties, as well as add the
first users. This is easier with a proper schema.

The transformation is mostly straightforward, plus a few notable tweaks:

 * Renamed rockchip,dram_speed_bin to rockchip,ddr3_speed_bin. The
   driver code and the example matched, but the description was
   different. I went with the implementation. Note that this property is
   also slated for deprecation/deletion in the subsequent patches.

 * Drop upthreshold and downdifferential properties from the example.
   These were undocumented (so, wouldn't pass validation), but were
   representing software properties (governor tweaks). I drop them from
   the driver in subsequent patches.

 * Rename clock from pclk_ddr_mon to dmc_clk. The driver, DT example,
   and all downstream users matched -- the binding definition was the
   exception. Anyway, "dmc_clk" is a more appropriately generic name.

 * Choose a better filename and location (this is a memory controller).

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v4:
 * Update .yaml to use more "default" entries, instead of free-form text
 * s/phandle-array/phandle/
 * Move to .../memory-controllers, update filename

Changes in v3:
 * Add |maxItems| for devfreq-events
 * Improve deprecation notes

Changes in v2:
 * rename to 'memory-controller' in example
 * place 'required' after properties
 * drop superluous free-form references and repetitions of other
   bindings
 * fix for yamllint

 .../bindings/devfreq/rk3399_dmc.txt           | 212 ------------
 .../rockchip,rk3399-dmc.yaml                  | 306 ++++++++++++++++++
 2 files changed, 306 insertions(+), 212 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
deleted file mode 100644
index 58fc8a6cebc7..000000000000
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
+++ /dev/null
@@ -1,212 +0,0 @@
-* Rockchip rk3399 DMC (Dynamic Memory Controller) device
-
-Required properties:
-- compatible:		 Must be "rockchip,rk3399-dmc".
-- devfreq-events:	 Node to get DDR loading, Refer to
-			 Documentation/devicetree/bindings/devfreq/event/
-			 rockchip-dfi.txt
-- clocks:		 Phandles for clock specified in "clock-names" property
-- clock-names :		 The name of clock used by the DFI, must be
-			 "pclk_ddr_mon";
-- operating-points-v2:	 Refer to Documentation/devicetree/bindings/opp/opp-v2.yaml
-			 for details.
-- center-supply:	 DMC supply node.
-- status:		 Marks the node enabled/disabled.
-- rockchip,pmu:		 Phandle to the syscon managing the "PMU general register
-			 files".
-
-Optional properties:
-- interrupts:		 The CPU interrupt number. The interrupt specifier
-			 format depends on the interrupt controller.
-			 It should be a DCF interrupt. When DDR DVFS finishes
-			 a DCF interrupt is triggered.
-- rockchip,pmu:		 Phandle to the syscon managing the "PMU general register
-			 files".
-
-Following properties relate to DDR timing:
-
-- rockchip,dram_speed_bin :	  Value reference include/dt-bindings/clock/rk3399-ddr.h,
-				  it selects the DDR3 cl-trp-trcd type. It must be
-				  set according to "Speed Bin" in DDR3 datasheet,
-				  DO NOT use a smaller "Speed Bin" than specified
-				  for the DDR3 being used.
-
-- rockchip,pd_idle :		  Configure the PD_IDLE value. Defines the
-				  power-down idle period in which memories are
-				  placed into power-down mode if bus is idle
-				  for PD_IDLE DFI clock cycles.
-
-- rockchip,sr_idle :		  Configure the SR_IDLE value. Defines the
-				  self-refresh idle period in which memories are
-				  placed into self-refresh mode if bus is idle
-				  for SR_IDLE * 1024 DFI clock cycles (DFI
-				  clocks freq is half of DRAM clock), default
-				  value is "0".
-
-- rockchip,sr_mc_gate_idle :	  Defines the memory self-refresh and controller
-				  clock gating idle period. Memories are placed
-				  into self-refresh mode and memory controller
-				  clock arg gating started if bus is idle for
-				  sr_mc_gate_idle*1024 DFI clock cycles.
-
-- rockchip,srpd_lite_idle :	  Defines the self-refresh power down idle
-				  period in which memories are placed into
-				  self-refresh power down mode if bus is idle
-				  for srpd_lite_idle * 1024 DFI clock cycles.
-				  This parameter is for LPDDR4 only.
-
-- rockchip,standby_idle :	  Defines the standby idle period in which
-				  memories are placed into self-refresh mode.
-				  The controller, pi, PHY and DRAM clock will
-				  be gated if bus is idle for standby_idle * DFI
-				  clock cycles.
-
-- rockchip,dram_dll_dis_freq :	  Defines the DDR3 DLL bypass frequency in MHz.
-				  When DDR frequency is less than DRAM_DLL_DISB_FREQ,
-				  DDR3 DLL will be bypassed. Note: if DLL was bypassed,
-				  the odt will also stop working.
-
-- rockchip,phy_dll_dis_freq :	  Defines the PHY dll bypass frequency in
-				  MHz (Mega Hz). When DDR frequency is less than
-				  DRAM_DLL_DISB_FREQ, PHY DLL will be bypassed.
-				  Note: PHY DLL and PHY ODT are independent.
-
-- rockchip,ddr3_odt_dis_freq :	  When the DRAM type is DDR3, this parameter defines
-				  the ODT disable frequency in MHz (Mega Hz).
-				  when the DDR frequency is  less then ddr3_odt_dis_freq,
-				  the ODT on the DRAM side and controller side are
-				  both disabled.
-
-- rockchip,ddr3_drv :		  When the DRAM type is DDR3, this parameter defines
-				  the DRAM side driver strength in ohms. Default
-				  value is 40.
-
-- rockchip,ddr3_odt :		  When the DRAM type is DDR3, this parameter defines
-				  the DRAM side ODT strength in ohms. Default value
-				  is 120.
-
-- rockchip,phy_ddr3_ca_drv :	  When the DRAM type is DDR3, this parameter defines
-				  the phy side CA line (incluing command line,
-				  address line and clock line) driver strength.
-				  Default value is 40.
-
-- rockchip,phy_ddr3_dq_drv :	  When the DRAM type is DDR3, this parameter defines
-				  the PHY side DQ line (including DQS/DQ/DM line)
-				  driver strength. Default value is 40.
-
-- rockchip,phy_ddr3_odt : 	  When the DRAM type is DDR3, this parameter defines
-				  the PHY side ODT strength. Default value is 240.
-
-- rockchip,lpddr3_odt_dis_freq : When the DRAM type is LPDDR3, this parameter defines
-				  then ODT disable frequency in MHz (Mega Hz).
-				  When DDR frequency is less then ddr3_odt_dis_freq,
-				  the ODT on the DRAM side and controller side are
-				  both disabled.
-
-- rockchip,lpddr3_drv :		  When the DRAM type is LPDDR3, this parameter defines
-				  the DRAM side driver strength in ohms. Default
-				  value is 34.
-
-- rockchip,lpddr3_odt :		  When the DRAM type is LPDDR3, this parameter defines
-				  the DRAM side ODT strength in ohms. Default value
-				  is 240.
-
-- rockchip,phy_lpddr3_ca_drv :	  When the DRAM type is LPDDR3, this parameter defines
-				  the PHY side CA line (including command line,
-				  address line and clock line) driver strength.
-				  Default value is 40.
-
-- rockchip,phy_lpddr3_dq_drv :	  When the DRAM type is LPDDR3, this parameter defines
-				  the PHY side DQ line (including DQS/DQ/DM line)
-				  driver strength. Default value is 40.
-
-- rockchip,phy_lpddr3_odt : 	  When dram type is LPDDR3, this parameter define
-				  the phy side odt strength, default value is 240.
-
-- rockchip,lpddr4_odt_dis_freq : When the DRAM type is LPDDR4, this parameter
-				  defines the ODT disable frequency in
-				  MHz (Mega Hz). When the DDR frequency is less then
-				  ddr3_odt_dis_freq, the ODT on the DRAM side and
-				  controller side are both disabled.
-
-- rockchip,lpddr4_drv :		  When the DRAM type is LPDDR4, this parameter defines
-				  the DRAM side driver strength in ohms. Default
-				  value is 60.
-
-- rockchip,lpddr4_dq_odt : 	  When the DRAM type is LPDDR4, this parameter defines
-				  the DRAM side ODT on DQS/DQ line strength in ohms.
-				  Default value is 40.
-
-- rockchip,lpddr4_ca_odt :	  When the DRAM type is LPDDR4, this parameter defines
-				  the DRAM side ODT on CA line strength in ohms.
-				  Default value is 40.
-
-- rockchip,phy_lpddr4_ca_drv :	  When the DRAM type is LPDDR4, this parameter defines
-				  the PHY side CA line (including command address
-				  line) driver strength. Default value is 40.
-
-- rockchip,phy_lpddr4_ck_cs_drv : When the DRAM type is LPDDR4, this parameter defines
-				  the PHY side clock line and CS line driver
-				  strength. Default value is 80.
-
-- rockchip,phy_lpddr4_dq_drv :	  When the DRAM type is LPDDR4, this parameter defines
-				  the PHY side DQ line (including DQS/DQ/DM line)
-				  driver strength. Default value is 80.
-
-- rockchip,phy_lpddr4_odt :	  When the DRAM type is LPDDR4, this parameter defines
-				  the PHY side ODT strength. Default value is 60.
-
-Example:
-	dmc_opp_table: dmc_opp_table {
-		compatible = "operating-points-v2";
-
-		opp00 {
-			opp-hz = /bits/ 64 <300000000>;
-			opp-microvolt = <900000>;
-		};
-		opp01 {
-			opp-hz = /bits/ 64 <666000000>;
-			opp-microvolt = <900000>;
-		};
-	};
-
-	dmc: dmc {
-		compatible = "rockchip,rk3399-dmc";
-		devfreq-events = <&dfi>;
-		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_DDRC>;
-		clock-names = "dmc_clk";
-		operating-points-v2 = <&dmc_opp_table>;
-		center-supply = <&ppvar_centerlogic>;
-		upthreshold = <15>;
-		downdifferential = <10>;
-		rockchip,ddr3_speed_bin = <21>;
-		rockchip,pd_idle = <0x40>;
-		rockchip,sr_idle = <0x2>;
-		rockchip,sr_mc_gate_idle = <0x3>;
-		rockchip,srpd_lite_idle	= <0x4>;
-		rockchip,standby_idle = <0x2000>;
-		rockchip,dram_dll_dis_freq = <300>;
-		rockchip,phy_dll_dis_freq = <125>;
-		rockchip,auto_pd_dis_freq = <666>;
-		rockchip,ddr3_odt_dis_freq = <333>;
-		rockchip,ddr3_drv = <40>;
-		rockchip,ddr3_odt = <120>;
-		rockchip,phy_ddr3_ca_drv = <40>;
-		rockchip,phy_ddr3_dq_drv = <40>;
-		rockchip,phy_ddr3_odt = <240>;
-		rockchip,lpddr3_odt_dis_freq = <333>;
-		rockchip,lpddr3_drv = <34>;
-		rockchip,lpddr3_odt = <240>;
-		rockchip,phy_lpddr3_ca_drv = <40>;
-		rockchip,phy_lpddr3_dq_drv = <40>;
-		rockchip,phy_lpddr3_odt = <240>;
-		rockchip,lpddr4_odt_dis_freq = <333>;
-		rockchip,lpddr4_drv = <60>;
-		rockchip,lpddr4_dq_odt = <40>;
-		rockchip,lpddr4_ca_odt = <40>;
-		rockchip,phy_lpddr4_ca_drv = <40>;
-		rockchip,phy_lpddr4_ck_cs_drv = <80>;
-		rockchip,phy_lpddr4_dq_drv = <80>;
-		rockchip,phy_lpddr4_odt = <60>;
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
new file mode 100644
index 000000000000..b32c03cb0c68
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -0,0 +1,306 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# %YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/rockchip,rk3399-dmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip rk3399 DMC (Dynamic Memory Controller) device
+
+maintainers:
+  - Brian Norris <briannorris@chromium.org>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3399-dmc
+
+  devfreq-events:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Node to get DDR loading. Refer to
+      Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt.
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: dmc_clk
+
+  operating-points-v2: true
+
+  center-supply:
+    description:
+      DMC regulator supply.
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "PMU general register files".
+
+  interrupts:
+    maxItems: 1
+    description:
+      The CPU interrupt number. It should be a DCF interrupt. When DDR DVFS
+      finishes, a DCF interrupt is triggered.
+
+  rockchip,ddr3_speed_bin:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      For values, reference include/dt-bindings/clock/rk3399-ddr.h. Selects the
+      DDR3 cl-trp-trcd type. It must be set according to "Speed Bin" in DDR3
+      datasheet; DO NOT use a smaller "Speed Bin" than specified for the DDR3
+      being used.
+
+  rockchip,pd_idle:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Configure the PD_IDLE value. Defines the power-down idle period in which
+      memories are placed into power-down mode if bus is idle for PD_IDLE DFI
+      clock cycles.
+
+  rockchip,sr_idle:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Configure the SR_IDLE value. Defines the self-refresh idle period in
+      which memories are placed into self-refresh mode if bus is idle for
+      SR_IDLE * 1024 DFI clock cycles (DFI clocks freq is half of DRAM clock).
+    default: 0
+
+  rockchip,sr_mc_gate_idle:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the memory self-refresh and controller clock gating idle period.
+      Memories are placed into self-refresh mode and memory controller clock
+      arg gating started if bus is idle for sr_mc_gate_idle*1024 DFI clock
+      cycles.
+
+  rockchip,srpd_lite_idle:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the self-refresh power down idle period in which memories are
+      placed into self-refresh power down mode if bus is idle for
+      srpd_lite_idle * 1024 DFI clock cycles. This parameter is for LPDDR4
+      only.
+
+  rockchip,standby_idle:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the standby idle period in which memories are placed into
+      self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
+      if bus is idle for standby_idle * DFI clock cycles.
+
+  rockchip,dram_dll_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Defines the DDR3 DLL bypass frequency in MHz. When DDR frequency is less
+      than DRAM_DLL_DISB_FREQ, DDR3 DLL will be bypassed.
+      Note: if DLL was bypassed, the odt will also stop working.
+
+  rockchip,phy_dll_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Defines the PHY dll bypass frequency in MHz (Mega Hz). When DDR frequency
+      is less than DRAM_DLL_DISB_FREQ, PHY DLL will be bypassed.
+      Note: PHY DLL and PHY ODT are independent.
+
+  rockchip,auto_pd_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the auto PD disable frequency in MHz.
+
+  rockchip,ddr3_odt_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is DDR3, this parameter defines the ODT disable
+      frequency in MHz (Mega Hz). When the DDR frequency is less then
+      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
+      disabled.
+
+  rockchip,ddr3_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is DDR3, this parameter defines the DRAM side drive
+      strength in ohms.
+    default: 40
+
+  rockchip,ddr3_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is DDR3, this parameter defines the DRAM side ODT
+      strength in ohms.
+    default: 120
+
+  rockchip,phy_ddr3_ca_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is DDR3, this parameter defines the phy side CA line
+      (incluing command line, address line and clock line) drive strength.
+    default: 40
+
+  rockchip,phy_ddr3_dq_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is DDR3, this parameter defines the PHY side DQ line
+      (including DQS/DQ/DM line) drive strength.
+    default: 40
+
+  rockchip,phy_ddr3_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is DDR3, this parameter defines the PHY side ODT
+      strength.
+    default: 240
+
+  rockchip,lpddr3_odt_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR3, this parameter defines then ODT disable
+      frequency in MHz (Mega Hz). When DDR frequency is less then
+      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
+      disabled.
+
+  rockchip,lpddr3_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR3, this parameter defines the DRAM side drive
+      strength in ohms.
+    default: 34
+
+  rockchip,lpddr3_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR3, this parameter defines the DRAM side ODT
+      strength in ohms.
+    default: 240
+
+  rockchip,phy_lpddr3_ca_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR3, this parameter defines the PHY side CA line
+      (including command line, address line and clock line) drive strength.
+    default: 40
+
+  rockchip,phy_lpddr3_dq_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR3, this parameter defines the PHY side DQ line
+      (including DQS/DQ/DM line) drive strength.
+    default: 40
+
+  rockchip,phy_lpddr3_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When dram type is LPDDR3, this parameter define the phy side odt
+      strength, default value is 240.
+
+  rockchip,lpddr4_odt_dis_freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the ODT disable
+      frequency in MHz (Mega Hz). When the DDR frequency is less then
+      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
+      disabled.
+
+  rockchip,lpddr4_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the DRAM side drive
+      strength in ohms.
+    default: 60
+
+  rockchip,lpddr4_dq_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
+      DQS/DQ line strength in ohms.
+    default: 40
+
+  rockchip,lpddr4_ca_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
+      CA line strength in ohms.
+    default: 40
+
+  rockchip,phy_lpddr4_ca_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the PHY side CA line
+      (including command address line) drive strength.
+    default: 40
+
+  rockchip,phy_lpddr4_ck_cs_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the PHY side clock
+      line and CS line drive strength.
+    default: 80
+
+  rockchip,phy_lpddr4_dq_drv:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the PHY side DQ line
+      (including DQS/DQ/DM line) drive strength.
+    default: 80
+
+  rockchip,phy_lpddr4_odt:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
+      strength.
+    default: 60
+
+required:
+  - compatible
+  - devfreq-events
+  - clocks
+  - clock-names
+  - operating-points-v2
+  - center-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    memory-controller {
+      compatible = "rockchip,rk3399-dmc";
+      devfreq-events = <&dfi>;
+      rockchip,pmu = <&pmu>;
+      interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_DDRC>;
+      clock-names = "dmc_clk";
+      operating-points-v2 = <&dmc_opp_table>;
+      center-supply = <&ppvar_centerlogic>;
+      rockchip,ddr3_speed_bin = <21>;
+      rockchip,pd_idle = <0x40>;
+      rockchip,sr_idle = <0x2>;
+      rockchip,sr_mc_gate_idle = <0x3>;
+      rockchip,srpd_lite_idle = <0x4>;
+      rockchip,standby_idle = <0x2000>;
+      rockchip,dram_dll_dis_freq = <300>;
+      rockchip,phy_dll_dis_freq = <125>;
+      rockchip,auto_pd_dis_freq = <666>;
+      rockchip,ddr3_odt_dis_freq = <333>;
+      rockchip,ddr3_drv = <40>;
+      rockchip,ddr3_odt = <120>;
+      rockchip,phy_ddr3_ca_drv = <40>;
+      rockchip,phy_ddr3_dq_drv = <40>;
+      rockchip,phy_ddr3_odt = <240>;
+      rockchip,lpddr3_odt_dis_freq = <333>;
+      rockchip,lpddr3_drv = <34>;
+      rockchip,lpddr3_odt = <240>;
+      rockchip,phy_lpddr3_ca_drv = <40>;
+      rockchip,phy_lpddr3_dq_drv = <40>;
+      rockchip,phy_lpddr3_odt = <240>;
+      rockchip,lpddr4_odt_dis_freq = <333>;
+      rockchip,lpddr4_drv = <60>;
+      rockchip,lpddr4_dq_odt = <40>;
+      rockchip,lpddr4_ca_odt = <40>;
+      rockchip,phy_lpddr4_ca_drv = <40>;
+      rockchip,phy_lpddr4_ck_cs_drv = <80>;
+      rockchip,phy_lpddr4_dq_drv = <80>;
+      rockchip,phy_lpddr4_odt = <60>;
+    };
-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
