Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 249CFC7EE25
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4k52NvJL/FZSB5udioS6+4nM5a/R1uyxW6+7z3QfpEg=; b=X6ski+zhFNi/iT
	wJumVBQDoMi4V3nbX79u2BnLOulo70NMru9MOlIyhCiJKl6fUmhqWSOdIHlY28YB88D5HqPOwniRb
	+xruDJQBTT9J4K0pf0x5XXHZOWX4GTBOB4wK3Q1FBG55hHbx4Kxdq7fnZlBXqxkmVS9rFM5GWO6sw
	6IEf1uhBAxOD0CXOCvOgPwFLkO639Yw8GRr1hG78iKoG2KRi+U39bQCbtnQ/fgsua5sTwJwBqSwS1
	a+9rXz4wIz5qBe8grHEF9f/nDTSg1Rizt4eFyNe+ULQFsMoQMx0FDFqd4s+sRgZIvRv4tfWXx2eB+
	fQohXUscUWCB+ALTbCrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dHb-003AB4-1j;
	Mon, 12 Jun 2023 08:52:15 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dHY-003A88-0c;
	Mon, 12 Jun 2023 08:52:13 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b1a46ad09fso46897931fa.2;
        Mon, 12 Jun 2023 01:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686559923; x=1689151923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vC6uwJ0JqcA9AI2hZ192LN4Lm6HljDsWRRLUQCbqRcI=;
        b=ha+NLGOPK268A8Rm69MB2VrlRZ+bdLMoCKBLy0i1SKtuixABoEGpHl4oGE70nPdWrI
         fWHYhWb5EBh38UF+ViInymqzwkg/Zad+alqWfDprpVo9fgantG3Tz2sziWPw8upec7ts
         /Fv3t/yWt6xY9KXU53ybP9Y85wyqEazYhy6JiPo96nIX5SF4uRKG5GITBsqxWuCk1vQX
         EkWAFhD8ZV+9RpimOe60IiIxpLQXcl/lff1tzJzFERRz1X4gJJh8cCQuDLq3wpAnM8wY
         WWTst4ebBmy5XYqnnge0LQw1u/wcQ76+CfadGwNDS32TMQdIsStrT+N5jEUX9QHUrcCk
         D7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686559923; x=1689151923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vC6uwJ0JqcA9AI2hZ192LN4Lm6HljDsWRRLUQCbqRcI=;
        b=aViVu/1WcEFGxgsEMbVv6LYlM32qgRSL0AtXlDI+2XupXYbQO50fn6uTE/NuBQ/weg
         KgcBMuk+I05eipWrAfn0R9grI5ZiEaT8MraSd9YcsFgLt2DzMxwOLfuIsnAEZIMAqaK6
         AJXJ8DDPAmpCHdaOoGPqqftAcjWnjudP3o4FlHmDYBC4AHBBlf6hp8TEr8eYT1K0zQvz
         tMr3Ogz3QRyYLLlWLnDyLn/vkCN4pLeoipgG8HSAQvWEPO6Gw91aU2bwcIQz+dXWDqrR
         uLPAp5TPLsu78jKv7BtCG8nXRIp5F8Bjxpsjd8h3NE5OueXTegSqQdZMuWLU6+ybvf0L
         XVkQ==
X-Gm-Message-State: AC+VfDypjWeXGARuHuBn10VyPoNpXvZQZ8ytGymu3vwnbVd3paMPkcly
	+QLazZg/bpnb+FPgUZgJuMg=
X-Google-Smtp-Source: ACHHUZ7EKA8vldamQ7vDC+e0lKSYEpHmgr+nXY6Twa32SsY75+3B3FPeePjMNjp0U0aabyKDkLIrCw==
X-Received: by 2002:a05:651c:1039:b0:2af:d2ef:49d4 with SMTP id w25-20020a05651c103900b002afd2ef49d4mr2231817ljm.1.1686559923246;
        Mon, 12 Jun 2023 01:52:03 -0700 (PDT)
Received: from mobilestation ([95.79.140.35])
        by smtp.gmail.com with ESMTPSA id s9-20020a2e9c09000000b002b31e0be2d7sm1003800lji.90.2023.06.12.01.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 01:52:02 -0700 (PDT)
Date: Mon, 12 Jun 2023 11:52:00 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Message-ID: <20230612085200.5okxcipiw5sofo62@mobilestation>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-3-sebastian.reichel@collabora.com>
 <4c914503-c2e5-a5d8-97af-daaee0b4ec7c@linaro.org>
 <20230612083536.q3sq7w6cyiuxaqtv@mobilestation>
 <838ed0e6-985d-9a45-7ece-c607bda15871@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <838ed0e6-985d-9a45-7ece-c607bda15871@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_015212_228785_C708C0B2 
X-CRM114-Status: GOOD (  20.62  )
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

On Mon, Jun 12, 2023 at 10:39:57AM +0200, Krzysztof Kozlowski wrote:
> On 12/06/2023 10:35, Serge Semin wrote:
> > On Mon, Jun 12, 2023 at 10:24:06AM +0200, Krzysztof Kozlowski wrote:
> >> On 08/06/2023 18:22, Sebastian Reichel wrote:
> >>> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> >>> allowed clocks without bloating the generic binding, the description
> >>> of Rockchip's AHCI controllers has been moved to its own file.
> >>>
> >>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >>> ---
> >>
> >> ...
> >>
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    items:
> >>> +      - enum:
> >>> +          - rockchip,rk3568-dwc-ahci
> >>> +          - rockchip,rk3588-dwc-ahci
> >>> +      - const: snps,dwc-ahci
> >>> +
> >>> +  ports-implemented:
> >>> +    const: 1
> >>> +
> >>> +patternProperties:
> >>> +  "^sata-port@[0-9a-e]$":
> >>> +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
> >>> +
> >>> +    unevaluatedProperties: false
> >>
> > 
> >> You should be able to skip this patternProperties entirely, because it
> >> comes from dwc-ahci-common -> ahci-common schema. Did you try the patch
> >> without it?
> > 

> > Please see my message about this. The "sata-port@[0-9a-e]$" sub-node
> > bindings could be updated with the "reg" property constraint which,
> > based on the "ports-implemented" property value, most likely is
> > supposed to be always set to const: 1.
> 
> Then anyway the pattern is wrong as it should be @1 always.

* I miscalculated a bit, it should have been zero but in general
the pattern-property is indeed redundant.

As a conclusion the change should look like this:

+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,rk3568-dwc-ahci
+          - rockchip,rk3588-dwc-ahci
+      - const: snps,dwc-ahci
+
+  ports-implemented:
+    const: 1
+
+  "sata-port@0":
+    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
+
+    properties:
+      reg:
+        const: 0
+
+    unevaluatedProperties: false
+
+ ...

Right?

-Serge(y)

> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
