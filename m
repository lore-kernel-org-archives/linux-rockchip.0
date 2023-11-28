Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62AC8C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hc9rPBmhRFI85WmVaAXaP5SIXUAbMimsoSLdhrdfCPk=; b=2Lt4ktFDUAtCl2
	beEr6IBnWhm7OevbM51wIW2tkpIm3AX3/ezTSK1FW0b8ctHY8w+R1eZejvR70jMlo3ODQ1O3OE1u3
	efbnV/ik2LDMJ0cTCjUu89TZIt5FcdTCrdLFGDZCC0+ZuZO9hQbM9xD815tMxRiUGKvgqIb4czEfd
	yxtw4CKH5Md5gFEHCNH8pdHaMrb++JgjnmEP/8u8d9aqtUAEqLTi4UJQwMypG9Zj7cytwxn5KO0p3
	v4dqFjMbeCkvJ63sOuGD9w0amXUHo09bqbR6FnuUv+AXuOhZ44hvOErGAElZQ9ewQQt/YCNijImAM
	biNXa63AMha0+AO9Mmlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86zc-006XAp-30;
	Tue, 28 Nov 2023 22:55:48 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r86zZ-006X98-0R
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 22:55:47 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-58d7d58ab7fso1576302eaf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 14:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701212144; x=1701816944; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wfgEOy2prfurtAfhJK/0Guihsou0dTaccer75iSoWso=;
        b=fJf4VZIJJjEvJuKjZr7baViaFGMGqazrWGxaeFUD2ynG8cy2suCKSmJSRyRhho98vi
         szSHI0XrpWu+xSDJajG4ldPHQmhbWbeY6BPbVp9RdylQwK22kcFSqeGsUdpy+Klcn1Ny
         Tsf6oe7y+S5FWvxLnptBA4hrg/GZrHHqzvI1izGK1ePYMfeXUWKwafY7JkSGyS1xYpO0
         OuO07BDVsGGR41rtkq5PbcBDkm3fL0gZLkqXiLBNvOVbD/6g531F98Z7XRgtvYpuyQsJ
         fc9T9XHbiulmxUGxGEuaWRi+z9kt9fqzo4HPNupMETEQ9QMY8K0A0cj7b598tgAKJHJu
         3u5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701212144; x=1701816944;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfgEOy2prfurtAfhJK/0Guihsou0dTaccer75iSoWso=;
        b=VlnRcClwfCGhIi8rz4Pk62gs3L3oGSlnMm9G5EWrkH/iFHFuKPiIYudCgvBhgKct5A
         L1C0Y14RBsi2UsFryJlQb6E9EnR19wz0BTh0vtlRCDBqId9R/HNT8toUWUq3iA9ViWff
         ql1bHIoI/rgfNpvqeiWc1D1Oo9rhQCP95VxXy/bWjJg6TQo/xiJMQ8gARQK85eVF4jIj
         EY5mL6MoMkfm2Jid8GxAUilRmdML/3HkLXGGY+qrmZl21q8TRW0D7PssL0dr95Jl+XoW
         ADEgYr3JzY6rpkp+kegjEi7+QrUOC1QXNjp4hcpofZra0TjU0Vu8Rw4dOcCOZmnms2o0
         7eow==
X-Gm-Message-State: AOJu0YxmdDEGBHGTK5VzzG8Ta/jjr3Czx2KLAywl7xtV3/ISbw/ND1pe
	R5V4/NjtNMq30lYy9CbktfKQBDAhYeFn5cXSi1njLw==
X-Google-Smtp-Source: AGHT+IHisXYdh3pxH8NCFygwpTk8sa04O8TeLdxM3oMX+99Z92ajNHfOBhWjaeIXy0J8F2P4nyXD+nsTEaXIGG5EBsc=
X-Received: by 2002:a05:6358:724c:b0:16d:fb29:d78 with SMTP id
 i12-20020a056358724c00b0016dfb290d78mr15947280rwa.2.1701212143714; Tue, 28
 Nov 2023 14:55:43 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-6-pasha.tatashin@soleen.com> <8e1961c9-0359-4450-82d8-2b2fcb2c5557@arm.com>
In-Reply-To: <8e1961c9-0359-4450-82d8-2b2fcb2c5557@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 17:55:07 -0500
Message-ID: <CA+CK2bDFAi1+397fd4cYetUgmHxqE2hUG4fa2m9Fi3weykQdpA@mail.gmail.com>
Subject: Re: [PATCH 05/16] iommu/io-pgtable-arm-v7s: use page allocation
 function provided by iommu-pages.h
To: Robin Murphy <robin.murphy@arm.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, 
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
X-CRM114-CacheID: sfid-20231128_145545_200424_5B5798AA 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
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

> >               kmem_cache_free(data->l2_tables, table);

We only account page allocations, not subpages, however, this is
something I was surprised about this particular architecture of why do
we allocate l2 using kmem ? Are the second level tables on arm v7s
really sub-page in size?

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
