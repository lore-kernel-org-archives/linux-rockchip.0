Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77C4D44C7B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 16:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2dXNnlGLBIM56SxYKtbi+94m+Zu+1PUhyGAZOBVT5U=; b=KT2SxIWNR33ZKo
	8e1I0RxBqF0m4CnBto5r5uneRhsVWnV8jjVdM2iC25+BZ0uBvrWcqaq1lQ3H6K2P8I3IYy1OTttKd
	UUUyOz7VJwL5ukn/azzhqvi3ynakkQE0QH7OmE0AqSCNnY6f+89QuAmIjK6bpcF9aagOzEHiaScIF
	3cpWzIPG/VYZ8N5ku7awC52hvzmSD1jmI4464n7K2U9uR3yadNYzpUPI41bUYMnA2L/2YU9B6k2qN
	PJPz38f/4THwiZUuLj5iKTf7xGP2u3L6PCe2v8Fxs7oJ7S6gLNw0mc+ycywYKl3f9CiWHFEB6IUoG
	gNMrqq7aD+k5LKJvPqgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgQ92-0000000CgLf-2i2E;
	Thu, 15 Jan 2026 16:24:24 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgQ90-0000000CgL7-2SRl
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jan 2026 16:24:24 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-3831c18b23bso8538841fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Jan 2026 08:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768494260; x=1769099060; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z6eQcDBBoiOSc1c+K4AoT/0VH8sQq4tUq5ijhJiu4pU=;
        b=Pb3AyZ3vdtJe8P3naqtdRhTR0ID12Eu1ipC/G78pTAP/YHgxVc2+nt3Xow6KqTGllU
         2CzTM4lUSzGi/aPju+B8bSSzW9UD8CVeSyZaToet4S8t4n7oWnGmJdU2jiz0CoryW1IC
         IP3tphwI2El06+XRWPh+sI8FzePeZ86R6LHkZFJNdezDQuH8TavQ7wZqQA33lwP8OwE4
         X0cdgNR/9ptwWeLO0fWhwTGCbgiDNeRkHiySPGLeZ8xZ1X9YBMUkp5mOPhC6jl2Dkd57
         htbCfbGQn9XNuBtyDDEt8eeKmgDlTpd0TanzNmiJA2peE5JJOu9E/OvSjnPVLwv7fMIe
         mtuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768494260; x=1769099060;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6eQcDBBoiOSc1c+K4AoT/0VH8sQq4tUq5ijhJiu4pU=;
        b=Oivm65fTKbOE5a+y/LV6FKdoK9IomXLLOFxEGmxCw9FMDoqya0VCmujjP32JAbBMoA
         6GgD81sqCtdbCIS/9iFkY1vXPikbCoSjdnJ0aaGZ8mfPabIOj8+9oiCpHdIasXzOBEOh
         FmhRhr5ZchC4nHPpfGkrsil9a6LG5WGogjYB5gxaGIE8bbnlXojU05YvrWEGAjBorUW2
         fPvpIW6GeeO+kSzCrebQhKWJDfJMSxDdT7NWAApmnf+84jTEC0sf4ab/tPaWj+Wr4fNV
         sZDZGIB27bZA9PmrSDQYHzF4ZwKB5zrLTVHk5XrxMAJA83oRPobAkf697VPqynj6kqOH
         eypA==
X-Forwarded-Encrypted: i=1; AJvYcCWw2/zKQwzNrwZN3/AgyQZAHwuBVjQAa27/F/0fZ/+6+8Q+1+ReVBy4670YrepQ0r+VLRJngktg9YT+W7uAYw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzf4yXwfj4zGsPzrAygn/RuNgHkA7s4uxR58VxE2FoxB0A/tRZm
	bkWBBN7caG+ZqajMQ3eeDnsKFGuSMQB1gJYS6XXDIbfR+fHY9dTbmL5y2DZ/VwYWRrR5+eBMMby
	g5KeXjx+gbRYh05ofSBbfPTuZzynEsZg6i0pDgSkjyQ==
X-Gm-Gg: AY/fxX5KOVbV8NAVg8d+yuRUcm45DPj4HanRQmxYgrQ51hs7HRly4XqFB71AyamfK7I
	QJR0GnHFPmcCcE3+BdVefmgQWkWWTgLxcGab1DV76frwgyYACYMF3rwFsTh6SmpU/3ThMlQgDSE
	KNEjpJdcr0t/5yowhZEvgEYvCMhZctN9utDaDe2DiZNQTQTT792c+2L9rkH2+VN9WkuxawmJfy4
	4oP1eUDcukXLyIWko6SS/22EqMwr91alEWBYroM9pfDZ+st16roRxfLiIPYT45uKdWP0Ixs
