Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65252C4320E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:27:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D15A60F5E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:27:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2D15A60F5E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKNR2A6Pq6VmOFqHMOe5yg0pT/1PnNqGHTSryBB8BHA=; b=t96yaWH54ziP/e
	bypUGTA1WzLaQTseVBDL5i5Vgh24ltTCgmS1SPy0n+FTMa07TczCiNG05k6FIf+k/nimClQ8hKCbW
	iK7PDsUCUZYZHxFwKDG7X72JZBioUo+kQ72fOg5EcAPXa5IKrfTHP3V8RH7bZp6axtqIc+LHt5mLp
	JPAbcJWdXsQ2jD9RVrOfd78WYMx3CEx+m4KgQMLIwMlJveGS+fYyZOlZDoYwhQPgVf69g7MFwo5EU
	fndL12elO1UknrTu+YKuTGx/78Q6rR1mYZV50eI8jqUvctVntKrM5oFLUfaKqItwQ/GWz9ojO//NR
	jpmu+h231vN0fbOzguoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kWQ-001522-C1; Wed, 28 Jul 2021 14:26:58 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kWN-00150s-4S; Wed, 28 Jul 2021 14:26:56 +0000
Received: by mail-yb1-xb32.google.com with SMTP id z18so4220858ybg.8;
 Wed, 28 Jul 2021 07:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=F8V+1MSveHL3w2OodER+J7c5R1ZGU/wPZK7SWk+KjFE=;
 b=MgMqatXgVQCwLNtXTOHzlGapZbvxnu+g2A5BSTVwUwpYU+gvpvwDPMulmKYSbBOcvB
 OJYalM2Pg/iEjD/PtqfxjJF7Ivtyc9dhRgohFp9KhU9lxW42M2Caz6AvA8L4gWWw4K/G
 7mZ6+TCoMnMxM7Jl8/fUw4hRv/tfd1nu9MaNICjBgZeN+0ZD22ooZcBO1g2ffuUS+bdu
 s4kFA/8CN95Id1M15z8wdwbI2CmFjOHJXMDJD/Q+HKI2cQ46xUKcazjbqSjvZYkyriJ8
 SLlZ2DmD9tTV0vhlqFnS36lNW2mgXSzwSi/sjMp8YsqvTOloBPnib5kRmQMP/Gh+i87G
 9PnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F8V+1MSveHL3w2OodER+J7c5R1ZGU/wPZK7SWk+KjFE=;
 b=Cv02z63FNGdUFurEYpl4R7HNZf9PdzUiSPUcNZ8IU5pJ3Df8ejsJ2NXa2exoZ0Wg51
 irTHcY9xjZLmN/BOCR3PmTR5Fra43jDhSjks9QxtyABAZlz3JrLIsYCHuF35S+r1ilW9
 LAG/B/DyoVNaa4jie0drUW8QjM8hGSiLbjBGQDLRoIxdfD9UC8pQxFNgujyeEbkULNbA
 itGl8LRyQDfXPmmbg5MNpMtbrypcT/3Jc/1Bx5ayYfl9MvNVGp56wd89XyZzBOJfnRtn
 z+mlC6RlEQDTaJvNoBdyqz++B8uX4wLdjY40XpRe0W06NClnLm4HD6jM9IeAORTo/wKD
 SNrg==
X-Gm-Message-State: AOAM531wJ1JKqNXCBX8BmBqFoBMninBaezW/OJrYvhdRvyXUjvocFXZd
 TQFRJhIwbGEnQXfS4sSZiYl5WRkCnhGjhq3KU2U=
X-Google-Smtp-Source: ABdhPJz4V+3o3miazbquCn2waofoW8dhZpLXCTrBlSD2yny/lcrjU1OY7NsWl/r/O9N2fOs508ecOv/oQqFzuNFETzs=
X-Received: by 2002:a5b:303:: with SMTP id j3mr36721843ybp.433.1627482413807; 
 Wed, 28 Jul 2021 07:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210726190130.1973-1-macroalpha82@gmail.com>
 <CAMdYzYqjrReKOWBMsaGpjj-hSvQYap=hMeyvpeggKuz+mVkULw@mail.gmail.com>
 <SN6PR06MB5342D49BE4F5EBB271FDBB59A5EA9@SN6PR06MB5342.namprd06.prod.outlook.com>
In-Reply-To: <SN6PR06MB5342D49BE4F5EBB271FDBB59A5EA9@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 10:26:41 -0400
Message-ID: <CAMdYzYqaTCYFeGDAceRPoje6buirxfa2BPGssVOAb-jaKjcn8w@mail.gmail.com>
Subject: Re: [RFC v2 0/4] power: supply: Add Support for RK817 Charger
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, maccraft123mc@gmail.com, 
 sre@kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_072655_226459_86E507E1 
