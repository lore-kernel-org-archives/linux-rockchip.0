Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E71C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 16:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+EXktxBlhuBgHucBxoHRCcpjOoXMVFC3SDTCu35ucg=; b=aKAuMnEiJRR0TU
	zRyasbcMOQa4VYZxseR74dPWmLVe/4kWPmDfA+OwaHNAYwyyJAW+eQPNdAv1RNy4mvII+f2mlPNbG
	ES5HGxOwXKfjiAOx6ZtPq0Ou9i72OeO7rH1oeX86JjFLQkWSkXHjz/j0vRDlR7mt02PKSMELoo5yi
	3GeNya9zZsO0egG614slbUiIimC6sJE7rXKLHYrQ77BRoH66ZLoJWG8b1zKej2MWU/yuha0rOWuOs
	0phPXpsCcMLLGUQsO9+bmzFMyoYUAEFtIBx3FJYNxcDIMdNETtf0wlWKS1sVz4xHg7cfk7Go2k++5
	ST6m+66/M6C+icPWwGQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgq3T-00BlRu-04;
	Mon, 27 Mar 2023 16:50:47 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgq3N-00BlLC-0V;
	Mon, 27 Mar 2023 16:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1679935835; bh=0b6vVlYAyh5z7fdaNDqWVNg+I6CkcXsuoksujna/tzw=;
	h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
	b=pmarkM+/OZc5OTi6iMA5S8Y17L7nGwnIcGzPlZKDWPUUrPCpqkcOwE2lru+q14ty0
	 rnPmMWBKXaaKRQesS6Jte9hq+nfXdfQ9NGJFNmQvuyhof1Rkw3aJ8/XEXRBY62ctsx
	 YoELERSyoCzH9p6Db06LlLzgI7SNCNzLI1GLl7II=
Date: Mon, 27 Mar 2023 18:50:35 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Javier Martinez Canillas <javierm@redhat.com>,
	linux-kernel@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Message-ID: <20230327165035.uc2etuxypehjnrp6@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	linux-kernel@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230327130147.wgxl2qayhzsi2xak@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_095041_662237_6143DACD 
X-CRM114-Status: GOOD (  25.13  )
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

One small note...

On Mon, Mar 27, 2023 at 03:01:48PM +0200, megi xff wrote:
> Hi Javier,
> 
> [...]
>
> This (1 kHz) seems to be outside of the range of recommended dimming frequency
> of SY7203: https://megous.com/dl/tmp/fb79af4023a5f102.png It's too low.
> 
> The consequence is that there's a large ripple on the positive input of the
> feedback comparator https://megous.com/dl/tmp/e155900fecb0323f.png which
> will cause similar instability in backlight brightness.
> 
> I've hooked up a photoresistor to a scope, and the display is indeed varying the
> brightness at 1 kHz https://megous.com/dl/tmp/09cb95c7b4b2892b.png
> 
> There are two variants of SY7203 which differ by ouput regulation technique.
> One with this internal integrator, and other with direct PWM control of the
> output. My guess is that PPP uses the integrator variant.
> 
> I switched PWM period to 50000 (20 kHz recommended by the datasheet and the
> flicker is gone https://megous.com/dl/tmp/31b6bfc51badde3b.png
> 
> So I think higher PWM frequency will be better suited here, and this may really
> be the LED driver variant with the integrator.
> 
> (Photoresistors are not that fast, but I've hooked a LED to signal generator,
> to simulate 20kHz blinking backlight, and I was still able to catch the pattern
> on the scope via a photoresistor, so it looks like this verifies that it
> would still be possible to measure some flicker at 20 kHz using this technique.
> I guess I should buy a PIN diode for the next time. :))

Experimentally SY7203 will only start up with duty cycle of 250ns or more.

So this means that default curve generated by the kernel will not work at 20 kHz
at low ranges, because cie1931 -> pwm duty cycle covnersion done by the
kernel will result in too small duty cycle at brightness < 5%, because that
translates to duty cycle of 250ns or less. In other words, kernel will generate
3124 brightness steps for PWM period of 50us, with bottom ~150 steps being
unusable and behaving weirdly (sometimes some of them work sometimes not,
depending whether the LED regulator is already running or not).

So the cie1931 curve may need a bit of a Y shift, by specifying a minimum duty
cycle usable by the hardware.

Something like these 50 brightness levels work nicely, starting from minimum
250ns and going up:

	brightness-levels =
		<0 250 360 470 580 690 810 949 1110 1294 1502
		1737 1998 2289 2610 2964 3351 3774 4233 4731
		5268 5847 6467 7133 7845 8604 9412 10271 11182
		12146 13164 14239 15374 16568 17822 19140 20521
		21969 23483 25068 26722 28447 30247 32121 34071
		36099 38210 40400 42669 45026 47468 50000>;
	default-brightness-level = <17>;

when put into backlight node.

Or if we want 100 steps, then this curve would work, too:

brightness-levels = <250 304 360 414 470 524 580 634 690 747 810 877
	949 1027 1110 1199 1294 1395 1502 1616 1737 1864 1998 2140 2289
	2446 2610 2783 2964 3154 3351 3559 3774 3999 4233 4477 4731 4994
	5268 5552 5847 6152 6467 6795 7133 7483 7845 8219 8604 9002 9412
	9835 10271 10719 11182 11656 12146 12648 13164 13695 14239 14799
	15374 15963 16568 17186 17822 18474 19140 19822 20521 21236 21969
	22717 23483 24267 25068 25885 26722 27575 28447 29338 30247 31173
	32121 33087 34071 35077 36099 37145 38210 39292 40400 41523 42669
	43839 45026 46237 47468 48722 50000>;


> > +		pwm-delay-us = <10000>;

Also this doesn't seem to be documented anywhere or used in the kernel code...
So we should remove it.

kind regards,
	o.

> > +	};
> > +
> >  	gpio-keys {
> >  		compatible = "gpio-keys";
> >  		pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
