Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B4D9C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 00:20:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B00C2610CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 00:20:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B00C2610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yp37LgT/MBUwjntf/iLZ+K6JFKALqGYRhWJaep7IAHk=; b=dPdAPToFtu3HDBYUoKTelJWr2
	nVsKYlw08b+6m/rZF0BLns6Dz7nzO8hCa5C45PASq0fGDnUlxvfZImYQjccC5dx9gQBZRvtUHIxAC
	1lFS70J8az16z4MW+N/ZwNYvV10SyUAdpfykeFpK8XQ6dQJG8dAYHDmnybp89hIQjmm4Ks8DDF1eQ
	6wG983Ez1YUPsDJEFs9BY3iG/4e5djGDJWg7sgfmIu/T1BQCPZMe9EqxiJAeIHYpQnzU/8MqthyTI
	OcxNlRO+DIUt+7mJPo06s6bKT32HFsk5SMcOFdsRRiXos9pfgjzZScJbYKzHZPB76Y/sAduH8zpqf
	sCjsHpq7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj9wk-002FsN-09; Wed, 19 May 2021 00:20:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj9wh-002Fs0-MI
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 00:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kxPHY1jKkNoFSE2/0Ap7oT96GoALXMLtmUjeD9d402Y=; b=MJFzZKU/KvcPgtyXsftUJ31hNA
 F1nY7QOsPS4n45Is8BlTbgonpi+ts+prcmYtRi8NKMSRYgTWq8KHXFsnEKD7ahd1tMLtL+HRIyBNj
 VL172LC+nuhpmD3lhtTzQEwyRIeroP63ZGLUVVO79jU9bZEgDNIEnXX7B5ancS9Mxm6GxSw6e+E1l
 8UFraPucx93WqtPpUMQPMOzVbaGQcJf05fZL4vUkBzU8ECAjNgVuhEvbM9KRrX8/8j5c/TsdA0Hea
 pNWgbFdaqhg9ZERqQXs6gGnu8e145lhcw01sO+3pZoTmjJ6FimR0hHLfMAvBVK7iVhNhg30d4mjPK
 eblb8hFw==;
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj9wf-00F2qa-2e
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 00:20:18 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id n83so4846223ybg.0
 for <linux-rockchip@lists.infradead.org>; Tue, 18 May 2021 17:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kxPHY1jKkNoFSE2/0Ap7oT96GoALXMLtmUjeD9d402Y=;
 b=pcujdQn0GkUvHU3HRvBUcPknxMr6Waw8TGBbT4w0CfAdY3QX8u9AwnasK31Kz10Pjh
 muM/wnK4ZLv93pcf/zfmpB8fKD0J7LoaLHu18mVfzJ8a5jcEW+lF8EqEH1vCOULLON8B
 w9Y2d2hAEqBdiuglcRNAYhK9nJ3fXHe8fNABx3iuD19HAN4vUDjL44nzX1F4Tc0mg6Dl
 7azsVzLN63Z0fkOvm2XAKduq5YR5ye8Au098+SjwBjNGyDI+G6ABO+uNX7ohSKtm1mIg
 XZ7XHyiYDNRaBvWSPSsx1op2cBdnB6dg4RMplhHD2F7lO64zLUpyeslssCmpa8a2KyiT
 QXng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kxPHY1jKkNoFSE2/0Ap7oT96GoALXMLtmUjeD9d402Y=;
 b=PDFE6vYg9t+yUHA5J7AKn5saD1CDvg+4cMYX+sfugPCf6/k4GsEIev66nyTsJaWcQb
 TqXDCHPeCClALcsa3rEQqd2OuX85GpLen+RfkGzl1Op3YDyJeFT8T3nf2S9DARHUkQgP
 HYA9QndLiuPuso03qU3RlWMHVtud5Vc1E4YCGOrTM4C1dy1FyZu+W6nIMzOomeZBkC73
 LoQBAjhYktNuLIv6ar0Xm+zvzsd85GpRxCHIRHp7226yOfJsa/1Av/96bEx8HLrkwnMC
 zi1Jr2q+9PYMocWkWsCNjp7mZh5ThSJIqK6UoaJBng1HR3cAR6ljCVv6ues6VskKx3gS
 zEHA==
X-Gm-Message-State: AOAM531rYza2i9S/98Lv7RM0r+x7FZbEBXUfxVjKXklEAFiY0n5Q5O99
 NjhqvFU+HngNCggtdOtDtO9WKd/jwUMiR3ns2V4=
X-Google-Smtp-Source: ABdhPJy7qDS9Phf5sCsWbwzXWHVEZgp9RY7GKxW3h6Xj8Lx1i3KOzjRPqY8QyuWuweU5snOP5Gj/c25OKITphKXsc/0=
X-Received: by 2002:a25:4d56:: with SMTP id a83mr10341612ybb.437.1621383615506; 
 Tue, 18 May 2021 17:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
In-Reply-To: <YKOB7y/9IptUvo4k@unreal>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 18 May 2021 20:20:03 -0400
Message-ID: <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
To: Leon Romanovsky <leon@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_172017_158811_5E256C25 
X-CRM114-Status: GOOD (  21.65  )
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

On Tue, May 18, 2021 at 4:59 AM Leon Romanovsky <leon@kernel.org> wrote:
>
> On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> > Add a driver for the Motorcomm yt8511 phy that will be used in the
> > production Pine64 rk3566-quartz64 development board.
> > It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  MAINTAINERS                 |  6 +++
> >  drivers/net/phy/Kconfig     |  6 +++
> >  drivers/net/phy/Makefile    |  1 +
> >  drivers/net/phy/motorcomm.c | 85 +++++++++++++++++++++++++++++++++++++
> >  4 files changed, 98 insertions(+)
> >  create mode 100644 drivers/net/phy/motorcomm.c
>
> <...>
>
> > +static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> > +     { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> > +     { /* sentinal */ }
> > +}
>
> Why is this "__maybe_unused"? This *.c file doesn't have any compilation option
> to compile part of it.
>
> The "__maybe_unused" is not needed in this case.

I was simply following convention, for example the realtek.c,
micrel.c, and smsc.c drivers all have this as well.

>
> Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
