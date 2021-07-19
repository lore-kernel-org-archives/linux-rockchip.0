Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF4CC07E95
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 23:19:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65F60610F7
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 23:19:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65F60610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DU1F//Z8G4LKscIePthJaLH1cctQDJi1yBTGPvCuQt8=; b=eJyNkE/Ty/VOHa
	F8tbw6c0KxFh7Z4KorR5Bt2dEvP4pjSw0mpkgTdO6sLJttkd7LFmnKh/I8CikjaXROCIosERY2uA6
	nQqRoXWO1bgN3kgQunD5whiWTPjg2HI0d0NU7Gut8ofSi96FjFaLVRJuClsphlfCX0rkTCz2FyX8f
	nruEP9QqMYkKNm1Jewcy8LvkZjp5TmFo5WXleC34XZ8ZIh9eL3MssZ4watIjbtJxInOeqS833F1NT
	6lu7nwNEwYaUAbG7UmkqPxvrIz+hOk1Owkkxevr8DKogvf9ovl2RIeKpQvULKjdGNfM8emcJQxohp
	9J/AvB4d1ul23+1yKDkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5cXm-00BVBx-51; Mon, 19 Jul 2021 23:19:26 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5cXi-00BVBL-UN; Mon, 19 Jul 2021 23:19:24 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id g5so30238813ybu.10;
 Mon, 19 Jul 2021 16:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LlezL0fbSXWmQYTDFUaIce6BNOh5OLGq/7WOzksM/j8=;
 b=XcvE/gHEKQsTS7bCpq2c1QLE/yk8wEn4Bx/tSLHz+IDwlhg6Unql03hSL0pJFK7/UT
 jzQeRzRP6a28tdGhkEL2nnq0/RiqTGracaMOFsaOyVlbf/rdPsBji0ziqLDhu0nEU11D
 a2C7ETw0B/mvWYKCOPjcf773kofD4yhteFe5uam9gIY9nOAJrV/LqfNwkL3GC3A8p6xQ
 WUd5hNJx2A4SrqdpG5trgqbGO2iBaY1Hm2nD5djf4aQ3uwdYHnsWvIwV71C/QmSOU81c
 m7624Pd3dNHGl/hVMikl7/JAGzHDoG/PWN+OdvL6HzE1YgSGzmNfe2NpUF8Z9XyofeGu
 3Rkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LlezL0fbSXWmQYTDFUaIce6BNOh5OLGq/7WOzksM/j8=;
 b=sK3W1psjpzvf7eBm6+D0TLmNfj6nts1FRLdzQVsn6zp5mVpFwTqi/Cvj23152caa7I
 DjSdiQb/AvwBQSOqLFARwdIvsjPSNt5E9SZVZcqozIYlia4GyGghmEhSrCyqrMZFh9WW
 mImC82AXf8TEFpEO7UbRNsGEUUYR9sX/OuLA67301mFkdz9aC9HdILnOj0T4hciYqcKG
 cjjvCivGNqEWf4vAKh6tauLPtVa+iYpW37SULhqbHiVvx1+f/Ad7sAxHFLsZY4xW9ER0
 tjDIzv5PYUqll+bkM+1vUl2MMASzciWzylshkReENMZ1pdgjGw1MAqZLqqqttJhKb4/M
 jizA==
X-Gm-Message-State: AOAM531gZFM5skGkkKY1XxOSgAUDy+HJlNAqz6PolLn3SZBelpG5P81g
 sqYn5jCH32mDtugXDM++kA9fXHzgLqNf0AJLf8o=
X-Google-Smtp-Source: ABdhPJzIjY+RFh844oBvrjTF/QSAXR0NDQUqb4NG59ZhYeuqg2iz8jfmQaWT0vuGZ3d3MTBbOsypXmZtxU8FYOnKsfI=
X-Received: by 2002:a25:b706:: with SMTP id t6mr35652520ybj.174.1626736759591; 
 Mon, 19 Jul 2021 16:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <20201116151735.178737-1-pgwipeout@gmail.com>
 <20201116151735.178737-2-pgwipeout@gmail.com>
 <6e7a5a02-cd3c-81d3-a473-f87385c41e5a@gmail.com>
In-Reply-To: <6e7a5a02-cd3c-81d3-a473-f87385c41e5a@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 19 Jul 2021 19:19:07 -0400
Message-ID: <CAMdYzYqUgd_uPOPCnGUvU7kxPDGNnoN+_1RmO_AyY6oUtpkfGw@mail.gmail.com>
Subject: Re: [PATCH 1/4] phy: rockchip: add rockchip usb3 innosilicon phy
 driver
To: Alex Bee <knaerzche@gmail.com>
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?B?546L5piO5oiQ?= <frank.wang@rock-chips.com>, 
 zyw <zyw@rock-chips.com>, linux-usb@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, 
 wulf <wulf@rock-chips.com>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_161923_027169_7DF10C44 
X-CRM114-Status: GOOD (  26.58  )
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

On Mon, Jul 19, 2021 at 10:29 AM Alex Bee <knaerzche@gmail.com> wrote:
>
> Hi Peter,
>
> thanks for working on this (I hope to have picked the latest version of
> your series).
>
> It's pretty obvious that the quirky innosilicon phy Rockchip decided for
> in RK3328 needs a additional glue layer. Even if this version isn't
> perfect yet (usb3 devices "sometimes" do net get detected if detached
> and attached again) - it makes thing *a lot* better than it is now (IIRC
> its about the same in vendor tree)

Yes, it certainly is broken.

>
> So: are you going to rebase this on current upstream?

Honestly I hadn't planned on it, mostly because my board started
exhibiting stability issues.
This series had been tagged as an RFC as I was hoping to resolve the
issues with it.
Unfortunately either the documentation provided was insufficient to
fix the problem, or the hardware doesn't behave as the documentation
suggests.
Also the way we have to tie into the usb core makes me really uncomfortable.

Perhaps once the rk3566 is in good shape I can poke at this again.
There's a number of other issues with older boards that have come to
light that need attention.

>
> Regards,
>
> Alex
>
> Am 16.11.20 um 16:17 schrieb Peter Geis:
> > The innosilicon based usb3 phy used in rockchip devices such as the rk3328 is bugged, requiring special handling.
> > The following erata have been observed:
> >   - usb3 device disconnect events are not detected by the controller
> >   - usb2 hubs with no devices attached do not trigger disconnect events when removed
> >   - interrupts are not reliable
> >
> > To work around these issue we implement polling of the usb2 and usb3 status.
> > On usb3 disconnection we reset the usb3 phy which triggers the disconnect event.
> > On usb2 disconnection we have to force reset the whole controller.
> > This requires a handoff to a special dwc3 device driver.
> >
> > This has been tested on the rk3328-roc-cc board with the following devices:
> >   - usb2 only device
> >   - usb3 only device
> >   - usb2 only hub without devices
> >   - usb3 hub without devices
> >   - usb2 hub with devices
> >   - usb3 hub with devices
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
