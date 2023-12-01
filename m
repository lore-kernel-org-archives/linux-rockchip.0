Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59809C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 19:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCYenF00ALg89+htmDCyETxYD3Dc8ks6N/nhLGq1jJ4=; b=0XwDDHbxOH5YLB
	obiH5qGpmL6yxLVO8KTchF00kCaMAbZkCQZhSXJkKzQiAVUx8faNf/7NQD1rco396Y0AjOHevt5mr
	Td/d7v2XYm4kNgsP1uISYBr9PFJFdDAQRXR6c+Cx40PDcDZA59E/QMSVh4LARRTIaXykq0J9JMCTq
	HpLEcELG/D+Ej1/9M6fpgpNnerzO3Q1C/o40LE/7Esv4bf25wZzc2kiXsyntF3y6m740ac/JAstV5
	MKoYKIcS6euA6YVRwgWxcv3ggH94vZUQgyNfioa9jEmE4UdF9yLXGsGopT98lu9EEDADuXa+2PpJn
	ekU0ks77yEeKwYf6g4rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r98v9-00EURg-0b;
	Fri, 01 Dec 2023 19:11:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r98v6-00EUQc-2s;
	Fri, 01 Dec 2023 19:11:26 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r98v1-00023n-Fm; Fri, 01 Dec 2023 20:11:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
Date: Fri,  1 Dec 2023 20:11:02 +0100
Message-Id: <20231201191103.343097-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201191103.343097-1-heiko@sntech.de>
References: <20231201191103.343097-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_111124_973550_5BFC9076 
X-CRM114-Status: UNSURE (   9.69  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Add the binding for the Jaguar board from Theobroma-Systems.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..44181a36c5d5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -875,6 +875,11 @@ properties:
           - const: tsd,rk3399-puma-haikou
           - const: rockchip,rk3399
 
+      - description: Theobroma Systems RK3588-SBC Jaguar
+        items:
+          - const: tsd,rk3588-jaguar
+          - const: rockchip,rk3588
+
       - description: Tronsmart Orion R68 Meta
         items:
           - const: tronsmart,orion-r68-meta
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
