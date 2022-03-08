Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83537C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkTjSJlRaPSLiK897y4yOxw1yZBIKV7/q9cdubRxOOo=; b=O0vYNC766C8cln
	E7Bk6zi2VphZsRgsjLaaQ1UGgKZa3UKzSZu2FVndk0286LwFqvu0L/Xcy11K5TMGToU3Jvo17j9KQ
	IPdCUdNemRWKuqxEIGE+k04LtiHN8eIVKXa/UvoYTwTkXfYVQRX3pKJcfCpADWPOgUiKJtltluZUW
	7RLWLscZJFEYOpzJRLT1aADnO6SovMGN3Z5W+ddY+dV6uYoj0u7JxXbx0RLjJV3v3fEnRLxDW/1uk
	dDMCb+nCSjR4oTBgOgjRkKAkDRxeVEQiiriFfFG0b5Nbb5VwYTnEPjLJFgoYY2ohCeoGakfQDOjU2
	9TC/oj5AJTPFMKUdfllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNRJ-0022gH-VT; Tue, 08 Mar 2022 00:10:57 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQZ-0022EY-7o
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:13 +0000
Received: by mail-pf1-x436.google.com with SMTP id z16so15855971pfh.3
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bdGbRBwf/c8dl5XeVJM5/TA/QnzoWJV9eNGluQ9fvK8=;
 b=lSxy077phA/tCU7DQ5kVP7i2doyZVCtubNQkrfx7PtTm+JZOWKAMZZcx7d2Q4vtLGW
 wWGDJMEn92nyIl7iLdUjvv3H/uT/nNYT0VnY+f8F0Sb8SggKWoZFpROyEnq2qFGnUkcd
 HRua1mCDOAvXZ/j5f2FGxGsVI4e0mp75mNKuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bdGbRBwf/c8dl5XeVJM5/TA/QnzoWJV9eNGluQ9fvK8=;
 b=XaovsOTEFzF533PU/H8SBZJ+MuAz1W9ff+zMHdaujHbowXRSmOskJOkS3ElQwBcE79
 3ROCFMjnXuFjiKUbV5MWC2V0TNSPsjVxPxY4spxJ9SoKbmdk4qJW5RAiZVF727tGETT8
 spqgXSJr5mr0i/BvmkBBO5R5vyFd+VstPXNJ/tLP/tXpzRrmNGVpD9KLJJ3lWb1C8DG1
 ljmWBaH/FQUE0NrNbRbSfFxOA7MI6Ddj8lz5d+IUuahGs8Zbp8brrzHNT3R2iMwy7IOb
 dnIfABE8+9RjNT6gb4JZSMkxu+3ett/gY94bgI51eUgpzh2pXm4LRxEWEvC1v2xjajMJ
 XBZg==
X-Gm-Message-State: AOAM5323QOH6FkFk1lT5C+ZftjvRjU0Eqk674WQuDvnLqCf/S9m5+9Lm
 uWr5N50OD8lROt0ZxzyWqUcx8Q==
X-Google-Smtp-Source: ABdhPJy8sbnJPbb4XSmbVNbjkdofb0kMj5POeTZi+NODF5lnPa+GmraocOu2XgSVp0Xd1Cf2aOu4Zw==
X-Received: by 2002:a63:d018:0:b0:374:a3c1:dfed with SMTP id
 z24-20020a63d018000000b00374a3c1dfedmr12003576pgf.155.1646698208600; 
 Mon, 07 Mar 2022 16:10:08 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 lw18-20020a17090b181200b001bf057106ebsm460641pjb.41.2022.03.07.16.10.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:08 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 02/15] dt-bindings: devfreq: rk3399_dmc: Deprecate
 unused/redundant properties
Date: Mon,  7 Mar 2022 16:09:32 -0800
Message-Id: <20220307160918.v3.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161011_321009_84117840 
X-CRM114-Status: GOOD (  12.52  )
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

These DRAM configuration properties are all handled in ARM Trusted
Firmware (and have been since the early days of this SoC), and there are
no in-tree users of the DMC binding yet. It's better to just defer to
firmware instead of maintaining this large list of properties.

There's also some confusion about units: many of these are specified in
MHz, but the downstream users and driver code are treating them as Hz, I
believe. Rather than straighten all that out, I just drop them.

Signed-off-by: Brian Norris <briannorris@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
 * Add Reviewed-by tags

---

Changes in v3:
 * Add Reviewed-by

 .../bindings/devfreq/rk3399_dmc.yaml          | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index ddddddc5c6fb..4ca43b76ed51 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -47,6 +47,7 @@ properties:
       finishes, a DCF interrupt is triggered.
 
   rockchip,ddr3_speed_bin:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       For values, reference include/dt-bindings/clock/rk3399-ddr.h. Selects the
