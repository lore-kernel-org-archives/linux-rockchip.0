Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A35CC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:52:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30AC520888
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:52:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cF5rgxUa";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i3GH6Uri"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30AC520888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FGd4+kc3Op5OvZCqzL3C3UAmGc9wpM4d5hWwlzt+PDA=; b=cF5rgxUaNTCfPRhuFwrOCEA9z
	58zeqkiebhJVnsywtagZbC8tiMycJcL6fLL0wNZYupGbIlr/hJd/7CdS2bc2kSCxJjlVxRJhiYmFb
	HM+3AguNcBqp7jce/nyGyWv9OaHLZcSP8bgKC5Y1dnRGJ3w6kKjiqh4t31gmTkp9KuhkC9uU9Z4KG
	vLKVdVJSbtFPhnLE8b5YAukuIooXYIP2ojDsV0254OYwjhlH/U1L+vXU+fmyGhsQP5b1acF/CRabH
	4tdajUdaKNopV537rmOUMt+MlCrppWgR435lI9I/zAtjvkZGf8aMdbvttnaCLl1QzUSUnBrdD6G7V
	bD/lXbfCQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKoL9-0007IO-K3; Tue, 22 Sep 2020 19:52:39 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKoL6-0007Gm-Vs
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 19:52:38 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 7so11033653vsp.6
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 12:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vgZ2mhARJlJ6/Rs9LtdYJ41hAXAoZKODwF/dLpRa5KQ=;
 b=i3GH6UriNhSCQrAYnkxAzxgU+zQWpRYExbWStOov/MrzOAGui4UIFg9ccABFz8Pp9h
 9+ZUriUsxb3hgbCutxOs/5hhbjoyvIE6XzMpcMDiCouN/TlLnZyW49yHPbNPKu2XOdtL
 0mBDJDr0iz8P+h0XwmMDSzERV+pXRHrNe/+48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vgZ2mhARJlJ6/Rs9LtdYJ41hAXAoZKODwF/dLpRa5KQ=;
 b=ucJDFFKkykEr6kTdws4h7JCqilCjLJyUKfvhdVekpIXOuM99bQF3JX2QkLXqW/VM6Q
 klwXmp3bsa/riSjAHsdzdjSf3QR4mL20o9TMK8yc7LEAbOfoKeERvZLG2d/D4i6EJu6e
 RKz2MZ+a7NsGs6JxyVpf58a6oSnuPPY+Tm+aZJF8TiyG0oXvshe694GPmkznzMO9e45e
 gHcsvsUaop/Z15TYbU8tcQKfkV1yFwLnA7X8LXsmynsZWlhfsxVUBXq1vta6p0wyThTM
 w408LJsLQXtbIcxshlaPcSi05z6KPHNJj7neM0+NSuIqfM4Fk9+vEJRr3FSRNTfvdQql
 5qIQ==
X-Gm-Message-State: AOAM532CH85jL/Em8elmxM/re/Zv63pGKjgJHqXOspXunMEYjKZOwX4v
 a3ZKd5+mERzZgKnGq6xfYNedAafDB1PbzA==
X-Google-Smtp-Source: ABdhPJwyrdQjNI+ISHqbzdCiaKCSIKWREEf1d0hY7+zAC7zod76LUsxufefJjxZ0QfItLJ7tdN1QzA==
X-Received: by 2002:a67:f148:: with SMTP id t8mr5039762vsm.1.1600804349214;
 Tue, 22 Sep 2020 12:52:29 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id 61sm1186351uak.17.2020.09.22.12.52.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Sep 2020 12:52:27 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id j185so11035826vsc.3
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 12:52:27 -0700 (PDT)
X-Received: by 2002:a05:6102:2f7:: with SMTP id
 j23mr4713665vsj.37.1600804347111; 
 Tue, 22 Sep 2020 12:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200921181803.1160-1-vicencb@gmail.com>
 <20200921181803.1160-2-vicencb@gmail.com>
 <76b8f420-2afb-eba9-5c98-6f10762c4b37@rock-chips.com>
 <1ada2daf-16f3-191f-ccc1-d3d7d0c319fc@rock-chips.com>
 <CAAMcf8Az5AVWNzMHuxXda5WUm4_E5QCwpgb2fVtaT0w2+cQELw@mail.gmail.com>
 <bd2d67ee-4023-ccde-3b2a-e88c3e076d12@rock-chips.com>
 <CAD=FV=Xv+CZhvXc583VTR2HpSEtkpho3aV5qG5_1-tKFgw_vaQ@mail.gmail.com>
 <CAAMcf8Btd4iTAVXXKd6knJdBcufTrKiX5UPas9ugV01p1ffHpg@mail.gmail.com>
 <CAD=FV=WfJJ4Tr4WZnFuUtz=XS1jHAUDfgnwy6qjyJ6iektTGDA@mail.gmail.com>
 <1af700b8-c4fb-4f3f-b56b-2602cb620aca@gmail.com>
