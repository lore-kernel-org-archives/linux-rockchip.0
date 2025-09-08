Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB16CAC581
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 18:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIMpB5GTz9kiHAaa57R76hGuNZR/4JwAAjC1IhyOpeA=; b=p3ujq+LO7Z6g6W
	uaPrmwsROHASYaQ5gm9BVy9Aiyt21TyI+X9lpuC+DdQQKjOw0jvr6ItoUeL5RssD1kIz/1QcpdgrW
	ignUJ47SXLh+PZpcLu3ov60aKUt2UjTKpxj7YG8HyNfdpoJiVCeQu8IN27Vh4tfFneDnZAMRPAhWa
	X0vshtEs/fA4T350D1vJAJ0K5F0uVOnljoaRsAIel7b8TZd9PIGIF2bxR2e6oZTBv6fEqXhcCu3Cv
	aMpaWWB0A4PWHviqs3SBKNbvEHiaqZZRjXhOqW9VsQXLj6AnVBVy0fXP0iHmxblg4RmL0pAw3SnG+
	8nIE+a5XHXqyYc+mvynw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvgUc-00000001V5F-3eTV;
	Mon, 08 Sep 2025 18:21:30 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvc7B-0000000HRMp-49bi
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 13:41:03 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-71d603cebd9so44622537b3.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Sep 2025 06:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757338860; x=1757943660; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2V6Vwf7sjtvRs7wKxbRndIQxMlyKr4SMXFcsQopTXQo=;
        b=CIfbARjHhpgwYdfHD/oqFJs8bI4yNlWQR3gvvMmQJi086MAv0Kwg2UcOBrl7jiLYoQ
         OJaY2TwV2wJtYYRCH40ns7NbyzpYs7Hu0i/myQF4zOPNCruCkaMmllEECPNEplBYpPcj
         MVQBIqhNwJsPbe0ieaO8LhcYObL6sVehazfesyzvI2gh1uCGnfal8LU8Xd+MJ3GBjems
         gtj747Tkigv7SrO5QkN/Ql8STkjrD9khqz9F7m8T1NnM0svgKLGAdrV4+Od5FCht2Au7
         gYdJ9KeMsAFUj7FU9ZTWLu1M8eZ+9ujhdngHDeWPgjJ4CwcPssC9o0V3z45LhTsStOEI
         ksOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757338860; x=1757943660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2V6Vwf7sjtvRs7wKxbRndIQxMlyKr4SMXFcsQopTXQo=;
        b=aXhzAggwXGnDGxHq59SxbvImTM70ow2WDkmt0so5iiZtVi1M5x6mMKtU5DUokcLG04
         WPEfYQdlVP6X01Bv5/2dtVimihir/rx6of1bkzm/8d3GBHXrNDKC0vJ1EbtaLJfWAdEp
         31OKjJkqCRcPUA9HD1vC6v2JoiQDeiOotGqbkXEMaJwYzRIWgy1a9F7nk8MsxMtqgMkU
         MNWuiHZ3VJyJ4tIE/M/5zy9mFkGu7OMFdK5KsN+P+qaXpid8SMHDnYQrdzFGBu0qFLH5
         toJebFya36s4i5RwMHaK8xEHuct/EMD4EYm3aoEoe9zr1fsIWe2jdYl04fEWDB7nn+74
         zy4A==
X-Forwarded-Encrypted: i=1; AJvYcCVE+pEt4D7jqR9IlL03ok9luLXfjcD2Bp29qNAOmr3rz8TVjRKnRZnXZaAeTXEq3t7WLqQuz2vQGznX7rnuJg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpDXiJuCaUxSbtlHv10SEdw0c+PbbAd/1qsToAacyCbXY9Yi4s
	yAio3X5KRpgQaQrEHzYEkbvF2wS5nClFPJON9Xtrkbzc/Wnohcf5gFSOBHaG9Tbh6+pE/5EzrXf
	QrD2EUPkDbejQp7Ag4mzobqn+EpxgobME+aDuqRGhYw==
X-Gm-Gg: ASbGncv5loy4/81sy/U6SnK/I7dnh6S4KHErsxR7jMmEPvzh4tI6UORjjLNPrxNow8p
	mojrJQwaA4T3TtB16LLELtSmfnTxluFdNGULc6i2exqQt+qXTAmviry48RwQMwr64eetzRGPqA6
	bX8IE+ONi2aJjA5qYXxYvZhqkr1w3oqA/hDOptE/LxIwE5zJzr0M/xkctrsHffarmYNjgOFLjJF
	aKVs9LIQWmFlFB75LE=
X-Google-Smtp-Source: AGHT+IHmVwzJRbbk8lJqzSugvWpjEX8h6lt6E0HqLrB/JptJ9QEOE6Fe9GxsA7Ca2V1UWceelOk9kemT86vksConx38=
X-Received: by 2002:a05:690c:6e04:b0:722:6a27:4346 with SMTP id
 00721157ae682-727f2fb6a07mr77617367b3.13.1757338860259; Mon, 08 Sep 2025
 06:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
 <3556261.BddDVKsqQX@workhorse> <CAPDyKFpSY+FeKh7ocjQ_nGNZA5+3tWAL8e7ZNKXKNFP-yoiu_g@mail.gmail.com>
 <1953725.CQOukoFCf9@workhorse>
