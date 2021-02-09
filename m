Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45BC9C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 23:51:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C93964DEC
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 23:51:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C93964DEC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zepuJoKhw4AiVTFjPGJHhVdmLl0fIafr3kEmgokBUrA=; b=kJ2rKoIjuv/QsBp2FqCPcB1E7
	b9GbCkKQU3MCJZzCS/7vQF3JHf+GJcqEOLD2ps+9umzfGsiCF5V5MK9344ZcUDdWmWPJqworSSPOA
	iEOhA9FJL5zibEGyvR7NWxZJUsN3QxjuPdoQDgP8tP644j4uicn3tBqE0O1uGs59UJYV70sHMu+lF
	SLSSTeP7bSPwytEJ66P8hK2wnWDDC01SKAB/XWU6VdeGNMmyYS5tY/yyKH7gE5W7peG8Ah5tcpL1x
	5wW7Ionbv9QD2t/tLPw4DmEKAd4LI+2hm8iBB2qSb5yRbjRYwQyZU4JsIFQa1cripOOW+km3g6rEg
	D+vuGl5ag==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9cmc-0006Mh-OQ; Tue, 09 Feb 2021 23:51:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9cma-0006MF-8T; Tue, 09 Feb 2021 23:51:01 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9cmX-0001IP-F6; Wed, 10 Feb 2021 00:50:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH 2/5] ARM: dts: rockchip: assign a fixed index to mmc
 devices on rv1108 boards
Date: Wed, 10 Feb 2021 00:50:56 +0100
Message-ID: <6598201.ejJDZkT8p0@diego>
In-Reply-To: <CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
 <20210118155242.7172-2-jbx6244@gmail.com>
 <CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_185100_356421_E90814F1 
X-CRM114-Status: GOOD (  27.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, robin.murphy@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 9. Februar 2021, 23:25:40 CET schrieb Arnd Bergmann:
> On Mon, Jan 18, 2021 at 4:52 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >
> > Recently introduced async probe on mmc devices can shuffle block IDs.
> > Pin them to fixed values to ease booting in environments where UUIDs are
> > not practical. Use newly introduced aliases for mmcblk devices from [1].
> > The sort order is based on reg address.
> >
> > [1] https://patchwork.kernel.org/patch/11747669/
> 
> I just saw this in the pull request:
> 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  arch/arm/boot/dts/rv1108.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
> > index bec47e0be..a754851f4 100644
> > --- a/arch/arm/boot/dts/rv1108.dtsi
> > +++ b/arch/arm/boot/dts/rv1108.dtsi
> > @@ -19,6 +19,9 @@
> >                 i2c1 = &i2c1;
> >                 i2c2 = &i2c2;
> >                 i2c3 = &i2c3;
> > +               mmc0 = &emmc;
> > +               mmc1 = &sdio;
> > +               mmc2 = &sdmmc;
> >                 serial0 = &uart0;
> >                 serial1 = &uart1;
> >                 serial2 = &uart2;
> 
> Please don't put these aliases into a .dtsi file, as not every board
> will provide each instance. The entire point of the aliases is to
> have sane enumeration, so you should start at index 0 for the
> first one that is actually present and count up from there.

Hmm, right now I don't see the disadvantage of missing mmc numbers.
As similarly we count i2c and serial numbers for a long time, even though
not all of them appear on every board.

Especially as the main goal is to simply have stable numbers and
not having the mmc devices swap numbers on every boot.

So right now we're not using them from a userspace POV but
instead agreed on following the address ordering of the soc.
so when ordering mmc controllers by their io-address, mmc0
is the first one, then mmc1, etc.

So just for my understanding, what is different for mmc?
I guess to guarantee ongoing numbering similar to sd{a,b,c,...}
Or should all aliases be duplicted in each board dts and not
live in any soc dtsi?


Heiko


> I would suggest you move these aliases into the .dts files for
> the existing boards for the next cycle, and then make sure
> only the ones that are present have an alias.
> 
> It might actually be a good idea to have a warning in dtc when
> there is an alias pointing to a status="disabled" device, but I
> suspect there would be a lot of fallout from that.
> 
>       Arnd
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
