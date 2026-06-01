Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EE70CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zp4xxpeP+ZFgBuq3L6LaJsxwZo9tqSIfg8xfSBrLJ54=; b=OnUy7oSx0ApnHd
	yDjsEUnERYGvP2r66s2QYrcqw4bI/vYY1reCQmnD2xQqMP3MSM2TFj5PZ7+h4pE5j2szqYJU2aaD4
	QIUcEZ6LcWjGxXWjq2FuYClXAC9b1sTSjV/kvEyB44IA+F/pFHi2k3ZKMJCMvusJEa5huQNubvdlK
	aNgYOX3VxjtXfZHAXd65QXqUN5Z4vVuh+bypGkF8iT0MY7ByIX64/su0z0Ekf2BDkkSLzDpWmS4xw
	moxFTdAus+lGXBM1tKxlhpGmZONlAaE4dpyqfUayESQXrmcoCjVwlt5YBtW5/cT6wjZrCwUxCtUC7
	IK7mpM8wDB9FrTEwmfbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5P2-0000000BTRS-240m;
	Mon, 01 Jun 2026 16:22:12 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Oz-0000000BTP6-1fJ2
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:22:10 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2bf22d29dabso25117085ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780330928; x=1780935728; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=oWVJCkfvidRwx0j1QTcx1g1nGyXNabURUJoadMTJ+afk8gjReMRkJYpyLUWO0PkyLJ
         yGwSTAdTiEzRdtpIWeG2ZYPvHB9YcyXnK9K2z+5SaDl5mhI3aNOCQgkch5BkpquzZ1ii
         pRgv5jn0rlbeAtfJxZmIcYRPKpmJ7n7vmmXjOhEVwpfue86iGNnCAOxmm8Qx5aVsb6T2
         XzSI+vwj2Q7igysjYps8sS2urtwIU0yPKnNxqS3W3AHCbobaVCIaFBjSfkQTAglJXiHE
         ggJKrk+ExjrNr7b7DoatMnp6gdA6/9DqprQjAvKn/nCgm+Q8NkPHdP8BnUvXAYX9eroK
         d43Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780330928; x=1780935728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=h+oMv02/Mob75NSUZKF67FzzgG1PSVMSw3+d3IcvYPQicJ3O3x+XZEe1KmF1rgMqIV
         EyUYiXj0X+KmKt7GHtJANJG/gJSE+1KfB0bLX74706GvpAZJwHKK2V6ZxWl7fsYNIq8x
         ThTs6w1SAFLj78+Ziw57gsvgRV0Zca5g9AVamg5gJeHC2GCd1V3rgeP0oRrbO7daH36N
         Q7BXCiYntsQ9UNqozYS5b3gOkJydvAlacc4eIMCx1fIxDaqQvX1Kl7Q4yxdqfGFEuNS5
         OG8Jn15JrxRJI0/5kAJoRoT2AEpGBesGXwR1kdoHdt2jc4w2AdIh/3TDGMwRQkyAVbWz
         Fl1Q==
X-Forwarded-Encrypted: i=1; AFNElJ+3p7taKC71kf5dT04c6VTdBW3pgHM97sSOsVWB1z55OdVCukgtEwdOjlvxw89Z3SKewYibtZEgeHhXpAaGOA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw423RU1t3Ro61hD+7D5L9OqUnHckfSv30wjnk1aGx7CIRkmaXO
	61gKRPQ3adywZIYfEjDRBKO3rLcDxMlcW/nUMNyQVWnBSwKSJZetfChf
X-Gm-Gg: Acq92OEVRczhoHVpHpeAqYxYN15B+dpFgUArhD4nKH5uu3RbyZwd5tXeDeCxPMcAzc4
	wt6pHlvbJh/tUuKz7nqalV6uUEZMWOBc5NZ16TN/ydjPL1fPldUwiVtRSfYAKkUnoaQ4nj5TTAO
	tNS4ia9IWtEFX4gK3yN/jAMAfZnRuFqN6lDenhq7b0SnODHVHRQ3Q0i8hTlnHP00Cfi1aTEX+Zv
	0lpaMSvv5GjWmhpiQmkMRp8h1BRuVF5E/Ufynz4iR3bZr7fvkLirGv6fJVZuRekCwyJAvQFrgUF
	jX8kI34aF1UGCuiC/88LLW2t5CZNYodVMI+SQaj+CFjSEx9ytJQ3FLCZ8iM95jCTee/m6tG9+Fm
	FvkI6f6QgWJo5yDCVANQc6fMnfKm/JaQ6WfSiRfNnYBaHdfaajrHj0S2mNNdxrTXdokF3ohr9aI
	BOXE/LDrqvfiJohl6dcfwvt/Km+2Y5AXjIhQMZv79H
X-Received: by 2002:a17:903:2344:b0:2c0:aef8:23dd with SMTP id d9443c01a7336-2c0aef82687mr112227805ad.22.1780330928509;
        Mon, 01 Jun 2026 09:22:08 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239e5d83sm116647455ad.8.2026.06.01.09.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:22:07 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v6 2/3] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon,  1 Jun 2026 21:51:41 +0530
Message-ID: <20260601162143.170030-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601162143.170030-1-hrushirajg23@gmail.com>
References: <20260601162143.170030-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_092209_430004_A6C66710 
X-CRM114-Status: UNSURE (   8.68  )
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

Add the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b023d4cc9842 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Axon
+        items:
+          - const: vicharak,axon
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
