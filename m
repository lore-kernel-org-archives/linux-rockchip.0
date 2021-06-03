Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 081DEC47082
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:24:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6D20613DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:24:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C6D20613DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vbl0EQnpdwz6+No0BYUXg0ZdNZmqCEiAng0oSHmEDo=; b=HHYQwMYhI7YQwq
	YQcO1cWpLCWZCKXkezJT4Fq+oKw07O8E42GcATAvvTavcQQbw6nJNgs/ipi4dDkq762fAw5rmqhS9
	xGek7xG0WE31qdDvkShl/iCf35CYWgj5Se6vNQxvayn7AHY21lgajMu1hwIUYZBddkbfWwJcyq3DJ
	FF2ms4GrNVnysBY5UxZilJu5bOmv/cejT23pVDbABCSGJ5fmoRDTNCVXs+TDX1rovyia9D+EO6y5u
	+mx9/eF/N9TXmBoKwl26V0XoIM4Gd204ncWmjn6P4RcZ8i6+E6NVVh+3GKjXbFi1pHdGbJhBdBf6e
	U841b8CBzV7gP1PsWnBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lomOe-008b97-Hk; Thu, 03 Jun 2021 12:24:24 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lomOc-008b8k-Mn
 for linux-rockchip@lists.infradead.org; Thu, 03 Jun 2021 12:24:24 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id p184so8505528yba.11
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Jun 2021 05:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nQTNZDhOre7iCF0Cz3dK7kuboW0bx4oq6Dq0Z2ourcg=;
 b=GkrM5vRwIir6c6geza3ObTHY5OfQQKqpPG5ez/l7ZUEwPXAHuanRyWk78a2vkv3es9
 f4mwxfB0vAt8RzZ/+gvYLDpcy352RKk8lGIkKoGyz1vRSdfiOm3kYjWVSKgUpg8GepKT
 8Y0Dq+qe1zG+nYSK0goKh1BlracUtmJEZCmmQTTUc7pLrh2D568rjIuKtNSJJXv9BosN
 tubCOfuflwLOlR8uiXCpOEYORpUuHT6KLZzUzZL9cil1Sko42G/zpBddWq3ZtY/Xbtfm
 tI61aFuMhZ4SfWh9vMoEnT9OQqyp6H1+UxS6i/7amUyUjmEZiVgPOfbw3FprikMXl4oO
 84WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nQTNZDhOre7iCF0Cz3dK7kuboW0bx4oq6Dq0Z2ourcg=;
 b=jG54lX9ctMukscDunxSDJDTeahOZ/UWWED9kH0OaJ0dZYju4PvujkdoDT//x3fedoh
 eXVIP0Pilm++06+KaLdAW0S8AYFDAqWLnJPPZhYSFeRYBK7V/L8IwcDp7rg68+OPufNv
 4YRZ0cOB8o/Yo5qwL3ATe9As3pBahj05yDJIb3Ga1LTIayGHtZemhIrmdPJ7kNmj0V5z
 gu8DgWWAi9kxmMKvCGSEMQ4u6wzuk52bKqFlP4uCnlHLzPMMkw4lR5ixrcsUvBvp72I6
 A6L2+Y81Gsc9SO/wqhBj7mxWPDXb1VrLeBv26jrATa5oGIOV2K1nkOGJN5OoFkJzyusd
 6WIQ==
X-Gm-Message-State: AOAM532KnwO8hvBi2A7QvU4ap6prpMaBSmvCcBk6TCNpDPUiD9EuQ7nR
 ugLdKtZ/BRwcngUj/mowgqQFJu3MyR+qpwoJ7e8=
X-Google-Smtp-Source: ABdhPJzUnO+t1xkDb7EFXdjCxXK2AyV5EDQsYEgtIvD3rhr2W5k+IH2ADj9nvL+xwcO6eBS0XyDDNeLsWT1MnIhI15s=
X-Received: by 2002:a25:3c87:: with SMTP id
 j129mr53775021yba.141.1622723060265; 
 Thu, 03 Jun 2021 05:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <2021052710373173260118@rock-chips.com>
 <5d7127d5-b73c-2002-1734-98aab2295c8e@arm.com>
In-Reply-To: <5d7127d5-b73c-2002-1734-98aab2295c8e@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 3 Jun 2021 08:24:09 -0400
Message-ID: <CAMdYzYpiykTtK3CtAN9F4g+f6JasTSsUh54wvAZ_st3C=_LygQ@mail.gmail.com>
Subject: Re: Different type iommus integrated in a SoC
To: Robin Murphy <robin.murphy@arm.com>
Cc: "xxm@rock-chips.com" <xxm@rock-chips.com>, hch <hch@lst.de>,
 joro <joro@8bytes.org>, 
 will <will@kernel.org>, iommu <iommu@lists.linux-foundation.org>, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_052422_786184_A5818C5B 
X-CRM114-Status: GOOD (  20.39  )
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

On Thu, Jun 3, 2021 at 8:07 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-05-27 03:37, xxm@rock-chips.com wrote:
> > Hi all,
> >
> > I have a SoC integrate with two different types of iommus, one is ARM SMMU, serves the PCIe/SATA/USB,
> > the others are vendor specific iommus, serves display device and multimedia device.
> >
> > In the current linux kernel, the iommu framework seems only support one type iommu at runtime, if enable both types iommu, only one type can work.
> > Is there any way to support this kind of SoC?
>
> Hooray! I've been forecasting this for years, but the cases we regularly
> hit with internal FPGA prototyping (nor the secret unused MMU-400 I
> found on RK3288) have never really been a strong enough argument to
> stand behind.
>
> Based on what I remember from looking into this a few years ago,
> converting *most* of the API to per-device ops (now via dev->iommu) is
> trivial; the main challenge will be getting the per-device data
> bootstrapped in iommu_probe_device(), which would probably need to rely
> on the fwspec and/or list of registered IOMMU instances.
>
> The other notable thing which will need to change is the domain
> allocation interface, but in practice I think everyone who calls
> iommu_domain_alloc() today is in fact doing so for a specific device, so
> I don't think it's as big a problem as it might first appear.
>
> Robin.
>

Good Morning Robin,

I think the Tegra group would also be interested in this work.
AFAIK they have the smmu and the tegra gart and have been trying to
figure out the runtime handover from the bootloader to the kernel
without smashing everything and starting over.

Thanks,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
