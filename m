Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC65C7EE25
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jun 2023 15:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3PFpf+FbDupWbo9k5czn2d/bYE15aOMfAShMIfVTY9Q=; b=dNXkC+aK96x1Rp
	G2RdDo0Mx5t/b5KiktJEcPu0P9P7vNvUB8goNhAsc+eFfOZccL+RW/yqnI2xGisAh8IKKiHBx7IsI
	zAsZlvfjCiErkJClh3mvl4MEE85nvjtVSjj4iJgp5zunI5ioOwZ//u36qKnoEGnStbvQH9DnWus0w
	ApsGi86S6Hiz/IbAD5JS+jAIla2V6t4YNTnPKlIT2Ob8k3nXsre45XBSTpreX+PU13yv04PZqyokL
	hvdvDmxvrUIba7clY1udtbfPENtnB+sqZmsXpFRYHV21S9Fjis7VEre7IMFFB5EHswul2S9lPd9UC
	BYvKGzh/cs1/n9jjCWRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dqK-00DOsb-1Z;
	Fri, 09 Jun 2023 15:16:00 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7clv-00DCWK-2v
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jun 2023 14:07:29 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-977cf86aae5so278487166b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jun 2023 07:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319640; x=1688911640;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HtngxXUKNCQTVka0vpariN77on7n71XrWgw8hjIYsQ8=;
        b=EQQ09IhLANk5OoNkPdErPJXECdIbDeH7UNst8EkmsOXalpdhN8F/cnL4Q+jvs92LA2
         aPjioAFbECUdqD/5vQAt4t6seFI9W94Otds/ZrcJ58EJ/SW1VZHIn6rTNQrG5aWaXGrF
         XU56NngGksiZRSyd5bwIT/IpsrCjrdsdbQW/lVket+UYK8Hq6rvsMyVbrJvi5A6ElYf2
         tOoygJC/HL539cV6Xd82MytIHMbnWFz4VROnicBXDMooJCb51dPdFsJ1PiktGpsVP53d
         /Mz9yWhoKt8AtWVDBXKQTFC9CoJt9V0Uyk4xfJcPUfxmTOJqb/7uxVXICwaRI8Gi30S/
         Yo7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319640; x=1688911640;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HtngxXUKNCQTVka0vpariN77on7n71XrWgw8hjIYsQ8=;
        b=L8GFlvSlbJGVqy9PKE7egsEZp+pKx13hHG73D9zUAwvIQUJ/hu6VLxDTxJI5TDHPe+
         UMVsTON5CxirzZ/8SuZ8heDmqT2g+4Go4ugkbFrsPU6rCXZdBS+5Tuh2GaEC7OE0+BZL
         iLMrPafggOZY2yPHvwx4D0/nBNP32iigdpX4IExmXWt8JHw+jr5q5jiHM1LNiewDv8tW
         DltIdPo7/zck39dCNOvVtV1/q87cGHO76p95O7fUnntcTuLA+p5v+2P3bpbaMS2AwHXC
         4fdNkfROMPJI6WzKJ2kGL3m5142fXh2xILAf3lsCO86QjsO8mRrnDFG0rm4ZrWV0wnCE
         APPA==
X-Gm-Message-State: AC+VfDz2nuBtu6oUN5Y/0Cd0AWiPr3ehOBZQCQZrnZE6f0lF/SRi0egc
	6XzlaVI6HHS12XN00/6oOzI3YA==
X-Google-Smtp-Source: ACHHUZ4jXnmPhct/g5TaCUX1W0J9YSQDJhMQstjVD+5gi5sMD/SmL4pOvf6Vz4t9h3tieEPh3BwQeQ==
X-Received: by 2002:a17:907:7da9:b0:973:946d:96ba with SMTP id oz41-20020a1709077da900b00973946d96bamr1755276ejc.69.1686319640156;
        Fri, 09 Jun 2023 07:07:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u13-20020a1709064acd00b009787ad3157bsm1357032ejt.39.2023.06.09.07.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Doug Berger <opendmb@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Maxime Ripard <mripard@kernel.org>,
	"G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
	Biao Huang <biao.huang@mediatek.com>,
	Clark Wang <xiaoning.wang@nxp.com>,
	David Wu <david.wu@rock-chips.com>,
	Grygorii Strashko <grygorii.strashko@ti.com>,
	Sekhar Nori <nsekhar@ti.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: net: drop unneeded quotes
Date: Fri,  9 Jun 2023 16:07:12 +0200
Message-Id: <20230609140713.64701-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_070723_960507_2FCF0D3D 
X-CRM114-Status: GOOD (  10.52  )
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

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml     | 2 +-
 .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml    | 2 +-
 .../devicetree/bindings/net/amlogic,meson-dwmac.yaml          | 2 +-
 Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml      | 2 +-
 Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml   | 2 +-
 Documentation/devicetree/bindings/net/mediatek-dwmac.yaml     | 2 +-
 Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml      | 2 +-
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml     | 2 +-
 .../devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml        | 4 ++--
 .../devicetree/bindings/net/toshiba,visconti-dwmac.yaml       | 2 +-
 10 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 3bd912ed7c7e..23e92be33ac8 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Allwinner A20 GMAC
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
 
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
index 47bc2057e629..4bfac9186886 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
@@ -63,7 +63,7 @@ required:
   - syscon
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
index a2c51a84efa5..ee7a65b528cd 100644
--- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
@@ -27,7 +27,7 @@ select:
     - compatible
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml b/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
index 0e5e5db32faf..7c90a4390531 100644
--- a/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
@@ -55,7 +55,7 @@ properties:
 patternProperties:
   "^mdio@[0-9a-f]+$":
     type: object
-    $ref: "brcm,unimac-mdio.yaml"
+    $ref: brcm,unimac-mdio.yaml
 
     description:
       GENET internal UniMAC MDIO bus
diff --git a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
index d23fa3771210..42a0bc94312c 100644
--- a/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
+++ b/Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml
@@ -19,7 +19,7 @@ select:
     - compatible
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml b/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml
index 0fa2132fa4f4..08d74ca0769c 100644
--- a/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/mediatek-dwmac.yaml
@@ -25,7 +25,7 @@ select:
     - compatible
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
index 63409cbff5ad..4c01cae7c93a 100644
--- a/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
+++ b/Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml
@@ -24,7 +24,7 @@ select:
     - compatible
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 2a21bbe02892..176ea5f90251 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -32,7 +32,7 @@ select:
     - compatible
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
index 395a4650e285..c9c25132d154 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
@@ -168,14 +168,14 @@ properties:
 patternProperties:
   "^mdio@[0-9a-f]+$":
     type: object
-    $ref: "ti,davinci-mdio.yaml#"
+    $ref: ti,davinci-mdio.yaml#
 
     description:
       CPSW MDIO bus.
 
   "^cpts@[0-9a-f]+":
     type: object
-    $ref: "ti,k3-am654-cpts.yaml#"
+    $ref: ti,k3-am654-cpts.yaml#
     description:
       CPSW Common Platform Time Sync (CPTS) module.
 
diff --git a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
index 474fa8bcf302..052f636158b3 100644
--- a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
@@ -19,7 +19,7 @@ select:
     - compatible
 
 allOf:
-  - $ref: "snps,dwmac.yaml#"
+  - $ref: snps,dwmac.yaml#
 
 properties:
   compatible:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
