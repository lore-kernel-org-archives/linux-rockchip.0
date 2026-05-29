Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52387CD6E49
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 15:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN5yU+MYIILSTeELj5Lfcs/Mkaaq/eeOZLldDuQM2mw=; b=2wQVfiuxGXKBQU
	P+bzbgvSEyg1+JJI0BjNR6bOQsXoLEhW/wCkNvWZsMcx//n9z8nxonwRCcIneeOZxE59OYzLGNFnn
	4HUlkAGxT3p538AbaOoRb75blZ+re6iVlRyJHosmA3DPpsOBPzCOmEcYX9YAbxA+WgZIuri0GllMs
	FpUGm6kiDemilRpt9QXeshAjf0JaUNBe2CMuv3bz/hk4lWI2jHR7/z6ZYShv3g6L1fCi1LSm35SQU
	nvf9lIPVM2PZD8lkxNs+tOAdAMes1HBwlYmAtz/IHQLkGmqFb5ELeMw02xhMc1OLOuUdkuvOR9m4g
	WGVCDWhPwaQX5Yw30clg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzZD-00000007lyT-3pG1;
	Fri, 29 May 2026 15:56:11 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzZA-00000007lv8-0N7p
	for linux-rockchip@lists.infradead.org;
	Fri, 29 May 2026 15:56:09 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso122172955e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 08:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780070166; x=1780674966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksGpgyBSOY6krVRLLbP0F0NC4KXp/RG/saaAZ0uBhZk=;
        b=gnx8ibq2qYh9ReoBs0xSWEvVaopbyPosIIg5TbEFW+v3fHKHNqh0R4hjVaBcYmOGxf
         XVjSkaQc/4oxAsehdoonGHH1jHfW90Bt/nVbmMtG5K1V5eAlI+gJD0+dGbUlvHx6JDd5
         32VUXnhJB+os3IFZ/ofWbHfg+Kjh2Tg+SBMI9Tz2ATKv/piYWp8l5a1K9Ng3zNihpRsC
         hN3wXbEfq34nfQPzRuTlffz+3qO+ZP+GBJ6E7VvWBQQxGPPU6EaBks5mR9SimJj5S/6R
         YMugDLSARm6DseFEAoGTQY9ri8RnhWIzuRT/zNsiBXcfsHVUTdMx7yxJ5O8PXOqUH7AP
         pAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780070166; x=1780674966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ksGpgyBSOY6krVRLLbP0F0NC4KXp/RG/saaAZ0uBhZk=;
        b=TzZzBpFzI6NMW/ucjPnW01ZtIfzRwBq+6cvTOyNTn2Yp3xJsd8V1eEyy8/38eTKRLG
         hKiEaCEse/TXzutvIXaHWoeIWH7maLFn7haFWLRefbFEM1CoCpOSNaIiqVl0c3d5lfbZ
         1utQDye5k9KVljCtZxpea+T1GPLYAy1oFb9RnvFPz2tIo/t+J2UTPm9gI2wF2zTiWlLf
         9muUBlnenUzLHM7RmEl3rfI5ej83IhtP2ZjRXf7ZJzT0NfURdd++uz6OEIAAP24akE9U
         y0BDfGW8ZzyMgTZPDsgmKN3oaqjxcD50IjQKpGyv8gr9RYk/3M2pq5EsNPfWGnlNRSI2
         GAiA==
X-Forwarded-Encrypted: i=1; AFNElJ+3S1Zn6iwF2A8J2f+AELGYSFBAvHJlLOy1aGCh91Ytug3qSC/ttmouaduAn14ZaVTKuBNu5AR5Pxy12MOOAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaAiNymp8396W6lDkrZJ+7kyMgSJaKlej3BgZ+njniSF1GKAzu
	RmxlCtbk2iHwbkHRGgG0bXETxlnJaH/cp451+fO/yyXHEFGFa+qVXvMe
X-Gm-Gg: Acq92OFdkg9miWAdm81Yioa3tdgkjJ+/GSuQW49Eusi0trARtJSt3aHaTLUVKwV79m5
	21oiHBe2xNEndU+kYEF5ASSUvB3R0CrMxuryaXNbIpJBWZSTWDdBtRifATrn3vhYCZQZXaykn5m
	Ck9oW2LEmE1Y/bWp0jxLi8S4R6gJjsSQopGF24ISPeFqaMtSliiz+3rA80m6B5cOnrMVPEgFZBF
	/u5EqlgjK5uEmfzAJD6f6HHvQkQ/PRFMZY/YC+lIgeW4mKSKxRWmR88y70meP2Zip4tGOyxoewx
	t5HRWhGJ8DIUqfXZedGhHhbos3eHqMxJqf/mjU9ndb6uxg2I1hdfDTbJpUq/zGJ1hnTUk/Kd67p
	a9QeesmUbV/2uNAx9nD7fFbS4NGGPeDop+DchcFundd/PLNrb1P5xWkyM30viE/WkGmnznDUWSQ
	TAKPFbHS61OjdZt7WyEXf0Bs3j3Uh1UFN6c0JYJov6BWJ17daSuiUZ/E+ND3tfHCsQIoEIX3xXM
	KbLACkC7nWom5TAWHRegU2Zh55QQCzCZ1d+plMs
X-Received: by 2002:a05:600c:1988:b0:490:9d1b:201f with SMTP id 5b1f17b1804b1-490a294d4b0mr2703635e9.32.1780070165977;
        Fri, 29 May 2026 08:56:05 -0700 (PDT)
Received: from debian.tailb81abf.ts.net (2a01cb09e0354cc878d00097536575e1.ipv6.abo.wanadoo.fr. [2a01:cb09:e035:4cc8:78d0:97:5365:75e1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909cabfd6esm55150315e9.15.2026.05.29.08.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 08:56:05 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v2 2/4] dt-bindings: npu: rockchip,rk3588-rknn-core: Add RK3568 support
Date: Fri, 29 May 2026 17:58:22 +0200
Message-Id: <20260529155824.3099831-3-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260529155824.3099831-1-midgy971@gmail.com>
References: <20260529155824.3099831-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_085608_788319_E9C4086D 
X-CRM114-Status: GOOD (  10.22  )
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

Add rockchip,rk3568-rknn-core to the compatible enum, document the
new rockchip,pmu phandle that RK3568 needs for the NPU NOC bus de-idle
sequence, and make sram-supply only required on RK3588 (RK3568 has no
NPU SRAM rail).

The driver supports both RK3568 and RK3588 RKNN cores; the binding now
documents both. The rockchip,pmu phandle is consumed by the driver to
issue PMU register writes (BUS_IDLE_SFTCON0, NOC_AUTO_CON0,
PWR_GATE_SFTCON, BUS_IDLE_ST) on RK3568 only.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 .../npu/rockchip,rk3588-rknn-core.yaml         | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a490..6582a0c5c 100644
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
+    : /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the Rockchip PMU syscon node.  Required on RK3568 to
+      perform the NPU NOC bus de-idle sequence via PMU registers before
+      the hardware can be accessed.
+
   power-domains:
     maxItems: 1
 
@@ -75,7 +83,15 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3588-rknn-core
+then:
+  required:
+    - sram-supply
 
 additionalProperties: false
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
