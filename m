Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC5F1C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNf26kzv6y5Az0KBw0bmTK6OUfyx8p0Y3A8XgPmjZxY=; b=CoQpc6jPKiYfIe
	F7rI2GDyWHPSypRMqn9xEh/bIiRS49sx/G0hTeQHMBaoPXwTPY7+xqmWzTYUVCeHIepZxVjM+abrS
	n4ohUo7RfxRa3bSvvM4EZwzVCXXJItCX5TwIkiJjxjWwIAY9a0yT0C8r6XOgsEX024nMmNnXyRVq4
	67LexBF+/1lZmbBtd5pjhb3ETIGttpewwLtOJGK0zz89c/pDRD9JxgACTJvo7r3Cu+hJukeipWzI6
	APkOdwI3rFqQJXzKQKjeFl5PfhI5Xue0IurMHMkPLxF14BwXhrIIHPEhZ4B0DZGVHBRhUz6/vUUlH
	Tf+Zld+VM4bbXzm2ePtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVmh-0000000HCgV-3XGQ;
	Fri, 23 Aug 2024 15:01:03 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shVmd-0000000HCcE-0ryk;
	Fri, 23 Aug 2024 15:01:00 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724425203; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dx1Vx0pGNMLpLyPTPLhxZfixjX/rPza9qrWqT3i4NBofTj/t/l+eTFVWaZLLmvZU+1fPOAzBs9XOKtS24VNElJ4HTko+JGZwKzxQP9q96q33mMZmx5foBfeb9mJdTUyoOLynOJ9GgNZbVa4DunLOR2Eh1dTEZBNipg/Ub+v2IwE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724425203; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UydYlnEpoWZSVKlC7SlVfuvUqEsAaIRshRB6GAvUoJc=; 
	b=gDrPDKpnoclpl9RPmyWkYWSP2PrvvWBToGUmEy0qOzCu2iOcm+VxBH/MQkVGfObEVHabm0TMmrWTD61/rIRfqaREvXOAFP0K9sVX3SjKld6VUWPkjO51GHmRx4KYEvPo/7AznMr08k7mcEAZZbIeeyV2qYs0lrQSVZytOEIw0V0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724425203;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=UydYlnEpoWZSVKlC7SlVfuvUqEsAaIRshRB6GAvUoJc=;
	b=FojuEMMC7vCXM7RRxvuDMJmFDxvpO6+VAZQgwnlTYHbIM00TXMAoVQZMe5w7TiRL
	fTBR8cQ3W0pPl9k6NGVvTleRkej+pp1RuIiSQBE1O4VywrltqWwrX3eS13Z55DxhmmG
	t2j7Gu+QFWrg11+0xdC9EGfujmbUc4EX5FJimy9s=
Received: by mx.zohomail.com with SMTPS id 1724425201699384.26073334963485;
	Fri, 23 Aug 2024 08:00:01 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ondrej Jirman <megi@xff.cz>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Jamie Iles <jamie@jamieiles.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 07/12] dt-bindings: mmc: Add support for rk3576 eMMC
Date: Fri, 23 Aug 2024 10:52:34 -0400
Message-ID: <20240823150057.56141-8-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240823150057.56141-1-detlev.casanova@collabora.com>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_080059_359942_E55CD0A0 
X-CRM114-Status: GOOD (  11.85  )
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

The device is compatible with rk3588, so add an entry for the 2
compatibles together.

The rk3576 device has a power-domain that needs to be on for the eMMC to
be used. Add it as a requirement.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 32 +++++++++++++------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index 4d3031d9965f3..7d5e388587027 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -12,16 +12,29 @@ maintainers:
 
 allOf:
   - $ref: mmc-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-dwcmshc
+    then:
+      properties:
+        power-domains:
+          minItems: 1
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3568-dwcmshc
-      - rockchip,rk3588-dwcmshc
-      - snps,dwcmshc-sdhci
-      - sophgo,cv1800b-dwcmshc
-      - sophgo,sg2002-dwcmshc
-      - thead,th1520-dwcmshc
+    oneOf:
+      - items:
+          - const: rockchip,rk3576-dwcmshc
+          - const: rockchip,rk3588-dwcmshc
+      - enum:
+          - rockchip,rk3568-dwcmshc
+          - rockchip,rk3588-dwcmshc
+          - snps,dwcmshc-sdhci
+          - sophgo,cv1800b-dwcmshc
+          - sophgo,sg2002-dwcmshc
+          - thead,th1520-dwcmshc
 
   reg:
     maxItems: 1
@@ -38,7 +51,6 @@ properties:
       - description: block clock for rockchip specified
       - description: timer clock for rockchip specified
 
-
   clock-names:
     minItems: 1
     items:
@@ -48,6 +60,9 @@ properties:
       - const: block
       - const: timer
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 5
 
@@ -63,7 +78,6 @@ properties:
     description: Specify the number of delay for tx sampling.
     $ref: /schemas/types.yaml#/definitions/uint8
 
-
 required:
   - compatible
   - reg
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
