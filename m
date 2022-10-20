Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 997F9C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 08:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+wJh9BXkmgcme2eoWiRXEbmjWjPt5ZrnOAl8GlYLNM=; b=c3LkDtYqyDvDWH
	Yj7pP70j8bDbrGHTl1jLsDsy2xvNh8HRl3awSHsVAZkhwrmUfF3Vet3Z22dGBihxrHOGddISk+6Lc
	E9ciQzxoDW9XccPTQppuvsA95fO/f4grgpq03WiaPgi4oLC7FWFgdOW7GePC8/jSQhELOhdy5ol51
	bd4GaXDE+DXlRt62EB6XcTfiD1EDXWPGUn0bTfXXda0ytKeRNRPbIx1Pjwpaxc9k1VdMbYgM+Etqe
	txq7fkIFVrI+/TD3BKX9I7cKt10L9c3zX8QspoZ8v6a8DSwis49bXO7hQkckIi7Z5I6Ahx6xNkg4l
	U/umfo1sUNuc2QOqXs9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRJ4-00CWmE-My; Thu, 20 Oct 2022 08:53:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRIt-00CWeq-8N; Thu, 20 Oct 2022 08:53:28 +0000
Received: from p57b7734d.dip0.t-ipconnect.de ([87.183.115.77] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olRIp-00053R-Vg; Thu, 20 Oct 2022 10:53:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, ilmich <ardutu@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Alex Bee <knaerzche@gmail.com>, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
Date: Thu, 20 Oct 2022 10:53:23 +0200
Message-ID: <9009700.CDJkKcVGEf@phil>
In-Reply-To: <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com>
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com> <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_015327_329174_F4178BB2 
X-CRM114-Status: GOOD (  18.72  )
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

Hi,

Am Donnerstag, 20. Oktober 2022, 09:10:44 CEST schrieb ilmich:
> > Hi,
> 
> Hi Johan,
> 
> >
> > Compatible strings must SoC orientated.
> >
> > Something like:
> > compatible = "rockchip,rk3228-crypto", "rockchip,rk3288-crypto";
> >
> > This string must be add to YAML document:
> > https://lore.kernel.org/linux-rockchip/20220927075511.3147847-25-clabbe@baylibre.com/
> >
> > The status of that serie is unknown to me.
> > Not sure by who or when that is going to be merged.
> >
> > Johan
> 
> thanks for the feedback, this is my first kernel patch.

no worries, we'll get you through it :-)

> Maybe at this point it is worth trying to combine the two jobs !?
> Or do I still have to modify my patch asking only to add the string in
> the yaml !?

actually you want to go the following route:

(1) pick up
- https://lore.kernel.org/all/20220927075511.3147847-25-clabbe@baylibre.com/
- https://lore.kernel.org/all/20220927075511.3147847-26-clabbe@baylibre.com/
as a base to work on

(2) create a patch to add your compatible.
I _think_ after that, the compatible block should looks
something like:

  compatible:
    oneOf:
      - const: rockchip,rk3288-crypto
      - const: rockchip,rk3328-crypto
      - const: rockchip,rk3399-crypto
      - items:
          - const: rockchip,rk3228-crypto
          - const: rockchip,rk3288-crypto

to handle the new dual element compatible.
	make dt_binding_check
should tell you about a wrong format.

(3) modify your dts patch to use the two compatibles
(4) export patches by
	git format-patch -2 --cover-letter
and mention in the cover-letter the dependency on the
yaml conversion.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
