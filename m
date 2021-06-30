Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC916C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 20:46:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CBB6611AC
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 20:46:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9CBB6611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WNfCSn3jguF4oa08aAuG67V1P5rWg0kDDb6Jfej9rg=; b=LaIEA6yamUGBRo
	jpxIk55243odundaFuYiiLz8yONeBjXzoyQQ/jO+ABXG8F5zTNEUlQ080KbieR2lDrdGxNModkbeU
	86hfx73sflsy4fNfRt6GInDp0cX0ixGosTNc+hlQ5NrzcA2ZxwwLMJ8xdavPkPZuZFFPmvajn3qvX
	B7j/FDkysXsGR0pFl0BPpyOcFtzunhXJO+nz0ARbPVhWuw1BjDOTb8tGtAvl3rtTGVuoDHq+nolNk
	mdzaHG/URBxM/wH5IpKhXGRU36UnGcGjXYykjzWgPeqS8C907uC/iyYuQoHeLEx3Y/YS/+CPUeogk
	UFEvcwa9Lw9zcUuaQKGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyh6M-00FFbZ-BE; Wed, 30 Jun 2021 20:46:30 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyh67-00FFYc-NW; Wed, 30 Jun 2021 20:46:17 +0000
Received: by mail-ed1-x529.google.com with SMTP id x12so5125589eds.5;
 Wed, 30 Jun 2021 13:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uyOIws1NwRjU5AeOGv92EO33F5wkxRy0F4p5GCbs6FE=;
 b=ALwGJCrSJiGSH1zjPXW3co4uYtKh6dGDqsnqebW8IRN62HIXGubTfsN0DNwZXbmNkK
 43ni97FbrwjtS5rKLaTABF2rekhP9gK+hgUjbMVJWEZcEzEHhQsuVk1VYzUIIBgYZmYn
 CO8V+uNwkv2d4C8xvRSW+QdRWNnVVxP8OuV0rqHWcaQ/NtIN1FEsZyJ9KDYRYFgjmQ6e
 iH0NtT9hUEVzA7cZzKlPrFVDuJmOpfo4t+C0iV0JHLlLx8VbhlMswu7RnyI8Mx/EduGc
 6QEH5KxGETFbMPGtvyptrQr/BK/WOgwK9KF876fTJkxHVODUHt/NcnOSbJsqmyZxGOgU
 gejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uyOIws1NwRjU5AeOGv92EO33F5wkxRy0F4p5GCbs6FE=;
 b=hpfe5wK1dQxw7Sa+wtb7jZndfjGZCEjWBbe/4H+eyJ6fXpJm2xplGHPFSg8V1McTq+
 CjJ3HN/lyVu3hVqMY9AgaabD0y61qy05vr0qSPIPPXzNbZN4PM8IJKUIn/iatI1FYm0h
 gXdpz6qijt9hROCn9r2lvsYA3dRbAnSrikk7nrl/z7Rl5SmxKyewPCpM7CRUZib3xVwU
 KXOb6LUkT2l77bZWwGnwrP865ya46Yqw4Ewv8cpRZ+FCxkQJg/55zCBxwuFT5RWlXhzx
 CKS6QQLTt4AWEZm1zersGT4FFW66ou3EXbzGf02TBI0exlzqGHtwnRTGMGxaLih8m3lo
 uSuw==
X-Gm-Message-State: AOAM533W9Vkmsza018gCqh6RvGk+Bh03SRBHhdut+PMKPojobs220cyh
 dtWWGbLcqmlXTr4VsRdKzQHcNG8w0WhETXg38+U=
X-Google-Smtp-Source: ABdhPJwwnn9NVGiuvvqx8+JFJpK5tsR8/WFhvHyYY8hQw1xjn/WA4R/G+XYCIy6mZn7SpKdR8k07K4CX6l/orEOcK5Y=
X-Received: by 2002:a05:6402:5cc:: with SMTP id
 n12mr49591923edx.354.1625085973084; 
 Wed, 30 Jun 2021 13:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <e7f3bd28-8e5e-362d-11a9-43a60ff79dd2@redhat.com>
 <20210630203030.GA4178852@bjorn-Precision-5520>
In-Reply-To: <20210630203030.GA4178852@bjorn-Precision-5520>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Wed, 30 Jun 2021 21:46:01 +0100
Message-ID: <CALeDE9P0bNWTDO+4kUt66QOQFbp548Jum_XkGKUQro7_G+YQdA@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>, 
 Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Michal Simek <michal.simek@xilinx.com>, Jingoo Han <jingoohan1@gmail.com>, 
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_134615_831286_D2F46385 
X-CRM114-Status: GOOD (  32.74  )
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

On Wed, Jun 30, 2021 at 9:30 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Jun 30, 2021 at 09:59:58PM +0200, Javier Martinez Canillas wrote:
> > On 6/30/21 8:59 PM, Bjorn Helgaas wrote:
> > > [+cc Michal, Jingoo, Thierry, Jonathan]
> >
> > [snip]
> >
> > >
> > > I think the above commit log is perfectly accurate, but all the
> > > details might suggest that this is something specific to rockchip or
> > > CONFIG_DEBUG_SHIRQ, which it isn't, and they might obscure the
> > > fundamental problem, which is actually very simple: we registered IRQ
> > > handlers before we were ready for them to be called.
> > >
> > > I propose the following commit log in the hope that it would help
> > > other driver authors to make similar fixes:
> > >
> > >     PCI: rockchip: Register IRQ handlers after device and data are ready
> > >
> > >     An IRQ handler may be called at any time after it is registered, so
> > >     anything it relies on must be ready before registration.
> > >
> > >     rockchip_pcie_subsys_irq_handler() and rockchip_pcie_client_irq_handler()
> > >     read registers in the PCIe controller, but we registered them before
> > >     turning on clocks to the controller.  If either is called before the clocks
> > >     are turned on, the register reads fail and the machine hangs.
> > >
> > >     Similarly, rockchip_pcie_legacy_int_handler() uses rockchip->irq_domain,
> > >     but we installed it before initializing irq_domain.
> > >
> > >     Register IRQ handlers after their data structures are initialized and
> > >     clocks are enabled.
> > >
> > > If this is inaccurate or omits something important, let me know.  I
> > > can make any updates locally.
> > >
> >
> > I think your description is accurate and agree that the commit message may
> > be misleading. As you said, this is a general problem and the fact that an
> > IRQ is shared and CONFIG_DEBUG_SHIRQ fires a spurious interrupt just make
> > the assumptions in the driver to fall apart.
> >
> > But maybe you can also add a paragraph that mentions the CONFIG_DEBUG_SHIRQ
> > option and shared interrupts? That way, other driver authors could know that
> > by enabling this an underlying problem might be exposed for them to fix.
>
> Good idea, thanks!  I added this; is it something like what you had in
> mind?
>
>     Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ handler when it
>     is being unregistered.  An error during the probe path might cause this
>     unregistration and IRQ handler execution before the device or data
>     structure init has finished.

Would it make sense to enable CONFIG_DEBUG_SHIRQ in defconfig to
better pick up these problems?

Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
