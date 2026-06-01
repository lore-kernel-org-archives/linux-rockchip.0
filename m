Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 839D6CD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfd8lFJ9rU+GoMdbFz4vCQpIe1DZoNIi4R2lyx6AiiY=; b=riA/cAsfyyVMzB
	5y4jxf01M2pQtDPg289I9g8G24JbtzlpUSLddNGlGcgkJ8/bjJPsRdaL7Ox6iYXcSeTam6jcXQC0X
	jaO1QwVw9ROYC3KhLDw4dz9V/SdrKIWT+FyH7DxCnq+vI+jgx0I/iw8bwnmzBnp1KeplJNuxRstuJ
	PndJQbLofESUj4B1EoBobdN13KCBjfKIqattbrT75irYMTqeRoLYBOqGl1VGrQWYlHubW+cL0oRCH
	DWszFs3f+P0CO7pAj3U5Ml42tygnSZVC13pfbxsSo6FGbCMW4outI5sH7LzTGXiBBkFc/zR/cy5Nh
	7zBxBuHrYHGwhpi01X3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Ox-0000000BTO4-1pIn;
	Mon, 01 Jun 2026 16:22:07 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Ou-0000000BTLN-1SyN
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:22:05 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2c0c35980fdso16348275ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780330923; x=1780935723; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=VekglrTIqmGTFRHNEtoYzQrkC2kS5X18YIJYbtgkaoatltKSbErfWT8H6+Cjh8bq4u
         1x01ZA7JG1qrcaD/loDrWTLBHCsAUDHVpsatlck8eLhD5WwNEA0KK6nmjnmU8va2js8g
         eqSELbs0pEmZ5MJR6l3fQvg7M4mM/X2l4BTWwMqLl8En9YPSTi3yNzbYoaKuA+ugaZ5r
         YY1oXUxYux0dNaC0gMtwg3s47X17Xjr3pxpclHjziOcxJke8jWU4NqMpm8bxzjdV49Po
         0tQRqLxGi1AKJ42Q61yaJlpiYZu4VD9XsxeR/VAqF7jziEsRFmPCQJbhSi5bPxCMPLOf
         +X2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780330923; x=1780935723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=j9vN5t8bM3IU9AaczpnpzT58S/h40jfLgcLmY8gYKnG2scMpdbG3ABJwN6AR5PVMfr
         ClmyeEDrkejfbTEgZHwbp2q7wZSM31/n4j4JD6PKYPiBxeZ9NpYQls9ti5H6CQcF4m/x
         9cPjouFnoxinaGvxsFckAkaNL3k4qhotI6kQuJlhNMN242ff6fjS7CShrb1zKKpuwjKt
         Utrv76XUhgnJuRcv08B3vP7EZ6wPcr/oPEL2VB7CeaVNGqehQ+lBiHXj7SGmaOF7Uhzx
         6Hyd9SsA4BQlIvSR9gvR6XfvLGaL1uZdA3ZnmLgRR6d/QkQiXodUkJmmYaFE44VgY1se
         pQCA==
X-Forwarded-Encrypted: i=1; AFNElJ+1KqZSziD2F8i8BrjvVO44h+KHb6PQ5Y6KtudHD2swHwtAvYqJNMviqL1GLAjfWF3osL7ALaylnmJqpHuJbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYgffjxViFcOflbeJT4gTADQPUqNSbLKTlp/3NzPOOjPlh3eUJ
	FZY0sTEBFC4N1a7EeuVBgbz2nEuaptklfSPqtE2YeA0VMw2UK3m0M/rV
X-Gm-Gg: Acq92OFwFNYTWE/D0cBwLQnK1nShORrIuhu3rgTRgwfnHz6MVQa5z6s9+XgEayl9ZMm
	1Z0Pp73/NeeU5TfQExbxi8rjHor4b0n/1bkskFmsClioXiwDkce410cbVDmXaJ5cqLcDv4W1ove
	XpfxXh1mhL/hXGhSIRL1uvo61bHHzZ2MSvdV0rLpxIKdcivNo2yGJ/TpCTmbARlGU5UOqzyA4XR
	x/1Pgc3CoN1jSYpBE4lsziWKvtz/hsBOWovHX8IEHdlzlE7kuSnSwd5O7hZnTNDyIo/vKcYWrp0
	TxvPbYxGQ26KyCRPRxHT/rsOAUtjJGHp1LVbLxOqOwnrYkhsAAAs4/eMAuxQmrkyYGfDKxDFN31
	+FDe2lFV6n34ZHzuIkn1+zpGykXpktKFiSdmaaxypnwS1QjZEBVm7/BpAcKHqKJIF0caL9i1A3M
	53ro9xmRs3peBi1qwYuYtXwZzXFuclX6ZH4w1AVOye
X-Received: by 2002:a17:903:2311:b0:2c0:cb90:1dfc with SMTP id d9443c01a7336-2c0cb902165mr76599465ad.12.1780330923397;
        Mon, 01 Jun 2026 09:22:03 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239e5d83sm116647455ad.8.2026.06.01.09.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:22:02 -0700 (PDT)
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
Subject: [PATCH v6 1/3] dt-bindings: vendor-prefixes: add vicharak
Date: Mon,  1 Jun 2026 21:51:40 +0530
Message-ID: <20260601162143.170030-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601162143.170030-1-hrushirajg23@gmail.com>
References: <20260601162143.170030-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_092204_415755_8CE60A8F 
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
