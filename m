Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42E6CC48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 22:47:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07DAF61246
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 22:47:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07DAF61246
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doyBH06s4TDXWg/X3P//7L+SDcMAl6rqs+s4ijGqplU=; b=yiZlDI3sz+FNGZ
	xdLdfrh5QTEJHgJCldxeGVVKBXPiAzGhz1aiWbt42rHPyjv/+sh50P74NFeiyJBnsH4gaJZCo/s6X
	+9ghKiba1ZtvhLyfirEHm3PuRA7PnbF8r5timt+q4Ww60U1JkCZdkvEdg99tvu7vL1iChjt/yWfLF
	tkX+W7D3M1YfXvSs4nnb6ETtcZeNzW97WtqnTvmFOWXt3ThQ/HhhAIpkCa+GjTm5VQIuSIMS5whQP
	H+hRmgOjDOyjbohUZVrdPY6+smZeHhVNgVGhEzCIh5xxnmgBT7Rz802LQeo8xwzKfdBu7NdePQzlh
	ARfzarrYTpAMZziUccYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltHpz-003gPy-1b; Tue, 15 Jun 2021 22:47:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltGS6-0035Uz-3f; Tue, 15 Jun 2021 21:18:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3FB7E60FEB;
 Tue, 15 Jun 2021 21:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623791909;
 bh=HvzPcdHo85fJo2BuQWKIos2eC9Gp+mz4aSYW3NOFLvY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iTryfXvN1dqS0YOr65+sQbfAeQ+Hk+TOZQ7ajsfbPem1YDIfNacvRQBtSIW+/EKJF
 kbYHskVsqrDD45K+xqPXn4UEWPrn8q/VvZFkPh6Swrnc8I0M5ID6LB2ldSL4nI2qFH
 XcJE506v09LOpTJZyCF1T+Y4Qi4KyTRD+7GHhQhl7dljH2Jt0ZBYleKFIPMVtfNqoK
 RF8hOkZH+/4ZgeijRy130qy0NGXSF/6pauO4kkbZIyqCtTH6mRBhqM6M9n6JDnMHfR
 GmDGyISJdX6IPssI5wnCkin5BWgXHYQpp7BojjQoCgv10tzpzrs5ybMGi56sU1iwb8
 vz0ui0A19SeCQ==
Received: by mail-ed1-f53.google.com with SMTP id i13so53006738edb.9;
 Tue, 15 Jun 2021 14:18:29 -0700 (PDT)
X-Gm-Message-State: AOAM530cPQHFoq1z5AKCDvUnKAwHk8iI1lMXzGpqw7UrYQHxBWtR1W0F
 ckjxF59h0sQarvR1TeqAxkuX+od1SQ/MgGcDKg==
X-Google-Smtp-Source: ABdhPJxXvtatFAsBpPXonzYiVjnjQgygge8MCylwXVfui349mdZRVbpYrxDh5A9gZdo3Biv9dVEhLIbhHGduZl6mTuQ=
X-Received: by 2002:a05:6402:cb0:: with SMTP id
 cn16mr163687edb.165.1623791907827; 
 Tue, 15 Jun 2021 14:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210614230457.752811-1-punitagrawal@gmail.com>
In-Reply-To: <20210614230457.752811-1-punitagrawal@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 15 Jun 2021 15:18:15 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLhOFHwBwtMFMnuEaXsDs9sqzUPS=68t+bDnbFsfXgo+Q@mail.gmail.com>
Message-ID: <CAL_JsqLhOFHwBwtMFMnuEaXsDs9sqzUPS=68t+bDnbFsfXgo+Q@mail.gmail.com>
Subject: Re: [PATCH v4] PCI: of: Clear 64-bit flag for non-prefetchable memory
 below 4GB
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zyngier <maz@kernel.org>, 
 Leonardo Bras <leobras.c@gmail.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, 
 Alexandru Elisei <alexandru.elisei@arm.com>, wqu@suse.com, 
 Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>, 
 Ard Biesheuvel <ardb@kernel.org>, Brian Norris <briannorris@chromium.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_141830_256433_67F93F48 
X-CRM114-Status: GOOD (  17.28  )
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

On Mon, Jun 14, 2021 at 5:05 PM Punit Agrawal <punitagrawal@gmail.com> wrote:
>
> Alexandru and Qu reported this resource allocation failure on
> ROCKPro64 v2 and ROCK Pi 4B, both based on the RK3399:
>
>   pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
>   pci 0000:00:00.0: PCI bridge to [bus 01]
>   pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
>   pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
>
> "BAR 14" is the PCI bridge's 32-bit non-prefetchable window, and our
> PCI allocation code isn't smart enough to allocate it in a host
> bridge window marked as 64-bit, even though this should work fine.
>
> A DT host bridge description includes the windows from the CPU
> address space to the PCI bus space.  On a few architectures
> (microblaze, powerpc, sparc), the DT may also describe PCI devices
> themselves, including their BARs.
>
> Before 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
> flags for 64-bit memory addresses"), of_bus_pci_get_flags() ignored
> the fact that some DT addresses described 64-bit windows and BARs.
> That was a problem because the virtio virtual NIC has a 32-bit BAR
> and a 64-bit BAR, and the driver couldn't distinguish them.
>
> 9d57e61bf723 set IORESOURCE_MEM_64 for those 64-bit DT ranges, which
> fixed the virtio driver.  But it also set IORESOURCE_MEM_64 for host
> bridge windows, which exposed the fact that the PCI allocator isn't
> smart enough to put 32-bit resources in those 64-bit windows.
>
> Clear IORESOURCE_MEM_64 from host bridge windows since we don't need
> that information.
>
> Fixes: 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
> Reported-at: https://lore.kernel.org/lkml/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com/
> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Reported-by: Qu Wenruo <wqu@suse.com>
> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>

I think we've beat this one to death.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
