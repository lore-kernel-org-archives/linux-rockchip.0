Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F0AECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIhU1iw8NWea6yucAgkeXYs++4iGGpRW4iergnIgtmQ=; b=wc8/m/tLpCwTu5
	fwnYtSU5X8+aeugcl4b1hfxFrnlR7Y/Ns1dSgwauR2femM1LdtBaeRWhUhSpZYHvDPFBIqcXQmAOQ
	nh6IJ4kITyc1SaWBlKqrj0Yx67/ZNT6S1NSQrkzccAz7cMCMeqaeIEkHMdV+4+M3UXVpWI2eyR5WF
	Ea+h5dPUQXBpnsgazCT9k/T0P3esY6AcDhKIcHxkg5F+CqxlUCknNAzJSE6MqW4EXvjjnzLZMZB+w
	gVsXbc9NHzro4rqpKGoumo+wfUhCj+k/bOPwYS5X419yJV5aZvXtF2VwEwfpUv7XlP/GadxwPEjc5
	CJlMmSibGMW4x2q0uBmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTMZV-0060x0-GC; Wed, 31 Aug 2022 12:11:53 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTMZL-0060vR-DQ
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 12:11:44 +0000
Received: by mail-ej1-x62a.google.com with SMTP id cu2so28012384ejb.0
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Aug 2022 05:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=N9mB3LeYeeKKsLke6elSgPP7MvMdjqvIVXauRaWV/7o=;
        b=qR63pyLB9nR/0ty9Vl30AcuGCRKsexEsdq9CxvD8rkj5INrVZaWOda9P4qr8p92K5w
         KAIZvfnV2CRbl/C7pXXhMnyrvpAOdHMnI2uGvasnGgZz288rbN2vukDtPsyLff7HzzCx
         G31/KfQVQOk3hfz4yjChicGfj9jVCrlWaLufcQ+nJWVY3NYi0Xr2lP6A6qrRqYGOZf0e
         LC7NQWr4SxdqlVvbP6+FWrg43GLKqP8b2h7CN5/u2PpmC4Y8e+lO9NxGxjsfTGY/SOBI
         16F4r58W03MdBPNdHOCGeVKLN5n0+Nxyzfj9fsoWM35eT+2RCZQBY0W8PGuT6GwHh2cG
         e4dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=N9mB3LeYeeKKsLke6elSgPP7MvMdjqvIVXauRaWV/7o=;
        b=GX0okkAd24gJNodNkT9CvU8h1MJOIkdLbEiQbnElJOXUjHaNOsGvlsH2SiMFvynwLJ
         PQuUv4A/0nBJG5DABURoLkB/7nIhUJ398p/jy39uiiykhgusavR1hLWWQW/B/+12jgZi
         Igv2ShJvFRgNjAR2LFhYYATYkYytQsOjrluX4yapbCHDwGitMDkbdXNe8ExhabMO1eXB
         ROL1OoEF1qaHuZW3LOFJ52PE/IAloYHgnKhSYYh3dgHmXRneXsYNaYQE6ft02ixFM56d
         /z8AS/BC3jTu4vt9MfBesaqcSIs+HQoQxmZX9tHkR3eL0cGchMYzpP83rvwCyf1iB5pf
         HoNg==
X-Gm-Message-State: ACgBeo38UVPqqXRgMk708e4VH3khcN5VEbHTsVshUSr3d4vmWYzsAOGZ
	ZOnkgsKeFOEaDAnKWraRSO4CKJ5TKOBAymJJAccSerfYVV0=
X-Google-Smtp-Source: AA6agR5d5aCYQeq9aXc0ikVnGMt3loQp4a2ilkHtM2rVP4a43+3+ubDzbFK03fIcT8S3PH0dPdKt4acLqApBHqywj9k=
X-Received: by 2002:a17:907:7242:b0:741:770b:dfc6 with SMTP id
 ds2-20020a170907724200b00741770bdfc6mr11141393ejc.203.1661947900641; Wed, 31
 Aug 2022 05:11:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220824010605.14256-1-jeffy.chen@rock-chips.com>
In-Reply-To: <20220824010605.14256-1-jeffy.chen@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 31 Aug 2022 14:11:29 +0200
Message-ID: <CACRpkdbzcGhUAHxhRon+1iQZOhmU929EwzcasRyHBZc-mN71GA@mail.gmail.com>
Subject: Re: [PATCH v2] gpio/rockchip: Convert to generic_handle_domain_irq()
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, 
	linux-rockchip@lists.infradead.org, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_051143_457847_884F52BA 
X-CRM114-Status: GOOD (  10.18  )
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

On Wed, Aug 24, 2022 at 3:13 AM Jeffy Chen <jeffy.chen@rock-chips.com> wrote:

> Follow commit dbd1c54fc820 ("gpio: Bulk conversion to
> generic_handle_domain_irq()").
>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> ---
>
> Changes in v2:
> Use for_each_set_bit().

Pretty straight-forward!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I think we have a few drivers that could be simplified the same way...

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
