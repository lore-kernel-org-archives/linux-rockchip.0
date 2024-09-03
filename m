Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F629CD379F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V+i/UuVM35liQZIpyam45+GUf2IqSiFZ4rWz43xuv8=; b=pw+xVky/0uM936
	s6qS3Whu/cUIMQNB5aKwcQhr/dxc29jzZIfmQtmf0MA+aPvIV4Rgeq+M3CS7+5LSiqscXVKmNmbVt
	PA/xAoowpfL9R6s1dRkmwfHm4ffqhzKC4BgPOsoxBuds8ExC7Nbmg1Yh0YEpWxLwnzhAvjHP++ak7
	PcU2m6SK/O9v9MFj0why2qsuAONJxSvEP0LsdptGD6ubWvAQv7GxnTZoLtZiQ+vNCnLZJ4YEWYp39
	+p8jdJDleW3wc3VEHQm8u2itoOUu1r+XNGz04D6mkQ7A5kKwfM0ZxvNhHtQuZkyug819qgJ4ML/Hn
	Kt7CZ6j59m0dPdtUptYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWHf-000000014co-023S;
	Tue, 03 Sep 2024 16:21:35 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVxI-00000000zf3-0sQo;
	Tue, 03 Sep 2024 16:00:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1725379180; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=j7W+b6AKvTMiIp6zna4Phg0s4BvUKBWwdAFzlwD3yxdkmVUkgV226jpfwFtqSnDngKmtHC+J7XRYl8JW2CIzT+6R75rfSvJcjxQWa1Wq6r4Y072X5au/IhhR2Ns+1JfYil09hrhbCUwbjSryQHWoitBwp9GhbbmGfjbi1rRjXpo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1725379180; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Y/bWoW06nAsYTfJtM+dT/HctpDxY0caM4f/6npCsav4=; 
	b=DcW7jXgOcrFG/T624VWQk524Qc6OWhcUZEOuq3jWESy+mGhMRYwyU7e1HN8UpN3SCobwVQfoDwm4wzZjDixTbMdVhXzlT9CIHinwkBQ++b3/CyFL3ixd6ss1EkX4Eg206IxLCgU3rPE4ZtZ0b6sTb12nF+TWspPK08mxkCjwoe0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1725379180;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=Y/bWoW06nAsYTfJtM+dT/HctpDxY0caM4f/6npCsav4=;
	b=Ac12rxJAuHEgPBTE7VP5gB/POfoA00l1p6G5Zru/RUnCEnF0JMRTpamew0P3lFkd
	Kmp0V2A6Pr3m+MYabAm8YPJ2kp/8Df8UEX9lknMggWnKDWx5PMLTQ0U7/hKfn9+c9JH
	EfnVDwwoeFI4x+D5sUdaCgyo0qwqF8W/rMY+FWR0=
Received: by mx.zohomail.com with SMTPS id 1725379178937833.0492919077691;
	Tue, 3 Sep 2024 08:59:38 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, Michael Riesch <michael.riesch@wolfvision.net>,
 Jimmy Hon <honyuenkwun@gmail.com>, Elon Zhang <zhangzj@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 Jamie Iles <jamie@jamieiles.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-watchdog@vger.kernel.org, kernel@collabora.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 3/9] dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
Date: Tue, 03 Sep 2024 11:59:34 -0400
Message-ID: <12506188.O9o76ZdvQC@bootstrap>
In-Reply-To: <bnpwnuhikwkqyf3jos67qwywhfge3vm6tfmlfitypd5k62jzdn@fri4swkl2zbq>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <20240903152308.13565-4-detlev.casanova@collabora.com>
 <bnpwnuhikwkqyf3jos67qwywhfge3vm6tfmlfitypd5k62jzdn@fri4swkl2zbq>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_090032_328686_94BA5C6D 
X-CRM114-Status: GOOD (  17.78  )
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

Hello,

On Tuesday, 3 September 2024 11:46:00 EDT Andi Shyti wrote:
> Hi,
> 
> On Tue, Sep 03, 2024 at 11:22:33AM GMT, Detlev Casanova wrote:
> > Just like RK356x and RK3588, RK3576 is compatible to the existing
> > rk3399 binding.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Acked-by: Heiko Stuebner <heiko@sntech.de>
> 
> I will apply this after 1 and 2 have been merged.

Sure, although it is not really dependent on 1 and 2.

> BTW, who is maintaining rockchip.yaml?

Heiko Stuebner is the maintainer of Rockchip SoC support.

> Thanks,
> Andi
> 
> > ---
> > 
> >  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> > b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml index
> > 82b9d6682297..a9dae5b52f28 100644
> > --- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> > +++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> > 
> > @@ -38,6 +38,7 @@ properties:
> >                - rockchip,rk3308-i2c
> >                - rockchip,rk3328-i2c
> >                - rockchip,rk3568-i2c
> > 
> > +              - rockchip,rk3576-i2c
> > 
> >                - rockchip,rk3588-i2c
> >                - rockchip,rv1126-i2c
> >            
> >            - const: rockchip,rk3399-i2c





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
