Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBFACCD98F2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 18:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcOwVTKvZ5sx75oFQasa6a27SHQXjK8KFm0aWJK12Xg=; b=t5kcL07OlmxpsB
	ofHSjJjQbVgFiGxFzreKybUCQe+sgd5EOs5zM/iMKBI23oRdgeozxWzCH1ftGpHZY+QWlzHVhT4w0
	UKgT5d0Lc25y4x1OGzoh7XaTepyflhfoe0vXkJ1xxiXRBeWItwVtJCIg4OSo8QeqrsV9wgpU4Ek2x
	nX9JkaLcIWkrDA7r1Y1UP/+ZrgLyAOrRqNqjxwqKyhBweAEgrOvmjT0S7NeCycq7urF52A51uGawi
	rRyM1NN9xiRacxY258VNtoY8Qhhm4tSRs0cEpN8YlciAteb4inMByJ0Or5WS2V+KgNWyOgBy4IyYc
	aQm/kxRqWdby2OJq/RvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZvMx-00000000CQG-0kTp;
	Wed, 17 Jun 2026 18:52:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZvMo-00000000CJM-2Bqk;
	Wed, 17 Jun 2026 18:52:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781722319;
	bh=EihMJ+MjwJWw3LKzGCW8dkUoe6Mk2y9hm9cHf1RY+70=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=p4yoIqz1k+roX3xgVG83uX9jBwG51o/SWD4kDzbrnjsPEGVC8GBbHP5T5UjwZE/q4
	 BVJ/tIOf46dn2SyDILCkVL/MzTYZSrMOdvCcCPLYJV/ECYJqw44bHGAJNNfIp+0tEN
	 I5TT17jAGc0OCxThJqqDAEBpmLJ/1y4dhXZXCABrZzPaxH7o2sHuU3ee0pmfwH/Xc9
	 0+F2yPKF64X/Lt5Q8GtLSVbvgJjsd+lnkz10FPTJ9330qa5gIecP8djEWtnqHEyOxj
	 j/Y8GbNADtDTWmko3xj/yLicNipgnGpA6FcOK5uEjQJ8gHvGqNcLal3TMDHjSNDvLq
	 SoEtqTlhxB4wg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 89AA817E05DE;
	Wed, 17 Jun 2026 20:51:59 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 17 Jun 2026 21:51:54 +0300
Subject: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset
 properties
MIME-Version: 1.0
Message-Id: <20260617-dw-hdmi-qp-yuv-v1-1-a665cfd06d7d@collabora.com>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
In-Reply-To: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_115202_774390_4E325C30 
X-CRM114-Status: UNSURE (   8.09  )
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

Document the VOP2 resets corresponding to the AXI, AHB and DCLK_VP0..2
clocks, which are common to all supported SoCs, plus DCLK_VP3 which is
provided only on RK3588.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../bindings/display/rockchip/rockchip-vop2.yaml   | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 93da1fb9adc4..d3bc5380f910 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -82,6 +82,20 @@ properties:
       - {}
       - {}
 
+  resets:
+    minItems: 5
+    maxItems: 6
+
+  reset-names:
+    minItems: 5
+    items:
+      - const: axi
+      - const: ahb
+      - const: dclk_vp0
+      - const: dclk_vp1
+      - const: dclk_vp2
+      - const: dclk_vp3
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -148,6 +162,12 @@ allOf:
         clock-names:
           maxItems: 5
 
+        resets:
+          maxItems: 5
+
+        reset-names:
+          maxItems: 5
+
         interrupts:
           maxItems: 1
 
@@ -194,6 +214,12 @@ allOf:
             - {}
             - const: pll_hdmiphy0
 
+        resets:
+          maxItems: 5
+
+        reset-names:
+          maxItems: 5
+
         interrupts:
           minItems: 4
 
@@ -246,6 +272,12 @@ allOf:
             - const: pll_hdmiphy0
             - const: pll_hdmiphy1
 
+        resets:
+          minItems: 6
+
+        reset-names:
+          minItems: 6
+
         interrupts:
           maxItems: 1
 
@@ -289,6 +321,16 @@ examples:
                               "dclk_vp0",
                               "dclk_vp1",
                               "dclk_vp2";
+                resets = <&cru SRST_A_VOP>,
+                         <&cru SRST_H_VOP>,
+                         <&cru SRST_VOP0>,
+                         <&cru SRST_VOP1>,
+                         <&cru SRST_VOP2>;
+                reset-names = "axi",
+                              "ahb",
+                              "dclk_vp0",
+                              "dclk_vp1",
+                              "dclk_vp2";
                 power-domains = <&power RK3568_PD_VO>;
                 rockchip,grf = <&grf>;
                 iommus = <&vop_mmu>;

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