In-Reply-To: <1af700b8-c4fb-4f3f-b56b-2602cb620aca@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 22 Sep 2020 12:52:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WymHj1SXAkJHVMrsHimAq+mPYGRGXXe1wWzpyP+S9Kbg@mail.gmail.com>
Message-ID: <CAD=FV=WymHj1SXAkJHVMrsHimAq+mPYGRGXXe1wWzpyP+S9Kbg@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm: rockchip: hdmi: remove vop_crtc_mode_fixup to
 fix clock handling
To: Vicente Bergas <vicencb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_155237_065138_65FE7272 
X-CRM114-Status: GOOD (  31.05  )
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
Cc: crj <algea.cao@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, Sep 22, 2020 at 12:10 PM Vicente Bergas <vicencb@gmail.com> wrote:
>
> On Tuesday, September 22, 2020 5:26:17 PM CEST, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, Sep 22, 2020 at 7:52 AM Vicente Bergas <vicencb@gmail.com> wrote:
> >> On Tue, Sep 22, 2020 at 4:28 PM Doug Anderson
> >> <dianders@chromium.org> wrote: ...
> >
> > Here's the code:
> >
> >   rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> >   adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
> >
> > Input clock is in kHz and DRM always rounds down (last I checked--I
> > guess you could confirm if this is still true).
> >
> > Imagine that you want an input clock of 999999 kHz and the PLL can
> > actually make this.
> >
> > DRM will request a clock of 999 kHz because it always rounds down.
> >
> > First:
> >   rate = 999 * 1000 + 999 = 999999 Hz
> >
> > Now we'll ask the clock framework if it can make this.  It can, so
> > clk_round_rate() will return 999999 kHz.  Note that, at least on all
> > Rockchip platforms I looked at in the past, clk_round_rate() and
> > clk_set_rate() always round down.  Thus, if we _hadn't_ added the 999
> > here we would not have gotten back 999999 Hz.
> >
> > We have to return a rate in terms of kHz.  While we could round down
> > like DRM does, it seemed better at the time to do the rounding here.
> > Thus, I now rounded up.  We should end up storing
> >
> >   (999999 + 999) / 1000 = 1000 kHz
> >
> > Then, when we use it in vop_crtc_atomic_enable() we don't have to do
> > any more rounding.
> >
> > I guess it's possible that the problem is that the function is
> > starting with an input where it knows that "adjusted_mode->clock" was
> > rounded down and it ends with it rounded up.  That shouldn't cause
> > problems unless somehow the function is being called twice or someone
> > else is making assumptions about the rounding.  You could,
> > potentially, change this to:
> >
> >   adjusted_mode->clock = rate / 1000;
> >
> > ...and then in vop_crtc_atomic_enable() you add the "999" back in, like:
> >
> >   clk_set_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> >
> > That would make it more consistent / stable.  Does it work for you?
>
> Hi Douglas,
>
> i've tested this as suggested:
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1181,7 +1181,7 @@
>          *    this in the actual clk_set_rate().
>          */
>         rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> -       adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
> +       adjusted_mode->clock = rate / 1000;

You'll also want to change the comment above.  Specifically it says
that we're storing the rounded up state.


>         return true;
>  }
> @@ -1380,7 +1380,7 @@
>
>         VOP_REG_SET(vop, intr, line_flag_num[0], vact_end);
>
> -       clk_set_rate(vop->dclk, adjusted_mode->clock * 1000);
> +       clk_set_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
>
>         VOP_REG_SET(vop, common, standby, 0);
>         mutex_unlock(&vop->vop_lock);
> and it also works fine.
> Should i sent a V2 of this patch series including your approach?

That would be good w/ me.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
