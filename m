Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14866C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 15:35:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BC3F650EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 15:35:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BC3F650EB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NlaYTXQ0mqAdU7cI4xQeu9b8BYkJQsHG9DhIrODGwRU=; b=b8AumyCXfEG5nm2Ifyxd4RwyE
	yPTYKiT4Ig7A/OqX3WXJXOoGOYQco1+/IyaoBe0vLbDm1CaWR3PHLawxsjXQD2+INrfRxIE4P6wo8
	F+lo4ktAYgF0sJ5BwKeRuBy4wAVYXGn+MCqMS96zfB/nhmgt46Cyfo7oCv9LxqCgO5GkYY+BMp74U
	RZsC65Re+oUjdX0Oem9KoaIsv8b7UQnw7k1uKX9IhccufauSRiBuqrHaDgIvSUcHOK+rDGg22ijcK
	T5TRQB/eZbIlHkJ7XJ/Ukyg0Dh/RekJkBInIqYLZzLzVBoW9E6w/6KqpBHMJ0twS7mqbb/lNfiyWP
	jG+YLMOZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMBj6-0015Wh-PB; Tue, 16 Mar 2021 15:35:20 +0000
Received: from mail-vs1-f50.google.com ([209.85.217.50])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMBip-0015RU-8y; Tue, 16 Mar 2021 15:35:05 +0000
Received: by mail-vs1-f50.google.com with SMTP id s8so18397997vsc.8;
 Tue, 16 Mar 2021 08:35:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bQXFQUK1Smo7zLwGGBtKvcaQNYzdWt9/qzFR9xYxQFU=;
 b=nfmDcHXqDdz8BHMZvvElInwoq1tATBc7BFSUqZ+grdW2GChJkPY1/MijLET9Cpob5M
 GYp7QZGh8lwdnga9+Qb5SCTCWf118sGBM5/x0MBFyNggr5K7wf5EVxSyW3odQIToZ9RW
 Col1QkzCc92pjiV9n4rVRnUZYPQORtUPpMbLb3ESDR9A3Ty2o6Omu7KUMcJbzPBftvV4
 BbbhejsUGeLo1J7PcoVnIrHOW4QJca7uI4XEXW+HRE1fBTLdQe/Qrc2OHiz1b+ra0uLb
 GRYg81a7thPo1KbnmmqZd3oHZ0ugZ59udAXdkVKRWdzd4OjiR8tQ6T/xMImdBxJLApb6
 9+rw==
X-Gm-Message-State: AOAM533SURMI1K3mhFVxHJj16BRCVX1UMTRomwqnU8Dj8EcwqsEq0mOq
 sunr/LEzgFIrFePwdFsLrSn7xTK0HxY+PM+Fj1F165/bJ6U=
X-Google-Smtp-Source: ABdhPJyiREAov3bNX/VpoD0WiQljCXe/K/wAaktLKqeyeqzULAafFKKBHsJA0VsqBFIKp1TItrvPZJ2crVn4Y+MyLis=
X-Received: by 2002:a67:8883:: with SMTP id k125mr9392973vsd.18.1615908901334; 
 Tue, 16 Mar 2021 08:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
 <20210316150033.15987-1-cnsztl@gmail.com>
In-Reply-To: <20210316150033.15987-1-cnsztl@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Mar 2021 16:34:50 +0100
Message-ID: <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, Marty Jones <mj8263788@gmail.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_153503_759825_79418B0B 
X-CRM114-Status: GOOD (  20.66  )
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

Hi Tianling,

CC Jacek, Pavel

On Tue, Mar 16, 2021 at 4:00 PM Tianling Shen <cnsztl@gmail.com> wrote:
> On 2021-03-16 02:23 Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > Personally, I'm not so fond of the <foo>-%u node names, and prefer
> > <foo>-<function>.  With the former, it's way too easy to have a silent
> > override in your .dts(i) stack.
> > Cfr. commit 45f5d5a9e34d3fe4 ("arm64: dts: renesas: r8a77995: draak:
> > Fix backlight regulator name")
>
> How about using `lan-led`, `sys-led` and `wan-led` here?

Documentation/devicetree/bindings/leds/leds-gpio.yaml says "led-%u"
is the preferred form, but that anything containing "led" as a substring
is accepted.  So I'd go for "led-lan" etc.

BTW, you can validate your DTB against the leds-gpio DT bindings
by running:

    make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

Background info for CCed parties:
https://lore.kernel.org/linux-arm-kernel/20210316150033.15987-1-cnsztl@gmail.com/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
