Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DDD9C27C78
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 21:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MOsktcbswj7b4PYJYIsomQZnQp0poQQutxCiXXuRG0=; b=ZQv87l1lV7aQ+6
	FoNVGUrtVUioNZwr5Fm0vEvk5ssZQaW6G41zPxgpQfX5+gzi4q62Eg/vJaCnKSFjj4iQCUCxuVmE7
	op0yauU9zi2RiUK9TVa43GnJ8UCfhK5/AolLRc5jcwcOGdE0rEiQJ7/FENDX0GiFBvBwOg6xWxNoj
	pZNzJ2ULsuXgAcyUTA1TQwe+1WV8BheKNGA8BkNIRlFqxUOfDEWghwqcACL1A3uE7CBjB1fGYLQHB
	//bLr1N6Y4R/e3/gAiewj1cWTPN2zA/FUDpYSW+NZxP9X7W+Zc8Pkm2SZ+c6P78bqsrYV6udN4j12
	jxlck2y1YFwtmDq5m7cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmHF-0000000Afj5-1Ytk;
	Fri, 21 Jun 2024 21:58:37 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKmGx-0000000AfcF-21uN;
	Fri, 21 Jun 2024 21:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719007094;
	bh=1WIyV8ksTIHhhQ2eCcN+ywnSOJBkt4yK0goDj6avryI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=sUZlvApwjrOTmFwpqqRI/Zn5eOFa1BRtMxAhxobit3m/gzQNS1ZWExKZlpSDakZUZ
	 qXhf6Rx5N76nLYpy4AIovrVTlixsnVPurfi4LZMKdSeh/j0k2/PAgfFKsH94vibwJQ
	 +TNRxCF89B62aZFDcnCC5SHzAz/LfnR/zitlSVfqN52nE2n0p5WtYTNbqUZ0jXl10l
	 U6/Eu5XRvBU3Q08UMFBeiA462bd1cL+DhrcjcfyhT71LakkWJWMSUVYdvH8V1s3nlT
	 cfSPZdsqhe9R09R0dBZwLrNDDwkYoAhr6gU96H3XOVPfNuPDq7X8OMAnnp0sQFy6F1
	 rECHgOS1+3s/g==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 88AF937821DC;
	Fri, 21 Jun 2024 21:58:14 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 22 Jun 2024 00:57:18 +0300
Subject: [PATCH v2 1/5] dt-bindings: mfd: rk817: Fixup clocks and reference
 dai-common
MIME-Version: 1.0
Message-Id: <20240622-rk809-fixes-v2-1-c0db420d3639@collabora.com>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
In-Reply-To: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Furkan Kardame <f.kardame@manjaro.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_145819_920588_4E530438 
X-CRM114-Status: GOOD (  12.51  )
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

Ensure 'clocks' property does not allow more than one item and add the
missing reference to dai-common schema.

While at it, move 'clocks*' and '#sound-dai-cells' properties to keep
the list ordered alphabetically.

Additionally, drop all useless/redundant descriptions.

Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../devicetree/bindings/mfd/rockchip,rk817.yaml    | 33 ++++++++--------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 8c2fd0fabb92..d70b4307ac77 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -32,6 +32,13 @@ properties:
     minimum: 0
     maximum: 1
 
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mclk
+
   clock-output-names:
     description:
       From common clock binding to override the default output clock name.
@@ -42,6 +49,9 @@ properties:
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  '#sound-dai-cells':
+    const: 0
+
   system-power-controller: true
 
   wakeup-source:
@@ -94,26 +104,7 @@ properties:
         $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
-  clocks:
-    description:
-      The input clock for the audio codec.
-
-  clock-names:
-    description:
-      The clock name for the codec clock.
-    items:
-      - const: mclk
-
-  '#sound-dai-cells':
-    description:
-      Needed for the interpretation of sound dais.
-    const: 0
-
   codec:
-    description: |
-      The child node for the codec to hold additional properties. If no
-      additional properties are required for the codec, this node can be
-      omitted.
     type: object
     additionalProperties: false
     properties:
@@ -123,9 +114,6 @@ properties:
           Describes if the microphone uses differential mode.
 
   charger:
-    description: |
-      The child node for the charger to hold additional properties. If a
-      battery is not in use, this node can be omitted.
     type: object
     $ref: /schemas/power/supply/power-supply.yaml
 
@@ -168,6 +156,7 @@ properties:
     additionalProperties: false
 
 allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
   - if:
       properties:
         '#clock-cells':

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
