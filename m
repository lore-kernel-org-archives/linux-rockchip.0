Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AED5C44501
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 22:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3J7ARS7f4CHCRid/tNd3BzbE85kTMfiFW3WagyA9Oaw=; b=wyv4QK/KCNvGER
	tXgLfKeYNYzCjTMbHUr16cb3thaqthixRVHVzsHAUr9d42nrv2mBWMXBCbBL8GGfnbk0ZSjGQP6QX
	Xl8jnMkyn7H7cBEfuGmILVczO8xJ1oyPrn1yi2ts+RXGFYmlX9uasRISSrkLWomjJwzlF2VdzOCC9
	4+lKDiai/7Rb4A/7ravA0LuTTa/cbEdFucHJHvDeyGtPm5Drw6NrLu48NMGcXzKaDJ1IFBIrfllJS
	NhdJruh/xTToxMV6H0bQcL2e8yXwxQFlRkLPiRjj2m+xWGP+GRUKfZaRvbI7XHWcAqr0ZBDbWEoLK
	uxbFUBj6f7HNRPvjEkpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOiA-0000000ATxR-0HpB;
	Mon, 13 Jul 2026 22:01:16 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOi7-0000000ATvD-2476
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 22:01:12 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-491bc1d4e6bso2563804b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 15:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783980068; x=1784584868; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QrTVE/Mu6/5riJy+kNkxdxgxE9eXKFOB14tMMq5+tOs=;
        b=gQfRA0Eb6T2Yf3rCteD+WbvhP6bcsjYF1Bgc33bjbSrtqn4GJSdCyLOHdpkzUoN7dV
         zl0TjBuGIqsScYLgAwjfkWlmZpOa/6XBDK4BZIzplhilq6M3XHRrzxYkEIAtrJEMXwVx
         0CndN3DyLbYeRhAf7HIlHgJKwpJw9tR606vZ6hdZyREsi2SEPzq206EfZXsdhIics02h
         bibj5NOv0RGUgPZ66BzIxq8GIAWKzeLWBjsDhY5xuRDVIIdtowFWpgdBrslpDZQzg5Uy
         puqrjaW+4zV0+8BtNyzH37CSxluLnF9QNtWJdypUMylxy/dLLeOoRw5oeQGxJ6qdQxcH
         EDfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783980068; x=1784584868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QrTVE/Mu6/5riJy+kNkxdxgxE9eXKFOB14tMMq5+tOs=;
        b=io9gBFnml2qEfQbPipRdGY1BUAHDwqEizW8sFqGYgHn35LI2K3SewSlp58/kPhvUqc
         AiukaisT9ohrZv2H+KakQuLzNBDD9DDCeSx7sSDHVXWL1HlUFdmoyqnuFbUBmU51UVDP
         yJyUVxVpDJ+su7HFVQMTVFm1cJDf2oElmQn9JyuoaUoQ53RuPAKtkBc/xbHczUP1VaFK
         FKXMBkDi1m9gtRNWSZR0QwzualejxU6zYAmkZvbKKVSbWfDSHhrZdvMSRJqteqwlEncK
         5KuX1dfQBE/qCUA04V8fhTWOOfXtSdynnkg3o0h8iNbL1e6MsWQ9aYAZtmGDZOp/bgIK
         +0uQ==
X-Forwarded-Encrypted: i=1; AFNElJ+z3LkZX9FbI+AzOo3cQ9SAuiJWGQ2SfuV5vbWfSSYZM9t9SifPO69Q1oks9qFuatw9Zg1+B8NdrHjKDWSl+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzIftUO/HUkACXKkGVWRJXa7ANuSH8424X2kjH+/WJm30dqf/LY
	A1g4JtoG8Bn6oWL/V/NL34WnlL/7kj57c4EqWxjCBSgaSsBjXz72tcOV
X-Gm-Gg: AfdE7clonqNsdVtod16PBH7JdEGW1lWEsH2MkRagPcFpWW/Vsar+VC1dHulSaKpdbT1
	ApMbHkPY8l14XjppurLAlwe0SRAcsAmr7Ly/xC0uSINCFrBwiNvC0shYyx67apNFRtIgHkYr/wV
	UWGKsUSfJSdktn2of02YpsbahOo574d0mOt8VqkPa7amBw65iQBsL1xtzM8UR01koP5Nlgn3NTy
	ssh8PNgcDeNgFs7+0JhuBdDWWal+F35e0+vXauDg4OOD+7U3QS5Js2CKR3ngE01l8sZsVv02bfr
	6s0EvQlmMHEroARN4tXAZAHQzdqSVJasCA7VcNDR0N2HWVW41g1AI9oaHy/luFxrDBMpC3F3+Y7
	zLydOtpF2mLqowAmYcr9Wcj1XqjKyKU4vlQRIugduuuLF2FitCv3Ihp5x8S28RftXVME42DivxS
	MVZLz7QP7k4ig=
X-Received: by 2002:a05:6808:c3f3:b0:497:e15d:207d with SMTP id 5614622812f47-4a42b0012f9mr7109311b6e.40.1783980067884;
        Mon, 13 Jul 2026 15:01:07 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm12939785b6e.3.2026.07.13.15.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 15:01:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v16 03/10] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Mon, 13 Jul 2026 16:58:33 -0500
Message-ID: <20260713215842.69097-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260713215842.69097-1-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_150111_560946_4279A1B1 
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the ICM42607 and ICM42607P inertial measurement unit.

This device is functionally very similar to the icm42600 series with a
very different register layout.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index f6f97ea03038..d62aa4f285cc 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
