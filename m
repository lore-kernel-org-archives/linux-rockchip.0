Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B2BDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 04:53:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A33A60F4C
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 04:53:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4A33A60F4C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IZV8B3XYc5s9vQgPl2W7zdJUei9Ts5zWIk6CZJm+QI=; b=ubWKM8m3LqXck2
	Dw2H9SEeq1Q3cX8ank7516mBwuIFpdk8k++PBz5O0/t72ERljkLqnr1FXW49nAL0GYLHRxd9JADH+
	lVew+q3iP8f+i0lXQbn2FJUoj137Yqt1uDOJBrq4RDgolikzEvp66z8ZnhK4oP/vgKyVmHWFES2El
	kSgT/Ldvk1B5bxirmWUSOoA4VQ1Y/SqdPTOmpBNT46+xAJnGqyYQZ0NitCn9COIUPz4d2GofmiBzb
	AoVQFMKkpVP76l8J9NlX2cAT22TCSTi6q8I0zFFQxM73C1aV7S/bQ9jYJsBu7tvJJNEHjXE4f0D42
	/zyOgcagE3AKZd994nDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPdxx-000H75-0b; Mon, 13 Sep 2021 04:53:13 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPdxu-000H6R-Mo
 for linux-rockchip@lists.infradead.org; Mon, 13 Sep 2021 04:53:12 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bq5so18307262lfb.9
 for <linux-rockchip@lists.infradead.org>; Sun, 12 Sep 2021 21:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4GP94oI8tMu6AWKPmeh+Mi99FWEewPUjupFIyk9Vgy8=;
 b=dy5jiiVGzeuUU3o2/KUgrSZ5nU4dGqicgHDbYfCkZ+dTO+28QM6vPMBSnfZB9xA0vR
 JsrU7k163qDyuxipvfEBNOaVwCopH6Us6ZtfnezWtK6Nov6EHU1jzPll20Y6SymwwAVO
 /qH/doGQpsWz0mI2+fGUQJ75Vw/WLAHwY8piw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4GP94oI8tMu6AWKPmeh+Mi99FWEewPUjupFIyk9Vgy8=;
 b=25DssGSEOMT+7mnUOASzAeXgKBCbH699++KigmRUR87vcC8QKzXVmvrJKSVRGSZRuD
 1nwwS4tvXNc8TNki23x04Y23lvJWBYpz1/sYqAWDSIbq8EWGnctg4hzqz8JnfyXWK0Bw
 G6yx7vEbJnxWn8ZFZXLj2ynx3AvYqyimrripZ1OPyS6sJ+loCDPzkpPYx6JYpY3Le7W2
 MtNsOOvpB2HpAfmMbiJ6QXpf8+fr6PQRHpKCKQaBJM4qJVcD8+j4I1UYQa/OMuw/rygm
 TZZ2Tntx83iKnmck4Dbs5pJylyj5M4WuJlerTP9VtIrKiPSFA1t1Pj4OC8NvpAfLuNQd
 XPtg==
X-Gm-Message-State: AOAM533jR99Uz57kagmO1EhANdzpbrdR4TuL7K6BeRowM2UbPTgdue1u
 dmI8S5nCZZ+Kz35ZWTlzbKa6DHcUH+hDxueamSk/dA==
X-Google-Smtp-Source: ABdhPJz/3Qrvat1JZ3K+cjHFjhNfQ1Dn3Xyi3uZH6ast4XQTlgibkT6qLsGdMg9yDmhhz9D5dLFRiduzFLzRZJkmR20=
X-Received: by 2002:a05:6512:c16:: with SMTP id
 z22mr8054334lfu.482.1631508781305; 
 Sun, 12 Sep 2021 21:53:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
 <CAD=FV=Wp=zqx4j=srryypAfpRusHQinuhXjmu4G_HuBo7+PN1g@mail.gmail.com>
In-Reply-To: <CAD=FV=Wp=zqx4j=srryypAfpRusHQinuhXjmu4G_HuBo7+PN1g@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 13 Sep 2021 12:52:50 +0800
Message-ID: <CAGXv+5H-NJnUQ3WCdbdw9yz9FPHCHK7siLW2YsCfjiruj6B5pA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] clk: rockchip: rk3399: make CPU clocks critical
To: Brian Norris <briannorris@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Doug Anderson <dianders@chromium.org>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210912_215310_803377_186E2200 
X-CRM114-Status: GOOD (  21.03  )
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

On Thu, Sep 9, 2021 at 3:44 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, Sep 8, 2021 at 11:14 AM Brian Norris <briannorris@chromium.org> wrote:
> >
> > The CPU clocks don't currently have any owner (e.g., cpufreq-dt doesn't
> > enable() them -- and even if it did, it's not early enough compared to
> > other consumers -- nor does arch/arm64/kernel/smp.c), and instead are
> > simply assumed to be "on" all the time.
> >
> > They are also parents of a few other clocks which haven't been
> > previously exposed for other devices to consume. If we want to expose
> > those clocks, then the common clock framework may eventually choose to
> > disable their parents (including the CPU PLLs) -- which is no fun for
> > anyone.
> >
> > Thus, mark the CPU clocks as critical, to prevent them from being
> > disabled implicitly.
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> >
> > Changes in v2:
> >   - New, split from the patch that requires this change
> >
> >  drivers/clk/rockchip/clk-rk3399.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
