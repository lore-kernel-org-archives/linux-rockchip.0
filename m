Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B1DCD6114
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 17:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fp2NYKIu4k1RtTg27GoPDibcjLGwgj9bSPbc3AnK84E=; b=F3s8i3aRhcjPlz
	AhW91oagX02q3P+AtUwWhEJhrxuH9svFaEaJ8ZUsabUj8a4A4rFVOUXGtL0XloeZWRaYz6Uu2nFFJ
	fwdoEG+so3O/qSsfLzebUPvX2lrLlH8/N/+Xah4MWsFlRDL28dz06gmRrW7HfItwKt3C2BFGVeWV4
	wVsOxsG9VVvn5Ihh7GlZQRKZT4q/BsGa8jfmysYCJ+RDijj8ZQYsNGpiebOZTGem69odeNYAUrm2G
	/9d7oz4WZ0+vaazR6NM3GXXmvc13k0dzERzqNya8GcWWZFp2DprUorhUvqRRNFC65ZO2n8v0WQ8uF
	uL8+e/5LkYXCIrUTP3hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwr-00BHAM-1k;
	Mon, 09 Oct 2023 17:21:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwo-00BH7f-1N;
	Mon, 09 Oct 2023 17:21:40 +0000
Received: from jupiter.universe (dyndsl-091-248-211-168.ewe-ip-backbone.de [91.248.211.168])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5CD7866057B6;
	Mon,  9 Oct 2023 18:21:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696872093;
	bh=gX1sh9tNcdiHJy/P3FU5j/FQag6VcA3nlE7BjqH+NDc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fBMEh6KKbKIXdXfA5OwUqMT0CI3myXDMFMlq79XiS8qWCBrzb4edUtoFEGSH5QpGL
	 AD1xVPHvFQIlG+kAN1zQG+UXg1rcr7T6a38B9AKVyOPaM5vZbJ+riWu/HGJSLdpi//
	 Gp0TGQG1Q2y9P5a2VCyxdRzbzd2u1hyjrySVYVLyvYMhzCvfgjD6wK621gZqQXrp6a
	 DfPOvoxWc9D9wk6v2hJl5Vz9b02Nd4JQNHgg2DoVE+Yv+UUPTVq2y7XR2oGCFnoS3L
	 pW8NBbWZr4bzjl7OkM8RpkNpdSvmKSz2f19YtuUNauf4jlMJMCe5Ms1EnvvEFH0kUp
	 GxQ0K6q4wa1mw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1C6FC4800CA; Mon,  9 Oct 2023 19:21:31 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 1/3] dt-bindings: usb: add rk3588 compatible to rockchip,dwc3
Date: Mon,  9 Oct 2023 19:20:09 +0200
Message-ID: <20231009172129.43568-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009172129.43568-1-sebastian.reichel@collabora.com>
References: <20231009172129.43568-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_102138_684146_D630659E 
X-CRM114-Status: GOOD (  13.31  )
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

RK3588 has three DWC3 controllers. Two of them are fully functional in
host, device and OTG mode including USB2 support. They are connected to
dedicated PHYs, that also support USB-C's DisplayPort alternate mode.

The third controller is connected to one of the combphy's shared
with PCIe and SATA. It can only be used in host mode and does not
support USB2. Compared to the other controllers this one needs
some extra clocks.

While adding the extra clocks required by RK3588, I noticed grf_clk
is not available on RK3568, so I disallowed it for that platform.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/usb/rockchip,dwc3.yaml           | 66 +++++++++++++++++--
 1 file changed, 61 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index 291844c8f3e1..517879290099 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -20,9 +20,6 @@ description:
   Type-C PHY
   Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
 
-allOf:
-  - $ref: snps,dwc3.yaml#
-
 select:
   properties:
     compatible:
@@ -30,6 +27,7 @@ select:
         enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3568-dwc3
+          - rockchip,rk3588-dwc3
   required:
     - compatible
 
@@ -39,6 +37,7 @@ properties:
       - enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3568-dwc3
+          - rockchip,rk3588-dwc3
       - const: snps,dwc3
 
   reg:
@@ -58,7 +57,9 @@ properties:
           Master/Core clock, must to be >= 62.5 MHz for SS
           operation and >= 30MHz for HS operation
       - description:
-          Controller grf clock
+          Controller grf clock OR UTMI clock
+      - description:
+          PIPE clock
 
   clock-names:
     minItems: 3
@@ -66,7 +67,10 @@ properties:
       - const: ref_clk
       - const: suspend_clk
       - const: bus_clk
-      - const: grf_clk
+      - enum:
+          - grf_clk
+          - utmi
+      - const: pipe
 
   power-domains:
     maxItems: 1
@@ -86,6 +90,58 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - $ref: snps,dwc3.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-dwc3
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 4
+        clock-names:
+          minItems: 3
+          items:
+            - const: ref_clk
+            - const: suspend_clk
+            - const: bus_clk
+            - const: grf_clk
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-dwc3
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: ref_clk
+            - const: suspend_clk
+            - const: bus_clk
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-dwc3
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 5
+        clock-names:
+          minItems: 3
+          items:
+            - const: ref_clk
+            - const: suspend_clk
+            - const: bus_clk
+            - const: utmi
+            - const: pipe
+
 examples:
   - |
     #include <dt-bindings/clock/rk3328-cru.h>
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
