Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72951CD8CA8
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKE0AGyeVx2ApPoYBMtIeAn/QrSSvSxZBnL8MXBMDM8=; b=2DM14CM9+2St8l
	XVGmy8t8iG7reXHg6CPZps2p1wTEx9+Fk+EZwmZAmQfGmd0ayi6x66PVAWhhMSE1xc/0hhsnCM+Xm
	4DW3nuRLJf+w+9qyqb06hc7wFbV9pN2OC9dtQPjbSj4GwnEDCuM/ZSsiDJzYbvm0RRJDRQehj91E9
	TXVh79mx5f1XChm2YVQHV+xp+yix+l6WfqYyk/W82rHy09MZGi+U0mKnObsyDD+vWlxtzcd8L2JQ2
	V8mB6tIxelOfceXg6zNpjc8CsuwNaSIUyNTBZ70h1e2lFh4KF5Z5etyIbLoMtdmY4HnHYTLw5MEkW
	ff+WD5EmL64t8vp9RsHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKR-0000000C18r-0n7L;
	Sat, 13 Jun 2026 06:58:51 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKG-0000000C0tl-45xX
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:44 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-490b3637b90so12560665e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333919; x=1781938719; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZ66LcteqJ4QI9hjgF9HToSLQnhyQKu6uHIFWcsfYcU=;
        b=UV2enESGgTtKpXQdi9a6scjlmOucbp6hnFysPP92Wln1SWP2n0cHcyIAdvoS8bjg1r
         x7lVnO5RHLgZ1rjIxzkb2WiRWAkJwt0m+El7KV34plv+HCIMnZe0Rz0AjOcVzS01RHZl
         daqqEHu7VtllhpAolq3rmJeLZmZLWMM0EJDAyQn6AZCKOAYoowJF+nhlfCdryauiiQAY
         pzJINJbh8lX0kbPZYLGm8/1OPR1aigOk9W5usdetxX5h//6HsI0CPh3FtiQ6I2N0okk1
         O992xqkzwTLxm1fITQuqXadm2TqWFCjmPbuSBaNjfMTnwKfmw4kCy1h5VomYb2D+5mp0
         ws4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333919; x=1781938719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jZ66LcteqJ4QI9hjgF9HToSLQnhyQKu6uHIFWcsfYcU=;
        b=EUexJ0ypVGSr++NmcZQlUDCMUbXjCEF2L4MGy3OAgQBY5bNjrh+0tNG+idrFL5OXT+
         MnvPIOhMzoK58l7paNPnysOJcDfVymd+LfPB7HyArY/gQmxt4IOz4Ey2EvUALIlfe+fI
         OLZXaDaU4dIBDxpIFUI58Vo334N2Qftey5KHAxp6ivhMjeYRE+MFpaBVSqTFcFT0RM84
         QZcLAYQr4niUSBUDCxg1H69V19BkN9tHaXdJgn1aVwGUYLxbS6fqEdpooCRxBcXyf/br
         RjhBg1WHVatUbsNVPN57oHkXEPWTm32DOadiu1T5WFEY8LPbO//VFbALQavduxhDZ6bC
         VJRg==
X-Forwarded-Encrypted: i=1; AFNElJ84lVrXhURHCyQVcRddWDPc4x3geRdFyxgGgG+HafyF59/BldLte2Sftcf/8BEFwLyGolBEScQ8+V+LkXtcQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXq4tF0EqLiL0xAwP9z+hRPBdr7yXgDN/18tssfaumTvrI/YKo
	nSndMY24b6JLuNNrgEYfrCUE4dCAXqxITGO1FrrQNottPeyzN4s4Io1U
X-Gm-Gg: Acq92OG4FcfFLmM4r1bnAb4c6Z8A75MhInrdMg2m7xQnOKGE1Ex+AtH1BEy8RkJj85S
	BpKEhy19vAvCiPm1qZ8eNljfOtTjeXxErPVPshQFQzJe9bR2kGw3BSUDZoRGm2PvIneKuGgI8Hg
	cxmOBnwx/xcmCDIxt0GBcw+/BBb6C0u3q/I/FlpXl7VIr/fxCNnJmeO6aQySNwxU0eikDK7KXcJ
	zGKjuQ0hcReH64laABYFMAb/Rf4nFLuNtJL0wRE3iHzzVEb1skNBxIcS3Gryz8+jSySb5GFuJv6
	5A8d0LtY7WAxYB1JfHQPNabb4+hRL++W3Tr0SGmhhpbzZTqS2hV3Wjof5z5TcVN0D4zHq6Teyma
	K0cE/Zd7uAL4KsNrxo6Zn/IAgXA9x8y3NUNBpwXJmZNywSxNmdWI6KSgjDVZkDwuKaNc10bWqfh
	SBkUf0f9+wiP9LkGS1v+DJLT4dqcUrQ9cop5o0hXz8XA==
X-Received: by 2002:a05:600c:4ed0:b0:490:5e2a:f924 with SMTP id 5b1f17b1804b1-4922008485fmr28715325e9.7.1781333919182;
        Fri, 12 Jun 2026 23:58:39 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:38 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 6/9] dt-bindings: npu: rockchip,rk3588-rknn-core: Add RK3568
Date: Sat, 13 Jun 2026 09:01:13 +0200
Message-Id: <20260613070116.438906-7-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235841_036683_346B678B 
X-CRM114-Status: UNSURE (   9.35  )
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

From: Midgy BALON <midgy971@gmail.com>

The RK3568 carries a single core of the same NVDLA-derived NPU IP as the
RK3588.  Add its compatible.

On RK3568 the NPU NoC bus-idle and power gating are controlled through the
system PMU rather than a dedicated register block, so add a rockchip,pmu
phandle to that syscon.  The RK3568 NPU has no dedicated SRAM rail, so
sram-supply is required only on RK3588.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../npu/rockchip,rk3588-rknn-core.yaml        | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a4903cd1..e0b948ac47d45 100644
--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@ -21,6 +21,7 @@ properties:
 
   compatible:
     enum:
+      - rockchip,rk3568-rknn-core
       - rockchip,rk3588-rknn-core
 
   reg:
@@ -50,6 +51,13 @@ properties:
 
   npu-supply: true
 
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the PMU syscon.  On RK3568 the NPU's NoC bus-idle and
+      power gating are controlled through the PMU; this points to that
+      syscon so those registers can be reached.
+
   power-domains:
     maxItems: 1
 
@@ -75,7 +83,24 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-rknn-core
+    then:
+      required:
+        - sram-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-rknn-core
+    then:
+      required:
+        - rockchip,pmu
 
 additionalProperties: false
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
