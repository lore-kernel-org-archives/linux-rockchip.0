Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB3FCF6498
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 23:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbKTGnpJQXi/Y49cmSqOAKyKZABP2LIaMiPV2rqng30=; b=Q79TPRG5x/47VL
	I3Vwwl8Nfll6IycoT//huiLF/15QwA/74CTi3KrzgTHJ4yQdZzQKhJGzsxxZz+YUoiq0dR5MevSFd
	g8ZZ2DAVnFqGSM9+iRchyRFtyps2SE2L4gEmbMnHMdhkouyNTv/uZGXeiE89anOPd4YHe7TnH+45e
	FZBYe+1QuRBrNCUtdRP47LyxhurumXuzNR1pQTo7LFenU8xlvDwUOLDqGnA8DKQWi2cgpM+OMiQwZ
	BVjxhWvknkmIlwkB0Ni12FzdedHO5boz6v1jhVchjd67uqV/eUPCxuyN3HVEWFEl/TQhk7IIUiDI/
	+qA7s7eUUvk33b6hr8eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sv3jI-0000000FYnW-1p6U;
	Sun, 29 Sep 2024 23:53:32 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sv3i4-0000000FYdS-2Rb3;
	Sun, 29 Sep 2024 23:52:18 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2e0946f9a8eso2647715a91.1;
        Sun, 29 Sep 2024 16:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727653935; x=1728258735; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mBlHitKjXntQkKs3rghy9KYgx5wAIFmLE/7GN1JTY+0=;
        b=ZoPCsq64ZhVTpeoYEb3Qk3V5hp9WZzNLNlCSIMbZH4q51cfSD6+wXmgTYNLiaqHbCZ
         jexojxYazwjpKaX/5gP2VcOR4JfoJCsiA/hkjEXSPMO6yh+6DG3mks6Fi+t1ZkRjqS30
         NYjR84AC+5JpjqpLWyCd1HNpojZ4n+N6Vnwq3MEX4RSUZuZC+dunRfCeAQCxuRicix/T
         ZS8TABzgoCtUBKLTnymcYeYA1Quc3mjgnrkUrFFstAb7Rxe65XLoSW1U7NP9VPvDjR7G
         DJlKwtkGACMT6ZzpABcN69iO6iQsOVCCERAPUxO4GdHZppBqDcTx74E32OVlqhwSuudU
         Fncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727653935; x=1728258735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mBlHitKjXntQkKs3rghy9KYgx5wAIFmLE/7GN1JTY+0=;
        b=I2Hk174Vax7jZz+sI9+NdSrCLl07e5kUl1f6KNMUuW/AUm/5Q+fhuGDma8c2L+MTDu
         POhPe64xtF+CCRaIN3V68AFSUCR1gQdnUCv16Kq2IX2fHkhWXmRbQlROYeT2bx1XchJV
         ZLaOlKbSFfzPdklsL6+KaTDI15HZbJCQi+b/DCVtiZXTTh5LFvTRxIuhDnWOY0uKulug
         FEpuk3/wt6BPsE9YgZ206koeTrUNVj5BKs/u/xfS+WHp/CIJW15/8YrsdgvnPsd9uF/M
         KAsdm1oqlZdNICkw6TB4UsedSubthvjOjS8cfdZi3u+Irle2CfgdMIsYgQCm4YfWRbSe
         k1tw==
X-Forwarded-Encrypted: i=1; AJvYcCVYBCa+h7F5znFBbaJRyxBoD2iIoJpO/iLnW+/GWBXyufHGEmz6p1JSMuwUxSB0s3lWKwthYiNNthQmV4eWxI0=@lists.infradead.org, AJvYcCXJQxIyLVMDG0qTwpClNuYZpmt2G/coUqQHN5PgOtjPlaoasxBXJCRni250Sq/vU06b7uBLz+76e8oW8UVhkCZg@lists.infradead.org
X-Gm-Message-State: AOJu0YySyXioyTX3hEMw3LxWc++Z0etz4YnSVzclh0OpmOq3/LWHlud/
	jzng81CBsdXxbAVKycrs7a/vX1X6JK6XxSbZ66z/Lfyc5P4MrKdn
X-Google-Smtp-Source: AGHT+IGFb2HjwYCkOByFknKOZZjCeI++gGmH+Vxw5DPXLqmJxvTY12rvID/9pAK8kWIps3fNJLGzZg==
X-Received: by 2002:a17:90a:db46:b0:2cc:ef14:89e3 with SMTP id 98e67ed59e1d1-2e0b8b1bb4emr12042842a91.15.1727653935110;
        Sun, 29 Sep 2024 16:52:15 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e0b6ca63f9sm6386670a91.33.2024.09.29.16.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Sep 2024 16:52:14 -0700 (PDT)
Date: Sun, 29 Sep 2024 16:52:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 3/8] dt-bindings: hwmon: add support for ti,amc6821
Message-ID: <9a8909d5-65ef-4533-9dbe-57ba401f94bf@roeck-us.net>
References: <20240906-dev-mule-i2c-mux-v8-0-dbd28a150e41@cherry.de>
 <20240906-dev-mule-i2c-mux-v8-3-dbd28a150e41@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240906-dev-mule-i2c-mux-v8-3-dbd28a150e41@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_165216_649390_0A2BFB58 
X-CRM114-Status: GOOD (  17.67  )
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

On Fri, Sep 06, 2024 at 05:54:14PM +0200, Farouk Bouabid wrote:
> Add dt-bindings for amc6821 intelligent temperature monitor and
> pulse-width modulation (PWM) fan controller.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>

Applied to hwmon-next.

Thanks,
Guenter

> ---
> 
> Notes:
>     Merge after patch 1
> 
>  .../devicetree/bindings/hwmon/ti,amc6821.yaml      | 86 ++++++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml       |  2 -
>  2 files changed, 86 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml b/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml
> new file mode 100644
> index 000000000000..5d33f1a23d03
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,amc6821.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/ti,amc6821.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMC6821 Intelligent Temperature Monitor and PWM Fan Controller
> +
> +maintainers:
> +  - Farouk Bouabid <farouk.bouabid@cherry.de>
> +  - Quentin Schulz <quentin.schulz@cherry.de>
> +
> +description:
> +  Intelligent temperature monitor and pulse-width modulation (PWM) fan
> +  controller.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: tsd,mule
> +          - const: ti,amc6821
> +      - const: ti,amc6821
> +
> +  reg:
> +    maxItems: 1
> +
> +  i2c-mux:
> +    type: object
> +
> +required:
> +  - compatible
> +  - reg
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: tsd,mule
> +
> +then:
> +  required:
> +    - i2c-mux
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        fan@18 {
> +            compatible = "ti,amc6821";
> +            reg = <0x18>;
> +        };
> +    };
> +
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        fan@18 {
> +            compatible = "tsd,mule", "ti,amc6821";
> +            reg = <0x18>;
> +
> +            i2c-mux {
> +                compatible = "tsd,mule-i2c-mux";
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                i2c@0 {
> +                    reg = <0x0>;
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +
> +                    rtc@6f {
> +                        compatible = "isil,isl1208";
> +                        reg = <0x6f>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 7913ca9b6b54..8ba53cc2672b 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -370,8 +370,6 @@ properties:
>            - swir,mangoh-iotport-spi
>              # Ambient Light Sensor with SMBUS/Two Wire Serial Interface
>            - taos,tsl2550
> -            # Temperature Monitoring and Fan Control
> -          - ti,amc6821
>              # Temperature and humidity sensor with i2c interface
>            - ti,hdc1000
>              # Temperature and humidity sensor with i2c interface

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
