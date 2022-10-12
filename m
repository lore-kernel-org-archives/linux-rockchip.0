Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92C9FC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 13:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWAjBF/ppKLxgbJdIFu7ehIbjl3fP8pLFwYnbW4ez7g=; b=B60kBEgkcisrbs
	ms9/vMtl1l7PfTbjqR2sj3p+SiiPkKcFDJUyO9NOwztmFPLT8taO6l2XUMBJFKPq2LTnA3TxGTGNo
	8va8terCqIeYRq7s27gg+6BEUEDxXX2TtI6G2+cPrFz3YZC2tjMGnJQVXvyAy9tytGD1D+4nIONLa
	nkGGPoQa5GDxsgjXNrbvZ47oPfprhmAqWbic+H4euXZMTXHqsmZNeM8QgOZX5hVmUZTJZ/FQbloSy
	2HUPB9juUSFSfccizVxAwcoy8KgT0H4Ac42d6/yDD6ZPTgY41o0X0QyE0MMESOePgMydSYhqL4Rg0
	tSaHq8/MyQ4i0iUzRhgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oicAH-008HQS-HS; Wed, 12 Oct 2022 13:52:53 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oicAF-008HPL-5S
	for linux-rockchip@lists.infradead.org; Wed, 12 Oct 2022 13:52:52 +0000
Received: by mail-wr1-x42a.google.com with SMTP id bp11so13598943wrb.9
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Oct 2022 06:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rSEv+KP57ztKlJpwjgBlKSclAvjRccx81GpFSFSxmhE=;
        b=BLGGyCtVfEjtlMhnSmSnIzhN+fE1vXBrva4KXUqHzzb2r/9EndiselEvuF1f+HGGLd
         Ci+YoeOWg4gWG+TFexQ+n6BOEdy3CAOIJad7oqtlaCDTTYMaeRSMmENnIrdDGFSwT0WO
         UCfDctxI4SA7zvbetL6mN3qpYOPOG5Cc0j2NxPQpMq83IUNdT6enlQbXM4E3Bdo5BYp6
         xZZo0JbocNgikwqUqKAER+e0MdiZcoFPllQDvc2oUek2ZXhPkkbeMuY8rwctK25xyd7y
         wlvslofDrSHFZXct5wFcss0kWmQbUj/e77Bvv5m7FzOXjZHw/Kh9wcZHBLjNaVNXvdCc
         O2vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rSEv+KP57ztKlJpwjgBlKSclAvjRccx81GpFSFSxmhE=;
        b=wS66fKffe5apUhMVRihQVrdRChwSXwgmDs48fShz1U/JlQXPMLtS9J0QlQdDIoXPsz
         ctnxDqqx3wzJf60XWJelFtzQDiJrWLjmzYIucS64LyxxcYSqr8bGSt6S16hFhtCzSjdM
         eJSUtIn2EOQsSJDJ/2EyoVa63L0cYAu2QIsqmT1fQoQOS/YATlrb4rHJOgmJNfuIiOSE
         dWI5/foBhcCxZ1FtztpG3TdPFYnnwe+F2lnt0k2MaUmamsTr5VXs1be/CTptl4XxdLB6
         HRxT0gqyswIWRrAcQlhXD8eeujnnfUKVp4LfLaepnExcqQq/0D9ujslE6lbanjtzJt0r
         hytQ==
X-Gm-Message-State: ACrzQf11Veth5jzmHkEHtgaGGp3HqMurSg0B6WW8WJ7T3U/p5wLUocJD
	Iyld0zg65qcMv0gwv8VZghzEr4gShUDhONtXqqs=
