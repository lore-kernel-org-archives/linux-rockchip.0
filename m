Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71324C48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 00:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2uXaH8FtYDJcjsvlaU9VLqgPy4M5fh4H+68ATZZmaQ=; b=hIRjGAYQVDfxS7
	mOCw/7M700idBStu6coTCeLjRr5yo4XqRsoE9OsHt6+WL+GUHDspMQAW2EuT7ZfcsMo3oyUYKF0o1
	0AXfIjH3h/FIvPjFHm/kq8PbLSA23KCiokiBz3i+79K+yKXzNLPNJIk4VG5two+lWHoaoFn64qIBI
	N0egsPnhy7K2dzdcGP/x9xZIU/ddfv7uZAObr7+5FgBQzy0ORejwWFb6kRXq1oNx2Kd/iA2CfxjxE
	h2LmFTlJo5f+14YNESaSTDKK4HHSLZ4ueCS5GhtqUtrRI2FuVctpt26n4WfZaabid/55DAIiAz4EH
	1wK6aDxNvXO8yO4U8qGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcwwG-0000000329p-2xQQ;
	Thu, 22 Feb 2024 00:27:48 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcwwD-0000000326D-147O
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 00:27:46 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-42a31b90edcso50330261cf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Feb 2024 16:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708561664; x=1709166464; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aQ94+F18kEzvELBZYdN+dTOkgUJXZz4kfGzznQZui6Y=;
        b=OognLST93mSzScLEylB6Q+joAjnORdfV+zZFRvMhnfuxc2rWm6imv02BXRhGRti/fm
         GK49yZ1o7LxQ0WhIngL542K6iP0PD3AGS1ooFPkpDG+T6mgCUaB3L/npKBQabvj0eHxo
         uBA1aLb2bh/ITOWm+CSsuOVu7vpcpIYfxoo71OlnBp0/RSSCdCo0VFdkqpODh0avlGHL
         I8ZjyXi/tp1gOjwiJBjpmBZ9+HiV4xcZSVoq/BM2s7m6oRi+sqgsNZCzdXseOuodToY9
         Qi4XoUd0VEpf2inLKusf9/aOGkBaa7WgMKB0PZso7iQCMSXux5kZ2tIMBoI0ZVWuQG8J
         PtSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708561664; x=1709166464;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQ94+F18kEzvELBZYdN+dTOkgUJXZz4kfGzznQZui6Y=;
        b=jQc6JAmfJ0XZi/tIpH+ksBZ7rmxwNjfVGUDf3Jfuokip50ZMV32AknBKIXR5Xc7LU4
         5GvFXKzYNEzbTxsucXtKVHDkndpHE4x0v3WIbnX7ShIA2EUcuW0N4ivgP0YelG4QT4bw
         UrwsKHQyiWmFtp+ILLoMPD/iGmD7smHVcFeTtnxBaSBvoQJUWLaJrpVn/NLUbLHNP/JX
         SgfYafHzFMfzPs0qTIN9h8qplRPjpHGeqTTLDStNBAv1/RRSfkezm+kwyVJ/qKsLzu4U
         ch72vD3qwcPGgJRTRtNBnIRdmKsSPAnP5C8sSYcSGqg7iiV+9uFbq5fX18evB7poVCpY
         PufA==
X-Forwarded-Encrypted: i=1; AJvYcCVoAWxvIEFaWY5uKDpR1x6gAiyt7IUH2EfXY2zwvwgUDzJ77VOGAG/ZZMm9F/twGQXQqGwmwsrH05i80JiEi8tQZis6lGBs2mlM5PlQp1k3aP+g
X-Gm-Message-State: AOJu0YxJAMlLU7m1R05YV0w57/IGH3+JyIlbBg/T/qrRRfygy/CQoVUg
	5AT4wLn3QP2l7CrCSI7mme7bXH6BgP+3FM5ecmZc53ZfXvmZOzR4yredSKXvrEIVBymSFFMMvpE
	gmuUHg6w4t+49My4lJ56wF6an08wITnRHK110cQ==
X-Google-Smtp-Source: AGHT+IGOmZsSpC2Y4SyYnlcRyS9zDA76SD5RvGLDRLTwS53fSOkMzROnT7IsmFNQ2MsELKRVDDNbuO1hZG2u+Llmnq0=
X-Received: by 2002:a05:622a:1391:b0:42c:6fef:90e with SMTP id
 o17-20020a05622a139100b0042c6fef090emr25244584qtk.65.1708561663980; Wed, 21
 Feb 2024 16:27:43 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com> <20240213131210.GA28926@willie-the-truck>
 <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com>
 <20240216175752.GB2374@willie-the-truck> <CA+CK2bDURTkZFo9uE9Bgfrz-NwgXqo4SAzLOW6Jb35M+eqUEaA@mail.gmail.com>
 <20240222002152.GG13491@ziepe.ca>
In-Reply-To: <20240222002152.GG13491@ziepe.ca>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 21 Feb 2024 19:27:07 -0500
Message-ID: <CA+CK2bBGzM8Xbfq9A7HHNr40oukvAk7-1RK7AFbW3qFcNstb5g@mail.gmail.com>
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Will Deacon <will@kernel.org>, akpm@linux-foundation.org, alim.akhtar@samsung.com, 
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
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	yu-cheng.yu@intel.com, rientjes@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_162745_360424_9C8CC7E2 
X-CRM114-Status: GOOD (  26.88  )
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

> > > > > While I can see the value in this for IOMMU mappings managed by VFIO,
> > > > > doesn't this end up conflating that with the normal case of DMA domains?
> > > > > For systems that e.g. rely on an IOMMU for functional host DMA, it seems
> > > > > wrong to subject that to accounting constraints.
> > > >
> > > > The accounting constraints are only applicable when GFP_KERNEL_ACCOUNT
> > > > is passed to the iommu mapping functions. We do that from the vfio,
> > > > iommufd, and vhost. Without this flag, the memory useage is reported
> > > > in /proc/meminfo as part of  SecPageTables field, but not constrained
> > > > in cgroup.
> > >
> > > Thanks, Pasha, that explanation makes sense. I still find it bizarre to
> > > include IOMMU allocations from the DMA API in SecPageTables though, and
> > > I worry that it will confuse people who are using that metric as a way
> > > to get a feeling for how much memory is being used by KVM's secondary
> > > page-tables. As an extreme example, having a non-zero SecPageTables count
> > > without KVM even compiled in is pretty bizarre.
> >
> > I agree; I also prefer a new field in /proc/meminfo named
> > 'IOMMUPageTables'. This is what I proposed at LPC, but I was asked to
> > reuse the existing 'SecPageTables' field instead. The rationale was
> > that 'secondary' implies not only KVM page tables, but any other
> > non-regular page tables.
>
> Right, SeanC mentioned that the purpose of SecPageTables was to
> capture all non-mm page table radix allocations.
>
> > I would appreciate the opinion of IOMMU maintainers on this: is it
> > preferable to bundle the information with 'SecPageTables' or maintain
> > a separate field?
>
> I think you should keep them together. I don't think we should be
> introducing new counters, in general.

Thanks Jason, I will keep it as-is. I will send a new version soon
with your comments addressed.

> Detailed memory profile should come from some kind of more dynamic and
> universal scheme. Hopefully that other giant thread about profiling
> will reach some conclusion.

+1! Memory profiling is going to be a very useful addition to the kernel.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
