Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B4DCD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 13:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+argAsh932WueCWSgcXYQ0ci971SWnFwMl9+k0CCHzw=; b=d6Yn2M+EjbSAFk
	J9ceI97JIMws9CfSq81Vp+dom//lfn4ViLG7/PFOmYrw+6+SRSkOZWos0U6JdYjUg4KKy/UI0EiCV
	nLaRPI2a/ylUQMq+rbWbhcXcRNpOHv/xIi21dRjiiOYDUj/8dZhY8sXkpl0IxpHIv+e+FeUC3Wftv
	xlSOf7+P0n5Yd/3NEr2KCgzLl8aqpalFFuEyqoo+aErUZ1OJwXQuSH3saoDOCdiHuRxXnYL23KVho
	edr71a/RHgWlVlqgQp54Kh+izTJP/u3C59/bSmUa3T7cYNSMv9X5diQ26Pj8wUkbrk/B83mSIxksA
	4eHssNKTIk1FwGuJatzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNaV-00000002v7p-1z2D;
	Thu, 04 Apr 2024 13:57:07 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNaR-00000002v3D-1ruK
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 13:57:05 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-430ad286ab8so5173041cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 06:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712239013; x=1712843813; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=msc9tQgMq343nFV4/DBdPcJS7hGm3uD+5fv8GwkMOjA=;
        b=eq6olRuuIyBw9GuuGQSyNGLNZOIfI3VSyUPtyzRVIvp3DpaaU8lqwt00HY8+YJxvb7
         eGozlurSr8xxmr1yolXqs43tUcqbLAQMkW4E0gK8zF3vfgmc//o9KurRrKEOgaFzi8bT
         Bu0GXgYf0hUkpr9LRx7FXoIPntvmjGC9wiAVU06boreS9k/8kFq6fVIyisl7HJULZyZV
         KqzH4zD9zn1gwN9l1AKpBh/FAqcX0BMranwfF/3s5jOJqnp6perjUn4i1/3j1TPuUtII
         V4QAaDZH8zT7fyQSyHgxGheoBx490OBjTpn6efYKFTi5Uo8c6FaA4fs/mlI1u2SJlOvm
         CZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712239013; x=1712843813;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msc9tQgMq343nFV4/DBdPcJS7hGm3uD+5fv8GwkMOjA=;
        b=CCnT5NooO3vMyacMHtezNfO+Qp5Ucfh2JegGHPZ2n1K+tu1yTtTRB/Z6svufKGIGHa
         2hLkxY7bDMq2SYp0P1db1gyy7yrZz6qk621Q0orfi/1YBSQVqf2TcR+x/h99zxp6sdd4
         1lDw+9jryzf8rpGH8jQL5VKzxIEo4npUpw2Mb1iCneiZyNKMWc/mwBREN2SaVW+kzJRF
         TnJ1pHfPcG9wLwPaK8VKTG9AFy00NDcNQjldaFFu441CpkawTjowIKpILUJLMFkyjezA
         1eqNa4EyZXPB+e8YJRPefe8HYjwR9H+v3y79aZ1TOHrxPkLn8fGvdnWX4VzLbi5VHAUv
         o6GA==
X-Forwarded-Encrypted: i=1; AJvYcCV74K+IWZsmH4tkpoRbjRhXbtWyHPq7/kWmtK+COT5sZIIj+P1f4ZrC/pVfjEg3+V8P9GmulZuOvulAagid630oVq5tzR2T9V/uZoPSvixfT/Tm
X-Gm-Message-State: AOJu0YzodQMG3t4Q7R7QVb5sDt4RK4sLzyColfdjVFUrGPJh+t72To8d
	W6xG+f52RfueU0pCCGmaqPhJjDIAQiXLl2z+itRMOWiOxFpixZ+roGNC83fOHqReGHZR19OQkqS
	6DZzxjwK+HHl8XvcTTEc10IT6jqNdfDOEJQAEXA==
X-Google-Smtp-Source: AGHT+IH9S7DU2DIf+z4/lTa3f7DcyJz1Y9kNOGjz2IQr7tohPqSHHhqayAGWHjuk7zhrLKiTZ6wb5Cu4ZzpulPIDrg0=
X-Received: by 2002:a05:622a:2:b0:431:378d:afa with SMTP id
 x2-20020a05622a000200b00431378d0afamr2733138qtw.34.1712239013126; Thu, 04 Apr
 2024 06:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
 <20240222173942.1481394-2-pasha.tatashin@soleen.com> <20240404121625.GB102637@hyd1403.caveonetworks.com>
In-Reply-To: <20240404121625.GB102637@hyd1403.caveonetworks.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 4 Apr 2024 09:56:16 -0400
Message-ID: <CA+CK2bDmya+768tOvF0N-BYq8E+RwBw4xS8vC+MmbU9eoOv_3g@mail.gmail.com>
Subject: Re: [PATCH v5 01/11] iommu/vt-d: add wrapper functions for page allocations
To: Linu Cherian <lcherian@marvell.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
	joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com, 
	bagasdotme@gmail.com, mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_065703_679944_425A8943 
X-CRM114-Status: GOOD (  18.66  )
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

> Few minor nits.

Hi Linu,

Thank you for taking a look at this patch, my replies below.

> > +/*
> > + * All page allocations that should be reported to as "iommu-pagetables" to
> > + * userspace must use on of the functions below.  This includes allocations of
> > + * page-tables and other per-iommu_domain configuration structures.
>
> /s/use on/use one/?

I will correct in the next version (if there is going to be one).

> > + *
> > + * This is necessary for the proper accounting as IOMMU state can be rather
> > + * large, i.e. multiple gigabytes in size.
> > + */
> > +
> > +/**
> > + * __iommu_alloc_pages - allocate a zeroed page of a given order.
> > + * @gfp: buddy allocator flags
>
> Shall we keep the comments generic here(avoid reference to allocator
> algo)  ?

There are no references to allocator algorithm. I specify the zero
page because this function adds __GFP_ZERO. The order and gfp
arguments are provided by the caller, therefore, should be mentioned.

> > + * @order: page order
> > + *
> > + * returns the head struct page of the allocated page.
> > + */
> > +static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
> > +{
> > +     struct page *page;
> > +
> > +     page = alloc_pages(gfp | __GFP_ZERO, order);
> > +     if (unlikely(!page))
> > +             return NULL;
> > +
> > +     return page;
> > +}
> > +
> > +/**
> > + * __iommu_free_pages - free page of a given order
> > + * @page: head struct page of the page
> > + * @order: page order
> > + */
> > +static inline void __iommu_free_pages(struct page *page, int order)
> > +{
> > +     if (!page)
> > +             return;
> > +
> > +     __free_pages(page, order);
> > +}
> > +
> > +/**
> > + * iommu_alloc_pages_node - allocate a zeroed page of a given order from
> > + * specific NUMA node.
> > + * @nid: memory NUMA node id
> > + * @gfp: buddy allocator flags
>
> Same here for this one and other references below.

ditto.

Thank you,
Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
