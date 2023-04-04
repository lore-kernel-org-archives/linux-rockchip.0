Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 659EDC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwZsVv6GFmLDf1Qd/K/aDXianaRQ8g5eGaUqaVUfhfo=; b=FejdgZwY3FiQcM
	fY8wfXYQC0kVaLik4CKFLObSYwL4LkcoslRJZ8ysur+ttfK6GGDB5+tFfqbUWXwK7iWjFM9UteTru
	Ayteq2k6GMuMGiT/6ftlqcLIhvKWSkZNzT0iK2DIUuaOSh0ko5nWUu29RyGF1chHEW9FbCX2wfRfr
	j9nuRP67CZCGT/RkYYz9jrPGDGKf+MI3wW4D/sFGIpooH1xNy0uqstCdueBMmjG4xsfIzE8OtxMDG
	a3NHFp68iS9mcE0KfXp6BizSSfP99hW1Z2cYrVN6T7Tqa+EaikWQ8ppqH9iq3uu0uQzW+lXPm/9y1
	38qxDlOAPseSrXTmBIQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhU0-001lSf-0J;
	Tue, 04 Apr 2023 14:18:00 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjhTv-001lRH-23;
	Tue, 04 Apr 2023 14:17:57 +0000
Received: by mail-ot1-f48.google.com with SMTP id f19-20020a9d5f13000000b00693ce5a2f3eso17390781oti.8;
        Tue, 04 Apr 2023 07:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680617871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DOEr2FRMEJDIcIVaiqrL4wvmGuw4tgVUj9P4taVN6p0=;
        b=mNaJpWk1ChsR3nQys9a7sHSNcjgimmEh0n5sL+/uCr8XXQEwdnI0bPSMuhqBwft4Y7
         7Dg+Qf3lSkS6WkZeVoisMeCTwV5z3vHDYk4AeILNhl06aeNhsw3zq3HteHVcMOQnYM/T
         4psROTYF2rpd2w2tBjUBLC3lec/2carDVUHiVQXOkkcvT9CW13kFzpLXPsGM03cHOFIa
         8UxutQX1uQm5cQDAPB6DU0UU8c2nhCnuZRCuJndKU824fakdeNJhyH6trs31rSuNDiF9
         6vSsOBCVojJyEApkeqbsk/OgV/B0+NN6RZmPnZ9vL/apjf9f2DQbSvydRCyzBJfd61Oc
         65Hw==
X-Gm-Message-State: AAQBX9ckT9V+aOt8ONyK8goYQ+vJpzcyOJP4beRmsOkEXtsFt2d3FaDr
	gs1WpijX8cep8oRFtU5QQvoDTL5jXg==
X-Google-Smtp-Source: AKy350Z/4gJSmyDUUAdCoeKmLMeui7C5qh7SE2KQHAsJHQNlgvDDTup3xYyfg3dlRNRtJcarP2VRaA==
X-Received: by 2002:a05:6830:1be4:b0:69f:91db:51f1 with SMTP id k4-20020a0568301be400b0069f91db51f1mr1462046otb.29.1680617870999;
        Tue, 04 Apr 2023 07:17:50 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s1-20020a056830124100b0069f02111b11sm5500646otp.75.2023.04.04.07.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 07:17:50 -0700 (PDT)
Received: (nullmailer pid 3824624 invoked by uid 1000);
	Tue, 04 Apr 2023 14:17:49 -0000
Date: Tue, 4 Apr 2023 09:17:49 -0500
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Message-ID: <20230404141749.GB3793612-robh@kernel.org>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_071755_677244_B0712FC5 
X-CRM114-Status: GOOD (  28.00  )
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

