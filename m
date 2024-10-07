Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3640CFB44D
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 16:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cX+cNL5bqochgGVYlCgYrnHMwTmWX6td3LGoOIjKcq8=; b=ClO3wBhDv52jDG
	BSvEIb0ElBgAAM1m/AFYHHpgMO4IfBdkI0QcypGIUr3PzQyMkbGpq1zbvryp8yuBC3I8UzgcuMFKu
	DzHr+ET7HhCpuLa2W/o561/cPRw/PeC4fqBJWZ4abwgthzSrPwhzZyVhjleT93JHhp7GjMtY3LPbg
	0OmodemGUT4hNleP7hu07C0/zrUtTGJnDoiZsAc5HTBirUA+IX75lYBy8BbH5CzGdKz6s4rEnnVlM
	iJWSDArW9Wvy7AryviVppDW/zjVJAogGpStUw3b3Ozn1prJjouuXKobTIlugT/fpxB1pQnZpi1ci+
	KLodg9DI5/OirlUn8ANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqt7-00000003DQz-3xFQ;
	Mon, 07 Oct 2024 16:47:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqrl-00000003Cv8-1IVZ;
	Mon, 07 Oct 2024 16:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=r0AuEeSC4qr1idtraZXrY2GOnVpY73RCyu2a/wbcIbI=; b=SuVpfxXtsafoPg8bbWoiWO3eO1
	2Bq3cXcIxdWa2fUpg7lP+rSGHOgrW1XaXbDM/MeRuzVNUjrmMQe6AvyKmmpPl/ae3uM/uQdvyy40Y
	FOGa9f3v7XcXngFhKrGwLUNUQ4sZ72my2nLnwzJZir/CA8WQGAXex5FhDNXyFdFqAjH0mBYSkmlKu
	MDGZKcd2rt7P/+CfqyXhe6j6+aSrQck816ZafL/0CJ3F4GCNyTr+SRwOCENb0Wz/+rjK5eE9kwLPT
	pp4UZ2ro/QvgYW/7gHb70zqEhZOTSaHiHfV7jOeXOBldnKTHlecOg1+IXySR26799McjzFn2hE/ks
	31FrMMtQ==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxqrg-00035s-Fu; Mon, 07 Oct 2024 18:45:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] ASoC: dt-bindings: rockchip,rk3036-codec: convert to yaml
Date: Mon,  7 Oct 2024 18:45:42 +0200
Message-ID: <20241007164542.2452315-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_094549_369273_941C2273 
X-CRM114-Status: GOOD (  17.54  )
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

Convert the binding to yaml.

The codec seems to be from Innosilicon, but the compatible has ever only
been rockchip-based, as they sythesized the codec for the rk3036.

So the yaml file gets a name matching that compatible.
The only other notable change is the addition of the #sound-dai-cells
property, that is always required.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/sound/inno-rk3036.txt | 20 -------
 .../bindings/sound/rockchip,rk3036-codec.yaml | 57 +++++++++++++++++++
 2 files changed, 57 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/inno-rk3036.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml

diff --git a/Documentation/devicetree/bindings/sound/inno-rk3036.txt b/Documentation/devicetree/bindings/sound/inno-rk3036.txt
deleted file mode 100644
index 758de8e27561..000000000000
--- a/Documentation/devicetree/bindings/sound/inno-rk3036.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Inno audio codec for RK3036
-
-Inno audio codec is integrated inside RK3036 SoC.
-
-Required properties:
-- compatible : Should be "rockchip,rk3036-codec".
-- reg : The registers of codec.
-- clock-names : Should be "acodec_pclk".
-- clocks : The clock of codec.
-- rockchip,grf : The phandle of grf device node.
-
-Example:
-
-	acodec: acodec-ana@20030000 {
-		compatible = "rk3036-codec";
-		reg = <0x20030000 0x4000>;
-		rockchip,grf = <&grf>;
-		clock-names = "acodec_pclk";
-		clocks = <&cru ACLK_VCODEC>;
-	};
diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml
new file mode 100644
index 000000000000..786b1ec41999
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,rk3036-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3036 internal codec
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: rockchip,rk3036-codec
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for audio codec
+
+  clock-names:
+    items:
+      - const: acodec_pclk
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the GRF register.
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - rockchip,grf
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3036-cru.h>
+    acodec: audio-codec@20030000 {
+      compatible = "rockchip,rk3036-codec";
+      reg = <0x20030000 0x4000>;
+      rockchip,grf = <&grf>;
+      clock-names = "acodec_pclk";
+      clocks = <&cru ACLK_VCODEC>;
+      #sound-dai-cells = <0>;
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
