Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 322F5C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 22:00:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEC78611AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 22:00:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EEC78611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFz6OfpX/OZ82kaZuPgAtQL0NhzAL5P3vHlI/J1HaWE=; b=QwpHwUBFXb8dCz
	xKiPuJ2L3U/2Ks5opPhvnTSFhDq1C30+7mslOFQU6ZO5TYNnAIyKxm8g+9VDHRQMYZ7lCaivsa8zq
	mwY2JrcU1/shfMUlWCMqurgZecwaeHdfzTB73OyN5012hP4OCooMuOn8D7Q6XDujoD3MGBnekCiwS
	D5wGx1JXszA45U2Cfd8bnm9FmeVfNQ6NPRkqEeASd+NoVQ5QGP8m3Hqj10Ia4esvYGLsKWLjPGo35
	8xMbD7NqFEEdISQWr+NE1n5tyeFg07GE55KSYPKfki2UTQ57Sz8homHjoXhI67mGZRD3ubgI0SsFR
	nTau9J/x2xKV1EzCBpDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsud6-00GLwe-11; Mon, 14 Jun 2021 22:00:24 +0000
Received: from mail-yb1-f175.google.com ([209.85.219.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsucs-00GLtk-LJ; Mon, 14 Jun 2021 22:00:12 +0000
Received: by mail-yb1-f175.google.com with SMTP id b13so17565079ybk.4;
 Mon, 14 Jun 2021 15:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TZ9IOmDtrZ7ni16mZAp2GrXLaKHRdUgj/PRjU6h2E4g=;
 b=hyJC88zcRBbPbmWSBxuipd4CSWNL1IvjA7MZr+nsTkzyjCH5iRWCnlMNpIRqS9el9c
 XtD8+XTXh5LqEx9SzMAm0LEcwpuklJ/GLTHUD0d1dwzRL0YXJcW6sDmRBZjCpkfb6wmv
 feY+aawuh7VyjZz39qiMoMbW4BzFHVyk6lrUx+HNkXCcjHuQxTgZCo1jE7jjy7F0scQz
 ZkFNTpUmQ61KIWhkjl4KzKvOxgFssx/2eZzBgXnY5jYkF8jKyFJ4MxwRnMu1nCJD8EsW
 zL9xKAm93+/jb6Cu1MinBAUjdETuB1JKJdb/lw6i6Jgmf/RhoOq48OHToUgxlTh7jKKM
 sTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TZ9IOmDtrZ7ni16mZAp2GrXLaKHRdUgj/PRjU6h2E4g=;
 b=eUPAld0jDfbYFgPjE7Q7CF29vTIvzd+d3aMl3Vf/ZjAjc3YkSKorbth2w0JVj0P+/K
 FcVZnRK7tMXfXtNNWSUNMh4Rqc74PCtSvxOEyo010dQyDtMGtjJJLEWH3Ez8l4vKHHMH
 mIC4AmFd9mGb6/2RrJnRLuIkf1U3djUEFFuuDeJxToYuWQ7wBpuTxfHgppKutUztM3cs
 yLWdJmhfhguXxUfK97zLaVz7zz62ZCXexEgOnaXq2FzJSdSdcvXcP9Y1emS+OaEuIrAw
 Tirc+zqlrkk96tGzrLx+m8DO7NAZEvBozMBsAZCgD2/mc8PYnE15mRhO3XnCq2nG5hpW
 Dm5w==
X-Gm-Message-State: AOAM530ukMysWgTs5GNxBYej9sKwRJ52S81ueI9mzRI49yYSrKOHlXK/
 33c0tym9Y+xutZPOPwiZ708LmySklU/oM2h8L2s=
X-Google-Smtp-Source: ABdhPJwM4JriTTGxJctcBS5AHLq3/0YqXry11po9fnxM/+M939A6AkOG4ffHD4uRJYcu+d1NLAf1LXQjWPejUAOxq8E=
X-Received: by 2002:a25:db93:: with SMTP id
 g141mr28180078ybf.141.1623707944462; 
 Mon, 14 Jun 2021 14:59:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
 <20210614154359.805555-4-benjamin.gaignard@collabora.com>
 <19d8cb97-d715-eb5f-5b2c-0c273937fd00@arm.com>
In-Reply-To: <19d8cb97-d715-eb5f-5b2c-0c273937fd00@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 14 Jun 2021 17:58:52 -0400
Message-ID: <CAMdYzYrD=qtwAPc8tNRB8Ko-f_zhOVKiOsbgPPqpAi2MrDzSSA@mail.gmail.com>
Subject: Re: [PATCH 3/4] PHY: rockchip: USB2: Allow 64 bits reg property
To: Robin Murphy <robin.murphy@arm.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, kishon@ti.com, 
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_150010_727648_7FA67EE0 
X-CRM114-Status: GOOD (  21.19  )
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

On Mon, Jun 14, 2021 at 1:09 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-06-14 16:43, Benjamin Gaignard wrote:
> > In rk356x device-tree "reg" property could be coded on 64 bits.
> > Change reg type and of_property_read_ to make it works.
>
> On platforms with #address-cells=1, this isn't going to do what you
> think. Worse, it's not even going to fail, because you *can* read a
> 64-bit value from an address cell with a size cell after it...

Apologies, this was a hack and in no way ready for submission.

While I've got you here, what would be the best way to handle this?
Since previous generations #address-cells=1 and #size-cells=1, where
the rk356x #address-cells=2 and #size-cells=2 and we need to account
for both of them.

Thanks,
Peter

>
> Robin.
>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > ---
> >   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > index 46ebdb1460a3d..45518f96d7217 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > @@ -1068,7 +1068,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
> >       struct rockchip_usb2phy *rphy;
> >       const struct rockchip_usb2phy_cfg *phy_cfgs;
> >       const struct of_device_id *match;
> > -     unsigned int reg;
> > +     u64 reg;
> >       int index, ret;
> >
> >       rphy = devm_kzalloc(dev, sizeof(*rphy), GFP_KERNEL);
> > @@ -1098,7 +1098,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
> >               rphy->usbgrf = NULL;
> >       }
> >
> > -     if (of_property_read_u32(np, "reg", &reg)) {
> > +     if (of_property_read_u64(np, "reg", &reg)) {
> >               dev_err(dev, "the reg property is not assigned in %pOFn node\n",
> >                       np);
> >               return -EINVAL;
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
