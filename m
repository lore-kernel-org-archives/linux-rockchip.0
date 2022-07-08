Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED73BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 18:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Vtt0aPtUtMM15euPFPD6XfnmpXYp7+56TIb0wz+CuU=; b=FAOu5e3paPPPNv
	934HykbvDSKN5ykGBJvgYLp115fvzTNG6gUpFg4ZlcQSs/VbdvOErVW8o8R8zBKml4VDNCIpDX1wl
	rf0aIWDVyaUBpXzxAhZ9Wc5jby78cWvcT5OOMYylX3nw2LkbVxZvW0we7LBkSDmHFu9o5ZdLBbez8
	2j0UAODLnTTFEcZH2BbVy5kStZrQmg11g+J+g3Wgw2UJ0RK3Q/0JmtAclloHdDQDs9A8rBiS3Bmeo
	vnN9Xa1JV4w4smhRHoNVFcc03R9JCQ158o8HwF8FQB37hEVF+NFsQ8Js6h20RkfG9t+XMR8AWFBOO
	ettBaAfhQFlUmMl6v9yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9svH-005Q2J-81; Fri, 08 Jul 2022 18:41:51 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9svE-005Q1b-40; Fri, 08 Jul 2022 18:41:49 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-10c0119dd16so19298993fac.6;
        Fri, 08 Jul 2022 11:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E0+g3v6pC8RZHHJAWVXJd2G4KVUBkvrj09rmmxGrR+E=;
        b=kSYmvN1LCA3HQHM673GLcBGagoKwVuIV8NANpt2rxPMcLLWoBx+CfJY8ie9CG4TGzW
         ugF84N5L5QD3G75H5LrXyrM8YkCRQMnK+iZ1dI4DI2zTyth8s05//EGrQJvdGqb9yi4S
         B/tjHLAOt5UvECMIo6t8OqiACR6SiWt3V+3dF6sUQfeq7kyW6jlLw8j1l2035R9lcPch
         UcUr8O7CrHvwRQ5lzMep3rsle82S1UVvgN2dAsAoTVQ/xJgiAO/JI8phqK4EF8y6kmpS
         s0J76+Tjs1AkkNP5UpMf4RoGm4qheTfRTJS/0uObwUMh44154LXbdFg062bUyBbKKDhI
         FLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E0+g3v6pC8RZHHJAWVXJd2G4KVUBkvrj09rmmxGrR+E=;
        b=Sjfoz6JVTGiWOEVV+jQAPgqZhSyOT7oW4CPbVDy4Am2pwyQACEwFCBDaGqXxpvwABh
         On/i4PCS5JSdXQt+mj3GAWS1ZvlSxDkdnTUL4eBNHNtKPLrp2I9+rKH4Iw0oisVgxalG
         /3j9Fj2wE+tB+GRgHK8QIFhbTtzlyKCwSgEMIs7yeT5dE9pUEitNYfxuJpwVJg3H/+mj
         rECMdNgsTJG4Lns/tJ5zkuOMhrFKxEoxCcGLnZmo5LpRUjAiCYvP5vIMGpHwnU32lvWf
         q+p+WusZwvrzJq4VPQnNjxOM46p6PH7QMqv+9ptA1AQS10sV+MIEHczmdLnZGaAHDLlv
         5bww==
X-Gm-Message-State: AJIora8bRWpiidEvhc8iXaPS/2YxhK145qQ5lstGqG8N5yGKu1gbEYYt
	d+4eNfIti7e+8UzFuDyq6oZ2f2fLq9DOCHiMJj0=
X-Google-Smtp-Source: AGRyM1tJ/cjliLSb05PEgv9ikZiVR60MsFIKWxl5kdrWfbZDUl5sqhyFFPR61swqCmtESYW1a7F/DCBBVWpAqv0OAXU=
X-Received: by 2002:a05:6870:88a8:b0:101:6409:ae26 with SMTP id
 m40-20020a05687088a800b001016409ae26mr736747oam.160.1657305706145; Fri, 08
 Jul 2022 11:41:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220608161150.58919-1-linux@fw-web.de> <20220608161150.58919-2-linux@fw-web.de>
 <5611d1c5-44db-4144-3c46-256323d39fe3@arm.com>
In-Reply-To: <5611d1c5-44db-4144-3c46-256323d39fe3@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 8 Jul 2022 14:41:35 -0400
Message-ID: <CAMdYzYo=Wft93OEKapVFx-oxe8ocU7OuhU+MOdqUw8-QjqzDGg@mail.gmail.com>
Subject: Re: [PATCH 1/2] rtc: hym8563: try multiple times to init device
To: Robin Murphy <robin.murphy@arm.com>
Cc: Frank Wunderlich <linux@fw-web.de>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Frank Wunderlich <frank-w@public-files.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Alessandro Zummo <a.zummo@towertech.it>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	devicetree <devicetree@vger.kernel.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-rtc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_114148_178853_771539D3 
X-CRM114-Status: GOOD (  31.55  )
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

On Fri, Jul 8, 2022 at 12:18 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-06-08 17:11, Frank Wunderlich wrote:
> > From: Peter Geis <pgwipeout@gmail.com>
> >
> > RTC sometimes does not respond the first time in init.
> > Try multiple times to get a response.
>
> FWIW, given that HYM8563 is fairly common on RK3288 boards - I can't say
> I've ever noticed an issue with mine, for instance - it seems dubious
> that this would be a general issue of the chip itself. Are you sure it's
> not a SoC or board-level issue with the I2C bus being in a funny initial
> state, timings being marginal, or suchlike?

I don't think this is an SoC issue since this is the first instance
I've encountered it. Mind you we don't have the reset lines hooked up
at all for the Rockchip i2c driver, so it's possible that's the case,
but I'd imagine it would be observed more broadly if that was the
case. I've tried pushing the timings out pretty far as well as bumping
up the drive strength to no change. It seems to occur only with the
hym rtc used on this board. I suspect it's a new variant of the hym
that has slightly different behavior.

>
> Robin.
>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > ---
> >   drivers/rtc/rtc-hym8563.c | 11 +++++++++--
> >   1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/rtc/rtc-hym8563.c b/drivers/rtc/rtc-hym8563.c
> > index 90e602e99d03..9adcedaa4613 100644
> > --- a/drivers/rtc/rtc-hym8563.c
> > +++ b/drivers/rtc/rtc-hym8563.c
> > @@ -13,6 +13,7 @@
> >   #include <linux/clk-provider.h>
> >   #include <linux/i2c.h>
> >   #include <linux/bcd.h>
> > +#include <linux/delay.h>
> >   #include <linux/rtc.h>
> >
> >   #define HYM8563_CTL1                0x00
> > @@ -438,10 +439,16 @@ static irqreturn_t hym8563_irq(int irq, void *dev_id)
> >
> >   static int hym8563_init_device(struct i2c_client *client)
> >   {
> > -     int ret;
> > +     int ret, i;
> >
> >       /* Clear stop flag if present */
> > -     ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
> > +     for (i = 0; i < 3; i++) {
> > +             ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
> > +             if (ret == 0)
> > +                     break;
> > +             msleep(20);
> > +     }
> > +
> >       if (ret < 0)
> >               return ret;
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
