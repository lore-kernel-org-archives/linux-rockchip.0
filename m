Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 898A6C761A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 16:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pMO5TQ8pb0Ysl7BrfWs7zzrMQyCKE2E+seoKwCdovM=; b=oBtMrjf8FYv1cv
	OpVCUC4BsC7eRH9IWRIJ1jRBY2aCAClufKEAJvRuvJgD/u56P545f9mJFQuR3SMq2kRH1Uzg3jVQn
	6dtsfp8aZWh53yObsEEqaV+cRerx1ioxTEBJ19cP/LhBs5UqrMnhh3Q3rYXtoKlTYB4X7BELSbYh/
	3xi84fe21J0+x5nV0CTxn8p6qGox8cM5LSoXGnH8AW5ra0d3h/skP/RQpOapM4s76F/V0bCtxpFpv
	AMpdIGwYf+hQyEKJycKZD4Sbb4Wh8Jt3uZTRjzYsS86Lxk9eoIIg+IBC8FjagXXSNze753DERp5dQ
	qKGqi3hajdKTYkHP563g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piHlh-0089cD-35;
	Fri, 31 Mar 2023 16:38:25 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piHla-0089Wq-0S;
	Fri, 31 Mar 2023 16:38:19 +0000
Received: from jupiter.universe (dyndsl-091-248-213-136.ewe-ip-backbone.de [91.248.213.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B715B660319C;
	Fri, 31 Mar 2023 17:38:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680280696;
	bh=IanGuFMtYNipnpczUMLMr5LoVeF2LYQjoKAV5cNfhuo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mJg3f1Gi+1cc0aypuEBm1Au6W+2Hb7hdZ7C+ZzKxOyc9xgK4saf14aK9a4YKtSmpX
	 bN7fP8QVF0fvXvX8xnMT+6933JacK4eCWKDHuJXW/0cqOZbMmbr8DtgW2TSQnUOdrv
	 OQr3NynCiH5Vj3+fO3UUjjVTrHNHDJXiYwRs2GV9ZYByXiYjfz8jRCI3lRzP0TumoX
	 wp4W1XxF7TLEXSr30iyUIkoFliDH/EyoASF5vWPu1ykVglZlYPDosOSsrsEyMXDjY4
	 FKQKR2lu85CX6Rfe2rGNY/7TonswHbvr+Z+3CgWCGE8l540ZQAXd49p/Z3LfRSMyg5
	 JpuAFJAkzBohQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id EBDAF4807E3; Fri, 31 Mar 2023 18:38:13 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
Date: Fri, 31 Mar 2023 18:38:11 +0200
Message-Id: <20230331163812.6124-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230331163812.6124-1-sebastian.reichel@collabora.com>
References: <20230331163812.6124-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_093818_343586_A012A927 
X-CRM114-Status: UNSURE (   9.58  )
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

Add compatible for the USB2 phy in the Rockchip RK3588 SoC.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/rockchip,inno-usb2phy.yaml   | 21 ++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 0d6b8c28be07..5254413137c6 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
   reg:
@@ -56,6 +57,14 @@ properties:
     description: Muxed interrupt for both ports
     maxItems: 1
 
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: apb
+
   rockchip,usbgrf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -120,15 +129,21 @@ required:
   - reg
   - clock-output-names
   - "#clock-cells"
-  - host-port
-  - otg-port
+
+anyOf:
+  - required:
+      - otg-port
+  - required:
+      - host-port
 
 allOf:
   - if:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3568-usb2phy
+            enum:
+              - rockchip,rk3568-usb2phy
+              - rockchip,rk3588-usb2phy
 
     then:
       properties:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
