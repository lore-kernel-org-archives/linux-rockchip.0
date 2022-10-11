Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BCCDC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Oct 2022 01:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0E5fTFhQ+6kppHMwXtyrWqOGfJd6Zp0XRud2wYgqhc=; b=OnjCGMFDoNFAVM
	dt73J7DAqBoDO9RfcsYF9pp97CWVlgJ4ou2r12RB1AGzsRpob7/Em0Xl3Ru1YT8qev/+wBgh50p16
	91Ra8lkqmf6GqIX1Em3wZiyLIMb3dddWzrsRwPpo9RHmNXcp8MVKVJn4wtPvjXBd57XW0qJ6HS93s
	oVX9z6qQsIGRFEJjpZiTdU7nJbs1EiD0NDkFN5FBrHuymnXs3ht3/TAr4bDMhuPaPQVGrW+JlDks+
	WhCVUc5ltxBHOjiCOOFKiDG0t4ShZm+BOh8kNPr0aOCeePO7Q+WFtlgVSdqRdwt8wQgFh6hvvjnYD
	YzOJo4h7VZ8k63z8VSOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oi4PA-002wqc-K6; Tue, 11 Oct 2022 01:50:00 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oi4P6-002wpq-UY
	for linux-rockchip@lists.infradead.org; Tue, 11 Oct 2022 01:49:58 +0000
Received: by mail-wm1-x333.google.com with SMTP id i64-20020a1c3b43000000b003c6bf423c71so215907wma.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Oct 2022 18:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jicEMjtz6mRuFBKZc1GxKfx0ub+KShMfQywfLmlQ1cc=;
        b=Bin48rQKCrs4x9RM2+dJDqdwfASr+mA5RQVlTOtY9gWz1fo1ecedXHhM+I/RqgtevI
         eYLdm/QyU4fk9/0YHzQvp53/m8OIqiuSqh5AwO/i+Da1NS1zLkLeVjaeb3suNSc5uWcu
         kMiqqW/+Ov2pu2synnh+CyH1M329/SHDuJwZJkG+osnmXICA73JFE8hnwxBJyJ7DzTrq
         xW5JrHReqUuuazzFS/WbuZ7ha4MIO0RupdRsQTLnz8QluPefZpOU9kCpEKDy37SH0Dwy
         RwHcR0cROQJma0npnELipQ35V5ZA1CfKgoElTSOAw0DiZSMuSZycCfop0wfHmBl3o66w
         qKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jicEMjtz6mRuFBKZc1GxKfx0ub+KShMfQywfLmlQ1cc=;
        b=IAcJSf5GT55mQ1BiLtYS0JvwDCWBOM9t3aYkDd7O2JSEkhY5tb28YtdAKoAbtKfb/x
         XA18Kx35yyy6+tNJbqC6M/zpXYOZ3hlY788uCflNwKNrRffAzNv50P6bx3Rs9pqC5DMI
         yYsgGeSEOhpzFXkon6YghLVyIpY5fOEdvbe+BbARw3DlPwpNPHS7Dc0h/YZMkBYvCu8f
         68cvTDqLR69f4dRfyuxQbrghQNJGBOim1XBNjEkdzfA1LtluyB19wQdGMAL1l3Vo4O0f
         vopOtEpALcCGG+4E1xbDD+NDpWfRurkLsUWXgNYNSRyrEOhphRMYt5zSbCsFQn+zXaLt
         PDuQ==
X-Gm-Message-State: ACrzQf2seuuwdwtZDfGoHXX7PJaPBz+cuD1ajQ6BFZCKtrjUJF7xiBvX
	IT6zm5IMwrlzU8ErbWgUx0PsDHjMJiyv/cv7Ggk=
X-Google-Smtp-Source: AMsMyM5USsKg/AD1g++ElT//c977lsYwWUBHeZUaV8p8dbuOFyEsMj97wzjuO0CWDiyFpjRabPVlKzjSDnPk1MaiC/k=
X-Received: by 2002:a1c:ed11:0:b0:3b4:d3e1:bec with SMTP id
 l17-20020a1ced11000000b003b4d3e10becmr14472804wmh.196.1665452992858; Mon, 10
 Oct 2022 18:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <0ec9541a-8d8c-0fc0-d158-73ba949169a3@pscan.uk> <SN6PR06MB5342D159E9E83EAA4FEE9CDBA5239@SN6PR06MB5342.namprd06.prod.outlook.com>
