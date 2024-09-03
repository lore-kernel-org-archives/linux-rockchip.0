Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95700CD37B1
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zT1is5qvaLoH5q3I9D2Ui4C6lySm08vevb4eWtGUAhs=; b=GvyIp+uN8iRuZi
	wCreV7Yl6FgtUO4q31tlvAkgVkRzSxcW/+GVYKQjgRVebpHddQ1HnnPXszv1XX76CLtkELjJgfxLw
	4eUl0rKQTvB7Gh0B+EKJj6uUHeNMU7nx8qqS9aOiYJ2tQPBDnnvcad93LJ1MsebAEhWkwVPkGAsPY
	ubj0ZUfVmcyPWdRS3RZcg4HcDXPgqPAwNGr1EG7N8AEvdU5Ream7i4WoTrqFVNgcJDkj5Pp3qP3nt
	TspdHyIKVukVSpdGwG8Zl0WiaFJR59YhbfmpjAouNoEIr0R89TdJD3w5EmQuLxc7DWiWCQLAQaStP
	J0RXHQN3LlXwqWQplkGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbZ6-000000024TG-1G4p;
	Tue, 03 Sep 2024 21:59:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbXZ-0000000245Q-20R5;
	Tue, 03 Sep 2024 21:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+j6f5if+f2W86QKE1LKn/g5w4kYrcF6g49PNUZ3ZNP4=; b=ZJ7sGUQXwRu0Z1LawQGUT7OBit
	KFbquRc4bhEA1OEQ2VHQWfx46V+JOwjnHO/o61Mo6y0dAt48EA+LO2qSs8DTMU1lfeKuKHshqU1zl
	P0rtWSHVVQQ/+rKmX6IFNw5UHexXkrIgSsJgU+Wz1fl4QZghKbyNGiiouVXxCXIg7VlgPY4185KSA
	CTUlgT/4VY+IibQ1NXqABFZtd0OEsmxOTcctKd6RcfTRErVbQVcVkjQDC4Jc9+JGNBacNP/AT00h7
	cad9Dn43pVCGeqTMwFp7PrQwUf45OEgBw9kLmvPq2cFzf9VNdpllH0cgz9KY6GfqsGdRjVgZJoxbA
	YviFHN2w==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slbWj-00032m-2x; Tue, 03 Sep 2024 23:57:29 +0200
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
Date: Tue, 03 Sep 2024 23:59:12 +0200
Message-ID: <23007922.5W6oEpyPa8@diego>
In-Reply-To: <ycbhqmkwz2hirnvp6j47kz3cxnli3db3i5ah76gngrezs5ww2r@57x2gxnr5hyk>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <12506188.O9o76ZdvQC@bootstrap>
 <ycbhqmkwz2hirnvp6j47kz3cxnli3db3i5ah76gngrezs5ww2r@57x2gxnr5hyk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_145821_579020_89683394 
X-CRM114-Status: GOOD (  21.55  )
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

Am Dienstag, 3. September 2024, 18:47:17 CEST schrieb Andi Shyti:
> On Tue, Sep 03, 2024 at 11:59:34AM GMT, Detlev Casanova wrote:
> > On Tuesday, 3 September 2024 11:46:00 EDT Andi Shyti wrote:
> > > Hi,
> > > 
> > > On Tue, Sep 03, 2024 at 11:22:33AM GMT, Detlev Casanova wrote:
> > > > Just like RK356x and RK3588, RK3576 is compatible to the existing
> > > > rk3399 binding.
> > > > 
> > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > > 
> > > I will apply this after 1 and 2 have been merged.
> > 
> > Sure, although it is not really dependent on 1 and 2.
> 
> yes, but I want to be sure that everything is coming in.
> 
> > > BTW, who is maintaining rockchip.yaml?
> > 
> > Heiko Stuebner is the maintainer of Rockchip SoC support.
> 
> I would guess so, but I think we should also add the entry to
> the maintainer's file :-)

now you made me doubt the wildcards we have in place ;-)

# scripts/get_maintainer.pl -f Documentation/devicetree/bindings/arm/rockchip.yaml
[...]
Heiko Stuebner <heiko@sntech.de> (maintainer:ARM/Rockchip SoC support)
[...]
linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)

So Maintainers seems to be correct ... *phew* :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
