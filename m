Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A52A3C44500
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qjXwzUw+t+wm1lMTmlhyxw2Gc+OSdZqhkwHc3FiIBU=; b=KU7fi5LkxynZOm
	bFVWtYXZBd8YRuZE1WDzJHBrc4Hy/wWjhEJhPHMpKJdvPoWT6tfZ2B6ZkEd2NMITVlD7gLWxHMCpL
	Pxl+E4i3cG/1n7i0sbV3pGWCBf2c5UnMQWGiCtBhyjBPG+W86G/FaySpFwGIDt5dMV/sC1jMN94wN
	d/Jp2iNIgxiEydyeMR2Odan6B4EHOuYTXgGfMegcwziLewxnQIphCYa0kLbfIzycyxCX9sDUfCDOb
	MqGmHKra8dI7Cu4DGhUNSFAa5dqZA95I6b2Q8VHFOvmOz0WBLaLm7C2+wi9YrQPgogFVmvt+4Po1v
	UcRyBu5JYcNSM+EMB8wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTS-0000000DVK4-0AH1;
	Mon, 06 Jul 2026 19:59:26 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTO-0000000DVE4-1n0k
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:24 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7eb787dec99so2192876a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367961; x=1783972761; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5hy3Z9jv0vrGFeBz0PtZBTuwjhzXWCPOOX3HmJCm3k=;
        b=ICEKzJrmOANNHKt+zVRyPrTW+K1vQrFzAR9Jov+JYmZiyU7hSmVSg2MFEuOinEHWUE
         ETFSr0yc0EcFTI+UWclMQigaMS+Xbq5C+jMkDeQUEzNmNAep3hypLCwExA/vSsA+I1qB
         VI4PiGaRlkYVM1P0NSkhCtZ/sXn7VJIwhlzoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367961; x=1783972761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m5hy3Z9jv0vrGFeBz0PtZBTuwjhzXWCPOOX3HmJCm3k=;
        b=S89oKnFAvywyBOPcxY7mjqwPk0Zd4QgbowNbZIWw4sLXApOORA922iNWr+dUf3cBR7
         pNWJqY7a2tTLtRlKLvw5hLbuVeg2sHMUd/K+BZrGjajN6EvSbaXGIBs7u+S06SbTkAeu
         ICslWpB0qCeuImA7si8ewvxnP6ducIt2QrJVY71a4Mt8zKugXd41anYhM1S+OtXCxxds
         C8jmB6+R0jysqvKzVbb+r/BzQy1S7BgwCAk4ShA369iyRYtTpmjXTsXCxVNBwhLG+Ump
         1OhDQ/kUk60pscA+40HtvQ7LEWFjQP+EQ5ysaIQ+IJhRcCscLlzC1RZ/brh0l6r0EztI
         4ypw==
X-Gm-Message-State: AOJu0Yz0rx6fKNgWbPr0BMdWq3fa04o8zQRzMTQxtrlu1c6PHPsfkqC+
	gSigMIqjS++sT3zolC6wbfYrx0NjJcJsZQqGHS7yKp9bjEmQRPpxLte8L3C9rgCBEQ==
X-Gm-Gg: AfdE7ckcXM6MXCcyptE5beKS++c2fdufY8enG9niIOFgcCTklaAd6ehdjA11bBbChJE
	1vLWYFBGLx4JyQGylDNwZdYVxpB7b835aoHozmF4ei37aGmib6upS+VU6aBr347ebPjTqUwsrAZ
	jb8knybx6mrTejmnTRtjf9ly4Y92dcE6GYe0TKhIMiQFt4K7fpuhdCf4Z65nWXScHGkJMzsrpNM
	NY6xy8S0S7nto5uceY6dGhcl1DWv9mT+CFYsnMwyKkwHgtAKU7iw5D4YLdtWst4J8t3zjeAy7j8
	Csbcfo1eUTETsKxEZYARLO3Pwsvlp1F8zBPjUJgGp8QDkhqOmt+DB2Fj8PodT/n7WkfzjMJSPk4
	QtXzQTces2M54JzZtxj+n/+B3VGmA7BQLLdwqzcrWxzd79gj5mHvIC/hdg4NhuoMBhY7zLDOgP0
	cadyt3oZ8=
X-Received: by 2002:a05:6830:680e:b0:7e9:5de:cb93 with SMTP id 46e09a7af769-7ebb2346cefmr1219468a34.18.1783367961281;
        Mon, 06 Jul 2026 12:59:21 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:19 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 05/12] dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
Date: Mon,  6 Jul 2026 13:58:01 -0600
Message-ID: <20260706195818.3906949-6-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125922_961023_D85CD0EE 
X-CRM114-Status: GOOD (  10.24  )
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

Add the compatibles for the general register files of the Rockchip
RV1106: the main GRF with its clock-controller child, which provides
the MMC drive and sample phase clocks, and the IOC and PMU IOC blocks
used by the pin controller.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 .../devicetree/bindings/soc/rockchip/grf.yaml | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2cc43742b8e3..349fd3393ac4 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -64,6 +64,8 @@ properties:
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1103b-ioc
+              - rockchip,rv1106-ioc
+              - rockchip,rv1106-pmuioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -100,6 +102,7 @@ properties:
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1103b-pmu-grf
+              - rockchip,rv1106-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -244,6 +247,33 @@ allOf:
 
           unevaluatedProperties: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1106-grf
+
+    then:
+      properties:
+        clock-controller:
+          type: object
+          additionalProperties: false
+
+          properties:
+            compatible:
+              const: rockchip,rv1106-grf-cru
+
+            "#clock-cells":
+              const: 1
+
+          required:
+            - compatible
+            - "#clock-cells"
+
+          description:
+            Clock provider for the MMC drive and sample phase clocks,
+            whose control registers live in the GRF region.
+
   - if:
       properties:
         compatible:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
