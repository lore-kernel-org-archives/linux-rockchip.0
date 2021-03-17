Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEC0BC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 04:39:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B75B64EFC
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 04:39:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B75B64EFC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V992kqCZI9zPLP5VuVXOXdIrpd4w72AomnPJil+EmFc=; b=QsnDvmdFGwvDB0nEs2lgumvXg
	gVclCN2vNsN0mpCF8j80NztjQiMp/GNJwDo/tXFAR1+aGRTqP94zOSL4BXwRDccp15KKFCW0TJkoz
	oaw0vXLVX1Rq7e40w2vgD0Dqai/l1zPu0paxxqZt/+xMs1p6Qmn7osEhNoxft3J5n0lva02V6tVCd
	Z+b12AhsxS5kXmHE/qHpthNLXy4uuLqLyZf60J5QQ4eHpE3i3IKHuhGpsNTijJ9y8xypCZx/WEvzT
	SQL66cTEAAKVoWoIn8aY8tgZ6aSl5lt7qkjoqlk5ttGR9UwlowJh8dVWZnJ2VHDgEumf68XFBe/Xj
	hsz6JpGYA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMNxs-002ScD-It; Wed, 17 Mar 2021 04:39:24 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMNxb-002Sb0-Oe; Wed, 17 Mar 2021 04:39:10 +0000
Received: by mail-lj1-x229.google.com with SMTP id u20so1482800lja.13;
 Tue, 16 Mar 2021 21:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RxzVzaQfgXYz8ydNKeFmWagcL6oo0NX1A8C+kfVFZQ8=;
 b=DseltBcrTEORJTvKX7i8YctxoVG0MXqz2BT28bVNnuRX9NYat3Gy8T7o51GsDK7HNs
 HxOlvl0xfPJIQgP1F5WA0gijlc6MdSJcQgVjjVmCt8Q6Tu/ykVghG1Kxwy0VsyvVYnq8
 I51VHmRaQwApankQRB9H9eH9sHt4yezvZYO7Uv/2K3kLh0Jb1v76YLKv27FmrKocMn5w
 /btsOtcofrj/6hZTZ8s6dVI56Kj+EY7G+ol/VBc4FpfPRKKckITNsXf1JdGFyv2CzoO/
 8RhvWXY6tuG+D4zcxf1cXOtTzf2f/oY1xMvEhYoGe7Ts5lQrYfJYCGJtUvp93fTM/TDm
 eKzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RxzVzaQfgXYz8ydNKeFmWagcL6oo0NX1A8C+kfVFZQ8=;
 b=Hh1+LMhZUL9gPNiL69SMT7E9iNtDaljliU5sSqAZRLXFZ7MjP0LJnhqcH6XzAef6s6
 SvTxW9TbFf0b25x/8VG9Bh5+/BkJGHy2DGtv/kRClNfsuLc0D2t4fkApr/8O17vJD9ll
 kUYKDgZ5uEv7zs9uXO3NlbJm5UOm8oMxJjV8P4+cb6Js+yV+x7gq6xE9lJ795xsmUIsH
 2wuOmccPlJAIzTb+oB68elRdDuyk58fYzlxHiDtdDWxGjJQLAIs8yAC+vKDA1aGEziXV
 hoBboZCT3wMyQgRNBFOzYpHKpg31mPHGGhrA1tPrn9hOuxKhBHjHcRsVnPJ+zk+ZLCxm
 2RWw==
X-Gm-Message-State: AOAM531bF2AdGoII4TmuqrifMz18bZ9D80LfavcQ0Z6hguJIimQmrA55
 8tG+ldh9qvFQySXDaBJ0qksetYJpCr1e4ty18Nk=
X-Google-Smtp-Source: ABdhPJx5411lQBzPrOF8A4yvPEiz6jFoToaQnrsy9XR0MrguKzg+imDJnV7handvwz7nhSmLs1CXJI4hpO5h2e05h0g=
X-Received: by 2002:a2e:a54b:: with SMTP id e11mr1182129ljn.458.1615955945356; 
 Tue, 16 Mar 2021 21:39:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
 <20210316150033.15987-1-cnsztl@gmail.com>
 <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
 <20210316193839.GA28184@duo.ucw.cz>
In-Reply-To: <20210316193839.GA28184@duo.ucw.cz>
From: Tianling Shen <cnsztl@gmail.com>
Date: Wed, 17 Mar 2021 12:38:53 +0800
Message-ID: <CAOP2_TjFtBqBP8wOY-wxSd89yYuYF4bwqWCP4c6FXNMNH=2t-w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
To: Pavel Machek <pavel@ucw.cz>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, 
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, Marty Jones <mj8263788@gmail.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_043908_026042_B8FBD5F0 
X-CRM114-Status: GOOD (  23.42  )
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

Hi Pavel,

On 2021-03-17 03:38, Pavel Machek <pavel@ucw.cz> wrote:
>
> On Tue 2021-03-16 16:34:50, Geert Uytterhoeven wrote:
> > Hi Tianling,
> >
> > CC Jacek, Pavel
> >
> > On Tue, Mar 16, 2021 at 4:00 PM Tianling Shen <cnsztl@gmail.com> wrote:
> > > On 2021-03-16 02:23 Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > Personally, I'm not so fond of the <foo>-%u node names, and prefer
> > > > <foo>-<function>.  With the former, it's way too easy to have a silent
> > > > override in your .dts(i) stack.
> > > > Cfr. commit 45f5d5a9e34d3fe4 ("arm64: dts: renesas: r8a77995: draak:
> > > > Fix backlight regulator name")
> > >
> > > How about using `lan-led`, `sys-led` and `wan-led` here?
> >
> > Documentation/devicetree/bindings/leds/leds-gpio.yaml says "led-%u"
> > is the preferred form, but that anything containing "led" as a substring
> > is accepted.  So I'd go for "led-lan" etc.
> >
> > BTW, you can validate your DTB against the leds-gpio DT bindings
> > by running:
> >
> >     make dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
> >
> > Background info for CCed parties:
> >
> https://lore.kernel.org/linux-arm-kernel/20210316150033.15987-1-cnsztl@gmail.com/
>
> I don't care much either way, lan-0 is okay as is lan-led.
>
> but...
>
> +                       label = "nanopi-r4s:green:lan";
> +                       label = "nanopi-r4s:red:sys";
> +                       label = "nanopi-r4s:green:wan";
>
>
> It would be good to have common labels, that means LED_FUNCTION_LAN,
> LED_FUNCTION_WAN, and figuring out something better than "sys",
> possibly LED_FUNCTION_FAULT?

LED_FUNCTION_POWER for "sys" would be fine, I think.

However, Documentation/leds/leds-class.rst says the form of naming is
"devicename:color:function",
and according to the given examples, as well as other dts(i), would it
be okay to use `green:lan`
etc. as the lable?

>
> Thanks,
>                                                                 Pavel
>
> --
> http://www.livejournal.com/~pavelmachek

Thanks,
Tianling.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
