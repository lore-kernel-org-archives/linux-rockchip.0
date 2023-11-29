Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 873D8C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQlFwSn1BNQhnfrBhpeaPCbtpA8UmtZxjoagg9yyS0E=; b=XVAFSxoQV2UvaK
	0j2RYG4eHhpGkzdGVhtN0dn8qQY+STv0Zbx/+aqundlAXnTIVzNp+nuy78txf5JgeecGW1cJ7v1IZ
	++U07TClkdCsaZ18MXqWkXrDQfex4FE1mF894reaa6z4EE6fq7iZuhHgv3olHoJ25/YoqNwO+zV85
	n2SXPBQHHt24Mud0ZDptAQn05sa1EU+AYBhN4fhnoNNV8T9lh3nnWhEhRjBMC85+3L03I1zwHqeMP
	XR+9n1YEDEco9dN+3nv3ztoRDGxwFJ084XGG6LxUE3mRXdTxGz6aThA5hWmWlZV7zo/xPDoXTEyIy
	IqcMbpNiTxkktGILRG5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8QVI-009BWB-13;
	Wed, 29 Nov 2023 19:45:48 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8QVF-009BUl-0V
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 19:45:46 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c9bf8964c3so2426001fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 11:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701287143; x=1701891943; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fNNsoM3smwE3RnQXjosvlH5YCUc/qVQE7cVYHj28TpE=;
        b=NxCs9/ChSSzq7K14/MZKa1GvdJVpsWePKLV2oTgpJW0dVqc2AuiZQ2v45U8gkd7S/i
         NiEMYqhFrCSGl2+EfN4kBRLprn29HCsvuAvZDYFg1SCIF2DBgD9PnhQYQ/vFXtU961iO
         3ilQNq9wI3lSReGficclXPvG6QPgrhOnmS8b+7nAvrpCz3AHg2fL6jboogsESbHFguM2
         t5Jmnr5y96xek7cIcWjdNisdZYsP44Xp7VEeqhWY31ZaN4HzIkR7XSbSyfL9mOqcfH4c
         vhAoKGYNvRXWMgkVHkX3lH2oH7OA5Blax0OiR7ex+OfisLiz6OA30yXIrU/xF0NfMNI0
         3W2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701287143; x=1701891943;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fNNsoM3smwE3RnQXjosvlH5YCUc/qVQE7cVYHj28TpE=;
        b=H4dx3QRkd24fsSBcxx7PDVfaiT0DruzKkKPFeKhnG/mwtLsrOWJrtIicl2OrFybjas
         4btDd2lKPee5m7g+VjLw1Z0S+9J5MT6+TXnBjlVcngonS3StiyTeYwrYAKlBiSCeqivS
         Pv6upc0unJryMz76t2R0nqFYkWs6X4u7rvhWwnU30wafnQvC/W2JDy9sdON0yBrDf0Dp
         7AX1+0HQ9gHDsf7bwSzsGoQ5x7jrTyhpKqF6hTqTvQO/cbghhd//OdFBf43bFQDYsUQl
         VmiOg4eMVQ1kzNr5CS+9+msddx4mD+3dc3hVOjONoUVTMiWD6Gp/QEg96OElEczbEJ6a
         I6YA==
X-Gm-Message-State: AOJu0YwtBUgsrqYzqlOlPgE7OXqZkYWrsHd3bzR39sxpsYBT0+vLaBJu
	TirnPYoMbiStF3c9kDTJVKO9kmacLHxXC3ffai01hA==
X-Google-Smtp-Source: AGHT+IHo1CBmTuUhAhmoXR/KJsiUOGXe0H72uTjo3bJ8/f4ydzGN+L/1B0mI7eNNH55dLwJ3p7aHezZlyWQqax7aj9w=
X-Received: by 2002:a2e:9b59:0:b0:2c6:ece6:5b65 with SMTP id
 o25-20020a2e9b59000000b002c6ece65b65mr12569535ljj.10.1701287142874; Wed, 29
 Nov 2023 11:45:42 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com> <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
 <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
 <20231128235037.GC1312390@ziepe.ca> <52de3aca-41b1-471e-8f87-1a77de547510@arm.com>
In-Reply-To: <52de3aca-41b1-471e-8f87-1a77de547510@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 29 Nov 2023 14:45:03 -0500
Message-ID: <CA+CK2bCcfS1Fo8RvTeGXj_ejPRX9--sh5Jz8nzhkZnut4juDmg@mail.gmail.com>
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided by iommu-pages.h
To: Robin Murphy <robin.murphy@arm.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>, akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org, 
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com, 
	netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org, 
	samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_114545_525864_54EB09C7 
X-CRM114-Status: GOOD (  30.23  )
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

> >> We can separate the metric into two:
> >> iommu pagetable only
> >> iommu everything
> >>
> >> or into three:
> >> iommu pagetable only
> >> iommu dma
> >> iommu everything
> >>
> >> What do you think?
> >
> > I think I said this at LPC - if you want to have fine grained
> > accounting of memory by owner you need to go talk to the cgroup people
> > and come up with something generic. Adding ever open coded finer
> > category breakdowns just for iommu doesn't make alot of sense.
> >
> > You can make some argument that the pagetable memory should be counted
> > because kvm counts it's shadow memory, but I wouldn't go into further
> > detail than that with hand coded counters..
>
> Right, pagetable memory is interesting since it's something that any
> random kernel user can indirectly allocate via iommu_domain_alloc() and
> iommu_map(), and some of those users may even be doing so on behalf of
> userspace. I have no objection to accounting and potentially applying
> limits to *that*.

Yes, in the next version, I will separate pagetable only from the
rest, for the limits.

> Beyond that, though, there is nothing special about "the IOMMU
> subsystem". The amount of memory an IOMMU driver needs to allocate for
> itself in order to function is not of interest beyond curiosity, it just
> is what it is; limiting it would only break the IOMMU, and if a user

Agree about the amount of memory IOMMU allocates for itself, but that
should be small, if it is not, we have to at least show where the
memory is used.

> thinks it's "too much", the only actionable thing that might help is to
> physically remove devices from the system. Similar for DMA buffers; it
> might be intriguing to account those, but it's not really an actionable
> metric - in the overwhelming majority of cases you can't simply tell a
> driver to allocate less than what it needs. And that is of course
> assuming if we were to account *all* DMA buffers, since whether they
> happen to have an IOMMU translation or not is irrelevant (we'd have
> already accounted the pagetables as pagetables if so).

DMA mappings should be observable (do not have to be limited). At the
very least, it can help with explaining the kernel memory overhead
anomalies on production systems.

> I bet "the networking subsystem" also consumes significant memory on the

It does, and GPU drivers also may consume a significant amount of memory.

> same kind of big systems where IOMMU pagetables would be of any concern.
> I believe some of the some of the "serious" NICs can easily run up
> hundreds of megabytes if not gigabytes worth of queues, SKB pools, etc.
> - would you propose accounting those too?

Yes. Any kind of kernel memory that is proportional to the workload
should be accountable. Someone is using those resources compared to
the idling system, and that someone should be charged.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
