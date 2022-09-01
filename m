Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D48ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvLHvPgkdXNjW06lWXyzHBo/Ek/+4m0dYe6KZZixp0o=; b=KmO2o55nwPKFMY
	bFsOhFt8Bu52QaqRIc97ZG51SXfFHWUTXgJUbQWTqIBH1QrbpcqkdrYuakmpTjGJxyhvwhgsi4IDP
	ISmRtY46761dktNMZRUFpwi31neQgL3Munkw1uhRPLvC7Kua3EhF2LSybBkBhd712wMCJwlGavJ/r
	z9W1RDsHHDkljkHpwcSlKK9tuaxq9H5NA12Slv6cEUpVfxR4YJ/A+NqOR9Cgt0lrLtvyIYsOkmwKj
	Z2xpYr78uHf+VEhT0csiIzmgwQJZvux4SKNmf4kHIR5IERNaRBSnxn0zApBp/4ium2RgkxLhux5qN
	ZFzM+KAv2Pv8utE1ToOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkHd-00C3tb-WF; Thu, 01 Sep 2022 13:31:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTk7L-00By8c-Ej
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 13:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=; b=FO10Y1k7Ws6NL8ho/uYeCkG0jn
	kJWQH+oaVM0tuCigso+LTbaijmujIIX8rzMUIWI0rPc1ezIR/OX1ZP8arykI0ifMweFiBnm6D8RIj
	7UhnUQMpHtlXuU4hKf/S3PziOQZwtDzzSt8Cl1iU4oydZ+RSuBKZy7M0qWBGO3teWAkGgzz50ZOIO
	iRTs9gfUtjznqVWJav/rAF4py8stblS9bqHqbTMSzlgN8btHx29j2GcgwFmTCtlljY/X0H6juwsg6
	V7owcvOYo9a2tdvMhGMfowkT3RZoStmK8ecxkMD8aNQDmJcP4db/5Eop2VG6IuwU/RqSAq5H7uhcS
	kSW7/6pg==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlR-0062c8-KQ
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:48 +0000
Received: by mail-wr1-x432.google.com with SMTP id c7so15587262wrp.11
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=;
        b=lT+s8u7/jlB3hz3dfRsDmz8WaYiKwXfHvpit95MsteMdQgO613GQnvKT7vJ5wp0tY9
         BwnoKfydk2ZJA/KS0Gn5rmDCvb+yUI5yqYU8FDv7aSpc5sKL4Pm6wLeDjr4VBxstnY3f
         i6SxSp+h22oznExKW20zj7+D+yyfJGa7xHirPs0C/K6nolF3Da+S+BrGuNItMw+CXymz
         2d8IYnhzPDMHeeuMD//qne1PToNRELNrLgjlCTlKncHtfuVmpLPALeblCXPewpcQre7O
         k0vv41VEzx/wvCTpAjb/EeWdznuum/19y6uOa0zFr2yTq8ia//0kBzN/sRPGfb/bR0qE
         4wmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Y1ZryWow92c9hwwvz5Hh3ukn+dkdomJWMwO/HyG9hMQ=;
        b=izK5umkJvs+8/uZHJGki+SVPCk3kXzs2Dq/NumoSHp1X6GjQLaAyTeA9srgo6L8u74
         +UU+IU8ZUAfLf1GVcVTH46ggl98CxlCYNbylCHIke+VoL5l3TiRFn1oPPuSfFCaI1wzi
         OyRQRxozHFwI9k/peAHB/k5D0/97qlEIGvBLRR6LFbo9WDPsqUZ6GFeX04neE5uZcHtT
         DEKu54e021nfRTQb9PC07wwgqwqSG35yeLyunek+MRDRlKrf/N7umOxpAt5em4wqwbqq
         vQ3+rSBwH7C3XQlscrDFVOi5+rfw/syIoVXUazEZpdf9A21iK9eLBzAbYzKxCA+MzhY7
         R7cg==
X-Gm-Message-State: ACgBeo2F+X9pRrtxGyzFXqkEI0jy1rhL3s4xpaPxg6FaiD0TseaHSx7k
	hp0b837lWQUyx0KiF5LjpvHZXw==
X-Google-Smtp-Source: AA6agR6CVW2i8/KX+4onxDVZ0A8xvEEPN0kyJcta15xEgZAHmKxBSxLQv0iHXv2329o7J5G4oEkaoQ==
X-Received: by 2002:a05:6000:1c0d:b0:225:6c66:5ed3 with SMTP id ba13-20020a0560001c0d00b002256c665ed3mr15066457wrb.678.1662037061725;
        Thu, 01 Sep 2022 05:57:41 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:41 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 24/33] dt-bindings: crypto: convert rockchip-crypto to YAML
Date: Thu,  1 Sep 2022 12:57:01 +0000
Message-Id: <20220901125710.3733083-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135745_821047_A3FFDF27 
X-CRM114-Status: GOOD (  13.44  )
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

Convert rockchip-crypto to YAML.

Reviewed-by: John Keeping <john@metanate.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 64 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..8a219d439d02
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Electronics Security Accelerator
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+      - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: crypto-rst
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+    crypto@ff8a0000 {
+      compatible = "rockchip,rk3288-crypto";
+      reg = <0xff8a0000 0x4000>;
+      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
+               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
+      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+      resets = <&cru SRST_CRYPTO>;
+      reset-names = "crypto-rst";
+    };
diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
deleted file mode 100644
index 5e2ba385b8c9..000000000000
--- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Rockchip Electronics And Security Accelerator
-
-Required properties:
-- compatible: Should be "rockchip,rk3288-crypto"
-- reg: Base physical address of the engine and length of memory mapped
-       region
-- interrupts: Interrupt number
-- clocks: Reference to the clocks about crypto
-- clock-names: "aclk" used to clock data
-	       "hclk" used to clock data
-	       "sclk" used to clock crypto accelerator
-	       "apb_pclk" used to clock dma
-- resets: Must contain an entry for each entry in reset-names.
-	  See ../reset/reset.txt for details.
-- reset-names: Must include the name "crypto-rst".
-
-Examples:
-
-	crypto: cypto-controller@ff8a0000 {
-		compatible = "rockchip,rk3288-crypto";
-		reg = <0xff8a0000 0x4000>;
-		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
-			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
-		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
-		resets = <&cru SRST_CRYPTO>;
-		reset-names = "crypto-rst";
-	};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
