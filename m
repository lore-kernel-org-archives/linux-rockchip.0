Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F79C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SJr4Nw16cRfTM8TeP43pdx1oYDKX8ob0KEyYqu+oIY=; b=MXTB2wQpjddt7J
	IcWVwdzy7qBtan4eQO7cMhP4ZsxfAb0KVwE7f4P6Bcy8CCKcjKVROxL5381iy0AQjmkqSi4Lq4M/n
	PsbtKStWFOLo/QJbuHTY+ff+DDyY30tTHlKxF/KRAX/LZWv/4/E05ZxBZ8rmuDUzhzOShI8Dn6LjE
	ENwpLn3I7bxG6Bk1O3jbWvHI23Z2w/1/wyh8wAX0dFr2cxrO1rS3o5tkBmoITDZVoPkm7PFHH79fq
	92oROQESnk9ga7yaJV/CBnnex2qHACl0MaRA0bVhUvBYj7IYwn1E4e1N1s2yiYIBgTVO/2m/h2C0V
	HpC9jN2++P8ZCoJDYmAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDtp-00HGzd-Ot; Thu, 27 Jan 2022 23:09:53 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsY-00HGKs-7C
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:36 +0000
Received: by mail-pg1-x529.google.com with SMTP id g20so3639496pgn.10
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZfhvZdFs5TObb5S4eewDrBMOltALFoSNTdZ7kqpym+w=;
 b=npEbe3pKve6T0stjeDsyP2hlb1l9yn6TxS2m1sa+3SXZ04FPuvMdfmzsTIJNsLSdxi
 t6w0LMTqu1IkNqXOqN4942uEw/i8X5WRoVPoa8nM8w6m7VUaLVyx4MINNlIxcDmTvOQd
 xGhmHBDLy9pUDKcWGknlP0bT+XZ24P1uaSnpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZfhvZdFs5TObb5S4eewDrBMOltALFoSNTdZ7kqpym+w=;
 b=PO2Dmf+1/HeCmLFEJ/bZOmYjixbXkG2obqeJs7ogLJlwwcFBMzu4Zh4kIif/8cymPF
 Q7CkOUhIhZ4ahoxsJjHNcgTp5+AL+c/MfW2Y/bIFyU3mhtwV2h2m3TA1+MikoQ/tSJ7q
 stpM6ytSk7Fqt24z0SleodhpfdqZN4sn4BSjLaKhJeNWAUHL+gw0IZkuQ+lG/MbdPXyd
 z1Ox4+wltSgmY7R6+85M6E/2tSfIywY8hXLgBTAoL0jsqb0xlNOa1MUgNpNLRPfb1wcC
 I6gKuD2Hxr+of5H78ksm5MEyYaCPFMC/+oZRO09xUOpKjgerDMoChQb1k2VMxme4CnRb
 I44w==
X-Gm-Message-State: AOAM532AzLDu0uuL3p1etBycqLke+TFZ1RTsASnxo0ax4cTZHYvIuDIK
 2PaXeuKkk635QxbAX5k0r1bTmyikvleOeg==
X-Google-Smtp-Source: ABdhPJzWfp15WA+agQIDXTl8cUPnuwXcqyV2WF4QJ4q1xpLKzz6EakugAmhaPwx/3rCjwXSRJkmH8Q==
X-Received: by 2002:a05:6a00:b42:: with SMTP id
 p2mr5377425pfo.50.1643324912230; 
 Thu, 27 Jan 2022 15:08:32 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id r14sm339902pjo.39.2022.01.27.15.08.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:31 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 04/15] dt-bindings: devfreq: rk3399_dmc: Specify idle
 params in nanoseconds
Date: Thu, 27 Jan 2022 15:07:15 -0800
Message-Id: <20220127150615.v2.4.I01c6a2b2db578136686b42d463af985cfdff2fd9@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150834_293880_C5C32A9E 
X-CRM114-Status: GOOD (  13.79  )
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

It's inefficient to use the same number of cycles for all OPPs, since
lower frequencies make for longer idle times. Let's specify the idle
time instead, so software can pick the optimal number of cycles on its
own.

