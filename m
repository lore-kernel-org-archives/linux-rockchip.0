Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94CEC021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 11:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwrgdEQeidIihrUhBUkKVuz3+AiYLuW30bndxNCoFBE=; b=HEVDorAbApY7H2
	lxV2tDxlks1EVwpqJjBawWgBj766l+xGiPe25kcvU8QOBCrG6UGDaEwhSVCs2U4Z/VdEtQfhuXqXk
	1DDqcmVedHdu9hsGiszctguMoy9Ym1wj+Oy0j4EBbi4jIBKsCcsOUpFbHVV4puv4KDe01RcNZ9iHJ
	6dsdOTlc8RmjriFTcrQuG1pLXHY0wd+wZCE5Ab7CbD/4Nq+ep8tU8QRMTkxmZ7bqCsleC2vXAmKjl
	j0TyMzLPBnEEgNCCoiKjeWZ5esWa7NJU9ukzMR1Y8w13+PD0ABCFieISVuX3o/peOLqIlZWdKkt4P
	qqDOhzvw1GsCtABqEW/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkicO-0000000CWV2-2zEm;
	Wed, 19 Feb 2025 11:51:56 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkicM-0000000CWUL-2b4X
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 11:51:55 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e4930eca0d4so4698388276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2025 03:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739965913; x=1740570713; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R46i4neiPPtDwdv3LQifChV+vLwO3rJdmLscnT0rln8=;
        b=Dng8v76ck8WhhS3i4F9pQ3E7/9VjJqxJzbreESPojRgYT+cyFnE0MQc5m+/yKtOF4y
         ArUgV35G/HVFDSzMczY88V+QEtoHhZ2LYFFNQ+8Z2Kd/PiXCRnf0xw9EfFh/0v0lDvV3
         LFtVjIR66g3L26lIiIP64pxImucGO2uCD4U6Vv9tN8Zl9P4e0J+MncHB0NVDz+hrL8Ej
         GFndJJG9GYNUVmyfcagRnLFh4oAQx+Zu3rnWKDkcVZ7DOHgRMrVX6d3Rt+Z28bEDCcii
         s7E5x0JfmrbdoAuylk9zENKZinXPogWd7f65fwsmwVSPxcVK/Tnfz6kgzqN8989lIfVr
         0vNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739965913; x=1740570713;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R46i4neiPPtDwdv3LQifChV+vLwO3rJdmLscnT0rln8=;
        b=gvBXOZmnC5E44hU8aYb8EZeUMEWymz2Oa1qUPaBozwappmSSJ5TKMor7SyJuHMgA7h
         Y8gs+tmRMDk43oCKvOjb+pVFnxFTi/k4KwIqP/+wDtDF9lHCpwwGmThgKKfHR6Df2adB
         hV10EhJH2wT9Fb1sc0PDcf5qSMHmj29StBmo2NLVYT0vvedMSpgV0GoMkhMT3CHeAqDo
         LTenjTNDCbBNV2j2ezrQp4l6p3dsndM2hdk3Zen1+vf0LkQoIp758ce74xL9pc98H9rz
         TqbVeVh4ogZdO80Ec9GRX0TKZcg0Wvh/KKWq6PHAetnL4jdrAOekwC7oCtUjTtyHuFHH
         XeXA==
X-Forwarded-Encrypted: i=1; AJvYcCUofahHIcA5awqrBb4q9YnRWsI0CvNaLlaAnIn7VvVeGCJr93/6S+xoFyikCWzvvNbkcXuzpJrh/nIQmA7NNg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvFKfmnZEcr7U9hErI7E6W07TBOzHMp/L5AR2o8F5h4G5yEU7k
	cUAx98ObbMXEXIJlQIre2qz/Kby0z/UlNEp9+/McAQrtBeEhwq+bGJ4nAWAlmV7EkMJGV4Rk0/s
	wc2WCDoaIMxGeqrdnDapkGcpsU25zwrQN8YvHSQ==