In-Reply-To: <SN6PR06MB5342D159E9E83EAA4FEE9CDBA5239@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 10 Oct 2022 21:49:40 -0400
Message-ID: <CAMdYzYq6vbYgG_c1O3_pR1nNRWLK2QUim0rQ4PZiucU=vVK1Ng@mail.gmail.com>
Subject: Re: More RK817 questions
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Philip C <subs@pscan.uk>, Maciej Matuszczyk <maccraft123mc@gmail.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_184957_028523_12E14E7B 
X-CRM114-Status: GOOD (  46.73  )
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

On Mon, Oct 10, 2022 at 8:47 PM Chris Morgan <macromorgan@hotmail.com> wrote:
>
> On Mon, Oct 10, 2022 at 08:33:48PM +0100, Philip C wrote:
> > Hi Peter, Chris and Maya

Good Evening,

> >
> > I'm not going to bother with the rockchip list because I think that you are
> > the only three that will be interested in this.

I have added the Rockchip mailing list so they can get a heads up about this.

> >
> > I did a bit of hacking of the 4.19 BSP kernel on my device to see how the 5V
> > rail of the USB port works, and I am pretty sure that I understand it now.
> >
> > I think that /power/supply/rk817_charger.c registers itself as an extcon
> > with /phy/rockchip/phy-rockchip-inno-inno-usb2.c for notification when the
> > state of usb2phy0 changes.
> >
> > Specifically within rk817_charger.c there is a function
> > rk817_charge_host_evt_worker which reacts to the notifications from the phy
> > and runs rk817_charge_set_otg_state(charge, USB_OTG_POWER_ON)
> >
> > This won't be true of all devices, only those (like mine) that have the
> > EXTCON=<&usb2phy0> option set in dts for the RK817.

I suggest you look closely at how this was implemented in mainline.
You'll notice we do things significantly differently.

> >
> > I have done enough experimentation with my device to prove that if I upset
> > this particular mechanism that that 5V is not applied to the USB port when
> > it should be, so I really do think that this is how it works in BSP.
> >
> > Looking in mainline is interesting, because the concept of another driver
> > registering with phy-rockchip-inno-usb2.c for updates when the phy state
> > changes are still there, all be it with different messages.
> >
> > So now for my questions:-
> >
> > Do you folks have any plans to write something into mainline rk817_charger.c
> > to register with the phy for notifications and switch on the OTG power?
>
> Not yet, but it's not a bad idea. Honestly I wonder if that's why my OTG USB
> doesn't work on mainline... because I don't have the extcon set up properly.

OTG works when set up correctly, look to the pinenote for how to set
it up. It also works on soquartz when attached to a correct carrier
board. There are a few kinks that needed to be worked out with the phy
driver, they have landed in next and should trickle down to the stable
kernels.

>
> >
> > If not then would it be productive if I have a go myself?
>
> Absolutely, let me know if you have questions. I might get around to it one day
> but not in the next few weeks. I have a large stack of U-Boot technical debt I
> have to pay.

You really should have included the Rockchip, USB, and MFD mailing
lists on this. That way they could tell you that the existing
infrastructure does everything it needs to do. Downstream does a lot
of naughty things to hack around limitations of hardware and the
limitations of the coders. Mainline requires everything to be
compliant with the various standards applicable, even if that means
some things aren't capable of working to their full potential. It
pushes for manufacturers to comply with the standards of the systems
they implement.

>
> >
> > Do you consider rk817_charger.c the right place to have such code or should
> > I be putting it somewhere else?
>
> The rk817_charger.c driver in mainline currently only checks (via an IRQ) if
> the power state has changed, if it has been plugged in or unplugged. Presumably
> without looking at the phy driver you could always check the phy state when
> this changes and then take the appropriate action? Otherwise we could set up
> another IRQ or workqueue of some kind in the charger driver to listen for events
> from the extcon.
>
> The only gotcha is this *might* actually be something the main mfd rk808 driver
> needs to do or the rk808 regulator driver (since I believe you need to simultaneously
> shut off the BOOST regulator when you switch the OTG switch). Mark Brown/Broonie might
> have some insight into that as he's the main guy for mfd drivers.

The otg_switch is literally that, a switch. It exists to permit you to
switch the voltage generated by the boost converter on and off to the
usb_otg port when necessary without stopping the boost converter,
which would kill anything else powered by it. The phy subsystem and
the regulator subsystem handle this without the awful hacks downstream
implemented. If you would like some help with getting your dts to
work, you are welcome to reach out to the mailing list, or to me
directly.

>
> >
> > thanks, Philip

Very Respectfully,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