X-Google-Smtp-Source: AMsMyM4JZXLKw2j1GbqS77f+b8Zh0/b6Juph2WjqOOtYeENFvCr1l+Uq/0kdRFawVqvPm08Y/Uv6Gy/mbnxjwn9uSqQ=
X-Received: by 2002:a5d:6508:0:b0:22e:1af4:57f9 with SMTP id
 x8-20020a5d6508000000b0022e1af457f9mr18131767wru.539.1665582767612; Wed, 12
 Oct 2022 06:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <0ec9541a-8d8c-0fc0-d158-73ba949169a3@pscan.uk>
 <SN6PR06MB5342D159E9E83EAA4FEE9CDBA5239@SN6PR06MB5342.namprd06.prod.outlook.com>
 <CAMdYzYq6vbYgG_c1O3_pR1nNRWLK2QUim0rQ4PZiucU=vVK1Ng@mail.gmail.com>
 <4737d50e-5f5b-670c-227e-e3d84e4fb09d@pscan.uk> <9fb765d0-7648-288f-23a7-8d98da9b3561@pscan.uk>
In-Reply-To: <9fb765d0-7648-288f-23a7-8d98da9b3561@pscan.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 12 Oct 2022 09:52:36 -0400
Message-ID: <CAMdYzYrs0zCQ8UGz7S4frsT3e27p6LbhKrX+OZ9DyjnV3_3kKQ@mail.gmail.com>
Subject: Re: More RK817 questions
To: Philip C <subs@pscan.uk>
Cc: Chris Morgan <macromorgan@hotmail.com>, Maciej Matuszczyk <maccraft123mc@gmail.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_065251_230154_14644D16 
X-CRM114-Status: GOOD (  29.59  )
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

On Tue, Oct 11, 2022 at 5:49 PM Philip C <subs@pscan.uk> wrote:
>
> Hello Peter.

Good Morning,

>
> My device, from the perspective of usb phy, OTG and regulators appears
> to be identical to this one:-
>
> https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3566-rk817-tablet-k108.dts

So do you have a schematic for this? If not this is gonna require a
bit of reverse engineering on your part.

>
> I already have a debug console and mainline booting on it.  The single
> USB type-C port looks like it might work except that when an OTG adapter
> is plugged in the device doesn't supply 5.0V from boost as I want it to.
>
> Looking at the mainline pinenote dts it looks different enough that it
> doesn't help me (with the knowledge that I have).  The pinenote has a
> wllsemi,wusb3801 connected to i2c3, but my device has no USB port chip
> on any i2c bus that I can see.  Instead it has a vcc5v0_host_en pin on
> GPIO3 RK_PA3 which I somewhat suspect is how the rk817 driver is
> bringing up the power rail for the OTG adapter.

Hopefully it has a USB Type-C chip on there to handle compliance stuff
and pass along the filtered id signal to the phy even if it isn't tied
to an i2c bus. Do you see the role switch occur when you plug and
unplug the requisite cables? If role switch doesn't occur, you need to
figure out why before moving on to voltage regulator control.

>
> The line "extcon = <&usb2phy0>;" is at line 838 in the dts that I linked
> above.  This is the line in BSP that registers the rk817 driver for
> notifications from the usb phy driver, and which seems to cause
> regulator "vcc5v0_host" to start feeding power to the USB port when an
> OTG cable is detected.
>
> I am completely stuck.  If you can have a look and tell me what to try
> then I would be very greatful.

The way Mainline handles this is you tie the port power regulator to
the phy. When the phy enters a mode that requires the port to be
powered, it calls the regulator subsystem to enable that regulator.
I've seen boards where the boost power is fed to a gpio regulator.
That regulator is tied directly to any non-otg port and to the
otg-switch. You then use the otg switch to control the otg port power,
but if the gpio line isn't *also* powered you get nothing. I see that
tablet dts has a host regulator, so you might have this situation. You
can always set the boost, otg-switch, and host regulators to always-on
to see if you get power at the port for testing purposes only.

You really need a schematic.

Very Respectfully,
Peter

>
> thanks, Philip
>
>
>
>
> On 11/10/2022 09:21, Philip C wrote:
> > well if you really think that so many people will be interested in my
> > incompetent ramblings ;-)
> >
> > I just noticed that there are a set of pinenote dts files in mainline.
> > My bad for not noticing that.  I will have a look and see what I can
> > figure out.
> >
> > thanks, PHilip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
