Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D06DC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 18:40:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E8E56108D
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 18:40:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E8E56108D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IZJsAKb8XaCuXzsKMV3iANhEUi+cRPWNJS63FrqmyQ=; b=hD4zHCrIQtixJq
	4+A+EEvK9D6w7u8eXq0LrOPmP4V4Vz480EfFHlX81Vzsjz0qTTou6l9/SCiyzon/spH6iUg9qgnWn
	NT4Bme2gGlblO0h1kcNn90AHAvqK7vnAZN31ZpPVahLBD5wpeknVCvTSUaE9CO7TTRk4kKj0FvJ3P
	aP5BBvRUhQKCJAfp1+ditUYW6pU0xwv1DXy4Ut7ZYaA1mIhmE5AM2t9GKJFGToDgKGU8iLTSUBZBY
	ERd3NtlUFl3lf1SW567SA9Vwoq/lip4rY2nWG1CkjS9zOd1vNR7nVSRiO4rhw7P4yg4VEgoIiejxP
	fZVmlIWxiQZUhJTd6AyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqKBC-0054O7-EJ; Mon, 07 Jun 2021 18:40:54 +0000
Received: from mail-ua1-x931.google.com ([2607:f8b0:4864:20::931])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqKAy-0054Ls-Uw; Mon, 07 Jun 2021 18:40:42 +0000
Received: by mail-ua1-x931.google.com with SMTP id z13so5309947uai.12;
 Mon, 07 Jun 2021 11:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zN+Q8dgsMzp5svrusLksGWwBggAOjvLUcL+jRhmL2dI=;
 b=SQVA8E6RjJLNBOL9dbK69hBHUkKdfRviB4kGidz9fKEEiBJ6C5ZZjhfjIdB1lfvKMI
 QWGNtGaV1E7wraHhURiulfcu4vYnfkdMdJqXR2b0BfUOFdBQdc8wGaqFuTJEdujkAGx4
 n2k+Evx8s5Cqhdn47fmyOjzQtQQW4WVifnuo5k4HWsCcJiETqIDldhAhRtyfPyE8iQB5
 3++KbIcSDtIrL+QJ27kLeiE9oz3PHIG1yA3PvDNB0/LnqMKrRfs6iI9shhxN0SmfZB/P
 Nx0ECO+UjFzcKKTww2Bu6Ace9rab1PQOB4BCI2mwbJ6u9GDzqw+b2uwQlMnkKhtosu9T
 fr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zN+Q8dgsMzp5svrusLksGWwBggAOjvLUcL+jRhmL2dI=;
 b=TFvvhZRthm5TaLbvhXxATPMSz+HT5/H/AqrbCf5LmesFRX2K3v7yKu5bFEmCN24qSb
 aJ0Ot3DTiFHQqRayFoGzklkolkrE4PtEgIavHsF9w5A2m4SUDfBQMG7HMBzki5PybD1R
 sFwHn4TCEavvucUvvOBW34M0nCivBOOwOun7w5xkGxM7L+GQAkG4NsxZpTWuko/CAImj
 W8Bc5IeH/aTJjaerP1uWP44ZV5arAVEYDeaxX7VJyZ24bCiPItE7/wxKfefbtfLYyNs0
 TjWNS5Xcu7blChsfMHrlYIRJT1NnYeLio2vueiATlGq8EltSjU0vQVdZMZ2s51jbHMlw
 40lA==
X-Gm-Message-State: AOAM530D8zov7ydIn9QOayl7/IJ3eJA/dAT4ZOdL2TgN3xqqTmLhvsfl
 1vn8RnNMUML6porqnSQvubzSW6uQ8u/ZMNIh2As=
X-Google-Smtp-Source: ABdhPJzmoZOJiKTKN2ANcor0bAuDPWhU5HM92R3OmDGVNSrGSdQr6wQRhWdD5xKfwOVxUsMyDCBnTWnkBESl93cfZD8=
X-Received: by 2002:a9f:31b1:: with SMTP id v46mr10684948uad.22.1623091236278; 
 Mon, 07 Jun 2021 11:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210602080212.4992-1-jrdr.linux@gmail.com>
 <8027801c-5260-8b1b-c758-fdfb8c18e9a7@arm.com>
In-Reply-To: <8027801c-5260-8b1b-c758-fdfb8c18e9a7@arm.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 8 Jun 2021 00:10:24 +0530
Message-ID: <CAFqt6zYh+tAdpDzwQY7KhUSq2t-ZkMJW7P51pX6SnYACRETofQ@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: defined struct rockchip_dp_dt_ids[] under
 CONFIG_OF
To: Robin Murphy <robin.murphy@arm.com>
Cc: hjc@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_114041_042343_9898072D 
X-CRM114-Status: GOOD (  20.01  )
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

On Wed, Jun 2, 2021 at 3:37 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-06-02 09:02, Souptick Joarder wrote:
> > Kernel test robot throws below warning when CONFIG_OF
> > is not set.
> >
> >>> drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:457:34:
> > warning: unused variable 'rockchip_dp_dt_ids' [-Wunused-const-variable]
> >     static const struct of_device_id rockchip_dp_dt_ids[] = {
> >
> > Fixed it by defining rockchip_dp_dt_ids[] under CONFIG_OF.
>
> I think the __maybe_unused annotation is generally preferred over
> #ifdefs these days. However, since these drivers only work with
> devicetree anyway, it probably makes more sense to just remove the
> of_match_ptr() uses which lead to these warnings in the first place.

Ok. Will remove of_match_ptr().
>
> Robin.
>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > ---
> >   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > index ade2327a10e2..9b79ebaeae97 100644
> > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > @@ -454,12 +454,14 @@ static const struct rockchip_dp_chip_data rk3288_dp = {
> >       .chip_type = RK3288_DP,
> >   };
> >
> > +#ifdef CONFIG_OF
> >   static const struct of_device_id rockchip_dp_dt_ids[] = {
> >       {.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
> >       {.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
> >       {}
> >   };
> >   MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
> > +#endif
> >
> >   struct platform_driver rockchip_dp_driver = {
> >       .probe = rockchip_dp_probe,
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
