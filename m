Return-Path: <SRS0=vwyG=DW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EBF7C433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 21:37:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 534AB20759
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 21:37:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="X9CbgZHP";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WsvessV7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 534AB20759
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TrMkc0F8iptfvxrlYpeksIHxFNpb4fbJoGnnFsKNlHQ=; b=X9CbgZHPW9q0jMnL3PcoA/V25
	aglvimZW2E6giCmkAfG7xtkkwzp1rFWK+L3+mDHq3/7AOUAlIswLycQ4ujlv06d29LeaIq3Z2RtoP
	cBvNBAaG9Ujl1IJq5gCT5wefwwZDvYkqwOP1ih5IAcYvtkwynlHMeJnA3OULa3hM5pJUue4XdzvWb
	Hmd4rRk1pY2N/Lc8WfXi1vWGEXwl5x0hLh2tCgwqTX5oJZ9FQrac00YKiKNUgJaBDXohUu4OHxXhr
	3ZliYd6mB7r6lYnBZFo87CVE8YNnodAaisW+ZDTn2IvKTFLiALd67opxkrkLmHfBaeOV1UqCOC9mh
	6wzwYZIJg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTAwO-0006yA-0d; Thu, 15 Oct 2020 21:37:40 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTAwL-0006xn-Jq
 for linux-rockchip@lists.infradead.org; Thu, 15 Oct 2020 21:37:38 +0000
Received: by mail-ej1-x644.google.com with SMTP id e22so235480ejr.4
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2020 14:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=shNugDWCSFxMFaQhudWs8qBWQPZ07aTny77+Ie1FHlk=;
 b=WsvessV78yuDktprTp/4iqa3Adv1XtNl2N/v19ZJnZoqVtqW3R89jenV6efR955q/r
 w/t7xoaoNh7s+6TICZL6hGqJEjkuoQuGozFyTv0FDKf47JoY98kaBG86Az0J9yrlcxxG
 WWCFFWYtDAiJztGSud9FB31svTcPtnbTB6Mhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=shNugDWCSFxMFaQhudWs8qBWQPZ07aTny77+Ie1FHlk=;
 b=lxiJZM/GxOWQGsosx731Wj+jtSnH2NNCcmChtkf9hW1YHvkriSvsa7XP7fFH7S2LJO
 OQfQyFCDlNX9UJF6FEiATo/1CdQWZCAdhqsrvw/qPmJPYgUc5k/NJiAc/rzDK8IxDGs/
 X7CFMz4ati+STfT05wAIHhRrkGWw9gbalC0cJ1j3jeDcTFjtK8O296GaTxdvBdVbYjmG
 YSLLoCAz2Fm4FNupIbw2QVxGrseL7qtUvZSgb8z/jUEg8ZCyoI686SCFPHReENPsTBlF
 rjBZWmGLrMWfb+JheFy3i1295oVxWhoQf5k0JzsL3PEfiLCxWOvz+feP4FPJsaTD4Y1y
 nJAg==
X-Gm-Message-State: AOAM530dPR0ha8ySduF6MsbZ9tNCqm3OwTJY6HYWFSuNcVicc33ZSzbI
 hMBnrulTmrXDTQBHido5/jjAj4niIcHatg==
X-Google-Smtp-Source: ABdhPJwYe5sAb5SRJOXRshgPmyLbRneapsoWAIYzj7NnYtVNYYGa1Yp0OOfiBIaUZwRpGeCdmKe9fg==
X-Received: by 2002:a17:906:5a82:: with SMTP id
 l2mr408282ejq.240.1602797855059; 
 Thu, 15 Oct 2020 14:37:35 -0700 (PDT)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com.
 [209.85.218.49])
 by smtp.gmail.com with ESMTPSA id si13sm246659ejb.49.2020.10.15.14.37.34
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Oct 2020 14:37:34 -0700 (PDT)
Received: by mail-ej1-f49.google.com with SMTP id ce10so229452ejc.5
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2020 14:37:34 -0700 (PDT)
X-Received: by 2002:a50:e40b:: with SMTP id d11mr491296edm.198.1602797381996; 
 Thu, 15 Oct 2020 14:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <20201013080103.410133-1-amstan@chromium.org>
 <20201013010056.v2.2.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
 <20201014141946.mkrvpkrttucffkhj@holly.lan>
In-Reply-To: <20201014141946.mkrvpkrttucffkhj@holly.lan>
From: Alexandru M Stan <amstan@chromium.org>
Date: Thu, 15 Oct 2020 14:29:05 -0700
X-Gmail-Original-Message-ID: <CAHNYxRx3J7XUE-hWa8-6_bOePsw1oeY9uuuehy=yCxN2RyqsjQ@mail.gmail.com>
Message-ID: <CAHNYxRx3J7XUE-hWa8-6_bOePsw1oeY9uuuehy=yCxN2RyqsjQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
To: Daniel Thompson <daniel.thompson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201015_173737_698516_B7B11FA9 
X-CRM114-Status: GOOD (  20.20  )
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lee Jones <lee.jones@linaro.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 14, 2020 at 7:19 AM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Tue, Oct 13, 2020 at 01:01:02AM -0700, Alexandru Stan wrote:
> > After the "PWM backlight interpolation adjustments" patches, the
> > backlight interpolation works a little differently. The way these
> > dts files were working before was relying on a bug (IMHO).
> >
> > Remove the 0-3 range since otherwise we would have a 252 long
> > interpolation that would slowly go between 0 and 3, looking really bad
> > in userspace.
> >
> > We don't need the 0% point, userspace seems to handle this just fine
> > because it uses the bl_power property to turn off the display.
> >
> > Signed-off-by: Alexandru Stan <amstan@chromium.org>
>
> Acked-by: Daniel Thompson <daniel.thompson@linaro.org>

Thank you!

>
> Note also shouldn't this be patch 1 of the set. AFAICT it makes sense
> whether or not the interpolation algorithm is changed.

Yeah, I guess it could be. Sorry I didn't think of it that way before,
I'm used to landing things in a group.

In particular on veyron I assume it will almost be a noop without
having my driver patch (especially with the findings of 0% not being
that important).

Feel free to land this independently.

>
>
> Daniel.

Alexandru Stan (amstan)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
