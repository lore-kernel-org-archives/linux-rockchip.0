Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF908C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 23:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAS+CNXbM1MYmxps6RWYP5MccHueO6djWfWDOnE14fk=; b=aUzRBtzQg1apTC
	8AVgw5M46VQupNuo2xcq8rH9sLMbHtVhZwb3/EhBw94LXS+S6pyq+5zacii6PQpO28XQHyKLMNWyL
	Rzn4ulKFM7NNAH0VrKgxqV8oalhUg1XeOTp50Y9+0J4s4OsCqkSe739nQQwEVKClWfIPAWlily9oc
	yS8YNY+HfzSC/K1JSUQ3wnTW2SsSBJN4t4D5eolyxZlGvWnRT0V7FEp4AWK0gD4ZNrC49twWYZnk/
	QWPirUupSLKmbs7SrtPgTiC0DTU7jjUncpAjjxx6ocW5li5BdEeY0ZOBtnuWzwUq9G55nhSmMS4xe
	r0zOB5qkAIpdfrTe0U6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO6oE-008fAb-Mo; Sat, 26 Feb 2022 23:49:06 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO6o8-008f9S-Hy
 for linux-rockchip@lists.infradead.org; Sat, 26 Feb 2022 23:49:06 +0000
Received: by mail-yb1-xb36.google.com with SMTP id g6so13142209ybe.12
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Feb 2022 15:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ket/CFuLQVcpMPfanob90ElrwMFDUMsunTV9FoIi2O4=;
 b=cRrFFaYZUVtz+mUobnnDnYKkn/NpQM6EexIH/jgWbpk4vB8zQYf1aq8qUftkwG1wig
 jMq88JM8lXUtYn3tVkCfRjEc24ZGlPJ3laekldZTVR4+3LQisE6X/KrjPWnHDPFc9XJv
 z2+6OvGXlslLs827YZqevyVwRhh6K8PECi0L34+FOjmJYteMswqZmaPhqhVuR+dzPsRo
 JOqlv5Yh5o2cUMk8HQPPoJO/z4Tx7fTakcfVw5hwxbGKfgtsAw1y35VfM9wSlusByZrc
 5U8ojemyDjfY1rP4y8sd061f6JlZlokdzJqjY920LSJPeMXbn58Bao7n4tMQa4keRoJP
 x0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ket/CFuLQVcpMPfanob90ElrwMFDUMsunTV9FoIi2O4=;
 b=3D0rSvB5b6r4gcsFO5EZJMN+pS9CdCngkJyB3oTajRcyuhrf68J5BbF/eHiDV62AWt
 gFyT/Snd9G2ePWUyWmwc4U4xIFZI5gmuXernM4B6EV1r12jPFORmNut3HFQG3ZhdW29T
 RiW3B2R/mxsMzInXlMn4acDLdrEYm9DXng+jtnB4z5Vnm8NPHFly7L16KnBiYakE3Np0
 q/zAzTiWM2St6FLBFvp9ETI6Tf/YTK/lnXxkIGBzo/UoqFEX7kCjWypLc6bi5eJmMNLk
 0ar6beSc4AEiKFklM572kbN8tNHDu9KCRK49S9av9CYyoeX1756SYFFutIPSfdxFxNWk
 qYsA==
X-Gm-Message-State: AOAM532AbQbLz1q0Vgha9M/gV9FqM1IGfcUA36C7bL+5gXfMURhZZpFt
 /xw8xCLScUXysihTT13f4+Mrx2NzeABavRfX3Vk=
X-Google-Smtp-Source: ABdhPJyITcdVPfs1ScLHMux4f+qpKZkjMDONysLqcDqaxcdj8zCdlMT/vGIqB0grmaak1Hb3xP8/pu//ic37ONIgoJ0=
X-Received: by 2002:a25:c752:0:b0:624:71ee:65d7 with SMTP id
 w79-20020a25c752000000b0062471ee65d7mr13371085ybe.366.1645919339347; Sat, 26
 Feb 2022 15:48:59 -0800 (PST)
MIME-Version: 1.0
References: <20220226184147.769964-1-pgwipeout@gmail.com>
 <20220226184147.769964-9-pgwipeout@gmail.com>
 <cdbf28ae-b54f-dfaf-887b-c5705319ac06@gmail.com>
In-Reply-To: <cdbf28ae-b54f-dfaf-887b-c5705319ac06@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 26 Feb 2022 18:48:47 -0500
Message-ID: <CAMdYzYpRhZerT3tnAQ4XdTpGQk9MbfL3CBZT9+FvvytOQ=Ytyg@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] usb: dwc3: add rk3568 dwc3 support
To: Johan Jonker <jbx6244@gmail.com>
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Michael Riesch <michael.riesch@wolfvision.net>, linux-usb@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_154900_644535_7E452D2C 
X-CRM114-Status: GOOD (  23.08  )
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

On Sat, Feb 26, 2022 at 4:43 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Peter,
>
> See comments by rob+dt:
>
> https://lore.kernel.org/linux-rockchip/CAL_JsqJwNdUfoYM8SZmOgMG9iAyZkJ4-kzjjiDDm_mdmghTEOA@mail.gmail.com/
>
> > Presumably you are getting lucky here (with link order). The kernel
> > has no logic to decide which driver to bind to if there are 2 matching
> > drivers.
>
> Due to the fall back string you make a mess with two drivers.
> Don't use dwc3-of-simple.c
> (only for rk3399 and legacy support. Not for new SoCs),
> because core.c has now reset support.
> You are creating a race which driver get probed first.
> Handle your quirks in core.

I finally understood what you were trying to get at here.
After some testing, it seems the core driver handles everything we need now.
This makes me want to revisit the rk3399 support.

Thanks!

>
> Johan
>
> On 2/26/22 19:41, Peter Geis wrote:
> > The rk3568 dwc3 controller is backwards compatible with the rk3399 dwc3
> > controller.
> > Add support for it to the dwc3-of-simple driver.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> > index 57ba9427ad74..d9d1c5bfac3f 100644
> > --- a/drivers/usb/dwc3/dwc3-of-simple.c
> > +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> > @@ -195,6 +195,10 @@ static const struct of_device_id of_dwc3_simple_match[] = {
> >               .compatible = "rockchip,rk3399-dwc3",
> >               .data = &dwc3_of_simple_data_rk3399,
> >       },
> > +     {
> > +             .compatible = "rockchip,rk3568-dwc3",
> > +             .data = &dwc3_of_simple_data_rk3399,
> > +     },
> >       {
> >               .compatible = "sprd,sc9860-dwc3",
> >       },

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
