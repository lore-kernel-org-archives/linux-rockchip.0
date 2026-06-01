Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D8D6CD6E66
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfd8lFJ9rU+GoMdbFz4vCQpIe1DZoNIi4R2lyx6AiiY=; b=uqN7qTbpngh2W1
	4lJd9cv3smjoRMjU4dKJ3nLlJ60Yo2yMA85RHhM5SDI+sZs4cAeEqp+nREqL0d5Ujc0EGnrDRrBxR
	Epuy2GLdXQWMqpRCYPjKNSyTyulQ7YmQWm8Up8a6vcpkm//4oGyRzogs7/gznedJeGjCMnJv1oh95
	8kbF/x4a86kMBRuQ0hMJFxZ+Rpku5GBM1L7AtsVxyR95Kh6qk/ibUSm5hBlfnawVWdFN3+PDMGNt4
	p8/MHZjVBbe+Np5o4ntvVVkoHh0lrUYdaZzMgjwq8g54bWBxp7RuKoOxuypdhRHQ+qYvTXeZpl9CW
	qu/sscR+H8/Rk/d/rqcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU59s-0000000BQpH-3MtK;
	Mon, 01 Jun 2026 16:06:32 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU59q-0000000BQns-1qYp
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:06:31 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-36da8439078so1253418a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780329990; x=1780934790; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=QW6Rf/lFfOLFXWRVHFlyHbS9JIgzCAsx525jWGqHZ6gVc1Hvb8PifxMcSrosV1Q7gW
         7iRJCj3T4ZzIrlM5oV/bel73AXigR7MYtEmROtQ39UzOMpCEZjxOxEHwf3RkXARF+jXU
         fkrwUKk/nxPBj1ikL9REmj4OUDgt2FZxcZk+rbfpXTYKsrl2Kywanr5y3QRr6BhzElRR
         n2ihnzl7mBlOwKqQDtNlAtsq4otNuBCoH6xy14GxuL2mKJ9H+Ybavx4y4bbQCiigpaAV
         MnVusCAN+gvo0wnXZ68LnN3FdfeG8iatttGy3aayd2XLrw1FJomPDqMiWUAxdJcXvNSC
         2s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780329990; x=1780934790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=hUoACxNqq3tBDkei41dIJlQlW/4cwTFN/qGM67XX4UCPsZ/OijV0F2yEOnWGKd8iyc
         Tj3ycVn09qVaxrl5SNZeMgByx0qmeDBbqPHOhsKP4B+//sioLjvsa7icQwRe03svx89m
         WM9h3an/rZkm3jVD//X0l/pLLQCgT1aT8gPkgs7DsXLTDhlNGjOobyGqZ56hwHjQGR0k
         51j/PLzzbRe7SrPeyxqmo6M1b5hGTPhUw0TJqGZETSB6Fz0k2u62fidwuBA/9wHUsxos
         kytNbej92U5/b7CJuo9KpFGeZK1/fzOuzf186VNsxsxvTjJ4oF80Y8PUOuQmkcKhxpl0
         1/jQ==
X-Forwarded-Encrypted: i=1; AFNElJ8rTn9V08FRm2WaVAz5wguNr4+8daslneSIYHLTX1AzlbSg5z8R4yRbNUXU0tok5PP2IRcAC2qNTMGQl6WfAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxuO+Il6TKr46h4yaLL7OzSUvHmfxu9Km4k+5acAt2B9TXvr2ZN
	r38J7W6QXOOP07FsmsDpIhEv7DS9k8H99k/gdpB+xlAXlgTgemj+u0zV
X-Gm-Gg: Acq92OE9jIpECOzlfCfajoK+O0IczHVWqkfcqDoLIyrDE4lnZBQaYHbLdPNy9Rt+uLh
	F0w6amaemJRaWJbyTJjqZ0HFxHJOCG9EAUzl+qiWHUoqwwWxQxy1cRO76Yv6VL3j5eQkIp2LjYH
	fswjARIdiFPiSTRoBCnDLQQ+HrWvyOVPtrBvaCeRL5bauXhUYdgbaLQT/XdlOXpQmvhl7Ypv7qg
	NmMLt9w72jhHBykrEysr5VFwpu0sjShxYmPvM98jgi1xtdBGv8rZxx0kdOOSabR00kVdl2g1VG3
	57Y8mCwo3uYm9552LtQpcMMhRiMQ2juOjIsJlIbRlJfoc1FAJaPQcL2caB0KckOXC3Vt750RWYk
	uTpdB/SpsOpVaoOaXnVaFZdS7MvtkdCbvaIwEXS63amFVFsEAOk0xZdOPscWid/201IFcdbm6oe
	FPR0R389tRRY4LPJyp601kiJkLIVxpgMqW4KHPPSd3
X-Received: by 2002:a17:90b:17ce:b0:36b:afa0:c53d with SMTP id 98e67ed59e1d1-36c4ff0b6edmr10563499a91.2.1780329989691;
        Mon, 01 Jun 2026 09:06:29 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36dd9205ddasm64218a91.14.2026.06.01.09.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:06:27 -0700 (PDT)
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
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: add vicharak
Date: Mon,  1 Jun 2026 21:36:01 +0530
Message-ID: <20260601160603.167706-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601160603.167706-1-hrushirajg23@gmail.com>
References: <20260601160603.167706-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_090630_479333_E8D60122 
X-CRM114-Status: UNSURE (   8.28  )
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

Add the vendor prefix for Vicharak Computers Pvt. Ltd.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

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
