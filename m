Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65AAFC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 09:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u+h7AHMA18OveTj++OJ7LbPU7lNjGBDd1JDc2sZJCc=; b=W2Z3qK7hqF01lq
	Fx7RRH9nKW7XjszjxhLpgCPpBYEdRnKBxurS8vtbPGoptYvGkJKR4QcIcr8PocoFWFkNw+oyc+Do5
	NkJx3YeUMCkwLwgYTtdwMlGQwNDXaPE62rgBtY5pP3nkps25haNi8aKcRj3j4rJHxb1v0DMWFMAHN
	QNf93DxAED4CiJP6KH8xJuwiNQpJ91774rsRGp+F3+Q+ee2HaUyZG4Yf0oBZt21BFtYd97etLTE7u
	udvuiX8g+7cGxcD3/KJr4TCGWGsxESZsuI/52yORAoNtY2vKLvU1cNuFgV2CUNRJJgiuPdtJishUz
	9phCKKCdrvH2me+63AyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbd59-00000004a35-1N1U;
	Wed, 07 Aug 2024 09:35:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbd4Z-00000004Zsw-22yQ;
	Wed, 07 Aug 2024 09:35:13 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sbd4G-0006qI-Rp; Wed, 07 Aug 2024 11:34:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: lee@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
 dmitry.torokhov@gmail.com, pavel@ucw.cz, krzk+dt@kernel.org,
 conor+dt@kernel.org, ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/7] dt-bindings: mfd: add binding for qnap,ts433-mcu devices
Date: Wed, 07 Aug 2024 11:34:51 +0200
Message-ID: <1895730.u6TykanW85@diego>
In-Reply-To: <20240805191723.GA2636745-robh@kernel.org>
References: <20240731212430.2677900-1-heiko@sntech.de>
 <20240731212430.2677900-2-heiko@sntech.de>
 <20240805191723.GA2636745-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_023511_559455_2F1ADAAB 
X-CRM114-Status: GOOD (  23.02  )
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

Hi Rob,

Am Montag, 5. August 2024, 21:17:23 CEST schrieb Rob Herring:
> On Wed, Jul 31, 2024 at 11:24:24PM +0200, Heiko Stuebner wrote:
> > These MCUs can be found in network attached storage devices made by QNAP.
> > They are connected to a serial port of the host device and provide
> > functionality like LEDs, power-control and temperature monitoring.
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  .../bindings/mfd/qnap,ts433-mcu.yaml          | 43 +++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
> > new file mode 100644
> > index 0000000000000..5ae19d8faedbd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
> > @@ -0,0 +1,43 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/qnap,ts433-mcu.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: QNAP NAS on-board Microcontroller
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +description:
> > +  QNAP embeds a microcontroller on their NAS devices adding system feature
> > +  as PWM Fan control, additional LEDs, power button status and more.
> 
> Doesn't really look like the binding is complete.

Hmm, apart from the fan subnode, anything else that is missing?

Input device does not need data from devicetree, as the existence
of the button and buzzer is attached to the specific mcu-compatible.

Similar for the LEDs I guess, their number and color are a property
of the MCU variant used. I guess one could do subnodes for the
linux,default-trigger property?


> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qnap,ts433-mcu
> > +
> > +  "#cooling-cells":
> > +    const: 2
> > +
> > +  cooling-levels:
> > +    description: PWM duty cycle values corresponding to thermal cooling states.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    items:
> > +      maximum: 255
> 
> These are fan properties and should be in a "fan" node referencing 
> hwmon/fan-common.yaml.

ok, I'll add a fan-0 subnode as some hwmon already does and move the
cooling properties into it.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
