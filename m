Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62293D206A5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 07:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eu5sfJ0JD2B/e8Z7DetPZl/zTXboNxCD8AS9veb4lic=; b=x9XmqhLJhiGm9Q
	UITIKcnnZJGCOuCcHjJX3nMwER3YeZaYDay8HOflbxPGg49Q2IIRDoMhJhZtaPRjsZz6Vn8cDO13y
	lPYp2UulR49q0FZ5Dk6KDOG2wRKHqcPKl07TF/q6cAH27rRrQoYRtN5w0qoRPgIPWQNCiMA+RP+It
	ygYdcynNaKnquQiMrcJVRBfDGBOOQxTuEs+7Fs+qoD49ANDenT/CvQaF2NIj2Zam3OSaEWz9XbSJs
	JqIFAHaii52k3jJ1nXbBxzO21gi8wsAABYPOUdLZZUhwsqEhAlTdWj67IkzsW5dkWKvorVCT9EYVx
	A4AhEnym8ZSNbD2tMqOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yfH-0000000AriG-2suF;
	Wed, 16 Oct 2024 07:41:51 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yb6-0000000Aqhb-1zt8;
	Wed, 16 Oct 2024 07:37:34 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2e2af4dca5cso1208719a91.3;
        Wed, 16 Oct 2024 00:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729064251; x=1729669051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWSEFSMMBQYiRpWJwnlSGcr6/Rh83dU+uSxZqVGEbSU=;
        b=dMpMZ6OMG5582PE5BJc5d9ROXuxwlk0jtqu/ueaX0Rzh7YOzoGRHuNEKfWZLSFig+W
         QW5berBHSc0RISfmzggPv7wT3pLd6eUoTHTNixOJEyerW4KHgbdNoSDbDb6Fk1sMRDfc
         wfQ7tVy+mMIYWEGDtbFghtCghKoGx9AeZXtfhoD8k+hYRPzl5+RtXDYWAJpurqRiEM73
         lSVxJnmycjB4LnkktbVhPPRuoRh8jBX6PbaMiJMo4IxDiA1d971+0ojpL49RMeq5LGdp
         vFjJzxwaw7A9IKXaWQGUmaCeLQpszfaR/QYfnWGRlQGA29ICOVLtG6x8eIrXUQOYC1zk
         1TYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729064251; x=1729669051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWSEFSMMBQYiRpWJwnlSGcr6/Rh83dU+uSxZqVGEbSU=;
        b=OrkwfjoNdiKxx0zEfQMZ3406m7wTM5g6pxV8KD3wqEmjtnWDml35TxPfFnDbGv9OvJ
         s4eKKsWs4he1cH+v/oTRw62ED/nexvOMm6hf2/tIKslu9/4utDCPHQJnATJa0y6rJZUs
         quW4xgDfCyI9QeOCRufBxFmIXdsR0WfNH8Kg1hwdjJYExuCr2rt7F6Ld8JWFKd2DtiIq
         1x+6NAYnSOEk5ffmkYc1l7xfrfMTfxY4FfGW/R2iOZpJxNiQHiOsQpwQxR77Zw6OpkKe
         V3yhFOcC45UXHwJBgGHFYXyNEhzqaCRcYvkCDV9ag0iptW68Gia7Vq3DAX4bBXEclcda
         ivdQ==
X-Forwarded-Encrypted: i=1; AJvYcCU70bzxhyQUAZZb1sHVWTUHYq/uSeHHkr9lHlqYk/GfZgEsnqMymb5xOFKuR6z2RjeI2I3ZTDwMyIH5UPflVl4t@lists.infradead.org, AJvYcCVSySbEC8LwpNTm7wkTBpl3yStlNBjwVbzHud7oPG4A5kTqmFFAulB0xBiPtlvLJ0kwWN5QZInJ1o75RiEkJSc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLz3TWdF6BDK16HqndPejoZp4TymqSij9Ql5tmaPAoBQUQsQCP
	wGc4gErKjYp3Ohb8PoA/6HfXTzuGOufiiLS9xMkw8YxRNaYwsAhQ
X-Google-Smtp-Source: AGHT+IG+duC4aYKYaW4Rt7FIJuOoR2u1R7C7pf1VvmTfz6iWzqjOEFF3pQSPiFSy/hZ/ZE2cJCCmoQ==
X-Received: by 2002:a17:90a:d98a:b0:2e2:abab:c458 with SMTP id 98e67ed59e1d1-2e2f0dd1cb0mr8956565a91.8.1729064250913;
        Wed, 16 Oct 2024 00:37:30 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3b7e6339fsm765471a91.1.2024.10.16.00.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 00:37:30 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 3/4] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Wed, 16 Oct 2024 15:37:12 +0800
Message-Id: <20241016073713.14133-3-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241016073713.14133-1-frawang.cn@gmail.com>
References: <20241016073713.14133-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_003732_552079_C6074A11 
X-CRM114-Status: GOOD (  11.67  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add compatible for the USB2 phy in the Rockchip RK3576 SoC.

This change also refactor the clocks list as there are new clocks
adding used for the USB MMU in RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changelog:
v6:
 - add Reviewed tag.

v5:
 - move the clock-names item list to top-level property.
 - only defined minItems/maxItems in each if: then block.

v4:
 - refactor the clocks list used if:then:

v3:
 - narrowed rk3576 clocks by compatible property.

v2:
 - Categorize clock names by oneOf keyword.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/

 .../bindings/phy/rockchip,inno-usb2phy.yaml   | 45 ++++++++++++++++++-
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 5254413137c64..6a7ef556414ce 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
@@ -34,10 +35,15 @@ properties:
     const: 0
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   clock-names:
-    const: phyclk
+    minItems: 1
+    items:
+      - const: phyclk
+      - const: aclk
+      - const: aclk_slv
 
   assigned-clocks:
     description:
@@ -172,6 +178,41 @@ allOf:
             - interrupts
             - interrupt-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-usb2phy
+              - rockchip,rk3128-usb2phy
+              - rockchip,rk3228-usb2phy
+              - rockchip,rk3308-usb2phy
+              - rockchip,rk3328-usb2phy
+              - rockchip,rk3366-usb2phy
+              - rockchip,rk3399-usb2phy
+              - rockchip,rk3568-usb2phy
+              - rockchip,rk3588-usb2phy
+              - rockchip,rv1108-usb2phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-usb2phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+        clock-names:
+          minItems: 3
+
 additionalProperties: false
 
 examples:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
