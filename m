Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129D7CD6E66
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 13:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNmFuugSwRGn0+yq73/aXz3O86pRoDDftYlb1UJlzD0=; b=gre5wbwAyBExO8
	PCDrIUfend8To37exjvEC9NjnEv8LAbJMCFzpUSapzWVIgQ3ASTgktAoSG9IF/juVoTalaQgBMMAS
	p7j3lUw1CG3F6cRBjbdLVozmLeDsaxJfag6fGvjodg7HxujL5RngIu9PHlpymGhB8/cGKDwPYAOuy
	2sQOchHKbGBw9j9DIxjBAUnKzaPn/DvC5Fet/f2e9w7qojt55MqPYG9oVOowsjW8ThCo1LdSGVYGe
	cokOszp/Fi0iWgA/OKn1UdS7J3+yeKNo5fU+uMnlOK0sLhyB8gmsJ+hSt7/Bb1rSIZSC+kQFpXQKw
	o2PNlZzRPWfrp/tHEmfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2eX-0000000BCnv-3oU6;
	Mon, 01 Jun 2026 13:26:01 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2eV-0000000BClJ-0Fuj
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 13:26:00 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-36d630c0e35so1755494a91.3
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 06:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780320358; x=1780925158; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dsawg+8GATdikrrlq0osBdEKvt3vbI0cHqtdo1QmEeU=;
        b=fb8fhCjK5ROwIscxjlnoEgbb2whys7iUtesZH16jBunxBUJQlE0pmdznrrTtjEKlSN
         FyjEzZkJ+jEsI5ZhkZyLuX+ZfAOr2quwc1zlB93Ppg6Bg/kLEYeT7EtBaXgv3bO4mrn/
         DzDNs6I33ZHuRjDvFEx/2r0J58R4WhvkDtiZggfBt/dW0hQkF6dcomSn2Hwqwp1yvQte
         TBBnNZpyQxDGy1BeSUSPHk+gQMuBNvQhWbtqQsxLowLJofViaxprJ7XlzzlJ43vTcEXo
         gEpCw7lVUjzTrFKiJQ5h6WYlxNTL6fNXP4TRbtlhd/8nC6XdHVRTQVbQ2iaQkZG7q8p5
         QQ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780320358; x=1780925158;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dsawg+8GATdikrrlq0osBdEKvt3vbI0cHqtdo1QmEeU=;
        b=XFRSrMIv/kkrrBPY3wdF/QS9ReB/2BTQJ0z5npmvNYbIFYOicF+RHaXWUCVGgiL9tD
         brU3U/cfZVgqNUPw5bgLKyLbpx2+CRLCGHa+pE/+ETGbqn6Pd7DOq50UFVxe+KJx9P2R
         zPulvurbXymSFDFMDJXG76c3gosVKH9GFndJcWqEHh31d42ArLcQP3ZPoKEHv8PipEEj
         RnZOSLzzOAUbItrAdTGNXk4Jw7B+QV2IK9vp5pxW5uePIe0F2TdVNPMwEPuYYUAa2SLt
         +RtcumhqaHxzriCSf7ilst3pU3mqyQy6hfd+rx4nD965rB3Pa6sklomzYXMaYbWewLEm
         /X5A==
X-Forwarded-Encrypted: i=1; AFNElJ+oIH7AgLI/4df3vsvxJvlNXr04Uem4HzvLtboqpDEowSGdQa8rVtRhy4sEkKrjHQLm2n1J1OoYhUwWJebj/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwloFmtZiCCN1V2nYln5l6ORn3Mijc2jSFvpl6IC4d9195imVMD
	hdWdL3etm4cuwyiuCN8YjVYLpU09FBjC4yNMB+iVSLkrDyJPqCI5Zxsn
X-Gm-Gg: Acq92OEzWieHVV5BXRBCxFemaejHj/fzN0ZTGK+wIDAdxyjP/YUevpi3ndOjZ0jOtZq
	5SBpCOEYtHsEVUnvaPxia/chpvlH3Q7YI/vtO4F7QzjKSJQ7eqWj0Sr0iX2zxBnFTkHgymPVF/X
	c+klNZ0v6o1t9GDkbA8AV6viTfCBDU/gjdBu9o/DDpTT2E4hM43Kgw0s7dWC/ycMxdco0OEXb3s
	mi4s7LOVTAingLX1FxxqvvKHIb98/pLieWmcoGhJSX8sfNAnNtXrqu2/KLawGmLMHESqgrM3y3z
	AKknv1SRMJqJ3JFVkkcKFhrrhhw7u0JpQsNv9IZnc4kcJ4chA2cXbCZaMXVWO3qsnHDw8Q3fgT5
	AdXaahSu8qGdh7hmdgl3tSIHKty6L/ZgBo3BK6TtlkVPjUu3RxlpaqM45GBsMr0i1aEjLgJO6hL
	T/Tts9a7A1impXpNu2j9AVsHasNjbX7VRtN8vI87gO
X-Received: by 2002:a17:90b:3c0e:b0:369:932a:2b6d with SMTP id 98e67ed59e1d1-36c4feec3b3mr10341353a91.6.1780320358238;
        Mon, 01 Jun 2026 06:25:58 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36bc02d0a22sm11444234a91.8.2026.06.01.06.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 06:25:57 -0700 (PDT)
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
Subject: [PATCH v2 2/2] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon,  1 Jun 2026 18:55:29 +0530
Message-ID: <20260601132529.139172-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601132529.139172-1-hrushirajg23@gmail.com>
References: <20260601132529.139172-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_062559_113612_9D601C1A 
X-CRM114-Status: UNSURE (   8.76  )
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
computer based on the Rockchip RK3588 SoC, and add the vicharak
vendor prefix to the vendor-prefixes list.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml    | 5 +++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 2 files changed, 7 insertions(+)

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
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..504a691a33b9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1791,6 +1791,8 @@ patternProperties:
     description: VIA Technologies, Inc.
   "^vialab,.*":
     description: VIA Labs, Inc.
+  "^vicharak,.*":
+    description: Vicharak Computers Pvt. Ltd.
   "^vicor,.*":
     description: Vicor Corporation
   "^videostrong,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
