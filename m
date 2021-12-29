Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CB0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Dec 2021 17:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZH/ToxS1nedLwpP3NfvHypYr8CNHnpHoFfXSYsxj9U=; b=FrssWFV13JkEZ5
	ecI3ZpE5JK2SSIItSIVff6v5RpfU54svPlClQFDvvbo1d2fHy6o1zwA8mE2U7he7yImmIMZAtd2wE
	oxT1iPdjUB3sFKYtxU7/lAh/UopONHT3qO6RZHso3WheXiDQpDOpBMfBjy7WNUzhkM01+SPKiWJ26
	TiqL4aME/sc8hmDMItL5SZRMACUa1nGD7ZQSHvA00Ifrkzl9bHmkOUViXrFSMGcxA7baGLOhhhpvy
	uiVETenibBnafHdrViq7AVuSDqN20UgdjZFb6Mp5gzvhOEq6+5vhxrJAeR3XHdti0AD/hueyrAJsB
	YTIQGuJnvYNkKCRMSoZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2coK-003Bol-KY; Wed, 29 Dec 2021 17:32:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2co7-003Bn3-HT; Wed, 29 Dec 2021 17:32:12 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1n2cnp-0001Az-5Q; Wed, 29 Dec 2021 18:31:53 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
 lee.jones@linaro.org, yifeng.zhao@rock-chips.com, kever.yang@rock-chips.com,
 cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v6 1/4] dt-bindings: mfd: syscon: add naneng multi phy
 register compatible
Date: Wed, 29 Dec 2021 18:31:52 +0100
Message-ID: <6181139.AAzF1lipOG@diego>
In-Reply-To: <50f49afa-6042-03f2-a8ed-cfffd317aa15@gmail.com>
References: <20211222213032.7678-1-jbx6244@gmail.com>
 <20211222213032.7678-2-jbx6244@gmail.com>
 <50f49afa-6042-03f2-a8ed-cfffd317aa15@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211229_093211_636860_F72E3623 
X-CRM114-Status: GOOD (  17.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Johan, Yifeng,

Am Dienstag, 28. Dezember 2021, 13:08:00 CET schrieb Johan Jonker:
> The file grf.yaml is already pretty full with legacy stuff.

I wouldn't call that legacy stuff ;-) .
The grf as "dumping ground" for more or less unsorted parts will probably
stay around in future socs as well.

> Now rockchip,rk3568-usb2phy-grf is added, would you like these two
> compatible strings also there?

I guess that makes sense. The grf.yaml is a better match
for grf compatible strings I guess.


Heiko


> Could you give advice to Yifeng?
> 
> Kind regards,
> 
> Johan Jonker
> 
> 
> On 12/22/21 10:30 PM, Johan Jonker wrote:
> > Add Naneng multi phy register compatible.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > index 5de16388a..9f0c8aa81 100644
> > --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > @@ -52,6 +52,8 @@ properties:
> >                - rockchip,rk3288-qos
> >                - rockchip,rk3368-qos
> >                - rockchip,rk3399-qos
> > +              - rockchip,rk3568-pipe-grf
> > +              - rockchip,rk3568-pipe-phy-grf
> >                - rockchip,rk3568-qos
> >                - samsung,exynos3-sysreg
> >                - samsung,exynos4-sysreg
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
