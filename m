Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB4DBC46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=860NNs1AXUsEJ4dLkLCIdKNZ26tdZ6m2VVAMA3PTaJ8=; b=2jvSzfhPU3+nazec/2A8QGUcSU
	RzqdfUb63kncSUfSRlGBvuEPr6zUgeSVlhxLSXmSSaUb+HURmsQq6W/bDGgqQ7dj9CZJFd1zSeW14
	ObtJAOPY/Sz6GOfsm+CkXHM9jkSMzTs7AV0oxVaCE1wjeEqr6xBPYq9I8dux/tIcefQ5hshifN9Xj
	mRUajpjOERckYDT54eJGXTAkazPR1O7OaVM1hB4Z/z+Kyx1XQ+fR2GZHh3fxeYMMP3ZWu6Q0KZ6pG
	kqawh+g7ksYepq0ZnD2dQgjdrx4LtzgLybevFLNZtbYe51A64Gncve3XAdpWor7xizgoPsVsVXqGo
	sAS6bglg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW3t-009tjc-1k;
	Sun, 24 Dec 2023 21:31:05 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW3q-009tgc-1p
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:31:03 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d42ed4cdc7so135045ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453452; x=1704058252; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=7/MCgJrzTYbobYDGPWMaxVSPHC8aF5GoN3HBnQNC1yE=;
        b=WyKmao+9NHo7eY6BxiFWtbudAXypXDK1hP84RTViO1XHCEPUtMQDFSa7cfvAlpcsvi
         8lHmu/Kjqp8AWKanjUV4+jks8/BnXhe5Moqd7RVKLh1zJZW8ci7koO02BnqPRRW6cAiB
         pCWHwfq6R/Lv/fytxgjYHl/5hSDMBVP6YkH2lMSGMCUapv6HcDXv6FR+A77R/5TA47w1
         YyQv81fMoec2k2vXkMKNLQJNjNoRJqpt0GqukBwnuy7T3IQKmSZ6N9ryXk5xd7scrrif
         TA+rLFyp3FKZysZOxVH+O4EOvohQV1Lqs9cgqd109XEfoj3Fr1rm87J1bGnxc3mRhtpl
         CYwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453452; x=1704058252;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7/MCgJrzTYbobYDGPWMaxVSPHC8aF5GoN3HBnQNC1yE=;
        b=YK8hn35hw0q0xRCdzbbQp6WrCIK5JIsFDAVt8Y9EAAEDzaf/UbMwmNbW97kBfbgbvY
         DYQ/p6xDv3tz4h3rtCyVggw8UGlrLq/3ofMy2h7GawS3sNAeSJrWxt3lxNDgEW3o1TH9
         5X0GBYQB287Y4+6kFwIphO20onuQilXsgiAyDVt2PaJR2B5kTVEAmRTfBZr1wNUTuQUZ
         6rAkpWSieEWkB3Q+/AFvgGYWZw75E6MTYcq85EnXj7GN1R7pQlW98AXgMBA+UpAI2vR2
         l/46LPHEYucm22ddcaGx+XQ4mAVPcdCMf3ac5NJlUoPCVBCkwM1e30zf8Pxb+CicSeVe
         bdTw==
X-Gm-Message-State: AOJu0YyJ5pYYdwKwAGN3nzyOWbcyAXrmacGcefJhIuLnfIqPjvqkER6h
	h5rwSFO1AgQ5H2w6Hg0IAGTpSpIX6Tzw
X-Google-Smtp-Source: AGHT+IGEdm29d6jmw+nANphFK7SbhaR7mM9JSy5/jGKgQinKhgDaZxXLk5PDheL/k90mn9Ft6aU5hg==
X-Received: by 2002:a17:902:bb84:b0:1d4:55b3:45d9 with SMTP id m4-20020a170902bb8400b001d455b345d9mr28530pls.6.1703453451456;
        Sun, 24 Dec 2023 13:30:51 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id b14-20020a170902d50e00b001d3dacffde3sm6890413plg.226.2023.12.24.13.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:30:50 -0800 (PST)
Date: Sun, 24 Dec 2023 13:30:50 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
cc: Andrew Morton <akpm@linux-foundation.org>, alim.akhtar@samsung.com, 
    alyssa@rosenzweig.io, asahi@lists.linux.dev, baolu.lu@linux.intel.com, 
    bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net, 
    david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
    iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
    joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
    linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
    linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
    linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
    mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
    rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
    suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
    thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v2 01/10] iommu/vt-d: add wrapper functions for page
 allocations
In-Reply-To: <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
Message-ID: <1fd66377-030c-2e48-e658-4669bbf037e9@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-2-pasha.tatashin@soleen.com> <776e17af-ae25-16a0-f443-66f3972b00c0@google.com> <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2003067076-655310594-1703453450=:2163178"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133102_624143_EFC52E51 
X-CRM114-Status: GOOD (  25.16  )
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
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--2003067076-655310594-1703453450=:2163178
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 14 Dec 2023, Pasha Tatashin wrote:

> On Thu, Dec 14, 2023 at 12:58 PM David Rientjes <rientjes@google.com> wrote:
> >
> > On Thu, 30 Nov 2023, Pasha Tatashin wrote:
> >
> > > diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
> > > new file mode 100644
> > > index 000000000000..2332f807d514
> > > --- /dev/null
> > > +++ b/drivers/iommu/iommu-pages.h
> > > @@ -0,0 +1,199 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +/*
> > > + * Copyright (c) 2023, Google LLC.
> > > + * Pasha Tatashin <pasha.tatashin@soleen.com>
> > > + */
> > > +
> > > +#ifndef __IOMMU_PAGES_H
> > > +#define __IOMMU_PAGES_H
> > > +
> > > +#include <linux/vmstat.h>
> > > +#include <linux/gfp.h>
> > > +#include <linux/mm.h>
> > > +
> > > +/*
> > > + * All page allocation that are performed in the IOMMU subsystem must use one of
> > > + * the functions below.  This is necessary for the proper accounting as IOMMU
> > > + * state can be rather large, i.e. multiple gigabytes in size.
> > > + */
> > > +
> > > +/**
> > > + * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
> > > + * specific NUMA node.
> > > + * @nid: memory NUMA node id
> >
> > NUMA_NO_NODE if no locality requirements?
> 
> If no locality is required, there is a better interface:
> __iommu_alloc_pages(). That one will also take a look at the calling
> process policies to determine the proper NUMA node when nothing is
> specified. However, when policies should be ignored, and no locality
> required, NUMA_NO_NODE can be passed.
> 

Gotcha, thanks!

> >
> > > + * @gfp: buddy allocator flags
> > > + * @order: page order
> > > + *
> > > + * returns the head struct page of the allocated page.
> > > + */
> > > +static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
> > > +                                                 int order)
> > > +{
> > > +     struct page *pages;
> >
> > s/pages/page/ here and later in this file.
> 
> In this file, where there a page with an "order", I reference it with
> "pages", when no order (i.e. order = 0), I reference it with "page"
> 
> I.e.: __iommu_alloc_page vs. __iommu_alloc_pages
> 

Eh, the struct page points to a (potentially compound) page, not a set or 
list of pages.  I won't bikeshed on it, but "struct page *pages" never 
makes sense unless it's **pages or *pages[] :)
--2003067076-655310594-1703453450=:2163178
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--2003067076-655310594-1703453450=:2163178--

