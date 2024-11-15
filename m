Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 513C4D68BC6
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 16:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOT6p8RgSVj1o1e18qhyqa8VuorxKFmtzvwd3l3yMMA=; b=Cksgbp4Pc/rL2U
	w2/jVDjtIYLGkx105TQa5Nuk8KfCA/s8r2SYowB7H3S/oPYNRizmSMhQnIxByq3LFprzV875rSpsu
	//X1Ih5uLwZe8al41tT+hkqiI5I9veS43GztUoRxx/cuZFG4ycVLaSeRFvyYazYlQ31xkiAgmAf37
	Cc10kA0UakgLgqSPAPHwhEs7Qbp+UZHzX8l6yedQurnkOqGrBr1iEXvz8UvT8I0IsJhkZ7AcuS6sc
	oUp2/gsKxsHYRf42uJ3hjJTl11p4++i0T/F1xDOvTwjQpoILlcOg3YhbAlc21f4fIaSnlfsty54sj
	vVra254W3EVdcYacMj5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBz6R-00000003KWj-1FIV;
	Fri, 15 Nov 2024 16:23:23 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBz4d-00000003K0P-1OV5;
	Fri, 15 Nov 2024 16:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1731687689;
	bh=t8QOMvicQTdBi3HEc3pXhANKEj297lR7+tmr8+awtJk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ggbk3HKo6LYr9TppFbMl87GhuGstk7MN+7cbv64SY8d0AgULJiOtVrATmrzgtnB2k
	 790RKIi56ZKOuLQCneAhgucS8gP31bVFm73yMVUDvxzhA64B2XxvzsnpPQUQ1zfyjM
	 rgN0gIRMgi8E4MGuANUsLsCxOtrQSbhNFc62jhmKtbnTsxyMHNAAhwLzzioCJpbBpn
	 NixWT2W91JFLDY3XJ1llXNK3qGJlmgBgNmGpeLKjxjEZAWTwEpvAvKs1e3TbZ9MPp+
	 ZJlvtJDBD5IB9rFb2GYrIAR/+whOIbcaUvfQShn4NV2Y1ZIdC6Mpn6S/0xrez6ZaZb
	 PCjFXJ3IOepKQ==
Received: from bootstrap.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AB5E817E374C;
	Fri, 15 Nov 2024 17:21:26 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: display: vop2: Add VP clock resets
Date: Fri, 15 Nov 2024 11:20:40 -0500
Message-ID: <20241115162120.83990-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241115162120.83990-1-detlev.casanova@collabora.com>
References: <20241115162120.83990-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_082131_534629_A28B2787 
X-CRM114-Status: UNSURE (   8.49  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, Conor Dooley <conor.dooley@microchip.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko.stuebner@cherry.de>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the documentation for VOP2 video ports reset clocks.
One reset can be set per video port.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../display/rockchip/rockchip-vop2.yaml       | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306b..5b59d91de47bd 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -65,6 +65,26 @@ properties:
       - const: dclk_vp3
       - const: pclk_vop
 
+  resets:
+    minItems: 5
+    items:
+      - description: AXI clock reset.
+      - description: AHB clock reset.
+      - description: Pixel clock reset for video port 0.
+      - description: Pixel clock reset for video port 1.
+      - description: Pixel clock reset for video port 2.
+      - description: Pixel clock reset for video port 3.
+
+  reset-names:
+    minItems: 5
+    items:
+      - const: aclk
+      - const: hclk
+      - const: dclk_vp0
+      - const: dclk_vp1
+      - const: dclk_vp2
+      - const: dclk_vp3
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -128,6 +148,11 @@ allOf:
         clock-names:
           minItems: 7
 
+        resets:
+          minItems: 6
+        reset-names:
+          minItems: 6
+
         ports:
           required:
             - port@0
@@ -152,6 +177,11 @@ allOf:
         clock-names:
           maxItems: 5
 
+        resets:
+          maxItems: 5
+        reset-names:
+          maxItems: 5
+
         ports:
           required:
             - port@0
@@ -183,6 +213,16 @@ examples:
                               "dclk_vp0",
                               "dclk_vp1",
                               "dclk_vp2";
+                resets = <&cru SRST_A_VOP>,
+                         <&cru SRST_H_VOP>,
+                         <&cru SRST_VOP0>,
+                         <&cru SRST_VOP1>,
+                         <&cru SRST_VOP2>;
+                reset-names = "aclk",
+                              "hclk",
+                              "dclk_vp0",
+                              "dclk_vp1",
+                              "dclk_vp2";
                 power-domains = <&power RK3568_PD_VO>;
                 iommus = <&vop_mmu>;
                 vop_out: ports {
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