NB: these bindings aren't used anywhere yet.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - New patch

 .../bindings/devfreq/rk3399_dmc.yaml          | 50 +++++++++++++++++--
 1 file changed, 45 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 8bb778df92ae..8786b7fa9b28 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -55,42 +55,52 @@ properties:
       being used.
 
   rockchip,pd_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Configure the PD_IDLE value. Defines the power-down idle period in which
       memories are placed into power-down mode if bus is idle for PD_IDLE DFI
       clock cycles.
+      See also rockchip,pd-idle-ns.
 
   rockchip,sr_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Configure the SR_IDLE value. Defines the self-refresh idle period in
       which memories are placed into self-refresh mode if bus is idle for
       SR_IDLE * 1024 DFI clock cycles (DFI clocks freq is half of DRAM clock).
       Default value is "0".
+      See also rockchip,sr-idle-ns.
 
   rockchip,sr_mc_gate_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the memory self-refresh and controller clock gating idle period.
       Memories are placed into self-refresh mode and memory controller clock
       arg gating started if bus is idle for sr_mc_gate_idle*1024 DFI clock
       cycles.
+      See also rockchip,sr-mc-gate-idle-ns.
 
   rockchip,srpd_lite_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the self-refresh power down idle period in which memories are
       placed into self-refresh power down mode if bus is idle for
       srpd_lite_idle * 1024 DFI clock cycles. This parameter is for LPDDR4
       only.
+      See also rockchip,srpd-lite-idle-ns.
 
   rockchip,standby_idle:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the standby idle period in which memories are placed into
       self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
       if bus is idle for standby_idle * DFI clock cycles.
+      See also rockchip,standby-idle-ns.
 
   rockchip,dram_dll_dis_freq:
     deprecated: true
@@ -259,6 +269,36 @@ properties:
       When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
       strength. Default value is 60.
 
+  rockchip,pd-idle-ns:
+    description:
+      Configure the PD_IDLE value in nanoseconds. Defines the power-down idle
+      period in which memories are placed into power-down mode if bus is idle
+      for PD_IDLE nanoseconds.
+
+  rockchip,sr-idle-ns:
+    description:
+      Configure the SR_IDLE value in nanoseconds. Defines the self-refresh idle
+      period in which memories are placed into self-refresh mode if bus is idle
+      for SR_IDLE nanoseconds. Default value is "0".
+
+  rockchip,sr-mc-gate-idle-ns:
+    description:
+      Defines the memory self-refresh and controller clock gating idle period in nanoseconds.
+      Memories are placed into self-refresh mode and memory controller clock
+      arg gating started if bus is idle for sr_mc_gate_idle nanoseconds.
+
+  rockchip,srpd-lite-idle-ns:
+    description:
+      Defines the self-refresh power down idle period in which memories are
+      placed into self-refresh power down mode if bus is idle for
+      srpd_lite_idle nanoseonds. This parameter is for LPDDR4 only.
+
+  rockchip,standby-idle-ns:
+    description:
+      Defines the standby idle period in which memories are placed into
+      self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
+      if bus is idle for standby_idle nanoseconds.
+
 required:
   - compatible
   - devfreq-events
@@ -282,11 +322,11 @@ examples:
       clock-names = "dmc_clk";
       operating-points-v2 = <&dmc_opp_table>;
       center-supply = <&ppvar_centerlogic>;
-      rockchip,pd_idle = <0x40>;
-      rockchip,sr_idle = <0x2>;
-      rockchip,sr_mc_gate_idle = <0x3>;
-      rockchip,srpd_lite_idle = <0x4>;
-      rockchip,standby_idle = <0x2000>;
+      rockchip,pd-idle-ns = <160>;
+      rockchip,sr-idle-ns = <10240>;
+      rockchip,sr-mc-gate-idle-ns = <40960>;
+      rockchip,srpd-lite-idle-ns = <61440>;
+      rockchip,standby-idle-ns = <81920>;
       rockchip,ddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr4_odt_dis_freq = <333000000>;
-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
