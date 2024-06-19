Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF2AC27C79
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 15:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIl5oqhoAELDAm72P5TxjfMtpmCbmQEqibj0YXhEC+M=; b=EJNEfK9ZNchGRI
	BRwdUAuNFwDHdrxIexZf/9DMC+JlWMRQZxhr5NGbb2VFXfdJ9dsiueQokAS7Zl7n1TY4yugqm+Hkz
	5gWoi++lDsDsaeKSD0CB+QOcdyJCAyoA+tWpK9IlbRwWKkG1Gr1KZzYxd4kKwWPZr9/vNYkcXKPRo
	TjcENJgjo0oVNX4XIgZ7LE/tlqGMnR3dJemLD0f2VkVtgnFuqw8lcJx/mHPkXzovn3qv3uqT4iIn4
	iC8D0w8SqPtYRXf/a5yIwwZ24bkwTZdyNTxzmnxjhZ9Xiv5IuT/WqAcCY+ylXoFvmPAbVQp0Axn6G
	TzTWJgKhx26+RDsksY5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJwon-00000001iGK-4Aad;
	Wed, 19 Jun 2024 15:01:50 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJwoJ-00000001hxC-30pU;
	Wed, 19 Jun 2024 15:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718809278;
	bh=1z6lF3a2haAL4uzEgyYmi5w0gQOd0Ru6HiKwTfg7DFk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IyXxw512VWnnzmvoNy5Kk5Z2rl1LR9ZWLLV5TMkaOovgeCvVpx7bC217+8hgK6N13
	 zoz0apYBnq6mQJEAH+WMzGvLGpDTt47ykdL1C9ZYFFzx4u7xVNZt0sigAXdu97kAy+
	 x9QDJfaYLHtLqab1DUeLmwjSHrPcrcmVbV5OxVh0jAu73QrIr/4x85JSFJR3cPglL3
	 BRMmbCJCRycE2WGQIvXz31IuOc3Vjn39wy8WYxXaymmrRTqBE/cUE9g+kAZrwGX1q1
	 dNv5EyOPhxkV7M+ak1rNCLrgGAPpaA36e9BxtEzboB/3qwfWAQEN3sRAstnsuw7iKT
	 zGqkqyGdqqrYQ==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4B82537821A9;
	Wed, 19 Jun 2024 15:01:14 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 3/4] media: dt-bindings: rockchip: Document RK3588 Video Decoder bindings
Date: Wed, 19 Jun 2024 10:57:20 -0400
Message-ID: <20240619150029.59730-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240619150029.59730-1-detlev.casanova@collabora.com>
References: <20240619150029.59730-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_080120_222310_5A174A42 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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

Document the Rockchip RK3588 Video Decoder bindings.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../bindings/media/rockchip,vdec.yaml         | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 08b02ec16755..22cb62faaa9b 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - const: rockchip,rk3399-vdec
+      - const: rockchip,rk3588-vdec
       - items:
           - enum:
               - rockchip,rk3228-vdec
@@ -30,29 +31,56 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 4
     items:
       - description: The Video Decoder AXI interface clock
       - description: The Video Decoder AHB interface clock
       - description: The Video Decoded CABAC clock
       - description: The Video Decoder core clock
+      - description: The Video decoder HEVC CABAC clock
 
   clock-names:
+    minItems: 4
     items:
       - const: axi
       - const: ahb
       - const: cabac
       - const: core
+      - const: hevc_cabac
 
   assigned-clocks: true
 
   assigned-clock-rates: true
 
+  resets:
+    items:
+      - description: The Video Decoder AXI interface reset
+      - description: The Video Decoder AHB interface reset
+      - description: The Video Decoded CABAC reset
+      - description: The Video Decoder core reset
+      - description: The Video decoder HEVC CABAC reset
+
+  reset-names:
+    items:
+      - const: rst_axi
+      - const: rst_ahb
+      - const: rst_cabac
+      - const: rst_core
+      - const: rst_hevc_cabac
+
   power-domains:
     maxItems: 1
 
   iommus:
     maxItems: 1
 
+  sram:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: |
+      phandle to a reserved on-chip SRAM regions.
+      Some SoCs, like rk3588 provide on-chip SRAM to store temporary
+      buffers during decoding.
+
 required:
   - compatible
   - reg
@@ -61,6 +89,24 @@ required:
   - clock-names
   - power-domains
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-vdec
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          minItems: 5
+
+        resets:
+          minItems: 5
+        reset-names:
+          minItems: 5
+
 additionalProperties: false
 
 examples:
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
