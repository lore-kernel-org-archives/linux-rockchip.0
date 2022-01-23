Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 060F9C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 16:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+B2TNxztKR7/TG6IviIzunv7K2bH32V6VKUrSVBn9Mo=; b=2JZVcQUF70w1J2
	wBPioBYrRLg9cXIM+v8ounmU1ruwO58lzyqNUPBezzm59+e6SlVTZuClebt5o3uZPWF7mkpib8SlP
	F5l8TFyV7vZQUdAWAkKwcsnl3XVGLEoqx+5CFKvy56pr2KUnghl6jnXNKEsMnDIQKoUkmbVjSMEAw
	9FReYkx+dZs2rQowTaOPrDyOrmpFigUlhjsqgdWP+KcxkoPJ6E/7XRKEQA/RBYwA7c2BJ/h0jghEz
	Ng7nKboOb5o1obFIjm3G16A9bUKUL1fIMkRO5Ow3uEkl8NRn3hu+TtDQWE4HCTs6gcV+UTvRSGIKi
	3/y98AkFbc18UKAtxmFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBg53-001Omt-KY; Sun, 23 Jan 2022 16:51:05 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBg4r-001Olf-Hv; Sun, 23 Jan 2022 16:50:54 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id v186so43787082ybg.1;
 Sun, 23 Jan 2022 08:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4yvJHbE2HNxARartPgZEnI7KYUuo7OOg2+KzBkUFctc=;
 b=TRdQfaW2Z7xnVudanl7EA+d7B2tn85qLJ5/aXAqkqaOiQq4Hpi1o8AGHlamyUp0yxg
 JSKT6wwEIeXFzAeRM2Rk0EY4UTEAhHT40Xp2mwND6wvwILkTXP4ImMmnAJZVk+gGZ5Ey
 4sOceV/4pPbztkoYGz6WaCEikMbUcNJj5UC5yP3vEkT3kSy2rFqM3IdZWk6krdLse5rB
 14RPQvRPVdZmEdRnEbxu2iZlEYsEt+knqWwN/3bvE5Pu28kOeQy1BetLpsKwfh+GyDLK
 ZGg+r2d1vMGNwASJLzj1BH1wYtXT+mr5xjb0mF+OzxhoU9LoVwNP9u2VP8kEn+aTz4AF
 jPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4yvJHbE2HNxARartPgZEnI7KYUuo7OOg2+KzBkUFctc=;
 b=lT7tv6goZgkdiXrD4GTJe7IFecre6eIuRdDvV71eAtr7C7xB/nO9ops8ZONBYQ/Qjn
 MfwjoO8a4c+ZpZ2BIPsuxAEcjk92Zp9F+prqgG4Jj30iGfj2FjDzt+9XyjqiyS802EAI
 dFLmgy7GViPEdZjgUnHoJL7rkfs0sOzOhck/4QOE8GOxSxKhrvvx2tI9Di30N73wcSli
 1PO1+QkAaj/aqTfiAJdLyk5tnB5vvkliAJXuZ02ndBYXH6omWYWcJfyhh+FKNsKAIvZ9
 ZBPKWDsllxHjnhKmuZzlOwAsNrw7EANHiXqkbnjkas7/HjTGBIx6obvLadi94KTMKV98
 HJHA==
X-Gm-Message-State: AOAM532TcEVoP3F1t2i34nlv/7wcEen9kLTw+nRrw/xTjgncrgVm8Qxa
 6qUGEmCysIl2Iq8USoukrWXDpVbR+yaofARbgdU=
X-Google-Smtp-Source: ABdhPJwP4FgFRN4pOx7j4L3eY61ISzlzIn/vKBLTzNodrzsTgBeqRru9rQ0A1+4jIr5FMupyrd7C71w3rxvg4m/Ww9U=
X-Received: by 2002:a25:8d10:: with SMTP id n16mr18024350ybl.696.1642956651654; 
 Sun, 23 Jan 2022 08:50:51 -0800 (PST)
MIME-Version: 1.0
References: <20220107051335.3812535-1-pgwipeout@gmail.com>
 <20220107051335.3812535-5-pgwipeout@gmail.com>
 <5747938.922zgog0jt@phil>
In-Reply-To: <5747938.922zgog0jt@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 23 Jan 2022 11:50:39 -0500
Message-ID: <CAMdYzYrByfe6s3oKvJDN3skGXh7x=YSxQ4BKwySKhPzyEUEGQA@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: enable the pine64 touch screen
 on rockpro64
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_085053_630950_FEBEF5D1 
X-CRM114-Status: GOOD (  29.74  )
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

On Sun, Jan 23, 2022 at 10:30 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Peter,
>
> Am Freitag, 7. Januar 2022, 06:13:35 CET schrieb Peter Geis:
> > Enable the touch screen, backlight, and dsi nodes for the Pine64 touch panel
> > attached to the rockpro64.
>
> can you please also include me in the other patches of the series?
> I.e. they introduce a new property for the display, so it's nice to know
> when they get applied.

Apologies, I use get-maintainers.pl automatically and it seems to need
some help with tagging you in some Rockchip elements.
I'll be sure to always manually include you and the rockchip mailing
list on all patches in future series of this sort.

>
> While I do agree with patch 3/4, I'm hesistant about this one.
> The display/touchscreen will probably not be connected on every rockpro64
> so what happens if it doesn't?

This was supposed to be tagged as Do-Not-Merge, but it seems I failed
to do so on the actual patch.
It's here for purely completeness and testing purposes.

>
> I.e are there alternative uses for the affected pins, that may get fried
> when this is always enabled?
>
> So part of me would think that an dt-overlay enabling this might be the
> nicer way to go?

Absolutely.

>
>
> Heiko

Thanks,
Peter

>
>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > index 158befb9a48c..f6c36fcd6db3 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > @@ -26,7 +26,7 @@ backlight: backlight {
> >               pwms = <&pwm0 0 1000000 0>;
> >               brightness-levels = <0 4 8 16 32 64 128 255>;
> >               default-brightness-level = <5>;
> > -             status = "disabled";
> > +             status = "okay";
> >       };
> >
> >       clkin_gmac: external-gmac-clock {
> > @@ -594,7 +594,7 @@ touch: touchscreen@5d {
> >               interrupts = <RK_PD5 IRQ_TYPE_EDGE_FALLING>;
> >               irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
> >               reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> > -             status = "disabled";
> > +             status = "okay";
> >       };
> >  };
> >
> > @@ -633,7 +633,7 @@ &io_domains {
> >
> >  /* enable for pine64 panel display support */
> >  &mipi_dsi {
> > -     status = "disabled";
> > +     status = "okay";
> >       clock-master;
> >
> >       ports {
> >
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
