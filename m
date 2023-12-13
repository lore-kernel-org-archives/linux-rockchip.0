Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47E6CC4167D
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GP1Lxm3dUPb0lqtS5pgE3Da8saVM433Z+XNw19yTPU4=; b=JOHXRop/pdqIKn
	YIUrPp9Wc5gqwMkSuUcwB3O7k58VOLJ6TGy5q6237gyfvDcVCZESuuTkW+UpqtSQGiTESaH6FlWpy
	31+ruzyQxfV9kpTT0b27zSIM7sPtACAy/iDYOtjtw5LBJ6qj0TXR3/0UxHwuIUZdq/DDS/qmSeld8
	vGgEhS3EZFN1nKO4AibT3fOpMlYb6BnFs3uebI2iQuNp1owYEJxWWD70oN9t17giZj3PVYHetRrov
	2oTbodkgQWKNhsw7BDtXrOa4BfBQE0kE542g+6QJLwFVPNfA/P2HB4p8gb8XuCOOX/ZQ+q6RoIFFo
	tGxOjZMjPouI+5IXJfMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGk-00Fsft-0J;
	Wed, 13 Dec 2023 19:51:46 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGV-00FsTI-1N;
	Wed, 13 Dec 2023 19:51:33 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40c3f68b79aso53860965e9.0;
        Wed, 13 Dec 2023 11:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497087; x=1703101887; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ERQju2Bh+K8GCwYjh7yY4rIstgFgSHVz3s7kTSLi67E=;
        b=jWl0igKWS+fhVChyV6MTuHELgb+Glo9/8vqJZr9WAUrvhuSzTy2Ap8y75XjROTkPlN
         NmFBlP4cdzynINr8kTy8+F0dRul62yER4rrle4+gPshDBp3Q8LEnY3N0h5Yooxv/0JCL
         0tjExnT3G+4a1YtP2zUGlHTZfg5sss5T9v9nh4IRBUWo++sNUQwbde2LqrFwJs6Rzsee
         wtZqaSNwakTKXNt+wgbHU7lNyIfl83b/YfFKDvoxpqaTOEHdbUvzKlU46Mo+iMdd0W7U
         8ZSeFU/f/OlwkI7pPl5Qor5Y9Kr85boyEmCDFVw1jhoZQi1C6yTUC5WyAPmk/x8E6MbI
         F2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497087; x=1703101887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ERQju2Bh+K8GCwYjh7yY4rIstgFgSHVz3s7kTSLi67E=;
        b=qy1c4LCpYpztmKdci9w0Pv2lINBjeramo/ASXR0VSIUTvlHZKWfV4CKXacm7kwOr+G
         QfBWrX/mfAlHMUHw0gKfmi72cUioIlkonGj2qHUzAQViTF6JR4V6w6j/UcPEjQbD6PA1
         ECCCmnoQiji4SegesOdHDTx/cdZXGIo9O/Fm3koSTEqj4xrjHovcPMgCcRjQ43JfAHe0
         aXvS9Wd5iOJKmcQIREYk5d1QWGYW+DSdpSkWnY1KMHyqc4KuW8V96c5dmGKwzCPy7fJd
         juye2YyG0KLa1OpWEbqqRtIVJ1nRsCnyGt4BM6H47V1Mq6Kx34GHkttcp98CzkOgRkDt
         G9EA==
X-Gm-Message-State: AOJu0Yw3A7gaElr3unMtkshWRiGGz8W33Lx2pM1aKfy2ymWg0lr+xSeA
	SA0XvPXFS+t63c+DpYnVYg==
X-Google-Smtp-Source: AGHT+IFubGXtBYJHwawt+OjhdiJA2OK0SDjjVKO0Bx22olt+rzUfmcB1mZ2doozRlrhYe+3xiI98xg==
X-Received: by 2002:a05:600c:54f1:b0:40b:5e21:dd2a with SMTP id jb17-20020a05600c54f100b0040b5e21dd2amr4691135wmb.88.1702497087589;
        Wed, 13 Dec 2023 11:51:27 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:27 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 01/11] dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
Date: Wed, 13 Dec 2023 20:51:15 +0100
Message-ID: <20231213195125.212923-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115131_461843_D8050563 
X-CRM114-Status: GOOD (  10.46  )
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

Document the compatible for RK3128's HDMI controller block.
The integration for this SoC is somewhat different here: It needs the PHY's
reference clock rate to calculate the ddc bus frequency correctly. This
clock is part of a power-domain (PD_VIO), so this gets added as an optional
property too.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../display/rockchip/rockchip,inno-hdmi.yaml  | 30 +++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index 96889c86849a..9f00abcbfb38 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3036-inno-hdmi
+      - rockchip,rk3128-inno-hdmi
 
   reg:
     maxItems: 1
@@ -22,10 +23,21 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: The HDMI controller main clock
+      - description: The HDMI PHY reference clock
 
   clock-names:
-    const: pclk
+    minItems: 1
+    items:
+      - const: pclk
+      - enum:
+          - pclk
+          - ref
+
+  power-domains:
+    maxItems: 1
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -55,6 +67,20 @@ required:
   - pinctrl-names
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3128-inno-hdmi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
