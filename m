Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 339BEC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvUip8qywGrg4MTNCDXYhI2eWiW+hVqZGBisLBwq5TU=; b=ZI7A17dmoNAb9r
	3d0R07voVz6ZIn2kRb5y1aYOgn1GuMnRLT6yOdM9xJFyT1WGGLVue2byX0ghTWU0ThDuelJ6EO9Th
	Fc/jOpM4naB8uuAxcysUYIkS3CReOTgftwuriRBFths1+NG4wPm0VBIvVRL6O7kob/SwTu63cRu63
	C8n4PTMkYZUsZCku+pPz72cnigC3VuTREm3qrXltkwDUDk5oB/NFwqFoTk5TMJCtFsmAjfL6p+8AW
	RF6iR+MREiGvpuon10ihzkBNuG0E33X7sDnkVj/GxCPyp7h81HhOZ6OJDt7yvydLzsvSRmLSSWiI9
	vHDy2JcZpZkU3a4tIUhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87CH-006YpI-0a;
	Tue, 28 Nov 2023 23:08:53 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87CE-006YnF-0L
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:08:51 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-41c157bbd30so32728391cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701212928; x=1701817728; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZwfH1boRaqUSm7vYG/zdQBuuZhpN21nmfcJNTWlLUDE=;
        b=b2CncReKzheK/M0vQsrQd32tCXs/ach6HrOm/XaPDa4KiIcqt2zTZxbtL1HM1e/bHX
         5WPnU4ujilHyuhHn1tyNRWcRRkWDye0CIkncOPnv36hdKKnHnTr5r1QgfQP0Msy0Se4k
         DUQPyrItAEAPibClIyFp0am+V41gXORfN+k1Glc0emE6WCJrVZnqyQZ79ivxv83mfPEE
         Ivky3KRzmkjbls2GPOEjBRCwJx+2ydyanh5LXUmCBeO541qS1diqSw58zNkCjA3Dbm2S
         Hp62ugMtVTeo+O6OvvylIWCH0iImhaGnAHoOhXif6fCiYrDpU4TeFMhj82VWh/yKzqHl
         ofoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701212928; x=1701817728;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZwfH1boRaqUSm7vYG/zdQBuuZhpN21nmfcJNTWlLUDE=;
        b=EN44IgVqFAag9wpjZrD7dp98+Y6mRcz7JHihQt8bgmJUN5gijCHuVTRP5VX6swLhby
         +ho1IoBcB/3wjFupRiZklncbvuM7dkO7/YjXAB47u91PE3gBvkJ+3+sJc57JOQLnMdJB
         OVfob+qfmBd21rRG+UTZFT3Dc0ROy38ycfxa5QYtohs3POIIf2JlDPZhpLzHqBIPG4mV
         gGwIP8usyzZ1APaE4QBBXXmG5dEBkhrnBEdQydRBRYJ0TxwPfh9NgMmjx64dlxaNGtbl
         XJI4wv0jKTlY5UkrJQGIUv8ffjVWkOQiIErO8RC2jEooWcE+FXAaHjuaM3ekFOahuDUx
         q8sw==
X-Gm-Message-State: AOJu0YyYeOk1glJaWNFRL3XEgAobHfyMzppz/n/3/XUFKhaGosgpFwtf
	iqzC2Z9VgGIR7Tnc7cLxdS44ViCXLqhxutzeZ6Jjhg==
X-Google-Smtp-Source: AGHT+IH+DSzeg4H32kbSmeDdX42LwmFTBbiExz1cQ9Spo9pVMTh9OFSxf1oX9/Sr0tuUo1qYELK4l02okd8aqJLSMys=
X-Received: by 2002:a05:622a:d2:b0:423:7f91:3a17 with SMTP id
 p18-20020a05622a00d200b004237f913a17mr22124861qtw.21.1701212928489; Tue, 28
 Nov 2023 15:08:48 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-7-pasha.tatashin@soleen.com> <d99e0d4a-94a9-482b-b5b5-833cba518b86@arm.com>
 <CA+CK2bDswtrqiOMt3+0LBb0+7nJY9aBpzZdsmrWRzy9WxBqKEg@mail.gmail.com> <79c397ee-b71b-470e-9184-401b4b96a0d2@arm.com>
In-Reply-To: <79c397ee-b71b-470e-9184-401b4b96a0d2@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 18:08:11 -0500
Message-ID: <CA+CK2bDZUHSLWB=ec6Jdjbi+y6fD8=j96bK-kPHYKc1uiVLZWw@mail.gmail.com>
Subject: Re: [PATCH 06/16] iommu/dma: use page allocation function provided by iommu-pages.h
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
X-CRM114-CacheID: sfid-20231128_150850_143491_8256CF69 
X-CRM114-Status: GOOD (  11.26  )
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

> > This is true, however, we want to account and observe the pages
> > allocated by IOMMU subsystem for DMA buffers, as they are essentially
> > unmovable locked pages. Should we separate IOMMU memory from KVM
> > memory all together and add another field to /proc/meminfo, something
> > like "iommu -> iommu pagetable and dma memory", or do we want to
> > export DMA memory separately from IOMMU page tables?
>
> These are not allocated by "the IOMMU subsystem", they are allocated by
> the DMA API. Even if you want to claim that a driver pinning memory via
> iommu_dma_ops is somehow different from the same driver pinning the same
> amount of memory via dma-direct when iommu.passthrough=1, it's still
> nonsense because you're failing to account the pages which iommu_dma_ops
> gets from CMA, dma_common_alloc_pages(), dynamic SWIOTLB, the various
> pools, and so on.

I see, IOMMU variants are used only for discontiguous allocations, and
the common ones are defined outside of driver/iommu. Alright, I can
remove all the changes for all no-page table related IOMMU
allocations.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
