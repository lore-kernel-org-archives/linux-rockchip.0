Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC5EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtBT4JP0av3zv3/BUfAweyFiF87duvW2joe0AVNiMxk=; b=CoG1dsv05XgR8o
	uWZUY+QCoFfpZxIEx5Iw6gEbBIDXUzfwCMnQdx16LrSSPYqUDVFENO8j50xT1aQhQNF4ORMyAOdBj
	qIizw7zQgS+jq0bnTQk8xiuCjuUlcj8aLxPCLImp6BiDsI683qAyYrpuf6Msl+2B6ASBxim6K7jRq
	fwwSKQtbsfIceibPLyQ2UAGh8TXkxZ5ksvgu6QPBEWEKMcWbLwf5zgY7y7n8daNW1+fJE/Ghd+MVe
	K1/D+9nm5cf7NxUf8jv5APtSXht4trgzF3yqu6YuaJI3Z2Z82rP+FRxTk8zUwgfE/aJanP99iCriy
	FVNi0alNOFwh3f6CQ7Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfE1-005su2-Bm; Tue, 08 Mar 2022 19:10:25 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfCt-005sBN-2R
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:18 +0000
Received: by mail-pl1-x632.google.com with SMTP id q11so17921760pln.11
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CsGRPn1RTvkupGAAJEbEsdTdGlxfOIkdU/en60yl6Co=;
 b=mgKXAFQ4DcX/1a7r7bAFsAYVjmDeEYTBoAMpZcn4yHQM8Eu18Wh6lmYhxEaccbaoyd
 zDqG6Es6KwnA1pQ3nHaWSEos12P648q6kj0hQ9rKLK7ulUl8sOI3npn4FI9GaxXRCP1i
 +Ild/F0DO1/IEUtd0iHaE+xPc8G6iu5h8SPp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CsGRPn1RTvkupGAAJEbEsdTdGlxfOIkdU/en60yl6Co=;
 b=rHIcnh6KD+WP7m4z5MTytlrbZUuvlXvjYUlIQ/hqU/TvBBCxoaFgOPESDosEpeSAxx
 nu1TdVAendsiZlZTQQYLbsfOhxr/q/QFhPf9SUlpM2NLCSil12V4fqvQgGCfE0NuSsJF
 pawqd0Q3ax6wjwyr18Qd41vIbjvAvrIMqSs0WrqsV72zyO4/7RftYyjCzEpZw3t50etM
 B1BHD+A7UHV39XY5t7NPbPFmqX8txmZhTvsx9f34xCIDC8qxFEDBCb9a/T4z6wn4r0NK
 tdD4i1d8VBH529J9lZgkC7c3jz01GCRFqyuEf+2SA+qeHhURy6hE2dZ0W7D0akrgZyTm
 WECg==
X-Gm-Message-State: AOAM5301g/CjHIacuqjRUHnxNyjr0EI5H2a2GM9eWBHb8QWmAhpZT7Wq
 Igq8HiS1Lw4bSgNv/DwFsTFsFA==
X-Google-Smtp-Source: ABdhPJyQMWbvyaoH9dnDNrSe6aUqS9YI8RXfNjJHhLN2GiKD9PD9XY8LA+1ceJRCLl41SZLbongVtg==
X-Received: by 2002:a17:902:6a88:b0:151:f21d:b03e with SMTP id
 n8-20020a1709026a8800b00151f21db03emr9635642plk.33.1646766554234; 
 Tue, 08 Mar 2022 11:09:14 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 p16-20020a056a000b5000b004f669806cd9sm21407488pfo.87.2022.03.08.11.09.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:13 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v4 02/15] dt-bindings: devfreq: rk3399_dmc: Deprecate
 unused/redundant properties
Date: Tue,  8 Mar 2022 11:08:48 -0800
Message-Id: <20220308110825.v4.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110915_151212_68AB4A53 
X-CRM114-Status: GOOD (  12.71  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---

Changes in v4:
 * Add Reviewed-by

Changes in v3:
 * Add Reviewed-by

 .../rockchip,rk3399-dmc.yaml                  | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
index b32c03cb0c68..356bbe5db383 100644
--- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
@@ -45,6 +45,7 @@ properties:
       finishes, a DCF interrupt is triggered.
 
   rockchip,ddr3_speed_bin:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       For values, reference include/dt-bindings/clock/rk3399-ddr.h. Selects the
@@ -91,6 +92,7 @@ properties:
       if bus is idle for standby_idle * DFI clock cycles.
 
   rockchip,dram_dll_dis_freq:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       Defines the DDR3 DLL bypass frequency in MHz. When DDR frequency is less
@@ -98,6 +100,7 @@ properties:
       Note: if DLL was bypassed, the odt will also stop working.
 
   rockchip,phy_dll_dis_freq:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
       Defines the PHY dll bypass frequency in MHz (Mega Hz). When DDR frequency
@@ -105,6 +108,7 @@ properties:
       Note: PHY DLL and PHY ODT are independent.
 
   rockchip,auto_pd_dis_freq:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Defines the auto PD disable frequency in MHz.
@@ -118,6 +122,7 @@ properties:
       disabled.
 
   rockchip,ddr3_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the DRAM side drive
@@ -125,6 +130,7 @@ properties:
     default: 40
 
   rockchip,ddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the DRAM side ODT
@@ -132,6 +138,7 @@ properties:
     default: 120
 
   rockchip,phy_ddr3_ca_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the phy side CA line
@@ -139,6 +146,7 @@ properties:
     default: 40
 
   rockchip,phy_ddr3_dq_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the PHY side DQ line
@@ -146,6 +154,7 @@ properties:
     default: 40
 
   rockchip,phy_ddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is DDR3, this parameter defines the PHY side ODT
@@ -161,6 +170,7 @@ properties:
       disabled.
 
   rockchip,lpddr3_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the DRAM side drive
@@ -168,6 +178,7 @@ properties:
     default: 34
 
   rockchip,lpddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the DRAM side ODT
@@ -175,6 +186,7 @@ properties:
     default: 240
 
   rockchip,phy_lpddr3_ca_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the PHY side CA line
@@ -182,6 +194,7 @@ properties:
     default: 40
 
   rockchip,phy_lpddr3_dq_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR3, this parameter defines the PHY side DQ line
@@ -189,6 +202,7 @@ properties:
     default: 40
 
   rockchip,phy_lpddr3_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When dram type is LPDDR3, this parameter define the phy side odt
@@ -203,6 +217,7 @@ properties:
       disabled.
 
   rockchip,lpddr4_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the DRAM side drive
@@ -210,6 +225,7 @@ properties:
     default: 60
 
   rockchip,lpddr4_dq_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
@@ -217,6 +233,7 @@ properties:
     default: 40
 
   rockchip,lpddr4_ca_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
@@ -224,6 +241,7 @@ properties:
     default: 40
 
   rockchip,phy_lpddr4_ca_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side CA line
@@ -231,6 +249,7 @@ properties:
     default: 40
 
   rockchip,phy_lpddr4_ck_cs_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side clock
@@ -238,6 +257,7 @@ properties:
     default: 80
 
   rockchip,phy_lpddr4_dq_drv:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side DQ line
@@ -245,6 +265,7 @@ properties:
     default: 80
 
   rockchip,phy_lpddr4_odt:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
       When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
@@ -274,33 +295,12 @@ examples:
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
