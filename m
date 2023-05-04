Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D4CC77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lm3y86qkOCj7hs2MMRsNnWVCxhKGXsHr6MAOOdnnzz0=; b=JL8wLeQ7zFs3Tr
	hy9Yhnpd8N3cpFIbqCVtU+lvIXRJQgNs7gNm2FqL13VF2vR3NVGDY8wodwyAm31w9NqrcTHx7nlhg
	OxTRwVgbouDR/+0FoaGZLGTPBFUBIyho9ZRaVNMGPFBv2TTJ1Oxzzk2xlfPuL5w3qlpVaIsWaOyWq
	tRWGN8Gcpsxn4aPL6UuN+MopPp6EKYTS9I3C+4F/v/3muVNoLqCzSb28GA7wQbPBUpROGGDVWEQkx
	77YyFaffSoBmrWN5w7hTIWExUfD1pUJghgLJauvFzN7F/S5PHKtmxJ2AVi+hJ/16CiQNSLZR/OagS
	Cw3avASBVYUcJyOWRp9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pugiH-0095HA-11;
	Thu, 04 May 2023 21:42:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pugiF-0095GN-1m;
	Thu, 04 May 2023 21:42:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Yhj/iaGu6miSkIO1iSWDsIvB1hOGaVWSbMbPYzmXO/0=; b=XBekjcEm3bTS3cWUc2oZxtUSoO
	TymFAwi8ALGx99Ct8mvKPOjWpsU0qhiSDOV8ln1I4PclJOYM8mpDuUxfwRFjBFDRJsaD1ybBwQD9M
	+iwcepy8s+RzRKfvfhPv+bu6Y7uc9oTSzIbtdO4bUp1DFelyGnY7znUVAkKYMBdddzRdLdMKFAibU
	ptBpvldvj5hCTUbAt0W5QyJpfiW6I9D0z1mxzzpTAtvM6MwhuoEPG6b88gyFctD3MHAQI4qv/nayB
	ZYfzRq4IzFVv1A6+je1IdEEFdLQZw5lQc0j+eUfaRS0YG3RS4A7QqiPB3+lMndmpkV7k/FViFRnRg
	+leRLDHw==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufEE-001pjR-2u;
	Thu, 04 May 2023 20:07:05 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E03A66605700;
	Thu,  4 May 2023 21:07:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230822;
	bh=MaX5xiMpkREv1mrGy3uq4EJmAVpURoqntpnyiSAp4pw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nYzofxzlXC5bJnckergPL6/YhJyiLjHvHA+dWpDbHjxUQU6PiBTLpJh5XmAsiipiJ
	 cgWK9F4V9Xm2vSHp0oT2N45u3oWekNfvXLT/6wERI1Gj+FSCQshNE/ufUR3Rheuged
	 Hkwh8HC6lL9O9YhjNqBu67KwodpU82PAgd8p0kprR1HNvP/Z6/hkpESQkSK0oLx8D0
	 T19DOyzLAlpHU/euxIkcPEWYSu1zMRh+5NlcbkgN8aBpFhSsz6kUht/IwDQ5PN00/b
	 dqjQvZOW2iw9NOP+ydWdjUkEGz4jcuTiEQEoYgWiZSaW59RkvQ2YxGSagh4MqJ/a6b
	 fxqh04rEBITMg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 2/8] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3588
Date: Thu,  4 May 2023 23:06:42 +0300
Message-Id: <20230504200648.1119866-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_210703_255450_3B8E0F68 
X-CRM114-Status: GOOD (  10.06  )
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

Document the OTP memory found on Rockchip RK3588 SoC.

Since RK3588 uses different clocks & resets configurations than PX30 /
RK3308, provide the required changes in the binding to be able to handle
both variants.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/nvmem/rockchip,otp.yaml          | 54 ++++++++++++++++---
 1 file changed, 47 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
index 4cd425ae2823..9c6eff788928 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
@@ -9,33 +9,35 @@ title: Rockchip internal OTP (One Time Programmable) memory
 maintainers:
   - Heiko Stuebner <heiko@sntech.de>
 
-allOf:
-  - $ref: nvmem.yaml#
-
 properties:
   compatible:
     enum:
       - rockchip,px30-otp
       - rockchip,rk3308-otp
+      - rockchip,rk3588-otp
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 3
+    minItems: 3
+    maxItems: 4
 
   clock-names:
+    minItems: 3
     items:
       - const: otp
       - const: apb_pclk
       - const: phy
+      - const: arb
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    items:
-      - const: phy
+    minItems: 1
+    maxItems: 3
 
 required:
   - compatible
@@ -45,6 +47,44 @@ required:
   - resets
   - reset-names
 
+allOf:
+  - $ref: nvmem.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-otp
+              - rockchip,rk3308-otp
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-otp
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: otp
+            - const: apb
+            - const: arb
+
 unevaluatedProperties: false
 
 examples:
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
