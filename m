Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A34C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 15:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXxLv66R7qRlh3c/Lh8UngY8lELxJBpx2CE++swqK7c=; b=n2g93VGzO2TrBn
	1geVmB+tqj48wVu3+hC8RdhscAsIdd8vVP7nbgKOIg3ADpH0RpKLHmBP1/TVFCj7PUWpe1l7mYJIQ
	bJc5nM7wEnaHA6ZoPZPIfYpFi36MhBnsGw8iKRo8N4uljMlVubN1+Hmq7QQ2cxjqMyf47d81Et9cx
	JOCnn6LsQZ/Yw1gqYloh2a079tynzVFyQKBogPedlPBsvLWGxW9+uYsW0+QkRNIssblVOpXVkNQED
	l6MoG/h2rX5Y7bIMDZLKK0MPrtv0dANMD0/cEiMLimQSPNs1uiIq1FXkVJn+rPV1KkrlRcFq8FfnG
	EoCxlWrc3qQZkzD0aVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuyW-00000009oiv-0eYh;
	Tue, 13 Feb 2024 15:45:36 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuyT-00000009ogy-2mE0
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 15:45:34 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-785bdb57dfaso299861185a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Feb 2024 07:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707839131; x=1708443931; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r+5lFm1GOYo46btsIaJvA6S/B+CQsp17IG3lccG/v6g=;
        b=UWm1dHIwrS3RnaRORpQRH1uwr7u2Pe2vNlcTMa3nn8ClroT8qau8O8I37E9nTYbLpT
         4kpXPFcoEHGf6vWu8h5YoITcm7eVtsM8+sG6Hg/D0Z2BGgkh5JyIMvw3bmDG8MNxRd6N
         J6Dbe8qwoAqT8bf9XUY4s3TfEdIyGIycQcScihinP0pnKQaZ6+JBj/4igdA+A9/7h7br
         Se+h3AC7yWaoI91zB3zKdRdtfdy9Lxon+kuXwlke2AhP25/2/D6F/IB+C1iMGPzhzazz
         dgFXbpcxZ8Kf6QAvC0Wd9iWoKQzj0cGay9eNNP88xat2z2pCNLNRLmrGkIRmImN9DcAo
         5rtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707839131; x=1708443931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r+5lFm1GOYo46btsIaJvA6S/B+CQsp17IG3lccG/v6g=;
        b=MbvWvFqga2D+IW+bQ5jBrr/WPjtUFCahEO/lUt0TtJyWO8ls/5jZJWXmokLoRGfvpc
         E1ID2DmuG73PphhkD4DOhnaKYyF8p5puNc3NKZfFMSdz+UaEMI41ECSqi2QvFn+wCGMf
         xyXY2nfCZNEpMBs9PQnVZjTFwT6UPiEkykEFIXRBYS/a2liytrRuXO7yScDg2rQGq/5E
         rtE7YL/telfYSI39XEigrvbRcpaEzp7dvvo7QL3srumF6SyX30r8Llbe+rw6E9wha0Nb
         moKW1ZoeEuEBtj6xN1NqZ7bh3rjrsB5LpH4BLwSUiCK34Fvwq4fsMRmV6MFCHXpfxwcM
         bsTQ==
X-Gm-Message-State: AOJu0YzH+zT9duPOSvfFXiPKXLfw82FW6Agkb6Y/lVW0kknPT57clTt1
	sHJzWI9nMsirE2bi874BeoJQxEXN46DaPLWEI2cmnww8ddb6P1DsrGPY2qjGbxLbgsWNTB43Hjx
	HzGkMl3fx0Eo7sPtLKnS5BoJGTfogqOBaWSUofg==
X-Google-Smtp-Source: AGHT+IFqChznTFjr/EeidSN571ZA0nQfVJvF+Fp0E+Y2flaP6eNCXc4z1s3ADkdtr1CrUfrPgpTF+9pex3Z052b1w5U=
X-Received: by 2002:a05:620a:618b:b0:787:1db5:f0de with SMTP id
 or11-20020a05620a618b00b007871db5f0demr2991955qkn.26.1707839131046; Tue, 13
 Feb 2024 07:45:31 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com> <20240213131210.GA28926@willie-the-truck>
In-Reply-To: <20240213131210.GA28926@willie-the-truck>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 13 Feb 2024 10:44:53 -0500
Message-ID: <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com>
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
To: Will Deacon <will@kernel.org>
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
	yu-cheng.yu@intel.com, rientjes@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_074533_727945_9C10E578 
X-CRM114-Status: UNSURE (   9.38  )
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

> >  SecPageTables
> > -              Memory consumed by secondary page tables, this currently
> > -              currently includes KVM mmu allocations on x86 and arm64.
> > +              Memory consumed by secondary page tables, this currently includes
> > +              KVM mmu and IOMMU allocations on x86 and arm64.

Hi Will,

> While I can see the value in this for IOMMU mappings managed by VFIO,
> doesn't this end up conflating that with the normal case of DMA domains?
> For systems that e.g. rely on an IOMMU for functional host DMA, it seems
> wrong to subject that to accounting constraints.

The accounting constraints are only applicable when GFP_KERNEL_ACCOUNT
is passed to the iommu mapping functions. We do that from the vfio,
iommufd, and vhost. Without this flag, the memory useage is reported
in /proc/meminfo as part of  SecPageTables field, but not constrained
in cgroup.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
