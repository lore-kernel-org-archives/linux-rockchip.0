Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18E42C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 13:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeBErO2sbpouU1WYmOyZRZABJvVGJ7XBSbZyUHGc4GU=; b=jDYO+FKmOhSQAu
	de/ABzgNSoVVionWyMazRyS1Tf8inPx5bKQzV9BOaxVxOX/cGG0LLq2Fj2iSsF6J7UEZQEr5i5sZT
	yWTwMMVjA8iIP5zcVVfGxfNp2X/BeBa39QKCAERW5pYDgBiEDDj+gn/fE3mpneYlAkEeXCnYMnfjj
	2G0B6sAjZb9fWTZW4nxb2x65UkyAnTLA656dKjeZI/cZ58Bo87EgfA2O8/5PyuWpfHRVOMcZLESsE
	wVNKwtq3djJIPtH+hNzA5KTIHU2CGYlyfv3721pzV34nUybW7Omv40/u0temowkWu8aOrgdSAapGi
	5qRBYKjQroLSSokMDR8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c7u-00000004MPg-2yOA;
	Sun, 05 May 2024 13:42:03 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c7o-00000004MLH-3O7L
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 13:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1714916495; bh=W8GUtXzj3Rp0251QTwW9fbnt8zTzF5kn1FBpfBkBZXA=;
 b=bQUUXQG8BJMidveyOUWZaBStb1q0pTzIDkIWN5pibpOBp2DJiRIG0HvHSnKyIp/4WF9PolzYp
 anuxkBg4CHuKRvzoZBPi3lNMle2ZCn+1HiBvWVpXx4FqCoX3As1Ze63YtP9PpoXjWXOmtmY2qUN
 2UVwqfGSvN3fvgRazpw9/luwgaLeM91fyi7B6pICUN/wiXkDwJRcjmg4UraKI1hdIesM7j+rsP9
 Yl1M9X8UB/8ezDqcwsFbksnxxZ3JdLkToPKamsXhQmYH0GiaamEXB13F+bXKYXy4Se66FXOlIGC
 bBdNuWFxijG1U/mtrxgQiNcGF7M57zlcdpyl31tFEbaQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Chris Zhong
 <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec properties
Date: Sun,  5 May 2024 13:41:12 +0000
Message-ID: <20240505134120.2828885-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240505134120.2828885-1-jonas@kwiboo.se>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66378c8e57f92010457d6890
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_064156_900577_F5ECEFBD 
X-CRM114-Status: GOOD (  11.11  )
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

Similar to RK817 the RK809 also integrates a complete audio system.

Add audio codec properties to binding to reflect this.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../bindings/mfd/rockchip,rk809.yaml          | 34 ++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index c951056b8b4d..b78e1b090105 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
-  that includes regulators, an RTC, and power button.
+  that includes regulators, an RTC, a power button and an audio codec.
 
 properties:
   compatible:
@@ -93,6 +93,34 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+  clocks:
+    description:
+      The input clock for the audio codec.
+
+  clock-names:
+    description:
+      The clock name for the codec clock.
+    items:
+      - const: mclk
+
+  '#sound-dai-cells':
+    description:
+      Needed for the interpretation of sound dais.
+    const: 0
+
+  codec:
+    description: |
+      The child node for the codec to hold additional properties. If no
+      additional properties are required for the codec, this node can be
+      omitted.
+    type: object
+    additionalProperties: false
+    properties:
+      rockchip,mic-in-differential:
+        type: boolean
+        description:
+          Describes if the microphone uses differential mode.
+
 allOf:
   - if:
       properties:
@@ -284,5 +312,9 @@ examples:
                     };
                 };
             };
+
+            rk809_codec: codec {
+                rockchip,mic-in-differential;
+            };
         };
     };
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