@@ -93,6 +94,7 @@ properties:
       if bus is idle for standby_idle * DFI clock cycles.
 
   rockchip,dram_dll_dis_freq:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       Defines the DDR3 DLL bypass frequency in MHz. When DDR frequency is less
@@ -100,6 +102,7 @@ properties:
       Note: if DLL was bypassed, the odt will also stop working.
 
   rockchip,phy_dll_dis_freq:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       Defines the PHY dll bypass frequency in MHz (Mega Hz). When DDR frequency
@@ -107,6 +110,7 @@ properties:
       Note: PHY DLL and PHY ODT are independent.
 
   rockchip,auto_pd_dis_freq:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the auto PD disable frequency in MHz.
@@ -120,18 +124,21 @@ properties:
       disabled.
 
   rockchip,ddr3_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the DRAM side drive
       strength in ohms. Default value is 40.
 
   rockchip,ddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the DRAM side ODT
       strength in ohms. Default value is 120.
 
   rockchip,phy_ddr3_ca_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the phy side CA line
@@ -139,12 +146,14 @@ properties:
       Default value is 40.
 
   rockchip,phy_ddr3_dq_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the PHY side DQ line
       (including DQS/DQ/DM line) drive strength. Default value is 40.
 
   rockchip,phy_ddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the PHY side ODT
@@ -159,18 +168,21 @@ properties:
       disabled.
 
   rockchip,lpddr3_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the DRAM side drive
       strength in ohms. Default value is 34.
 
   rockchip,lpddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the DRAM side ODT
       strength in ohms. Default value is 240.
 
   rockchip,phy_lpddr3_ca_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the PHY side CA line
@@ -178,12 +190,14 @@ properties:
       Default value is 40.
 
   rockchip,phy_lpddr3_dq_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the PHY side DQ line
       (including DQS/DQ/DM line) drive strength. Default value is 40.
 
   rockchip,phy_lpddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When dram type is LPDDR3, this parameter define the phy side odt
@@ -198,42 +212,49 @@ properties:
       disabled.
 
   rockchip,lpddr4_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the DRAM side drive
       strength in ohms. Default value is 60.
 
   rockchip,lpddr4_dq_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
       DQS/DQ line strength in ohms. Default value is 40.
 
   rockchip,lpddr4_ca_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
       CA line strength in ohms. Default value is 40.
 
   rockchip,phy_lpddr4_ca_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side CA line
       (including command address line) drive strength. Default value is 40.
 
   rockchip,phy_lpddr4_ck_cs_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side clock
       line and CS line drive strength. Default value is 80.
 
   rockchip,phy_lpddr4_dq_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side DQ line
       (including DQS/DQ/DM line) drive strength. Default value is 80.
 
   rockchip,phy_lpddr4_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
@@ -262,33 +283,12 @@ examples:
       clock-names = "dmc_clk";
       operating-points-v2 = <&dmc_opp_table>;
       center-supply = <&ppvar_centerlogic>;
-      rockchip,ddr3_speed_bin = <21>;
       rockchip,pd_idle = <0x40>;
       rockchip,sr_idle = <0x2>;
       rockchip,sr_mc_gate_idle = <0x3>;
       rockchip,srpd_lite_idle = <0x4>;
       rockchip,standby_idle = <0x2000>;
-      rockchip,dram_dll_dis_freq = <300>;
-      rockchip,phy_dll_dis_freq = <125>;
-      rockchip,auto_pd_dis_freq = <666>;
       rockchip,ddr3_odt_dis_freq = <333>;
-      rockchip,ddr3_drv = <40>;
-      rockchip,ddr3_odt = <120>;
-      rockchip,phy_ddr3_ca_drv = <40>;
-      rockchip,phy_ddr3_dq_drv = <40>;
-      rockchip,phy_ddr3_odt = <240>;
       rockchip,lpddr3_odt_dis_freq = <333>;
-      rockchip,lpddr3_drv = <34>;
-      rockchip,lpddr3_odt = <240>;
-      rockchip,phy_lpddr3_ca_drv = <40>;
-      rockchip,phy_lpddr3_dq_drv = <40>;
-      rockchip,phy_lpddr3_odt = <240>;
       rockchip,lpddr4_odt_dis_freq = <333>;
-      rockchip,lpddr4_drv = <60>;
-      rockchip,lpddr4_dq_odt = <40>;
-      rockchip,lpddr4_ca_odt = <40>;
-      rockchip,phy_lpddr4_ca_drv = <40>;
-      rockchip,phy_lpddr4_ck_cs_drv = <80>;
-      rockchip,phy_lpddr4_dq_drv = <80>;
-      rockchip,phy_lpddr4_odt = <60>;
     };
-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
