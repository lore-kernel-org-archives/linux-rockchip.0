Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E96B2C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 13:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4ML1PIFOVdPySc6hDm2kqLYcyGcOBP4DCObTorlKjo=; b=YEA9yXpyD4Iua/
	pa6xxdICuQWv3CfEdj4p/I8tU4H2KDa971CF0sUs/qe26WJXC3iuKbHIBfc+Evr3rQ5J3QsCmO6cr
	hgbPt6Tg8LIgaT9EwQy4j6e7RPbuF69cnnNtsAB5g4jYm0PU7EL3v4tL0AAeIfh1oZcefSuIpsNp4
	FdBL2Y1fz+25ugeElXy8P5mlifevMXQECCT7TiR7Re8Mih0R/q/cJJA4cRCQP+y5vkGlAanj9Tdg6
	CHwkO2uvM+6XiDu056oCD7pLdZ6T3M0uk7XPbBUPwRfICD3/O5aPtt/PA+exdTx9tOExLgAGV6b25
	vRuk+FfAiro/s1xGWQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9nB7-0042si-Rn; Mon, 26 Dec 2022 13:06:06 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9nAy-0042oJ-DR
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 13:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672059955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5HwcZaA2sM/B/lkvzfdRvvoZ71F34zcgGLsOqes2MUk=;
	b=epoZB0MOfXK8IguIAk5xmz+fVDl5wn5ToKOZIpANLkc1S8I7Q01gAY4f6MRicgYHB/MjeB
	w0DQuk67Kz/4HF2p60fI8bR5rW28CXI1q+wSO4IHGDnEVrMQMipuF4kY+9mNImHODmAXS3
	OPHEJn20GqRqo6DahrLXuQLdwHGVrk4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-467-Z_FB_ZxGMM2Pmwo3OfKQPQ-1; Mon, 26 Dec 2022 08:05:47 -0500
X-MC-Unique: Z_FB_ZxGMM2Pmwo3OfKQPQ-1
Received: by mail-wr1-f72.google.com with SMTP id r21-20020adfb1d5000000b0026e4c198a43so1517310wra.20
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 05:05:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5HwcZaA2sM/B/lkvzfdRvvoZ71F34zcgGLsOqes2MUk=;
        b=vE2JsO5zqX8zqOUl6VSzsKmMZPPGNo2fD46TLrUhC40uVYQCLca4vMX5wdy815MVfY
         wktqIQi2dqslbBQh2/+WQwTUNZoVIt9HC3CbMV0UUWpi5lwwWK3w0n/OQNTgTbg2l3eB
         o2ugkMjUY5XmlxUSg6+5VlUWOY8bPLmcEFarsho5nHjVlisEdR4SX2k1wA0TITDj0BTT
         RjC+Sr9F0Fw42/jazEgR/vVZ/TyRKwVc9FG3MGf7avXu+uVQQQUGtKhVFg2b+UPh0atb
         UrDeLQZujxWxYwRkrAcvlkiNXjGk4ZunzUtf6vr51faOlT2H6CdVRc4dFowcmdQv39XS
         DDsw==
X-Gm-Message-State: AFqh2kpMVdNshUtfXVVJBs/eCYLmnxlh9yeehR9DtmweYRqnPp6jroot
	6NDu50DA/2YA5WJgPi3/gc+Om4Itfojykn+V9vst08FI26czLa0JqwhvX7dD5d25tW0dgLN+h+/
	HfA1NNJrseb8w5tqzyX0wr0VQ1BxA1ul9
X-Received: by 2002:a05:600c:34d0:b0:3d6:b691:b80d with SMTP id d16-20020a05600c34d000b003d6b691b80dmr12927821wmq.21.1672059945399;
        Mon, 26 Dec 2022 05:05:45 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuB8uWC1YkrMzvSoNX2/+CoR/kzQ1LiWZ0PSZdafOK0oPqeMekB++8piVRthVz4KooVG2Xcdg==
X-Received: by 2002:a05:600c:34d0:b0:3d6:b691:b80d with SMTP id d16-20020a05600c34d000b003d6b691b80dmr12927789wmq.21.1672059945137;
        Mon, 26 Dec 2022 05:05:45 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b003c6f8d30e40sm20234587wms.31.2022.12.26.05.05.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 05:05:44 -0800 (PST)
