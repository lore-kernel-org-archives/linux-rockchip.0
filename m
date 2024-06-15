Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06458C27C7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 01:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZ9gb/++iVa5lN58uX9o0qI9Bk8O29RKEz+Zw99Abpk=; b=16uwsWdI4gqZ0k
	cce+Krs8+aJ5Rel95eiyzGvF5RcYZNzr+RdwuLpOi94moWEpQe7IQ5aK7va7h5jOLwJiL0Q/BXl2h
	fIsUY3/wrzQZClLpZYxjQCfodtbh8TC5Zfs5xUQ9Yhcf7+771TFzeKaD85MwLo81AyaHGUDfkDUc0
	sKB4Ser8DF+OPsGCy8LoJ3h7VUItWemFJbfVHtWmtwEJS7rwE/BU1xlfH92Qr2xnGxOrenb5EE5Yb
	sid50qqbera8EkaIns28daHenj/TznJpEzza9e79mD+htwZ4yXWbfVkItPDLvW/arGMXxThHPBhRA
	SG5mcxdYlf1OUr9mzRQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIIgb-00000004RaG-17Zq;
	Sat, 15 Jun 2024 01:58:33 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIIgT-00000004RVr-46UR;
	Sat, 15 Jun 2024 01:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718416704;
	bh=7LZ/FP1QmtvjACTE2f8O6hoX6TgsfBpUkTOe/3lcqDU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JGHH+EUFdDCx+0Uair3kGw8oOxdoysb8igYxpPsCaF++LM0CzfNmn9z0bk/yQBxVz
	 r5VS8Ypy+f3kFDyKyFYQsWHu5qNxC89RdNmmdw2/107j3zqI5Wq5lU36cJ7JIod2CQ
	 JYbi5RiSM3OfqPbdHUIkRAfLT7HeAsoijRdlZLbS+gpCHtf/LJF+Rx3dYOKUOE9+MU
	 iMaEgGfplXJTXuYJE0IJAJlfwxdm/C4pJbH9CLVRu0I1LMueCqo81KhexDSST0RoKo
	 6+HPCvOjv3UXvYnUDZvQAOTrzLkN3vDahVggFoQMdR1/54muaDG0QkYtWEPZfVRHHG
	 v0+2PSdttl/jA==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 11EC537821C3;
	Sat, 15 Jun 2024 01:58:20 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 2/3] media: dt-bindings: rockchip: Document RK3588 Video Decoder 2 bindings
Date: Fri, 14 Jun 2024 21:56:28 -0400
Message-ID: <20240615015734.1612108-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240615015734.1612108-1-detlev.casanova@collabora.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_185826_176486_B473BC76 
X-CRM114-Status: GOOD (  12.06  )
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

Document the Rockchip RK3588 Video Decoder 2 bindings.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../bindings/media/rockchip,vdec2.yaml        | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec2.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
new file mode 100644
index 000000000000..e54891b46986
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip,vdec2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Video Decoder 2 (VDec2)
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |-
+  The Rockchip rk3588 has a stateless Video Decoder that can decodes H.264,
+  HEVC, VP9 and AVS2 streams.
+
+properties:
+  compatible:
+    const: rockchip,rk3588-vdec2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The Video decoder AXI interface clock
+      - description: The Video decoder AHB interface clock
+      - description: The Video decoder core clock
+      - description: The Video decoder CABAC clock
+      - description: The Video decoder HEVC CABAC clock
+
+  clock-names:
+    items:
+      - const: axi
+      - const: ahb
+      - const: core
+      - const: cabac
+      - const: hevc_cabac
+
+  assigned-clocks: true
+
+  assigned-clock-rates: true
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/power/rk3588-power.h>
+
+    vdec2: video-codec@fdc38100 {
+        compatible = "rockchip,rk3588-vdec2";
+        reg = <0x0 0xfdc38100 0x0 0x500>;
+        interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
+                 <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
+        clock-names = "axi", "ahc", "core",
+                      "cabac", "hevc_cabac";
+        assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
+                          <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
+        assigned-clock-rates = <800000000>, <600000000>,
+                               <600000000>, <1000000000>;
+        power-domains = <&power RK3588_PD_RKVDEC0>;
+    };
+
+...
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
