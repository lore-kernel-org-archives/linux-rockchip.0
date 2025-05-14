Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E47DDC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 15:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6TDnGGUbc+bIM1rH+ehZaDskmDPp7LwL4XV7j9xkJo=; b=EQWWZb6Mr9wmq4
	UTut7g+Cl5fAj83ecgWtiHTyi9pxAhOklMWqv3R6Ovds2JSrTRsqzc0WMK7lo3J1s8+on8RV8u5zo
	8PDmmlVEhUHag+RtzaoZ2U+qNLc/jeDgC005FapZus9L1Iq/CFS8Wg74B4C0HbOkslmJMG6GcPXEk
	wqhdwtCUeH6rS2LyxkmByFEgbDjXzfIWT12Swt0t8GA+FxWOLn1FAt0rToCpB/5UrhMuZwLYgeEco
	vtpy/GJgdfle9xMj3IXbaOsqbHVyByeryzi2hm28XUU0jXsIP1vYzFxZoAaO/TjTk1IIIsVjnzO8O
	uwGASQIHEsrgzUmtA2cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFENQ-0000000Fe67-3NNF;
	Wed, 14 May 2025 15:50:36 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDnN-0000000FXff-3D8T
	for linux-rockchip@lists.infradead.org;
	Wed, 14 May 2025 15:13:23 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e72a786b1b8so1058615276.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 May 2025 08:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747235600; x=1747840400; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J8jj6jRyHpEahWPL1bxwBIDklu0Ui7Dm+eEH5GeKLrc=;
        b=EBPKuSDE2dIn9wEsDTI0NBMcNQAtC3PLS4enmUi15dTuIrLS5lPBaKOfWNK2oegR2M
         pf9auUegpr/1JQnwrje7o5qN8ArjXMccKnpuRCrX0BYBUwrb+sYrAflkg0M4FYwoZDLp
         00KAUlag3HpC+yrfvjq7sqGeEeh1KTqhDF09GZ2xirQ1oTlv/TQ2a9TW5EVg44eTcDce
         bhZf8qeKdLyyQWSJqBS5fe33AdxVp6cOahRQVvMnJ9gpoU1JtLuEnE/l+1THZLWCXija
         0/TXYOLjRcRCYOrat6W2kCzhDgyMHvouukBjyqU4I0kVu4DhAgSXk4IBbmaXQpYaVm1R
         cP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747235600; x=1747840400;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8jj6jRyHpEahWPL1bxwBIDklu0Ui7Dm+eEH5GeKLrc=;
        b=Qgoj13Grlb1escOSxAE7qzFGqTqXfeifsXB2LDeXRphgYlB7sDEDgQrhZJh+SL2PJ+
         sYyLuI5sNyTHzBa+TNxMvFDytlre4AHPYK3gdTIppguGsp10s2wKOdWGbJyE4dZ40Sfz
         CVhlbFWw30Il02HAKl7WQT2a7vdCRGQtEcfUh4v7YqwvNBneBtiQuq27Y9o7UJ5p8zTq
         ZNfyZVCwp+LYZE02U6B/VzELkUBHJQlZfgB3hgbFbhv61QjB4wKTHzJGYmvQBn7y44N9
         gV/6fGujo5F1s0v5xlRzw+/2RoMNlb4E1nw2q93ZvGjd19+sSJsY4IsmlKFncTUbknhp
         b7GA==
X-Forwarded-Encrypted: i=1; AJvYcCX2ApU18wSTew2LB4NDiG8GrMBINtTTEVZ05TdLwlgEDFj9qKIxiG3yeUrOhx8PemMBKTApM9UcQwrQ1O9sQA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNHTKPYPzTRqiLyJGSgtnNUREKm1ABWKNPbJ7Iu8PvGJgRQyoP
	Mj0/9NTW4yg9xCu+Kj08naRpgRLBAw+I+KmFDfsRFCANGOHH5E0dTneVK92vezbEiUV9prG2MA0
	xEwGpOuqKxrIVuFR38rM7V/kGRdnn+zBFTds+AA==