Message-ID: <e575579e-3db3-6f67-1351-614f752234bf@redhat.com>
Date: Mon, 26 Dec 2022 14:05:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
 Robert Mader <robert.mader@posteo.de>, Peter Robinson
 <pbrobinson@gmail.com>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
 Martijn Braam <martijn@brixit.nl>, Caleb Connolly <kc@postmarketos.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
 <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAO_Mup+P-QMDfVzpg_eg=gmoHUzm6+Kipaq-4q=kdVdS0_xp6A@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_050556_911247_39B1ADD6 
X-CRM114-Status: GOOD (  18.53  )
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

Hello Maya,

I'm going through this now and addressing your comments.

On 12/22/22 23:57, Maya Matuszczyk wrote:

[...]

>> +       /* MIPI DSI panel 1.8v supply */
>> +       vcc1v8_lcd: vcc1v8-lcd {
> Node names should be generic, for example "vcc1v8-lcd-regulator".
>

Fixed.
 
>> +               compatible = "regulator-fixed";
>> +               enable-active-high;
> Is this really needed?
> You can set the polarity in "gpios" property.
>

I understand that it is needed. The regulator-fixing binding says:

  enable-active-high:
    description:
      Polarity of GPIO is Active high. If this property is missing,
      the default assumed is Active low.
    type: boolean

and indeed by looking at the source in drivers/gpio/gpiolib-of.c, there is
a check for this property in the of_gpio_flags_quirks() function:

static void of_gpio_flags_quirks(const struct device_node *np,
				 const char *propname,
				 enum of_gpio_flags *flags,
				 int index)
{
	/*
	 * Some GPIO fixed regulator quirks.
	 * Note that active low is the default.
	 */
	if (IS_ENABLED(CONFIG_REGULATOR) &&
	    (of_device_is_compatible(np, "regulator-fixed") ||
	     of_device_is_compatible(np, "reg-fixed-voltage") ||
	     (!(strcmp(propname, "enable-gpio") &&
		strcmp(propname, "enable-gpios")) &&
	      of_device_is_compatible(np, "regulator-gpio")))) {
		bool active_low = !of_property_read_bool(np,
							 "enable-active-high");
		/*
		 * The regulator GPIO handles are specified such that the
		 * presence or absence of "enable-active-high" solely controls
		 * the polarity of the GPIO line. Any phandle flags must
		 * be actively ignored.
		 */
		if ((*flags & OF_GPIO_ACTIVE_LOW) && !active_low) {
			pr_warn("%s GPIO handle specifies active low - ignored\n",
				of_node_full_name(np));
			*flags &= ~OF_GPIO_ACTIVE_LOW;
		}
		if (active_low)
			*flags |= OF_GPIO_ACTIVE_LOW;
	}
...
}

So I'll keep those.
 
>> +               regulator-name = "vcc1v8_lcd";
>> +               regulator-min-microvolt = <1800000>;
>> +               regulator-max-microvolt = <1800000>;
>> +               vin-supply = <&vcc3v3_sys>;
>> +               gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> Is this a typo? Documentation says "gpios"
>

Documentation/devicetree/bindings/gpio/gpio.txt indeed says "gpios" but "gpio"
is also supported for older DT that are using bindings that got it wrong. See
commits e7ae65ced7dd ("gpio: mention in DT binding doc that <name>-gpio is
deprecated") and dd34c37aa3e8 ("gpio: of: Allow -gpio suffix for property names").

The regulator-fixed bindings is such an example. See that its bindings schema
Documentation/devicetree/bindings/regulator/regulator.yaml mentions "gpio" and
not "gpios", also in the example.

So until that is fixed, I would prefer to stick with that's documented in the
regulator-fixed bindings doc.
 
[...]

>> +       touchscreen@14 {
>> +               compatible = "goodix,gt917s";
>> +               reg = <0x14>;
>> +               interrupt-parent = <&gpio3>;
>> +               interrupts = <RK_PB5 IRQ_TYPE_EDGE_RISING>;
>> +               irq-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_HIGH>;
>> +               reset-gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_HIGH>;
>> +               AVDD28-supply = <&vcc3v0_touch>;
>> +               VDDIO-supply = <&vcc3v0_touch>;
>> +               touchscreen-size-x = <720>;
>> +               touchscreen-size-y = <1440>;
>> +               poweroff-in-suspend;
> Are you really sure this property exists in touchscreen driver's dt bindings?
>

It's not indeed. I've dropped that now.

[...]

>> +               vcc-supply = <&vcc2v8_lcd>; // 2v8
> What is the purpose of that comment?
> 
>> +               iovcc-supply = <&vcc1v8_lcd>; // 1v8

Yeah, not that useful. I've removed those two now.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
