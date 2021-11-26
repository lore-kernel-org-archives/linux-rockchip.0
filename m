Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3645C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRGGw0jfbyHLBtgHwyWyrxNj/zOF9xLdBLRuCvBYmEA=; b=2Qs13Cs0ewOy/l
	L7n+e0Fo+zZ3Hh3Km6uOxn8oWyTqIaMM8ZXgmmvzRxHUb5OPnlX22JzMT2caTSPpVjaUhhUnJTA7U
	ilw5ex/Vx+uLnedYPGE+t0gnE84gBoblU4fWSSofwVh0kp2C+X8CAAcHprW6Jo0xq722Ull3N2oQv
	J1aLd5PY9BOwinbweQJG5LPQWd6MbCbyALdqip7Dg3jQ+oPgOGit3bRoXMB8qgosD7sHO4yHknBq0
	+/SJIF04TEjUwdQWYuM46MAXMmZjqFk+iBINfvboAZjVF4qPjKR42GSFqIQ1JOaaUYL/JmzsGNsl3
	p5FS2zSYUefYFKn71KeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqczn-00Atxd-Ub; Fri, 26 Nov 2021 15:18:39 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqcyv-00AtZ5-1f; Fri, 26 Nov 2021 15:17:46 +0000
Received: by mail-wm1-x329.google.com with SMTP id 137so8438240wma.1;
 Fri, 26 Nov 2021 07:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+bFxhbi+YBOdMVe3lR8afDXUVB1LyZN9EknvfWnuqO4=;
 b=mkvudNPF7VhYVt3OaOIAEdEVP9/xN3txsrNbt2N/PNBtxwjicL+uesXe06jJs/nJTa
 I+t6D4QCrshuFBo/FLLTCpMxmyangJW6PmcAu7hiHX8Jydw+c8Du+zxbhfdNfsgD3rYR
 +e8Fu85w40PH0/8tUYK7kxJ08VqLuoqorrMxU5ccjp2mMGuNJZyLsLNCo12HXRhA0Ldu
 XeEXF8X9lXBR6HeZcjq6QY0rJGaRFweCdMODSpV6q7f3G9Kgf7oJrILkzQBUfvfuIbOi
 MhZ3ZtCsniUrirkTJrsLdNokgwHlasVmvJNzRJB1oORPNInNVdaN3tDyZoj0VdW+7lcV
 EE7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+bFxhbi+YBOdMVe3lR8afDXUVB1LyZN9EknvfWnuqO4=;
 b=aKEXf9np1nnvxtZkB7EnK3VpIP4OXGFCwekM3j3Lp0BMq3mgj0VbA3/Eo/GAxThP6q
 y4uL5R3lRJ2mUEMCwPu7JkDhCxR1v9LNQg2LSTRYmWDWZhEYwHklD3EkQLCGyPwWNfT1
 hI7Q6xUSMvrw5RUTjagbDgSe5FcqzdcXK/gbD5HTfeBacVY3n819dfnfajcy2iyeVj/4
 9U8dsYQBKXO3pWirir+c4ixWQSf/KZSh24pnIMl3x9pixb41szOQ4oxleuZomOaTyovm
 7mjj8XbMjPrZ66W3lu7mySZhZS/tIgq+8ETMVFYhZc8PZRKG4T1xRT6X1r1cQZNj6pmv
 ky0Q==
X-Gm-Message-State: AOAM533y/MVcBZ72XaPFcBWwbvmHkzCkMg3omgJt2s3Ohg/lDI+hhM1e
 8oxwYdCQYa6iC53j4FN8og==
X-Google-Smtp-Source: ABdhPJyGQtejEAreYJ4YBr09uEGV/yHcZX3kTWvoWliGGupW6SpIbPKgCZQDD0PhTWt9WmnOjZgT6g==
X-Received: by 2002:a7b:ce16:: with SMTP id m22mr15743639wmc.39.1637939859270; 
 Fri, 26 Nov 2021 07:17:39 -0800 (PST)
Received: from alex-ThinkPad-E480.. (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.googlemail.com with ESMTPSA id k187sm12323496wme.0.2021.11.26.07.17.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:17:38 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/4] dt-bindings: gpu: mali-bifrost: Allow up to two clocks
Date: Fri, 26 Nov 2021 16:17:26 +0100
Message-Id: <20211126151729.1026566-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_071745_166493_8275E234 
X-CRM114-Status: GOOD (  10.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Commit b681af0bc1cc ("drm: panfrost: add optional bus_clock")
added an optional bus_clock to support Allwinner H6 T-720 GPU.
Increase the max clock items in the dt-binding to reflect this.

Bifrost GPU in Rockchip RK3568 SoCs also has a core and a bus clock
and it gets added here in a (very) similar way it was done for
allwinner,sun50i-h6-mali compatible in arm,mali-midgard binding.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../bindings/gpu/arm,mali-bifrost.yaml        | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 6f98dd55fb4c..2849a7a97d73 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -39,7 +39,14 @@ properties:
       - const: gpu
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: bus
 
   mali-supply: true
 
@@ -118,6 +125,17 @@ allOf:
         power-domains:
           maxItems: 1
         sram-supply: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-mali
+    then:
+      properties:
+        clocks:
+          minItems: 2
+      required:
+        - clock-names
 
 examples:
   - |
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
