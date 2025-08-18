Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D64FCA0EE4
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 13:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ba9BtOxPxF3io3vwcTdJQpFVHXJXJVxYrR3R96z7vA0=; b=sbwXB205OnLJHz
	KL/g+xhIeZ3ve1MXrduUWmCbGmwvzbD6uzJH0w0LShGzV3kBcB/HxTN90CtcSJFxD0ExeUuExZrrz
	RCMLhL3P/PgcHlKpTFRJK09QC3BxIzTMrGygPiuA7rIegi2Ye+KLTDZYLmCy7EXov1uW+cKw/579T
	AjlPXETHWsGZLxnxz32DJucuKav1namUiGaFmdWFCs/BPmMrloHz1UUOxn1Bh59lBfMhfU3zvFEug
	F7HXcjfhecGCn37FmFsNNtGtHXwfQLtnI5tVbJlmTarjsKszp9wQyZaUfCzdDjwVXe9lCM7KvZlPX
	8SxVCrhPa0KfvhuwzCWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo05N-00000007Xdw-2AQq;
	Mon, 18 Aug 2025 13:39:41 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unvnQ-000000070eS-1420
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Aug 2025 09:04:53 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-6188b72d690so446138a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Aug 2025 02:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755507891; x=1756112691; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kup10a0B4002ciw0MPHAfZ8hDEDF45tuWf47ra3TKFg=;
        b=KlDb7mZGcl1bG5bkEmizaY8zyR4zm+O28AckmYqstZ0Sa0gjOO9PH9amUkEfZ4lKv3
         y0kJDk7CMraHD/601GTrXK6YF321JkDpnqVRxgXZ9fWBVU/I1igeVr2lVxRhplC46hrf
         mNTnoMjLuKmhsdMleV6oQHfPmAxA8SgFUvA/pPPmmNmWqiqBE8XPFmCTq/8GBcnVjAHj
         CJ421k+0vdNovDa4FgzWXu+rLPA/AtnphLsbNStVvY614j7Cq4nsrMMRwJw+jup6Jihm
         ZfsDFzcXVLtw3RkMsJ99p9O85/37QhQUYAMIq7XyqnEcS3AglodJnLRUaXkiJHCHvX0+
         OIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755507891; x=1756112691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kup10a0B4002ciw0MPHAfZ8hDEDF45tuWf47ra3TKFg=;
        b=amy1CWa1whyRNgaBxX5rL3jjhcgchQmGYRxzcDh+HUVmaZdVJIM69jQvGkP8u9G66r
         eEXX+mOWmNXS+oUI/qjyVNnP/9CrIod+a2lSSAT/zTSdNZdMWs4HjgQeyRBWtQCUz6oR
         LzulMnB1tmroqXTdle+FX6+B8ZePysxwrIgBcA+OvBx1SpQSLoIMqtZhzHsM/XP2qSsr
         2mSsTOUYjhJ6NtPW2EOQ+/ymEOCLcvVkHUgUP3fRMHcn4LSlwf6NrM4Eo6tHd0KT+l5k
         iRRv4ZJJqev7zI9FIkxTlszbrmRdFp8M7u0gKhbCoFIsvEszcYh0Ng+61uQeDGw4bysa
         6qlA==
X-Forwarded-Encrypted: i=1; AJvYcCWgZGK7BuQG1yhIbZDHHCHaQExeX1rDxGdQDxsugtQyaSyy5MEoqYE1QwSTQV5a/WWyNFOPyTSXe3s206i+qg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbD61/NlyxBT6RszgMv9VAbmGiIwpu5qiPf38IKU0Ln/56yMOK
	3MQBO7ZdXYOOlu5bJYuPGnyK6vvm98gkYaM+1+Wv/577yn48858EdxfBEw+01llnIP4=
