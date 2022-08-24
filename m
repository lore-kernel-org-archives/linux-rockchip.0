Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10AB6C00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 19:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMKQ+bJvBNtaTc0qmGlOpp1rBhbr8y4ffPeLDIMrL2E=; b=NXUA2b5xkRc8Gd
	Ng9vKKXpVZlwij0T4WTZeIVcdUuy4cIF4cIneKMU6W5gBZzXf9ImgDtyRbFoPNnfI75XoS3TbDLIw
	3BkAmAGxiONH8gv6YSr3mprzDkkoayZpr0nlu20E7oreKNgPlQL+O/+HPBOASPYKPEbo0XknUTXNs
	um491nU8HFoAAibFcCDKT3mWEkqoIlLldnHdP2OvgRWaJwKP8eqiku5JWaMBgFzRFG8w4scn5yoJH
	yUxhHebGW3E1eVTjiUgt488WbhcAsoG45mV/0TRmZ9TdLaXc3BAh5+Ihe0F+wacWt4wO6B0r3x1zb
	phwZX2Ttqw1wkUgY80kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQvbm-00FXsS-PP; Wed, 24 Aug 2022 19:00:10 +0000
Received: from mail-oa1-f44.google.com ([209.85.160.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQvbk-00FXm7-Jr
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 19:00:09 +0000
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-11c5505dba2so21986758fac.13
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 12:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=81l0urtAdm0422pnKoKdlCLZ2vzf1mvmJMvLVoU13lg=;
        b=tr2WYFi4+PK/1QFI6rh2Sm5A3eZPc5jyG8qisTooU7yx3ZegtkIRN8RcoKFezCU6KH
         FcseYvTon9GGjAAeJrNnrzMAwiBHjdYevVvMaH2VNTyWe7e+fI94dqRy73pVNZdQ+gD1
         MFrFeH3GDJuI33EzGr2LYZ5tvzBIZXbiAt4iftMhuhKK8XQ7uvE+Bpruxgh74Wnp+ocM
         y+i4ddV+8fG10U1NXHpkpXcqcmpWCpwJWsaGldW3fjgqXrpeSk/UosBLw969d0zPRRaS
         Q43M4y6heJ8jmkxMUGk84g92/rxRZT3sORDU5HIGgIg7rkqG00oO4PnWTGk6n9gDICXy
         RCoQ==
X-Gm-Message-State: ACgBeo2WnamLdpMtkot7HuglW+tYbqUjj7Dd3o5gfp/1GhbMm/x18/GK
	hDXHXjYUbtGKIdnolOlmRQ==
X-Google-Smtp-Source: AA6agR6gq3odLONnxn7ScxB+V2o8PveOUtauGIp5PDlneckDi2uJ7Qp0CsDQVTyW8ZtEB9eX0Fhn4Q==
X-Received: by 2002:a05:6870:3321:b0:11c:b8f5:e57a with SMTP id x33-20020a056870332100b0011cb8f5e57amr250189oae.100.1661367601746;
        Wed, 24 Aug 2022 12:00:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h17-20020a056808015100b0032f0fd7e1f8sm4208742oie.39.2022.08.24.12.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 12:00:01 -0700 (PDT)
Received: (nullmailer pid 2700641 invoked by uid 1000);
	Wed, 24 Aug 2022 18:59:59 -0000
Date: Wed, 24 Aug 2022 13:59:59 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, lee@kernel.org, Chris Morgan <macromorgan@hotmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V9 1/4] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <20220824185959.GA2699257-robh@kernel.org>
References: <20220823193015.10229-1-macroalpha82@gmail.com>
 <20220823193015.10229-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220823193015.10229-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_120008_681395_C4A22A47 
X-CRM114-Status: GOOD (  21.58  )
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

On Tue, Aug 23, 2022 at 02:30:12PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> index bfc1720adc43..d0dccb1aaf4c 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> @@ -117,6 +117,47 @@ properties:
>          description:
>            Describes if the microphone uses differential mode.
>  
> +  charger:
> +    description: |
> +      The child node for the charger to hold additional properties. If a
> +      battery is not in use, this node can be omitted.
> +    type: object

       additionalProperties: false

> +    properties:
> +      monitored-battery:
> +        description: |
> +          A phandle to a monitored battery node that contains a valid
> +          value for:
> +          charge-full-design-microamp-hours,
> +          charge-term-current-microamp,
> +          constant-charge-current-max-microamp,
> +          constant-charge-voltage-max-microvolt,
> +          voltage-max-design-microvolt,
> +          voltage-min-design-microvolt,
> +          and a valid ocv-capacity table.
> +
> +      rockchip,resistor-sense-micro-ohms:
> +        description: |
> +          Value in microohms of the battery sense resistor. This value is
> +          used by the driver to set the correct divisor value to translate
> +          ADC readings into the proper units of measure.
> +        enum: [10000, 20000]
> +
> +      rockchip,sleep-enter-current-microamp:
> +        description: |
> +          Value in microamps of the sleep enter current for the charger.
> +          Value is used by the driver to calibrate the relax threshold.
> +
> +      rockchip,sleep-filter-current-microamp:
> +        description:
> +          Value in microamps of the sleep filter current for the charger.
> +          Value is used by the driver to derive the sleep sample current.
> +
> +    required:
> +      - monitored-battery
> +      - rockchip,resistor-sense-micro-ohms
> +      - rockchip,sleep-enter-current-microamp
> +      - rockchip,sleep-filter-current-microamp
> +
>  allOf:
>    - if:
>        properties:
> @@ -323,6 +364,13 @@ examples:
>                  };
>              };
>  
> +            rk817_charger: charger {
> +                monitored-battery = <&battery>;
> +                rockchip,resistor-sense-micro-ohms = <10000>;
> +                rockchip,sleep-enter-current-microamp = <300000>;
> +                rockchip,sleep-filter-current-microamp = <100000>;
> +            };
> +
>              rk817_codec: codec {
>                  rockchip,mic-in-differential;
>              };
> -- 
> 2.25.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
