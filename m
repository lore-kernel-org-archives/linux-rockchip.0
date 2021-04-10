Return-Path: <SRS0=4pKU=JH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 165A5C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 21:10:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 360A661105
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 21:10:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 360A661105
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s6f5wFyGSxazmK24OIKmSJtqj0EKCl8XLMV7IRi8kX8=; b=iJMfciHk4eVdr7CQ/fG2nfNI5
	9UndzQZQxDgmiOyrcOBF2IpMjyz783Zxkq3SePSLX3mI3Qyt2xFMl6yFTKiPExDXxP03nmNvCL8na
	R+o6Sejp/k6ypgpiaEphCnMEdqpZiEfRtkb9toLcxXDJvDVCZvAncZJ7a9OeP9NbmPHXWCEZAEkN4
	KNRTuZxk3Q4mt+vbmFV7ub1+TsP7QEOvZSO/ia4t6QcSuZrlX3lVuKCZsNJ921ZvOk0NrMxiuhe7z
	v7G67loeSVW7OV2RXWRyNKc/3U/ptYxG8MM0u8Em5G2At7CpT00MiY4+QYgBCSdOv1fbqQyQXWjRU
	LN6L/0MuQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVKsV-003S5O-Gq; Sat, 10 Apr 2021 21:10:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKsT-003S5G-FQ
 for linux-rockchip@desiato.infradead.org; Sat, 10 Apr 2021 21:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=d7XdvvPl7h73p0TxSWtIegkE9zz+yi3yEAJyO0Hoiag=; b=1Dn7PRTeZGCW19DYpvQLQFhj8z
 KqB5NsASd0n0GfOUCodySIB3owRB65m1R5nuRyipR97wQRfZbz+btIZkrXkMysyJz1Eb23n99aMPe
 s1hJOCj4pTzG7hoJPm6QJFwm+A/awRTrHJzdFyGhAwY+VMTt/ZndyM2Wf92cbWhl/bR+cGFzriS2B
 C4T+iGSSCOADBGxly583gQXVguBdPF0sWCIW9rig77mr+BM7VPnT6doUsvoJ4kFWXaDyzfG4MvFyN
 5xVKn7yNvUzuA+CvkLhvQhKf90mJ6QIvReuA3m0vRc4Xag0FeVXz4f3Qtu1Kj2QSVODqtoN42ps15
 3f1yBoCg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVKsQ-005GbO-SX
 for linux-rockchip@lists.infradead.org; Sat, 10 Apr 2021 21:10:48 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVKsI-0001bv-Bg; Sat, 10 Apr 2021 23:10:38 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jianqun Xu <jay.xu@rock-chips.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
Date: Sat, 10 Apr 2021 23:10:37 +0200
Message-ID: <3262311.AJdgDx1Vlc@diego>
In-Reply-To: <CAMdYzYqk3k0UqCyFwB+W1tKKKTg39Mx0Vdsrj+eeC58nARaumQ@mail.gmail.com>
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
 <CAMdYzYqk3k0UqCyFwB+W1tKKKTg39Mx0Vdsrj+eeC58nARaumQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_141046_955680_6ABBA977 
X-CRM114-Status: GOOD (  22.44  )
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

Hi Peter,

Am Samstag, 10. April 2021, 20:30:52 CEST schrieb Peter Geis:
> Good Afternoon,
> 
> I'm currently working on the rk3566 early bringup support in mainline
> and encountered an issue with this patch set.
> Unfortunately in the rk3568/rk3566 the gpio registers switched to the
> (16 bits write enable / 16 bits config) register format that other
> rockchip registers use.
> This differs from previous chips where all 32 bits were used for gpio
> configuration.
> The patch fails to account for this, which causes all gpios to fail to function.
> 
> For clarity, this only affects GPIO_SWPORT_DR and GPIO_SWPORT_DDR.
> 
> I'm currently working on a patch to fix this issue, but I know that
> you are planning on breaking out the gpio functions into a separate
> driver and wanted to make you aware of this immediately.

just pointing to Jianqun's series providing the gpio controller support:

https://lore.kernel.org/r/20210324064704.950104-1-jay.xu@rock-chips.com

which introduces the necessary writemask-handling but seems to need an
update, judging by Ezequiel's reply to it.


Heiko


> Very Respectfully,
> Peter Geis
> 
> On Fri, Apr 9, 2021 at 8:38 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Fri, Apr 9, 2021 at 6:17 AM Ezequiel Garcia
> > <ezequiel@vanguardiasur.com.ar> wrote:
> >
> > > Seems we are missing the dt-bindings for the new compatible string
> > > "rockchip,rk3568-pinctrl". Is there a patch for it somewhere?
> >
> > Nope please send one :)
> >
> > Yours,
> > Linus Walleij
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