X-Gm-Gg: ASbGncuJ5eSEL6WWAWdLluOZworDIY35H9tBLekNJE4W+gBcAN+bMFWCuC+jT+3cA/i
	KLyEKkZU+BKwYMHFZrj2OJjzSAinPewNfP+m6nk/HDEfR7nvUvo433hea+IfVSYIeNDszPdS633
	ek3oxkfX1rv9QKUTVt9Qh0AOH/my78Veo=
X-Google-Smtp-Source: AGHT+IHfG4IdFhrynlohLcjINUvWUYxudJNltoIen2Onw6R0djfVvCV0/FdSfcdQNubeHC89QVS5keitmH669vIpZ7M=
X-Received: by 2002:a05:6902:2389:b0:e78:f538:1c54 with SMTP id
 3f1490d57ef6-e7b2bde5e59mr11105285276.4.1747235600229; Wed, 14 May 2025
 08:13:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250423-rk3576-emmc-fix-v3-1-0bf80e29967f@collabora.com>
 <CAPDyKFp5N23KCZwOTba6vGyk9eaS1-SjSqY52FfPDng-bahn6g@mail.gmail.com> <6154950.lOV4Wx5bFT@workhorse>
In-Reply-To: <6154950.lOV4Wx5bFT@workhorse>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 14 May 2025 17:12:44 +0200
X-Gm-Features: AX0GCFtDU_yTZnx-ehoHmNHeQ7h0DL35V2e2RHKt0pgXDptXnpjYmnfRRnWBnck
Message-ID: <CAPDyKFpohUibXp_ReVquAxYHY7vZ28P1XmOCTU5GPQdLKYEaNg@mail.gmail.com>
Subject: Re: [PATCH v3] mmc: sdhci-of-dwcmshc: add PD workaround on RK3576
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_081321_824224_821F3188 
X-CRM114-Status: GOOD (  32.32  )
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

On Tue, 13 May 2025 at 16:27, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> On Tuesday, 29 April 2025 12:06:16 Central European Summer Time Ulf Hansson wrote:
> > On Wed, 23 Apr 2025 at 09:54, Nicolas Frattaroli
> > <nicolas.frattaroli@collabora.com> wrote:
> > >
> > > RK3576's power domains have a peculiar design where the PD_NVM power
> > > domain, of which the sdhci controller is a part, seemingly does not have
> > > idempotent runtime disable/enable. The end effect is that if PD_NVM gets
> > > turned off by the generic power domain logic because all the devices
> > > depending on it are suspended, then the next time the sdhci device is
> > > unsuspended, it'll hang the SoC as soon as it tries accessing the CQHCI
> > > registers.
> > >
> > > RK3576's UFS support needed a new dev_pm_genpd_rpm_always_on function
> > > added to the generic power domains API to handle what appears to be a
> > > similar hardware design.
> > >
> > > Use this new function to ask for the same treatment in the sdhci
> > > controller by giving rk3576 its own platform data with its own postinit
> > > function. The benefit of doing this instead of marking the power domains
> > > always on in the power domain core is that we only do this if we know
> > > the platform we're running on actually uses the sdhci controller. For
> > > others, keeping PD_NVM always on would be a waste, as they won't run
> > > into this specific issue. The only other IP in PD_NVM that could be
> > > affected is FSPI0. If it gets a mainline driver, it will probably want
> > > to do the same thing.
> > >
> > > Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> >
> > Applied for next, thanks!
> >
> > Kind regards
> > Uffe
> >
>
> Hi Uffe,
>
> I was wondering whether we can get this into 6.15 as a fix as well, as 6.15
> should already have the genpd API additions this requires AFAIU.

Sure, it makes perfect sense!

>
> Fixes tag could be something like:
>
>   Fixes: cfee1b507758 ("pmdomain: rockchip: Add support for RK3576 SoC")
>
> but may need some more flavorings to keep the stable robot overlords from
> trying to apply it to 6.14 and earlier and then starting the robot uprising
> in your inbox when they notice the API is missing.
>
> I originally left out the Fixes tag on the rewrite of this using the new
> API because I wanted to avoid those awkward backport scenarios for a fairly
> freshly supported SoC, but it'd be great to have this in 6.15 because that
> will be with us for a full release cycle to come.

I added the fixes tag and a stable tag to point out that it should be
applied only for v6.15+.

>
> Kind regards,
> Nicolas Frattaroli
>
>
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