X-CRM114-Status: GOOD (  45.78  )
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

On Wed, Jul 28, 2021 at 10:15 AM Chris Morgan <macromorgan@hotmail.com> wrote:
>
> On Wed, Jul 28, 2021 at 08:57:52AM -0400, Peter Geis wrote:
> > On Mon, Jul 26, 2021 at 3:02 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> > >
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >
> > > As this is my first charger driver, I'm submitting it as an RFC so I
> > > can get input from the community on what else is needed to make the
> > > driver consistent with the quality upstream expects.
> > >
> > > This series is to add support for the Rockchip rk817 battery charger
> > > which is present in all Rockchip RK817 PMICs. The driver was written
> > > as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> > > myself Chris Morgan <macromorgan@hotmail.com>.
> > >
> > > The driver requires some basic parameters be described about the
> > > battery in the devicetree such as the maximum capacity, the minimum
> > > and maximum voltage for the battery, the maximum charge current, the
> > > maximum charge voltage, and the value of sample resistors and sleep
> > > currents.
> > >
> > > The hardware itself contains an ADC capable of measuring the voltage,
> > > current, and temperature of the battery (though my implementation of an
> > > Odroid Go Advance lacks a thermistor for temperature). It also contains
> > > a columb counter, registers for tracking the measured voltage and
> > > current at boot, and a few bytes of nvram for storing data.
> >
> > Feel free to add my Tested-by: Peter Geis <pgwipeout@gmail.com>
>
> Thank you. Have you checked out the audio driver yet? Would be nice to
> see how it works on a device other than the Odroid Go Advance.

I would love to, but we still need to port the i2s-tdm driver over for
that functionality in the rk356x.
Once we have that, I'll be happy to test it.

>
> >
> > Tested on the Pine64 Quartz64 Model A.
> > We can't go as low on the battery voltage, otherwise the SOC becomes
> > unstable before it can shut down.
> > <3625000 0> seems sufficient for us though (adding this for the
> > benefit of anyone else testing).
> >
> > Voltages are accurate as measured at the battery.
> > Are there plans to expose the thermal sensor (if that's possible)?
>
> Unfortunately it might be more than we are capable of. The output of
> the thermal sensor from the ADC is stored in register 0x7c and 0x7d,
> however the datasheet doesn't tell me the scale/how to translate it
> to degrees. For the other ADC values there were coefficients in the
> BSP kernel, but there is nothing for the temperature unfortunately.
> Additionally, my hardware doesn't have a thermistor, so even if I
> wanted to reverse engineer it some way I don't have the means. For
> me those registers just read 0xff 0xff, which I assume is what it
> reads when the values are not present.

Okay, we have the thermistor connected so I can look into this.

>
> >
> > >
> > > Changes from V1:
> > >
> > >  - Fixed a CLANG warning regarding an uninitalized variable.
> > >  - Fixed a CLANG warning regarding a pointer as a bool value always
> > >    returning as true.
> > >  - Added Maya Matuszczyk to the Signed-off-by.
> > >
> > > Chris Morgan (4):
> > >   [RFC v2 1/4] dt-bindings: Add Rockchip rk817 battery charger support
> > >   [RFC v2 2/4] mfd: Add Rockchip rk817 battery charger support
> > >   [RFC v2 3/4] power: supply: Add charger driver for Rockchip RK817
> > >   [RFC 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go Advance
> > >
> > >  .../devicetree/bindings/mfd/rk808.txt         |  35 +-
> > >  .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  25 +
> > >  drivers/mfd/rk808.c                           |  16 +-
> > >  drivers/power/supply/Kconfig                  |   6 +
> > >  drivers/power/supply/Makefile                 |   1 +
> > >  drivers/power/supply/rk817_charger.c          | 932 ++++++++++++++++++
> > >  include/linux/mfd/rk808.h                     |  87 ++
> > >  7 files changed, 1099 insertions(+), 3 deletions(-)
> > >  create mode 100644 drivers/power/supply/rk817_charger.c
> > >
> > > --
> > > 2.25.1
> > >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-rockchip&amp;data=04%7C01%7C%7Ca5cf5e4a240e4f76b67508d951c75713%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637630738863903897%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=driHUKoWSfpQ5yV7E3Jo7pyQDwoxZ7wl56A8OB0XwyA%3D&amp;reserved=0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
