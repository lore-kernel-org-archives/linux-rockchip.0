Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4BECD37B5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVeMGCP4B4N2kW9h5pDfE1v38B6vF0hCmdIaZ/KMQ/I=; b=Q8nKOLhjV0ZZB7
	2vdwDDwhLPZQR7Naxzj1fapeKLcYhcjsWXT37eCi/ByzOft+AlQ/o2KmG5Rd2wyKpuuLpQQ8zjFf2
	5Wko2cYGnwgrT72Vy5yqELplHp453sBjDlmuVQNyge+amU3hDQOdwQvTfY4ww4/pMZ8vODACuALiN
	PqyN+CWTZMVp/YI/gg40p5ylolEYH5XKgd7LIKjT2vu9szVrc9Cy/joUwxvp8j9fq/CtRh6JLc5RY
	kpIgvWiE2yQjX9mZ/JmZhLxzNijfXMJIIUJGC0U+B/PlZA2FFXxCt7wkP7zUVpDuDwMhZE4rMWZfZ
	/7IYAbUrlkZ5z0BfRX2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slc06-00000002B4R-0LAA;
	Tue, 03 Sep 2024 22:27:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbuy-000000029v5-2vi5;
	Tue, 03 Sep 2024 22:22:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7F524A44023;
	Tue,  3 Sep 2024 22:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91259C4CEC4;
	Tue,  3 Sep 2024 22:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725402151;
	bh=IrSk1o8ushhaKuCvXST63SQs3d3u8Ubc1CdP9PDsQnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Og8rOcYBdixWlepQIzpJrspZ7kvoBiWT9LsKHvHXdyqJnRTlEjcgASXjE0aIvGykw
	 AQfbliE++ETMY9X7AOG6J2TFpaNvCDNEpp9MNun0oeM+psjoMgY96zId6s0664dq0d
	 hn/bhwss9gwn1Wp122WLGZTLFlK5MEsXs46AMnntrzptdAndYxVS3upeGqjGbo4sFP
	 OZucNOaD7N6rvHfqICq4jG8/kucsZbT59gHbpY42ugqwhsZgV8AqwCHezoDbQfi3eB
	 1tDZ5kVS1QwS4o97nug1h82No8RNSvZTUNVc3SfkUjOO7F4J9D6bpSOeW0zomg/5Vp
	 vrjoeDIpf3Agg==
Date: Wed, 4 Sep 2024 00:22:27 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Chris Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, 
	Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>, 
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Elon Zhang <zhangzj@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>, Jamie Iles <jamie@jamieiles.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel@collabora.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 3/9] dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
Message-ID: <jqrcyl6whje7y4wdxdcul2kvncm7zrbqux7jmb56hvhf2r2c47@rw5g32dznqbw>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <12506188.O9o76ZdvQC@bootstrap>
 <ycbhqmkwz2hirnvp6j47kz3cxnli3db3i5ah76gngrezs5ww2r@57x2gxnr5hyk>
 <23007922.5W6oEpyPa8@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23007922.5W6oEpyPa8@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_152232_890043_ED5584F0 
X-CRM114-Status: GOOD (  21.48  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On Tue, Sep 03, 2024 at 11:59:12PM GMT, Heiko St=FCbner wrote:
> Am Dienstag, 3. September 2024, 18:47:17 CEST schrieb Andi Shyti:
> > On Tue, Sep 03, 2024 at 11:59:34AM GMT, Detlev Casanova wrote:
> > > On Tuesday, 3 September 2024 11:46:00 EDT Andi Shyti wrote:
> > > > Hi,
> > > > =

> > > > On Tue, Sep 03, 2024 at 11:22:33AM GMT, Detlev Casanova wrote:
> > > > > Just like RK356x and RK3588, RK3576 is compatible to the existing
> > > > > rk3399 binding.
> > > > > =

> > > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > > > =

> > > > I will apply this after 1 and 2 have been merged.
> > > =

> > > Sure, although it is not really dependent on 1 and 2.
> > =

> > yes, but I want to be sure that everything is coming in.
> > =

> > > > BTW, who is maintaining rockchip.yaml?
> > > =

> > > Heiko Stuebner is the maintainer of Rockchip SoC support.
> > =

> > I would guess so, but I think we should also add the entry to
> > the maintainer's file :-)
> =

> now you made me doubt the wildcards we have in place ;-)
> =

> # scripts/get_maintainer.pl -f Documentation/devicetree/bindings/arm/rock=
chip.yaml
> [...]
> Heiko Stuebner <heiko@sntech.de> (maintainer:ARM/Rockchip SoC support)
> [...]
> linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
> =

> So Maintainers seems to be correct ... *phew* :-)

Normally I check the MAINTAINERS file where the rockchip.yaml is
not listed. There is an "N: rockchip" under your name, but having
it explicitely stated wouldn't hurt (as it is in other arm/*yaml
file. That's why I got confused at first.

Anyway, sorry for the noise.

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
