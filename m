Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464D2C4829E
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1QPHzcb5rTbTClBXisG77q0+BtE1LmGdz+crUGeipg=; b=EGzxiBepeNMfCD
	H33Ajan7QlmJ6665EUg2Uu6hXWE3/dglYNAR+DaqlHGvwFmUO3ia7Foxzll5dHBtismwrZ8/cofyW
	jQ8VwBrMHYsR23M2uBS7a4rdB5NiRZ53oWmaRLRBFecAPx9qv+OV2I9Aq5a7v72ZjtoU7bVUyahYj
	rMZEm20AjTRgoghlaCUaaZztI3zR85Xh3qOpc8tGr32EO+6ivdauwpfCd1t/nFZwnmT+qGKHIF0zG
	B2PZcvPgwO5U/eVWDZaX+y2JkOKb7vIPBBIv+8e5z7zha3qJl5ctnP+IPsQF2h/qLhKdXnx1QYgDd
	0wMhG8CcqeyFm91V8Rwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ramgV-00000000ggI-2M60;
	Fri, 16 Feb 2024 01:06:35 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ramgT-00000000gfM-1IIz
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 01:06:34 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-42dc86cc35dso7753621cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Feb 2024 17:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708045592; x=1708650392; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SJOk5GBoNGjtYX6UP2FD6x8pshcgNrZex6zZ50AbGYM=;
        b=jlI/s59cJA53ZZcpgaFhWtdDunA4O1n3YSxC5edKYNp7tr5DnBCT579HoFaBVl9Y8U
         4O3iwLymvOBMgkB7edbwXp9ysadZPwDCWrTBIxF2eAGe8ILG2l8ACBvXxNH/D9d2MKUc
         G51AGdHXJFH9AipOjrqBlqB1iJBX3qUlhRF1UiYJ5srifUvFZtpHbaaxcvXERuwPqSO6
         OPk/VeVFHj4XXhxbKn8PPiJV9AC5IyRtIenBQJCcyRJg1RwdZow5YHj28Svhb0fd3o8Y
         eHwqZDn6TWPFze3n37FvtP0/8eiYHR0CYxBkQsu/0NRsowIU1g+dXAVIqIYR1sQ0q0le
         du/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708045592; x=1708650392;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SJOk5GBoNGjtYX6UP2FD6x8pshcgNrZex6zZ50AbGYM=;
        b=CiJWzmOm0xjB4lHKWPoRCJlkKsNq6LXJnEO9SfF5vQvlYV/0NaftFrHrh3wJZ6ro7x
         Y5t6XKFpZOoFZkDNqqHf8K5AktGMAVnn7HSR+5qWftBu4kccIfG7nwgFf9JEH2NtSG/G
         XWXUvk9KUqh8fIs39sa0RF7f8ix6IVgq/pd3mEJaZFgwQLc3pwFYVvnBVZEHPC0R9YVt
         lXaZ8ch/Z9fEhNwAJ+g/D2y0Y94rzE/N8aYa3/nXal5k9TOAvN7/fnZMy2vCmdur2bHo
         R5ISJOSs5917P36dWnbQkPgRGgMmumynK4UERUsXDm/w1DqSex0+NloC1vrHZa0ovjUu
         qjQA==
X-Forwarded-Encrypted: i=1; AJvYcCVNbd5+qwM4CVNdQMBNJRhWSmTejZHlsoaQSphzWSJNXYYWdjwPYXMbP6GdMPA/+ya5GoJdhbk05oTqbDLU2t8U2zzMLtuIvfsmpTDPj6gAaNI/
X-Gm-Message-State: AOJu0Ywea/IxetTEODn/nTed9Hu/IuJvy0bDp1d9+1Maw3qPcHAkXXWG
	eKZPvJRWMex1A5q68Zs5i6iy6hUv8ZDJ9pR8OI2HyuWgiJjUE55BtuSVGvya/iTsn4IKrVOlN/w
	zss7KZrYMUeL220UtN0gv8c6LnobSvrcmtCNPMQ==
X-Google-Smtp-Source: AGHT+IFn+h3r/AaoF4MfmIEWnQLUDUmnx1Kec57gXxwxEXHIeMLPIowE5fZkN66KK2rAD8UQkIaND2e8M33sIsMCnhQ=
X-Received: by 2002:a05:622a:1048:b0:42c:798a:a053 with SMTP id
 f8-20020a05622a104800b0042c798aa053mr4373943qte.55.1708045591818; Thu, 15 Feb
 2024 17:06:31 -0800 (PST)
MIME-Version: 1.0
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <20240207174102.1486130-2-pasha.tatashin@soleen.com> <8ce2cd7b-7702-45aa-b4c8-25a01c27ed83@arm.com>
 <CA+CK2bC=XyUhoSP9f0XBqEnQ-P5mMT2U=5dfzRSc9C=2b+bstQ@mail.gmail.com> <b008bd2d-a189-481f-917d-bb045c43cb07@arm.com>
In-Reply-To: <b008bd2d-a189-481f-917d-bb045c43cb07@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 15 Feb 2024 20:05:55 -0500
Message-ID: <CA+CK2bBTe93nXzY3Qhty+821LrkjBVnQDxro3m7Y-GVihSP18A@mail.gmail.com>
Subject: Re: [PATCH v4 01/10] iommu/vt-d: add wrapper functions for page allocations
To: Robin Murphy <robin.murphy@arm.com>
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
	rdunlap@infradead.org, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org, 
	yu-cheng.yu@intel.com, rientjes@google.com, bagasdotme@gmail.com, 
	mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_170633_395586_33775D8A 
X-CRM114-Status: GOOD (  14.03  )
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

> >>> + */
> >>> +static inline void *iommu_alloc_page_node(int nid, gfp_t gfp)
> >>> +{
> >>> +     return iommu_alloc_pages_node(nid, gfp, 0);
> >>> +}
> >>
> >> TBH I'm not entirely convinced that saving 4 characters per invocation
> >> times 11 invocations makes this wrapper worthwhile :/
> >
> > Let's keep them. After the clean-up that you suggested, there are
> > fewer functions left in this file, but I think that it is cleaner to
> > keep these remaining, as it is beneficial to easily distinguish when
> > exactly one page is allocated vs when multiple are allocated via code
> > search.
>
> But is it, really? It's not at all obvious to me *why* it would be
> significantly interesting to distinguish fixed order-0 allocations from
> higher-order or variable-order (which may still be 0) ones. After all,
> there's no regular alloc_page_node() wrapper, yet plenty more callers of
> alloc_pages_node(..., 0) :/

The pages that are allocated with order > 0 cannot be freed using
iommu_put_pages_list(), without messing up refcounts in the tail
pages. I think having a dedicated function that guarantees order = 0
pages allocation makes it easier for the reviewer to follow the code,
and ensures that only these pages are put on the freelist.

Even in the existing code, the order=0 allocation is wrapped in the
*alloc_pgtable_page() function.

Pasha


>
> Thanks,
> Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