On Mon, Apr 03, 2023 at 01:50:51PM +0300, Cristian Ciocaltea wrote:
> Convert the PWM fan bindings to DT schema format.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +----------
>  .../devicetree/bindings/hwmon/pwm-fan.yaml    | 109 ++++++++++++++++++
>  2 files changed, 110 insertions(+), 67 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/pwm-fan.txt b/Documentation/devicetree/bindings/hwmon/pwm-fan.txt
> index 4509e688623a..48886f0ce415 100644
> --- a/Documentation/devicetree/bindings/hwmon/pwm-fan.txt
> +++ b/Documentation/devicetree/bindings/hwmon/pwm-fan.txt
> @@ -1,67 +1 @@
> -Bindings for a fan connected to the PWM lines
> -
> -Required properties:
> -- compatible	: "pwm-fan"
> -- pwms		: the PWM that is used to control the PWM fan
> -- cooling-levels      : PWM duty cycle values in a range from 0 to 255
> -			which correspond to thermal cooling states
> -
> -Optional properties:
> -- fan-supply		: phandle to the regulator that provides power to the fan
> -- interrupts		: This contains an interrupt specifier for each fan
> -			  tachometer output connected to an interrupt source.
> -			  The output signal must generate a defined number of
> -			  interrupts per fan revolution, which require that
> -			  it must be self resetting edge interrupts. See
> -			  interrupt-controller/interrupts.txt for the format.
> -- pulses-per-revolution : define the number of pulses per fan revolution for
> -			  each tachometer input as an integer (default is 2
> -			  interrupts per revolution). The value must be
> -			  greater than zero.
> -
> -Example:
> -	fan0: pwm-fan {
> -		compatible = "pwm-fan";
> -		#cooling-cells = <2>;
> -		pwms = <&pwm 0 10000 0>;
> -		cooling-levels = <0 102 170 230>;
> -	};
> -
> -	thermal-zones {
> -		cpu_thermal: cpu-thermal {
> -			     thermal-sensors = <&tmu 0>;
> -			     polling-delay-passive = <0>;
> -			     polling-delay = <0>;
> -			     trips {
> -					cpu_alert1: cpu-alert1 {
> -						    temperature = <100000>; /* millicelsius */
> -						    hysteresis = <2000>; /* millicelsius */
> -						    type = "passive";
> -					};
> -			     };
> -			     cooling-maps {
> -					map0 {
> -						    trip = <&cpu_alert1>;
> -						    cooling-device = <&fan0 0 1>;
> -					};
> -			     };
> -		};
> -
> -Example 2:
> -	fan0: pwm-fan {
> -		compatible = "pwm-fan";
> -		pwms = <&pwm 0 40000 0>;
> -		fan-supply = <&reg_fan>;
> -		interrupt-parent = <&gpio5>;
> -		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
> -		pulses-per-revolution = <2>;
> -	};
> -
> -Example 3:
> -	fan0: pwm-fan {
> -		compatible = "pwm-fan";
> -		pwms = <&pwm1 0 25000 0>;
> -		interrupts-extended = <&gpio1 1 IRQ_TYPE_EDGE_FALLING>,
> -			<&gpio2 5 IRQ_TYPE_EDGE_FALLING>;
> -		pulses-per-revolution = <2>, <1>;
> -	};
> +This file has moved to pwm-fan.yaml.
> diff --git a/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml b/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
> new file mode 100644
> index 000000000000..448b48ec5d73
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Fan connected to PWM lines
> +
> +maintainers:
> +  - Jean Delvare <jdelvare@suse.com>
> +  - Guenter Roeck <linux@roeck-us.net>
> +
> +properties:
> +  compatible:
> +    const: pwm-fan
> +
> +  cooling-levels:
> +    description:
> +      PWM duty cycle values in a range from 0 to 255 which correspond to

Don't put constraints in plain text:

items:
  maximum: 255

> +      thermal cooling states.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array

Unfortunately, looks like we've wound up with same property with 2 
differing types. A problem for another day...

> +
> +  fan-supply:
> +    description: Phandle to the regulator that provides power to the fan.
> +
> +  interrupts:
> +    description:
> +      This contains an interrupt specifier for each fan tachometer output
> +      connected to an interrupt source. The output signal must generate a
> +      defined number of interrupts per fan revolution, which require that
> +      it must be self resetting edge interrupts.

How many entries? I'm not sure how more than 1 makes sense.

> +
> +  pulses-per-revolution:
> +    description:
> +      Define the number of pulses per fan revolution for each tachometer
> +      input as an integer (default is 2 interrupts per revolution).

default: 2

> +      The value must be greater than zero.

minimum: 1

maximum: ??? I assume there's some practical limit here much less than 
2^32.

> +    $ref: /schemas/types.yaml#/definitions/uint32-array

Isn't this a scalar? 
> +
> +  pwms:
> +    description: The PWM that is used to control the fan.
> +    maxItems: 1
> +
> +  pwm-names: true
> +
> +  "#cooling-cells":
> +    description: The PWM fan can be referenced as a cooling-device.

Not that useful. What would be is what's in the 2 cells.

> +    const: 2
> +
> +required:
> +  - compatible
> +  - pwms
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pwm-fan {
> +      compatible = "pwm-fan";
> +      cooling-levels = <0 102 170 230>;
> +      pwms = <&pwm 0 10000 0>;
> +      #cooling-cells = <2>;
> +    };
> +
> +    thermal-zones {
> +      cpu_thermal: cpu-thermal {
> +        thermal-sensors = <&tmu 0>;
> +        polling-delay-passive = <0>;
> +        polling-delay = <0>;
> +
> +        trips {
> +          cpu_alert1: cpu-alert1 {
> +            temperature = <100000>; /* millicelsius */
> +            hysteresis = <2000>; /* millicelsius */
> +            type = "passive";
> +          };
> +        };
> +
> +        cooling-maps {
> +          map0 {
> +            trip = <&cpu_alert1>;
> +            cooling-device = <&fan0 0 1>;
> +          };
> +        };
> +      };
> +    };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    pwm-fan {
> +      compatible = "pwm-fan";
> +      pwms = <&pwm 0 40000 0>;
> +      fan-supply = <&reg_fan>;
> +      interrupt-parent = <&gpio5>;
> +      interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
> +      pulses-per-revolution = <2>;
> +    };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    pwm-fan {
> +      compatible = "pwm-fan";
> +      pwms = <&pwm1 0 25000 0>;
> +      interrupts-extended = <&gpio1 1 IRQ_TYPE_EDGE_FALLING>,
> +                            <&gpio2 5 IRQ_TYPE_EDGE_FALLING>;
> +      pulses-per-revolution = <2>, <1>;
> +    };
> -- 
> 2.40.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
