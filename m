Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31649CD37B1
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jjuo9OrfEOX4O/bjzVAm+lOCs9d3b1puJWXmLCfQ6V4=; b=Pz5DugWLvy4IRl
	SjGlnLmzTR8bHt9LHp9iN5pm2xIY5WjI3GV3Co5eP7YkkKxhg5IIkc3dgFpcXVVLY58WjxLc6Bmst
	f/JrXTuHs8GEDxLLZLLJk/349xtF6A4j19HsQtK9l56JjiC1ttFyq49el9aj8S2KU4Oz/4XlqsP33
	FwDym+nE2SPZ234SOTgsJXy0A0oZiejT315lDFce+Q2ncedhI3VPD9vvEVYmgFf/o6UvD/AapDfKF
	HcXewdV+sMjs4DM5k0kgvLF4IU5M1lRZfLG4h2ebJ/JlGMPTh6wRDsdhXGRbl2r2cztdK2XmR0z4e
	mQFhm3V2wiJlPG8WJH/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbuc-000000029oA-3AYZ;
	Tue, 03 Sep 2024 22:22:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slber-000000025lp-2xl1;
	Tue, 03 Sep 2024 22:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zVCmXSBgGH45TGzVQauZeSkk4FJQrMdIydcec60+Ymw=; b=UJ6d9rvwDpo5jp52cvOAtIkq4N
	+FJQfDB6qS7b4JTEvM2fBGIY1pM4uM2QAoLg5UI/yal0a6ZnETiKddo1W4xUK6X76Ux5tktLtKNE2
	vSffdP/efPw0JiLy8w1ZTiGbAVtkhSajLfeTlf5u3/ZVwdbKScOMwussmW7naOCUQMd0FL4pC0yOh
	MNANJn9zZAjMBk6hsXBR1cPNRc5ZPdTvOijitypyDr8um3cucxYrsvnNLirpwJpWWhK2IpXmvQiCf
	qZfO3LB3k7zjiZBjRJwLQTTLopJpw8yudm8LrJMQY+ZTtFfEReXf9ZgzOuFvWxcYQHjvFAXgEfUyv
	a9OTI+LQ==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slbeF-00038J-SY; Wed, 04 Sep 2024 00:05:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Andi Shyti <andi.shyti@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
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
Date: Wed, 04 Sep 2024 00:06:59 +0200
Message-ID: <35214848.ATrlOLLGV9@diego>
In-Reply-To: <bnpwnuhikwkqyf3jos67qwywhfge3vm6tfmlfitypd5k62jzdn@fri4swkl2zbq>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <20240903152308.13565-4-detlev.casanova@collabora.com>
 <bnpwnuhikwkqyf3jos67qwywhfge3vm6tfmlfitypd5k62jzdn@fri4swkl2zbq>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_150553_775367_F08F1D7E 
X-CRM114-Status: GOOD (  15.99  )
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

Hi Andi,

Am Dienstag, 3. September 2024, 17:46:00 CEST schrieb Andi Shyti:
> On Tue, Sep 03, 2024 at 11:22:33AM GMT, Detlev Casanova wrote:
> > Just like RK356x and RK3588, RK3576 is compatible to the existing
> > rk3399 binding.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Acked-by: Heiko Stuebner <heiko@sntech.de>
> 
> I will apply this after 1 and 2 have been merged.

I picked patch 2 now.

Patch 1 should go together with patch 9, but that will require the other
binding additions from this series.

So if you don't have reservations it would be cool if the i2c binding
could get merged. The i2c controller is part of the rk3576 soc and it
thankfully also is just the same as the rk356x + rk3588 soc variant
as Detlev wrote in the binding.


Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
