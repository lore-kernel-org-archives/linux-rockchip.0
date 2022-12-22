Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBDC8C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp1bABsA0Sv/e1xww89elDRBn7EXu0xpgkFdD3l2kAA=; b=AaTTlFrZhMqNM3
	4ElLHqeT2Udxj3CdUxKKleZG7AjBgLJ2QyrCTXQSGkW04q1L5C01XIb0Wa6u/8IuNIQO3KXssmIna
	cahEBjzDI0uZb+LjOMTqIGYbB/kYOaU05LVkzqmvMq/WYucwsoZQZRsKYy+WOpOtth4O2Pa/jhmVK
	t4IBx4H8rfEFxcwROv4tBD8NAGbHhVK4epPdN/qgRfpD5E1L+IL9yo1/ZMkullGBm9+lQ44AbsrFQ
	mSpPaxNIjpYKKcA4yfbXJg8LFxOSCpqlucFg5uU1B1+Z7h/RNAtRCt8CqO335aUG5659K8D1BR7oX
	WD6u7R4+UTQbOfEhSkbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mox-00D7lm-SP; Thu, 22 Dec 2022 14:45:20 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MUh-00CvLF-7a; Thu, 22 Dec 2022 14:24:24 +0000
Received: by mail-ej1-x62e.google.com with SMTP id x22so5220335ejs.11;
        Thu, 22 Dec 2022 06:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LnWhFDszNMI8+kb0kwDjwW0IO0VieHrS+DBjt8KEoSM=;
        b=cuFW0RTjiVDBdjiwgwJQVjfjjPxXLiH9SW6vNyZZT/0l+q7G1n/JB0x7gqXcaCVi/f
         eXG+dJt+DxN8IhfYygw5ufplocdh64KCshIotuIEHdVVvXRRkXNa10xNVnDpMQwBuznZ
         fs32PWrIK/UMzp1U5b+ytjdj7IFjCyNc5eRXWmBMGc5iOp6U6J8vNBNDiYGwusCCR/iG
         ktcB8G4hUnc50wXJHYkUEcgjZBaImBefO7nZ2HCrzsqBpTem/B/vOvoz711Yov98rc5J
         7luzBlQT9wZWUkdFuJ+W6cNtXAow2S3dMuhVHdYF48zu25TdAV9utgAXuVasjk7HJvIK
         v6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LnWhFDszNMI8+kb0kwDjwW0IO0VieHrS+DBjt8KEoSM=;
        b=xJo0qs1I5KuXUHvLzQAtaHprxPBqEI9HeDcrfc0NcnHwEzA66QBny9U+d/2EkCpwAf
         LIRGZFNLNvHMVebFgWzxVlNP2IAEYqRpr8WVE1v+4pJfQh+XF0gB0zKBSP4/4s7T+r2/
         OqliAUwAoszmoHP17vg9Q8ujIR6Tz2/5mw81D4dCOaUnlZkAXxMNGdVyjV/tJcXdQcoL
         LPT1iWdR3QMak9clis0+SzMqvUBrvseEejn1+s9y+5uRxNUPGQC/78DPnOKP2rAkD1UD
         2V8YE19tatSiWZQVQNNKiw5T9mnXOPyw28qQni4Ft5h+asGAMVpk8zoG485qOYsLkmfR
         uX4A==
X-Gm-Message-State: AFqh2kr2cO2BEx/Pc6WklXQp+f1zuDV4fzLzpzOx/iTG+RSVqVgFXa/Z
	z/w5IUUJCxQwcn6RIcezlt8=
X-Google-Smtp-Source: AMrXdXvroVpUBN7+mAP+hqeudjOkt5RRg2uy5FfYK2PWzHmdu0pl+Jqa8DrSEN30FJFKNCbQJOqIPg==
X-Received: by 2002:a17:906:6dd4:b0:836:e6f7:8138 with SMTP id j20-20020a1709066dd400b00836e6f78138mr5338891ejt.13.1671719057163;
        Thu, 22 Dec 2022 06:24:17 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id y3-20020a056402134300b0047f5f5bb5fasm415838edw.62.2022.12.22.06.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:24:16 -0800 (PST)
Message-ID: <ff3644da-e5ae-f795-c7d9-454b8c8bdfe8@gmail.com>
Date: Thu, 22 Dec 2022 15:24:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 02/17] dt-bindings: soc: rockchip: grf: add
 rockchip,lvds.yaml
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062423_375153_08BEB155 
X-CRM114-Status: UNSURE (   7.39  )
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

Add new converted rockchip,lvds.yaml to grf.yaml file.
Prepare for more SoCs with lvds output.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changed V5:
  Drop the quotes
---
 .../devicetree/bindings/soc/rockchip/grf.yaml | 24 +++++++++++--------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79..7ac9aa5fa 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -75,13 +75,17 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,px30-grf
+            enum:
+              - rockchip,px30-grf

     then:
       properties:
         lvds:
-          description:
-            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+          type: object
+
+          $ref: /schemas/display/rockchip/rockchip,lvds.yaml#
+
+          unevaluatedProperties: false

   - if:
       properties:
@@ -109,7 +113,7 @@ allOf:
         usbphy:
           type: object

-          $ref: "/schemas/phy/rockchip-usb-phy.yaml#"
+          $ref: /schemas/phy/rockchip-usb-phy.yaml#

           unevaluatedProperties: false

@@ -124,14 +128,14 @@ allOf:
         gpio:
           type: object

-          $ref: "/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#"
+          $ref: /schemas/gpio/rockchip,rk3328-grf-gpio.yaml#

           unevaluatedProperties: false

         power-controller:
           type: object

-          $ref: "/schemas/power/rockchip,power-controller.yaml#"
+          $ref: /schemas/power/rockchip,power-controller.yaml#

           unevaluatedProperties: false

@@ -146,7 +150,7 @@ allOf:
         mipi-dphy-rx0:
           type: object

-          $ref: "/schemas/phy/rockchip-mipi-dphy-rx0.yaml#"
+          $ref: /schemas/phy/rockchip-mipi-dphy-rx0.yaml#

           unevaluatedProperties: false

@@ -174,7 +178,7 @@ allOf:
         reboot-mode:
           type: object

-          $ref: "/schemas/power/reset/syscon-reboot-mode.yaml#"
+          $ref: /schemas/power/reset/syscon-reboot-mode.yaml#

           unevaluatedProperties: false

@@ -200,7 +204,7 @@ allOf:
         "usb2phy@[0-9a-f]+$":
           type: object

-          $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
+          $ref: /schemas/phy/phy-rockchip-inno-usb2.yaml#

           unevaluatedProperties: false

@@ -228,7 +232,7 @@ allOf:
         io-domains:
           type: object

-          $ref: "/schemas/power/rockchip-io-domain.yaml#"
+          $ref: /schemas/power/rockchip-io-domain.yaml#

           unevaluatedProperties: false

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
