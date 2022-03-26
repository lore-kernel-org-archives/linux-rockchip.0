Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF1E6C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 10:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FEkt8DDboayGZN8thIdKQdsLUOhu9z8Ze9ZyTjcOsYs=; b=lofVOfmMg6orwr
	dQLo5RA1h7fRac1r/cs+qPlSH8K4jGfIysmLTK9LElo2Cmsw8ipB887zIhJzwMNLtlZ3RT6K++34h
	T199Eg0walyZ/Y1nEiRG2/MYwe2ICA3880TdB5KCgua/K8Nb6oo/CGZG5S6cQwipVF7lB5MHPLOl1
	ZTQ5ccAIw7S6ehPbmKrLi7lILx+LuB4CBPpUWnfy9cJIk9mF7LWbu96ph+cdOFMqib7gEz58d+wB/
	8Sh0pFlsKxjmI7RKX5s50D3yFA7NajbM6E/JmwFNFShAEaUnoGchHV6QG+En3AUtIiatxhqWIuigz
	qaIEsfO1WREEx4P0n7WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nY3eH-0049DA-4X; Sat, 26 Mar 2022 10:27:57 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nY3di-0048xc-G8; Sat, 26 Mar 2022 10:27:27 +0000
Received: by mail-ej1-x62d.google.com with SMTP id bi12so19771597ejb.3;
 Sat, 26 Mar 2022 03:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ITgASCxQT302s/bxx026+0Ar86LJl3YrM5DNTNIgaE=;
 b=jt8a90MHRmQFxGOT55vbTf2XBG6bFQdgQIY7EKDh26oCbD4mz0R6q7O6c54f3wSMBt
 ZOETBacl+LJVn3iZgrMJag45qz1D4pjkaiaLA9ZBWcFhVw6/mschnZli2N8gWlZDjLpE
 tQDf7+xbQ3eqrY/VnWuYJTyljlB98Zb7anxDqrZgICBqDqBvIhz43M2N3kELtHDjhnsR
 NRwm0eqHcI2uKQgHQ+n73eww9MwUhKMXBDMcmbm9B7lzHZKUVA+qwwPsJfqk3IfnFUO1
 h5YnaS6H0SBSirwr/quKGcuPEEhHrMyptC5d+xR5jNX5emf5btowYivK5gQ3Sy5bzKpC
 4tvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ITgASCxQT302s/bxx026+0Ar86LJl3YrM5DNTNIgaE=;
 b=xCaq3BuEJWgrXiNWgD6iQrAbsbfUz67E+TUNDkXS//gXi577lzQM3VDVONcfQl0s7U
 7gElApM5+42o+8fAPadU0jT2V4qQtstyyA51Kv+mJi9qh+zY8idu9sXVDJHQE4LD8DLo
 0LS7wKdtAnpEft2mYhgKNVO1MVFAX/U93Q5O0l61zW5vvEY/6Irdb9Mu/wAoQQaBkUfL
 hRTctVE7jSqFo2I1t9tR7e8XFIysQnX7EvJsrUFh6ucCC1f56RCBHs0MW4LpZjFMtvW+
 dEiGG8xWoM6gxZNIyCYi1f5aGRjj9vYiXgXNfKNBa19NG9oD+wQ8xkPAQildE+l8LEAw
 Cang==
X-Gm-Message-State: AOAM531ZpvVKmT2GAXnND2shNY+YUfk5ra/V9iMrzHxKF4KwMQm8hCo7
 cj/KojZgcSHWsgP2I6solmw=
X-Google-Smtp-Source: ABdhPJzq1WkwqLO43pcA+a6Qy/zbc6SmIkwV1rMZxHyewHF9VYllCXVeOkt+feagcqO6aUnS+kH2sA==
X-Received: by 2002:a17:907:b590:b0:6c1:c061:d945 with SMTP id
 qx16-20020a170907b59000b006c1c061d945mr16549763ejc.768.1648290441056; 
 Sat, 26 Mar 2022 03:27:21 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g23-20020a17090670d700b006ccfd4163f7sm3209021ejk.206.2022.03.26.03.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Mar 2022 03:27:20 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: clock: fix some conversion issues for
 rockchip, rk3399-cru.yaml
Date: Sat, 26 Mar 2022 11:27:10 +0100
Message-Id: <20220326102712.20906-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_032722_591351_9DD736C4 
X-CRM114-Status: GOOD (  11.63  )
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

With the conversion of rockchip,rk3399-cru.txt some issues were added,
so fix them:

Changed:
  Align the table with external clocks.
  Remove the original author in 2016 as maintainer.
  Change clocks maxItems.
  Add clock-names.
  Use clock-controller node name in example.
  Remove assigned-xxx.
  Remove ">" from description.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3399-cru.yaml   | 32 +++++++------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 72b286a1b..c2763e694 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -7,7 +7,6 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Rockchip RK3399 Clock and Reset Unit
 
 maintainers:
-  - Xing Zheng <zhengxing@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>
 
 description: |
@@ -22,11 +21,11 @@ description: |
   There are several clocks that are generated outside the SoC. It is expected
   that they are defined using standard clock bindings with following
   clock-output-names:
-    - "xin24m" - crystal input - required,
-    - "xin32k" - rtc clock - optional,
-    - "clkin_gmac" - external GMAC clock - optional,
-    - "clkin_i2s" - external I2S clock - optional,
-    - "pclkin_cif" - external ISP clock - optional,
+    - "xin24m"           - crystal input                          - required,
+    - "xin32k"           - rtc clock                              - optional,
+    - "clkin_gmac"       - external GMAC clock                    - optional,
+    - "clkin_i2s"        - external I2S clock                     - optional,
+    - "pclkin_cif"       - external ISP clock                     - optional,
     - "clk_usbphy0_480m" - output clock of the pll in the usbphy0
     - "clk_usbphy1_480m" - output clock of the pll in the usbphy1
 
@@ -46,24 +45,15 @@ properties:
     const: 1
 
   clocks:
-    minItems: 1
-
-  assigned-clocks:
-    minItems: 1
-    maxItems: 64
-
-  assigned-clock-parents:
-    minItems: 1
-    maxItems: 64
+    maxItems: 1
 
-  assigned-clock-rates:
-    minItems: 1
-    maxItems: 64
+  clock-names:
+    const: xin24m
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-    description: >
-      phandle to the syscon managing the "general register files". It is used
+    description:
+      Phandle to the syscon managing the "general register files". It is used
       for GRF muxes, if missing any muxes present in the GRF will not be
       available.
 
@@ -77,7 +67,7 @@ additionalProperties: false
 
 examples:
   - |
-    pmucru: pmu-clock-controller@ff750000 {
+    pmucru: clock-controller@ff750000 {
       compatible = "rockchip,rk3399-pmucru";
       reg = <0xff750000 0x1000>;
       #clock-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