X-Gm-Gg: ASbGncsoj04nY2tK+i37jb3NgmDmkdOsCrdbCmnoUbwKctMb8a2nUmrybZw5X3Bm6MX
	sBtlHepAkgx9d854a8vMlKlFRpRyLKPx6qdQZM1d5t9/82iKlebQ6B0eQOGDFOKKRU5i+gvt9BQ
	==
X-Google-Smtp-Source: AGHT+IF336n6iz9MKaV4OlZuLX65CGYiKzqQpe2IHd1yE/zIFjichwdqnXiqfBQCF3WNembgFV6LWh1J7NEVULKdLeg=
X-Received: by 2002:a05:6902:161c:b0:e5d:b9a0:a14a with SMTP id
 3f1490d57ef6-e5e0a0c07famr2649054276.24.1739965913150; Wed, 19 Feb 2025
 03:51:53 -0800 (PST)
MIME-Version: 1.0
References: <1739926689-151827-1-git-send-email-shawn.lin@rock-chips.com> <a0b41ce7-4ab8-4baa-adee-8b5717326729@arm.com>
In-Reply-To: <a0b41ce7-4ab8-4baa-adee-8b5717326729@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Feb 2025 12:51:15 +0100
X-Gm-Features: AWEUYZkoxtEGbbZwqqZGnxCLVjqAx-yQQXpJMgP8dLv4LTOLDOVvgXG75zeBKTo
Message-ID: <CAPDyKFr6CLzXjXW3SiiE0y4kf6nDgfLppexFtAZds=jOyqtWHg@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: Check if smcc could be handled by TA
To: Shawn Lin <shawn.lin@rock-chips.com>, Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_035154_659352_1826AC2B 
X-CRM114-Status: GOOD (  22.81  )
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

+ Sudeep

On Wed, 19 Feb 2025 at 10:34, Steven Price <steven.price@arm.com> wrote:
>
> On 19/02/2025 00:58, Shawn Lin wrote:
> > Non-existent trusted-firmware could lead smcc calls into some
> > unset location which breaks the system.
> >
> > Reported-by: Steven Price <steven.price@arm.com>
> > Cc: Steven Price <steven.price@arm.com>
> > Suggested-by: Heiko Stuebner <heiko@sntech.de>
> > Fixes: 58ebba35ddab ("pmdomain: rockchip: Add smc call to inform firmware")
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> Tested-by: Steven Price <steven.price@arm.com>
>
> Although one note below...
>
> > ---
> > Hi Ulf, this's a follow-up patch fixing the issue Steven saw.
> >
> >  drivers/pmdomain/rockchip/pm-domains.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> > index 49842f1..27a5c68 100644
> > --- a/drivers/pmdomain/rockchip/pm-domains.c
> > +++ b/drivers/pmdomain/rockchip/pm-domains.c
> > @@ -572,9 +572,10 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
> >       }
> >
> >       /* Inform firmware to keep this pd on or off */
> > -     arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> > -                     pmu->info->pwr_offset + pd_pwr_offset,
> > -                     pd->info->pwr_mask, on, 0, 0, 0, &res);
> > +     if (arm_smccc_1_1_get_conduit() != SMCCC_CONDUIT_NONE)
> > +             arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> > +                             pmu->info->pwr_offset + pd_pwr_offset,
> > +                             pd->info->pwr_mask, on, 0, 0, 0, &res);
>
> Note that if the conduit is SMCCC_CONDUIT_HVC then this will still
> attempt an SMC. I'm not sure if this situation can happen in practice.
>
> There is a (horrifyingly complex) macro arm_smccc_1_1_invoke() which
> will automatically use the correct conduit, and even copes with the
> SMCCC_CONDUIT_NONE case (by simply failing the call).
>
> Steve

Thanks for letting us know!

Note that, arm_smccc_1_1_invoke() is also a bit problematic, as it
doesn't compile with Clang-20 and Thumb2 mode. See commit
885f5669f2ab.

[...]

As the current approach seems fine too, I decided to pick up the
$patch as is and by updating the commit message, according to Sudeep's
comment.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
