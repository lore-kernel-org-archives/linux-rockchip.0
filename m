Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD7FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=717b+wV/pWgFOI2lTXc+NNpcrymFXZNRtQ6Fitoipu8=; b=XdS7tp0EyGLv1e
	U2OsYXwf6NGbQs3Gf6oDUOb6FjHxq5oz4qpNz6EC1d/Hbz5OOeKp57AZfKGF0OTj+llb1sGu+QRli
	pfAXqFw0TVdqHJ5AqyVtt2U42HrEII2bevBuMyWSTtqkw19Hc7HBTRedk9iax+8qlpujwyevwZ6lW
	3FdIDZygLoPwTLcvr8grOc/VFcF2H/s6k2xcSxNKCpMRW/D9fL7kJsZPFuFjUoAMj+r217a6+4pUf
	+V73bZTXzbW+ifsOJvIITvFhQNSxWNgQP1rWqT1Ry+EUj1qv1MXSdinJJCReKtWoCeVO0/IbfCFxR
	qAbydy/cvjBa8yT2l/aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrEt-005wca-QV; Sat, 12 Nov 2022 14:12:07 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrEY-005wTY-OP; Sat, 12 Nov 2022 14:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=hFw4qvAwGyTitVnpTQTBIT/SjfI1ORlSUFAPYzi73m8=; b=uiAX67alqU6y2zCjLaObhkyGtJ
	NTLOHjdL2HXcGSnrwGz9kFs2zlNZ1EjUqS4xLSX4xFMQDnGO8RtQa9KAdsG9sLTMTz1PCwZblJx6p
	vB7u6IZv7h+SZaGu5OaLog+M54BmDuO5DsP8iae2hndF1n2xfE5AkLaovwZgabEkzg92D5PAnU/dD
	Yi9kC9Us250TobhK5qYnji7N7hKwLPz+CQtrUb5JlutUr4EeYLgw1dLAs1to5KUZHNN8q4OoAMUk1
	qd43WPYEKk2yo0/4AaQcnfZpt3u/8AehCiZmYsDR+HcKNDzsYHc1kyMqLPgYLQkHs7oa+soSdunU9
	R9smvjGQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1otrE5-00AbQz-GB; Sat, 12 Nov 2022 15:11:17 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1otrE4-00FxDh-2N;
	Sat, 12 Nov 2022 15:11:16 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>
Cc: linux-crypto@vger.kernel.org (open list:HARDWARE RANDOM NUMBER GENERATOR CORE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v1 1/3] dt-bindings: RNG: Add Rockchip RNG bindings
Date: Sat, 12 Nov 2022 15:10:57 +0100
Message-Id: <20221112141059.3802506-2-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221112141059.3802506-1-aurelien@aurel32.net>
References: <20221112141059.3802506-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_061146_821543_5AB4E1E5 
X-CRM114-Status: GOOD (  12.57  )
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

Add the RNG bindings for the RK3568 SoC from Rockchip

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 .../devicetree/bindings/rng/rockchip-rng.yaml | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/rockchip-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/rockchip-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
new file mode 100644
index 000000000000..87d80e8ff7f2
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/rockchip-rng.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/rockchip,rk-rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip TRNG bindings
+
+description:
+  This driver interface with the True Random Number Generator present in some
+  Rockchip SoCs.
+
+maintainers:
+  - Aurelien Jarno <aurelien@aurel32.net>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3568-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: clk
+      - const: hclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: reset
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    rng@fe388000 {
+      compatible = "rockchip,rk3568-rng";
+      reg = <0x0 0xfe388000 0x0 0x4000>;
+      clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
+      clock-names = "trng_clk", "trng_hclk";
+      resets = <&cru SRST_TRNG_NS>;
+      reset-names = "reset";
+    };
+
+...
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
