Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77114C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FA3FyUftHjeSG09Q9OaE0lx2K+jVRYEvoI5e+Btty4M=; b=bPcsxLeq7WXP9R
	SxpgeORo9U3bY2Z52HS9PBI/eLMeMfOQk9QGGwwzjoVEd20DgKrQ3jxBEVLTqe1pFnrsZVvEpYiSg
	wT7SmBz/R8LCfC3+xvXRo9cXKWnc/ntjNbIjzaatgQCPNm5kVKYaApJgSodiFxlUqDwRRUS5/aeyv
	E2m75Pzgg1zdN/5HNI4ji82rGy6Cq4Fqnq31LPQ38oyVW0rLFoenp5ne5Hn7+6Afw0tA8jxVGYRGN
	05fEgzo0H+ZPVyvslkDXarLGt+wQBYj+ova/1yL3kpQAZNNbLkirEoroX17mw6kClTczLq5G1Xw+G
	HTeBtiWDNv/hp7otBrjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWGX-009v7R-1b;
	Sun, 24 Dec 2023 21:44:09 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWGT-009v6V-2i
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:44:07 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-36000a26f8aso26605ab.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703454245; x=1704059045; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=WCfzVP8j8LySAgZKEW6wfy9xuAGJ9Ouy6ckQlduRZH0=;
        b=IolIp4LiZMgy/te4FhXvlR7rjk/DYsaVgYNad0kyj6OtLYktOrNQ3HqkRl3IvPdHlL
         awPaxnWN3V6MVf3EHTsK5VabyjeuHoI65LwlQsxeHu7uevywXXXHmJ6r1WUGOpGGFgVO
         Bkl6GvBF2Pbyy6M2Yw+WXL1d+f2MDWDzJsN5CWdBDIp7qF90Li+SBIqNTuT+m4d3NYn5
         nA6e4PmV3FDPuoezWHdghwsBGB4LBb0A9+BtGUrVeZtK+rML2DqEm3eLPfddMLxVcjX3
         TSbCX+uBGPuVvqd6kSV9pmijsPv1MTHN/I+gIHox7k33VtMzHnFMV2efgqBOIr7ZYL0D
         SRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703454245; x=1704059045;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WCfzVP8j8LySAgZKEW6wfy9xuAGJ9Ouy6ckQlduRZH0=;
        b=iS7UvJVGOuxKlzIZGkemgG/k511bOLI92lyeWorgxBPdVMxMkLDoBShGYYQJeP1YV8
         Nr0y0732bWUJGb2o5FEZoOAy5VriXY3+xZXYe5MNgY56pHFvu1/xKQJ3CrN3dYCAcTIX
         k7FYZLn6axsgnIcM7luMrb8bIQKsK2ukAVICRzHhqZWAa/lp3e85FiYcKvibdB8Mu9QZ
         MQnc3VJErpdYsZ7YPa4qT0dD+TR+4SUiULFl2Sp2+GGWcUa+EBAC7vLgLB4E9g9re+Gq
         BqLoTxLFVJ0AHp91RQnAoT/dd4fNs1+t81ephHhqcfa5jJaKfp4psMlDple2MVVqXZiN
         6AFw==
X-Gm-Message-State: AOJu0YxbFgbW7HdrDa2v4yfBdrzBpqTEmRn6JnQ9Kp+JAXvEz3QgeEVd
	rIdwmH4af4OKkPGQAgC8KaASpkdVgB5w
X-Google-Smtp-Source: AGHT+IHfKZUme1UezcYWHyTRRlZSLSoThXV3/HhZuf4mQ55yUvSKSE3jgK8NmLNN9oMH6ocZqVCboQ==
X-Received: by 2002:a05:6e02:1786:b0:35f:e24a:36f7 with SMTP id y6-20020a056e02178600b0035fe24a36f7mr373370ilu.3.1703454245075;
        Sun, 24 Dec 2023 13:44:05 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id n9-20020a056a000d4900b006d9a0c6ce2csm2974325pfv.54.2023.12.24.13.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:44:04 -0800 (PST)
Date: Sun, 24 Dec 2023 13:44:03 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
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
    suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
    thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v2 10/10] iommu: account IOMMU allocated memory
In-Reply-To: <CA+CK2bD0Wz8mzB_BGKEYKCHRJKKVwr0CPK7OOC0tD_Sxi5Rp5g@mail.gmail.com>
Message-ID: <b5b98667-06aa-8330-10f7-8dba3ac0566a@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-11-pasha.tatashin@soleen.com> <c0d23d3e-39e6-57af-fd38-eb1b885d7da4@google.com> <CA+CK2bD0Wz8mzB_BGKEYKCHRJKKVwr0CPK7OOC0tD_Sxi5Rp5g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_134405_882950_D2296144 
X-CRM114-Status: GOOD (  21.17  )
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

On Fri, 15 Dec 2023, Pasha Tatashin wrote:

> > > diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
> > > index 3f85254f3cef..e004e05a7cde 100644
> > > --- a/Documentation/admin-guide/cgroup-v2.rst
> > > +++ b/Documentation/admin-guide/cgroup-v2.rst
> > > @@ -1418,7 +1418,7 @@ PAGE_SIZE multiple when read back.
> > >         sec_pagetables
> > >               Amount of memory allocated for secondary page tables,
> > >               this currently includes KVM mmu allocations on x86
> > > -             and arm64.
> > > +             and arm64 and IOMMU page tables.
> >
> > Hmm, if existing users are parsing this field and alerting when it exceeds
> > an expected value (a cloud provider, let's say), is it safe to add in a
> > whole new set of page tables?
> >
> > I understand the documentation allows for it, but I think potential impact
> > on userspace would be more interesting.
> 
> Hi David,
> 
> This is something that was discussed at LPC'23. I also was proposing a
> separate counter for iommu page tables, but it was noted that we
> specifically have sec_pagetables called this way to include all non
> regular CPU page tables, and we should therefore account for them
> together.
> 
> Please also see this discussion from the previous version of this patch series:
> https://lore.kernel.org/all/CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com/
> 

Gotcha, I think that makes sense.  When sec_pagetables was introduced, I 
can understand the need to account for non-primary pagetables separately 
because of the long-standing behavior.  In that sense, sec_pagetables 
becomes a dumping ground for "all other page tables" which IOMMU would 
naturally include.

So this looks good to me.

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