X-Received: by 2002:a05:651c:4397:10b0:383:1962:b8ec with SMTP id
 38308e7fff4ca-383842ed669mr838691fa.33.1768494259450; Thu, 15 Jan 2026
 08:24:19 -0800 (PST)
MIME-Version: 1.0
References: <20251216055247.13150-1-rmxpzlb@gmail.com> <CAPDyKFpx-hxv4QVW+zp8Zbd=-9vvmwsVJ2adem6V1gWLQteYsQ@mail.gmail.com>
 <aWRG8w8GxzV9gpUK@venus>
In-Reply-To: <aWRG8w8GxzV9gpUK@venus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 15 Jan 2026 17:23:42 +0100
X-Gm-Features: AZwV_QgAedw6OVodqeBfNnhbwFIsw1Q42_a8HBS3WTSHHw6GBLICdo8b4ARh_kY
Message-ID: <CAPDyKFo49sptbbESdr8a=6E5KL-bDmH9nFJPrigjM8piwecVkg@mail.gmail.com>
Subject: Re: [PATCH v2] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
To: Frank Zhang <rmxpzlb@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	linux-pm@vger.kernel.org, chaoyi.chen@rock-chips.com, 
	quentin.schulz@cherry.de, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_082422_647834_E1A04DFE 
X-CRM114-Status: GOOD (  35.32  )
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

On Mon, 12 Jan 2026 at 02:11, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Tue, Dec 30, 2025 at 03:07:37PM +0100, Ulf Hansson wrote:
> > + Nicolas
> >
> > On Tue, 16 Dec 2025 at 06:53, Frank Zhang <rmxpzlb@gmail.com> wrote:
> > >
> > > RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
> > > rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
> > > driver register, it will resume rknn_iommu.
> > >
> > > If regulator is still not ready at this point, rknn_iommu resume fail,
> > > pm runtime status will be error: -EPROBE_DEFER.
> > >
> > > This patch set pmdomain to off if it need regulator during probe,
> > > consumer device can power on pmdomain after regulator ready.
> > >
> > > Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
> > > Tested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> > > Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
> >
> > The problem with the child-domain using a regulator has been discussed
> > before [1] between Nicolas, Heiko and me. That said, I have looped in
> > Nicolas to allow him to share his opinion about this too.
> > fauxbus
> > My view on is that I would prefer that we try to address/fix the root
> > cause, rather than trying to paper over the problem as what seems to
> > be suggested in the $subject patch. Or at least I need Nicolas/Heiko
> > to confirm that they are fine with the $subject patch, before I pick
> > it up.
>
> FWIW my thoughts on this:
>
> I believe the proper solution would be to acquire the regulator at
> probe time how it is usually being done in other drivers. I think
> this requires restructuring the driver, so that the sub-domains are
> registered as sub-devices (e.g. via fauxbus) to avoid the
> chicken-and-egg problem of the regulator for pmdomain1 needing
> pmdomain2. As this modification is most likely too big to be
> backported I think this patch should be merged for now:

Fair enough!

I agree with the above, while perhaps the auxiliary bus is probably a
better choice instead of the fauxbus for this case.

>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Cc: stable@vger.kernel.org
> Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")

Applied for fixes, thanks!

Kind regards
Uffe



>
> Greetings,
>
> -- Sebastian
>
> >
> > Kind regards
> > Uffe
> >
> > > ---
> > > Changes in v2:
> > > - Simplified the regulator check logic, trun off pmdomain if need
> > >   regulator.
> > > ---
> > >  drivers/pmdomain/rockchip/pm-domains.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >
> > > diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> > > index 4f1336a0f49a..997e93c12951 100644
> > > --- a/drivers/pmdomain/rockchip/pm-domains.c
> > > +++ b/drivers/pmdomain/rockchip/pm-domains.c
> > > @@ -879,6 +879,16 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
> > >                 pd->genpd.name = pd->info->name;
> > >         else
> > >                 pd->genpd.name = kbasename(node->full_name);
> > > +
> > > +       /*
> > > +        * power domain's needing a regulator should default to off, since
> > > +        * the regulator state is unknown at probe time. Also the regulator
> > > +        * state cannot be checked, since that usually requires IP needing
> > > +        * (a different) power domain.
> > > +        */
> > > +       if (pd->info->need_regulator)
> > > +               rockchip_pd_power(pd, false);
> > > +
> > >         pd->genpd.power_off = rockchip_pd_power_off;
> > >         pd->genpd.power_on = rockchip_pd_power_on;
> > >         pd->genpd.attach_dev = rockchip_pd_attach_dev;
> >
> > [1]
> > https://lore.kernel.org/all/CAPDyKFr=GwJ+cO3cW4Ed_LsS=q_JtuuQPDweDpLgDO4hBLFXUA@mail.gmail.com/
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
