Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5DBC3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 00:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RCjI8A6YmScRW7lRLnFnsb1wCvyvi/w7m+3jX4PIZA=; b=nDmxNExri7MGsk
	Ty0P8eateJtNbn1nNwBWSNsKowQ+ocDLkAPwiiugkpR5wrxkmANMKvznSBRXaYbgm+CVflqTJ5aSv
	gY1i2LV2WC6R+GaGHGYXBme0mQve1ziUd/rQcyi2xla8ej2CpS8jbWFAp9z16eJsH1kK1f7e+o/Li
	UBcvKpIlRqrlmLsTRRQfQSys7ekBKXQNg7FqpnJpuxaJbgjfJK3hV93lnmOYwY3YwhDKdXvce6Z3O
	N48/8YEDJjFsXCTakSnmvXID+7OhuqFB3MX/ssRn/Gl90scMOJmhyq2GA7CczNZF4AjmM3pU9eYcE
	7wo5+RcVNL60Uxr6sXtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVKk9-00000005vif-328T;
	Sun, 21 Jul 2024 00:48:05 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVKja-00000005vZ5-09lb;
	Sun, 21 Jul 2024 00:47:32 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98)
	(envelope-from <daniel@makrotopia.org>)
	id 1sVKjM-000000007Pp-2MoX;
	Sun, 21 Jul 2024 00:47:16 +0000
Date: Sun, 21 Jul 2024 01:47:13 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Martin Kaiser <martin@kaiser.cx>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/3] dt-bindings: rng: Add Rockchip RK3568 TRNG
Message-ID: <19c94cbeae8175b8c6f920c3e3029082ade85ae6.1721522430.git.daniel@makrotopia.org>
References: <cover.1721522430.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1721522430.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_174730_104780_6EC36AAA 
X-CRM114-Status: GOOD (  16.40  )
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

From: Aurelien Jarno <aurelien@aurel32.net>

Add the True Random Number Generator on the Rockchip RK3568 SoC.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/rng/rockchip,rk3568-rng.yaml     | 82 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
new file mode 100644
index 000000000000..383a39e60ad8
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3568 TRNG
+
+description: True Random Number Generator on Rockchip RK3568 SoC
+
+maintainers:
+  - Aurelien Jarno <aurelien@aurel32.net>
+  - Daniel Golle <daniel@makrotopia.org>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: TRNG clock
+      - description: TRNG AHB clock
+
+  clock-names:
+    items:
+      - const: core
+      - const: ahb
+
+  quality:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description:
+      Estimated number of bits of true entropy per 1024 bits read from the rng.
+      Defaults to zero which causes the kernel's default quality to be used
+      instead.  Note that the default quality is usually zero which disables
+      using this rng to automatically fill the kernel's entropy pool.
+
+  rockchip,sample-count:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 1000
+    description:
+      Bits to skip on TRNG osc ring output before collection.
+      The value is a tradeoff between speed and quality, the higher the slower
+      and the better quality.
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - quality
+  - resets
+  - rockchip,sample-count
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      rng@fe388000 {
+        compatible = "rockchip,rk3568-rng";
+        reg = <0x0 0xfe388000 0x0 0x4000>;
+        clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
+        clock-names = "core", "ahb";
+        quality = <900>;
+        resets = <&cru SRST_TRNG_NS>;
+        rockchip,sample-count = <1000>;
+      };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 61053a8c625e..41aecf9736c9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19707,6 +19707,12 @@ F:	Documentation/userspace-api/media/v4l/metafmt-rkisp1.rst
 F:	drivers/media/platform/rockchip/rkisp1
 F:	include/uapi/linux/rkisp1-config.h
 
+ROCKCHIP RK3568 RANDOM NUMBER GENERATOR SUPPORT
+M:	Daniel Golle <daniel@makrotopia.org>
+M:	Aurelien Jarno <aurelien@aurel32.net>
+S:	Maintained
+F:	Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
+
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob Chen <jacob-chen@iotwrt.com>
 M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
-- 
2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