X-Gm-Gg: ASbGnctwCRvRkyxHWQBw5j7UJPd20grT8tRe9ckXaUmnW21hUUQVMSh6JOR8Y20bNp7
	RFMu1bwZ9377kyPspZkrrCP+No6+Nk6IzhP6pbYBvzyx/trNyFzIgnsHa6h0yYVSzavLsXnCyPG
	t/SuH9BXEmdIWjCWGgMNmMXKYY7OEp+C1VgcfyPEpAFJlvcjreVIxEe/F56fb5DE8eD1ZkpuSLp
	/YI3KuNY0hOi6n/CopyvimXf3d78bdrUmXq0wjkHXYklXbq80wJcmtUJCCb85ewESuh7S0y+cx+
	+Z/qwZOtXV2h5R5jfMQHTVAr8f+2BifOG/2aInVc6KU7ukfS0mDMZ0chi5xGoDuDrVdEXoT4acB
	RMy1aHvlp9yiyiyoY+Jh3L9Xu+gaD8jCA/Q==
X-Google-Smtp-Source: AGHT+IFtlmbtqJ9P827bEqJH7oW+ZRuoRFw5s2Zc7tNfSX268H1TDEG69wyd3EdhU80P29JLLkcWgA==
X-Received: by 2002:a17:907:3fa7:b0:af8:fc60:5008 with SMTP id a640c23a62f3a-afcdc19d2bfmr422932066b.4.1755507890447;
        Mon, 18 Aug 2025 02:04:50 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce72cbbsm767622966b.35.2025.08.18.02.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 02:04:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Alex Bee <knaerzche@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable+noautosel@kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Mon, 18 Aug 2025 11:04:46 +0200
Message-ID: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1506; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=tum7sSZZcgm8+tBz1nemvGULPNRMPULQo3/wNINBH4o=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoouytECvArfR0uDxlZkn/yM+6/pk9krgoVi2Ex
 +KuIWr/tUqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKLsrQAKCRDBN2bmhouD
 14K0D/wPUzRE0762GdIlKZqVCw7QIJwhm6QQ7maC1A1pWP1kbGctVkv2gdC4IrGQzhVdVAcb+0o
 IYw6rpxiobOFJiiE9S41uqR7We+z83ecxPJdkjmNkddMaZF2dpMysBcPOspzBpDV/ItDtRCVCLc
 oUdQ525yCD74OLtL/s5kWlPK1EfxbPdLFhzSOj6CJIh5ct4LJ26xzgacvu6CjBpy2tyErI0AGVA
 Rds7A1uNaiadSEcWxGCogOkANLHvBjW90M3IdrzYjk76faBpiGE8t9jirPcoxyCIu/94HT+PgJQ
 5hGjSAYC1sO2yUNK0HjshaOD4bGx+JzpRF02+UEe/h0Xic6AsmX0tnTEpskZ55v8Hqf7jfTEqGZ
 413KxCeLLXuEiX2OlGMqd4GMA40y77A7Me9UhbXuS2C0cx+7jYRQ6BpPGWSycQrtR5KTon2Y4Zb
 AS4P5LT4QOi+q8sNcIR2npSkeY5Go69g169EvxairWf5ePkspzoW+lAlC3RAI0zRDjdFDykVnNM
 MC6tch80y9G254Kf33rR8CMydlaltyp/fZCC4zIV47YfPkLkquhGRjprPUzDCKnuqN+skTL8hmP
 7NuAZrbBvDCiBGcB4rgeqHsNOE22A8/IHlUCfS5XbHFrZd/LJRO8qt4IEyP6Ym0UsseZUx1jTSE 3P8zVqN+3rRaErQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_020452_291633_9A2EC3CF 
X-CRM114-Status: GOOD (  13.63  )
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

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Fixes: 79f2a1702441 ("arm64: dts: rockchip: add DTs for Sakura Pi RK3308B")
Cc: <stable+noautosel@kernel.org> # Needs testing, because actual level is just a guess
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please kindly test... Not cc-ing stable on purpose, because this might
have impact, so needs actual testing.
---
 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
index f9f633aebb64..aee6643e33ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
@@ -199,7 +199,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake>;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