In-Reply-To: <1953725.CQOukoFCf9@workhorse>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 8 Sep 2025 15:40:24 +0200
X-Gm-Features: Ac12FXyAG1t2CYpmPKTCcMgEyVYOTn_3NnzPw6TDBeDE4KlE2WO8yjwKgz822rM
Message-ID: <CAPDyKFofhy5wiNsHUgdtzFwGtO3QPqhVuu1KsPLBWHF08JzqyA@mail.gmail.com>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_064102_046471_79F1EC7F 
X-CRM114-Status: GOOD (  55.97  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 8 Sept 2025 at 15:14, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> On Friday, 5 September 2025 16:27:27 Central European Summer Time Ulf Hansson wrote:
> > [...]
> >
> > >
> > > Okay so I believe I have found the root cause of the regression. UFS is
> > > innocent, disabling UFS just happens to avoid it due to how the timing of
> > > things works out.
> > >
> > > The real issue is that the NPU power domains on the RK3576, which are
> > > currently unused, have an undeclared dependency on vdd_npu_s0.
> > >
> > > Declaring this dependency with a `domain-supply` and adding the
> > > necessary flag in the rockchip PD controller to use it does not solve
> > > he problem. This is because the rockchip PD controller cannot acquire
> > > those supplies during probe, as they're not available yet and their
> > > availability depends on the PD controller finishing probe.
> > >
> > > That's why it acquires them in the PD enable callback, but the NPU
> > > PDs are never enabled because they're unused.
> > >
> > > This worked fine when unused PDs were still turned off quite early, as
> > > this meant they were turned off before regulators. Now the unused
> > > regulators are turned off before turning off the unused PDs happens.
> >
> > I see, thanks for sharing these details. What a mess.
> >
>
> Agreed :(
>
> > >
> > > I don't really see an easy way to fix this with a patch that's fit for
> > > an rc cycle. We can't request the regulator early or even just add a
> > > device link, as the regulator is not around yet.
> >
> > Right, I will work on a patch or two that allows rockchip
> > power-domains to opt-out from genpds new behavior and to keep using
> > the old one.
> >
> > I think we prefer to do it like this (should be quite a limited amount
> > of code and okay for an rc), rather than reverting for everyone.
>
> That sounds good to me.
>
> >
> > >
> > > Marking vdd_npu_s0 as always-on would be abusing DT to work around a
> > > Linux kernel shortcoming, which is a no-no.
> > >
> > > What we need is either a way to register with pmdomain core that
> > > certain PDs need a late init for additional supplies, which is then
> > > called before any of the unused regulator power off functionality is
> > > invoked by the regulator core.
> > >
> > > Any ideas?
> >
> > Yes :-)
> >
> > I would suggest implementing an auxiliary driver, along with the
> > rockchip_pm_domain_driver. The main job for the auxiliary driver would
> > be to get the regulator in its ->probe() - and if it fails because the
> > regulator isn't available yet, it should keep trying by returning
> > -EPROBE_DEFER. See more about the auxiliary bus/device/driver in
> > include/linux/auxiliary_bus.h and module_auxiliary_driver().
> >
> > Moreover, when the rockchip_pm_domain_driver probes, it becomes
> > responsible for pre-parsing the OF nodes for the domain-supply DT
> > property, for each of the specified power-domains. If it finds a
> > domain-supply, it should register an auxiliary device that corresponds
> > to that particular power-domain. This can be done by using
> > platform-data that is shared with the auxiliary device/driver. See
> > devm_auxiliary_device_create().
> >
> > Furthermore we would need some kind of synchronization mechanism
> > between the rockchip_pm_domain_driver and the auxiliary driver, to
> > manage the regulator get/enable/disable. I think that should be rather
> > easy to work out.
> >
> > Do you think this can work?
>
> This sounds similar to something Heiko suggested to me, and I agree
> it could work. It does seem like a pretty painful solution though,
> in terms of needed additional code and complexity to basically just
> tell Linux "hey you can't get this regulator yet but please try
> again later without our involvement".

Well, I would give this a go and see what you end up with. The nice
thing with this approach, I think, is that we get a driver and can use
the -EPROBE_DEFER mechanism.

Another option would be to explore using fw_devlink/device_links, to
somehow get a notification as soon as the regulator gets registered.

>
> To that end, I've tried working out a regulator-based solution to
> it, where the rockchip_pm_domain driver registers a "proxy"
> regulator for each power domain that wants a regulator, with its
> supply set to the name of the real `domain-supply` regulator.
>
> The logic behind this was that the regulator core runs a check
> for whether every supply is resolved before it turns off unused
> regulators. The hope was that if we register a proxy regulator
> and enable it immediately in the pm_domain probe, then regulator
> core will handle the actual dependency at precisely the right
> time, namely before it checks to see whether any are unused and
> can be turned off.
>
> As I discovered though, this can't really work. The regulator
> core will in this case just set the supply regulator to a dummy
> regulator when it's enabled in our probe function, and later
> supply resolving passes are then content that this supply is
> resolved even though it is a dummy supply. There does not appear
> to be any way to opt out of getting this dummy supply.
>
> So knowing that this doesn't work, I have another idea, but I
> feel like both the regulator subsystem and the pm-domains
> subsystem will hate this: explicitly create an order between
> the pmdomain idle check and the regulator idle check to make
> sure that the pmdomains idle check runs first.

I think those kinds of dependencies are better solved by using
fw_devlink/device_links.

>
> This would set in stone how the kernel worked previously for
> kernel users that relied on this, but is a conceptually
> unpleasant cross-subsystem dependency.

Then there are other resources cropping up that we need support,
extending to more subsystems. So, no, this does not seem like a
scalable solution to me. :-)

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
