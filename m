Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E337EEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 23:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yP1X0aLrvCux+vNpj629aGSmNKjEXj6kEJsABsK5C0s=; b=A8Uzzz4bkJlE5f
	y1QN4e35kyUod5PHQoQmeSTw7bc6M57iCjBJqQbOLcDL4Jtv4tXk7fy63nvboKy3G6bPYg03lT+RB
	9SULhWKjs+qREIvBRYv1MEnv7+V80LYHbna/yso4+Iv9PJjzmtpD/CV1wCUiBRJO+mmBn1jx2hFdI
	h+0ICL1I+d1h+mfQIpWWdLlLQ8vnxg3H9tengNNQoYSpesSWMtWSxGymJxn2m/rmShNmbzIAYiBaA
	YttXlY9x1LGLQhPd08Cu3MMRo4H73PQtz3fYtl0ljVoRBsjD8/yft0h2/eLu0I8Bthotk7e/i3CTY
	wUicV1hsD9jGfXXXXDnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ZiP-00Cyih-2F;
	Wed, 14 Jun 2023 23:15:49 +0000
Received: from mail-io1-f50.google.com ([209.85.166.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ZiK-00Cyg9-0l;
	Wed, 14 Jun 2023 23:15:47 +0000
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-777b0cae9ecso394765039f.2;
        Wed, 14 Jun 2023 16:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686784543; x=1689376543;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W6h1SH+KPupH0y0aqvJqt12V2TdAsnl1nbLJ9iHmf7o=;
        b=ST520iH/cmbREipl6609vq2cZ3HmoOgSKSogpbZAPdlZcNOhenGNdMc+n7Kbm8UT5n
         NUtv/MJ1w3kpWvUWiS5NanuF0vf6koMFqF+H8ahMCmLvfhjIqPx3RRZcfOUqS4P1+hqj
         NlS4ytguWDt2JD8cf1mTuu61SwGigYMjgvZU2TH3jc1qtvz1eNgNwJ155ppgvNND1fOl
         qGsY1M07OiP2A+8wLXEFqA0nxLcCL8/HVZheFCOOGJyiBwqu4TOP73FZCI8nBdEquN8F
         8AIXfHtGu54Ihrz/ubZBXjd42s2CThQUxAzu0Bud7lJ1IB8cXco5VhWNbuqD+tamed1t
         X45w==
X-Gm-Message-State: AC+VfDyMpLr+YTjFv8Lze31m+9WDY7b5X1Om3e1WtvWEiWgO7oT65HE7
	c7wP/X0X4U7H03AV5wOHTw==
X-Google-Smtp-Source: ACHHUZ7wQeyYnIwDBLnmBdri7Vyhsn6rPMIrim2mugZblLdL62WV8QD9wkuKJT5uzWp1PU2osL8HPA==
X-Received: by 2002:a05:6602:196:b0:777:b7f9:18f1 with SMTP id m22-20020a056602019600b00777b7f918f1mr16682656ioo.17.1686784542761;
        Wed, 14 Jun 2023 16:15:42 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id f13-20020a5ec60d000000b007749b74ab18sm5680520iok.15.2023.06.14.16.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 16:15:41 -0700 (PDT)
Received: (nullmailer pid 3103614 invoked by uid 1000);
	Wed, 14 Jun 2023 23:15:39 -0000
Date: Wed, 14 Jun 2023 17:15:38 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: extcon-usb-gpio: convert to DT schema
 format
Message-ID: <20230614231538.GA3075226-robh@kernel.org>
References: <20230608081153.441455-1-alexander.stein@ew.tq-group.com>
 <5217a54e-353b-bd48-68fa-d2104accfeb9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5217a54e-353b-bd48-68fa-d2104accfeb9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_161544_273609_E5A2B4FC 
X-CRM114-Status: GOOD (  26.17  )
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

On Mon, Jun 12, 2023 at 10:29:16AM +0200, Krzysztof Kozlowski wrote:
> On 08/06/2023 10:11, Alexander Stein wrote:
> > Convert the binding to DT schema format. Change the GPIO properties to new
> > naming convention using -gpios as well.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
> >  .../bindings/extcon/extcon-usb-gpio.yaml      | 52 +++++++++++++++++++
> >  2 files changed, 52 insertions(+), 21 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> >  create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> > deleted file mode 100644
> > index dfc14f71e81fb..0000000000000
> > --- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> > +++ /dev/null
> > @@ -1,21 +0,0 @@
> > -USB GPIO Extcon device
> > -
> > -This is a virtual device used to generate USB cable states from the USB ID pin
> > -connected to a GPIO pin.
> > -
> > -Required properties:
> > -- compatible: Should be "linux,extcon-usb-gpio"
> > -
> > -Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
> > -- id-gpio: gpio for USB ID pin. See gpio binding.
> > -- vbus-gpio: gpio for USB VBUS pin.
> > -
> > -Example: Examples of extcon-usb-gpio node in dra7-evm.dts as listed below:
> > -	extcon_usb1 {
> > -		compatible = "linux,extcon-usb-gpio";
> > -		id-gpio = <&gpio6 1 GPIO_ACTIVE_HIGH>;
> > -	}
> > -
> > -	&omap_dwc3_1 {
> > -		extcon = <&extcon_usb1>;
> > -	};
> > diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> > new file mode 100644
> > index 0000000000000..3a71d848dc7a8
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> > @@ -0,0 +1,52 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/extcon/extcon-usb-gpio.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: USB GPIO Extcon device
> > +
> > +maintainers:
> > +  - Alexander Stein <alexander.stein@ew.tq-group.com>
> > +
> > +description: |

Don't need '|'

> > +  This is a virtual device used to generate USB cable states from the
> > +  USB ID pin connected to a GPIO pin.

Please add 'deprecated: true' here. New designs should use a USB 
connector node binding.

> > +
> > +properties:
> > +  compatible:
> > +    const: linux,extcon-usb-gpio
> > +
> > +  id-gpios:
> > +    description: An input gpio for USB ID pin.
> > +    maxItems: 1
> > +
> > +  vbus-gpios:
> > +    description: An input gpio for USB VBus pin, used to detect presence of
> > +      VBUS 5V.
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +
> > +anyOf:
> 
> oneOf instead

anyOf is correct. Both can be present.

> 
> > +  - required:
> > +      - id-gpios
> > +  - required:
> > +      - vbus-gpios
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    extcon_usb1 {
> 
> No underscores, generic node names, so just "extcon-usb"
> 
> > +      compatible = "linux,extcon-usb-gpio";
> > +      id-gpios = <&gpio6 1 GPIO_ACTIVE_HIGH>;
> > +      vbus-gpios = <&gpio6 2 GPIO_ACTIVE_HIGH>;
> > +    };
> > +
> > +    usb-controller {
> > +      extcon = <&extcon_usb1>;
> > +    };
> 
> Drop controller, no need to add consumers in a provider's binding.
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
