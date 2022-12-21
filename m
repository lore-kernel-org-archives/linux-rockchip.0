Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E67DC10F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp1bABsA0Sv/e1xww89elDRBn7EXu0xpgkFdD3l2kAA=; b=CR25n9yYsLjIFG
	gAsNdgNXWCP9jhWgoYTh0nMPB803qEL7UqCYs6UUCx9MPwNTVfEQraoqXkYF8Crn9ChCT3wpdOaI9
	nWR3VjPvTSEfqc8rIcLE9gHYYEX0PJIgy2wNq0DIDXTr2sLqwUb9nGYPH2pU8ojFT6ieAU8c94IGM
	8ZPTPVijWkh7eudAigINWZCCMQPfGMJ8MVxSLyrRDLS2EBQtZSDx/ZsJ6SatB7S5DFjRh3v9hUQNK
	pmss6RN9C2ohyAhqDeHcBl+rmSlp5DdQES4KSBNz+9ClhRBEPrRxZUeoPrhRvkbP7SyFrrnr3a9l9
	Q0d633nIkcJYdty2TcSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83n5-000XoP-QJ; Wed, 21 Dec 2022 18:26:07 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83iv-000Vc5-JV; Wed, 21 Dec 2022 18:21:51 +0000
Received: by mail-ej1-x636.google.com with SMTP id qk9so38809515ejc.3;
        Wed, 21 Dec 2022 10:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LnWhFDszNMI8+kb0kwDjwW0IO0VieHrS+DBjt8KEoSM=;
        b=e4QXwP2bOGr70buxskh5jSIRLAz2fiCw6a7TkqnVMqf6kQc8erSqQoBaELH2aH2bGX
         +OhWrtWxvzzLnS4EB1Z/WItKht8rqJDCaWex1meDWrYXa+Rf8K27ungyyTEdfZdQGr0/
         TZ+GcobpkVXE+RRBF5vSnCiQM2VR3LlrIu8ezR3P99wcT79A6f6OxtpIiQecSh66Em5m
         /y+c7mQFXe4qETizgKgslXpVumXoWgFysiRxzVdA+7G5bKOyDfpvFFhsRI26ZfqeBWeK
         2NeZhumocnv5e9v9/P1kVF9Bw3OmtPJflSyrRz+e7GHe7amNV/B8NYXMQSZTkY2RPuyi
         0l2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LnWhFDszNMI8+kb0kwDjwW0IO0VieHrS+DBjt8KEoSM=;
        b=dsKsm8mNJwlUo7xE4AuKqbwKylL8kt9KS1jmiHB3o1TiyOCUmQZZe4seiQlSD9uzuL
         gepZMxJHedPljYYkixR4nAPfa6/NlxHP1Gg0x+5r9OAAr9GEhMbvxJ9fXafwIDr4MmIT
         eyWPozZo17YoQ+aFEf3jMsiFJKVSN8Ix9L2k99FuThhR6+/kmhwCcVjMDge4XMij3hYm
         1t0TvBk2cBz55XoVkEnA+h7kk2cZfOiX/C6LqU+OeTZ06RzyjsHRHSP0zEd0s0xPiaUu
         8YhmzNxFdt8oSHsUin0vYW2XiFnOx7dbVWUUgm1ArVV0vLx1msMXJmxOMve5hUfJT3YN
         ILqA==
X-Gm-Message-State: AFqh2koAJKG5tajRjkfHqw/CXJiBRfSX2YR/mHieOVyQsnnZdVSreHkU
	kymAfYNgBtmTx6JbYQ8I6zM=
X-Google-Smtp-Source: AMrXdXvErNmURo35q8fo78e8suJHy6UEA0KsAxDbpARLlpS4MeoU//sFxO9B6BpmqIFm1jNcxrASHg==
X-Received: by 2002:a17:907:a0d0:b0:7c1:55aa:2e84 with SMTP id hw16-20020a170907a0d000b007c155aa2e84mr2166799ejc.1.1671646908172;
        Wed, 21 Dec 2022 10:21:48 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id e22-20020a17090681d600b007c0d0dad9c6sm7424130ejx.108.2022.12.21.10.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:21:47 -0800 (PST)
Message-ID: <e5e782d0-5255-518a-af4b-f103eeac2014@gmail.com>
Date: Wed, 21 Dec 2022 19:21:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 02/12] dt-bindings: soc: rockchip: grf: add
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
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102149_755212_F7511877 
X-CRM114-Status: UNSURE (   7.57  )
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
