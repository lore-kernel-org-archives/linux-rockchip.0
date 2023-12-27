Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57DF2C46CD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 00:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWB1yi1b+y7KIK2oy+K1f574C242sUbUSoY8B4A/ko8=; b=12EZLjhYiYKXUV
	syELO1C1dSk9A3q6GnylnBiL6DsD8p6Wxur3Uhs9tbnNudmy6U3P1stn2OG++H1peUiXFNer8t6Pn
	QHz4ksK/UMqSKOvAvNvO2GZs1nVt/E+jHT8KbPeWnOeW3UjHYhD4eTLAKMClO1nQ4NBs0mpL0Mwda
	jOnW92yQ1yLy3YJqvGvIjVpb44IthCpHq/YxUgjQzwoHFrMTPWc7dSm6Fy5j34dfB6R8Z18iirMbP
	hgph7Fz77fUgFiprKxzaas+D5OeOZs4/4CweIq3t83qb1xZkXSh2OIVw+f96lvgAd76Mk5vBkF8Tj
	9QSIhAQ/8+640svVVqRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIHjt-00DhlA-1T;
	Wed, 27 Dec 2023 00:25:37 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIHjp-00Dhk8-25
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 00:25:35 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d3ea8d0f9dso464575ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 16:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703636732; x=1704241532; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=8yhvNEPy1OdHxiHajFepdZmy+iFIGCud+lbMtAIqjO0=;
        b=xdCVQ2MNowZABSR/PChNPgUF3eDk4oaztJcfpc/1JRtmIKWzZJk5mwM+v0F9Yuxb0O
         cpYRRxJXQLMLEBxNyPXWUgCSgvSUP8WgIU7eclETidQ3ANTa/7LS5sYEZYoi7l1zhgOQ
         5aQHgMjDs4mWN9qSs8RorJ01yg5NWF+C6Vy6SHIouxHT+YRkM5U87Gs7TDXpq5g5Qz4j
         CMsCJYtI9AUR6AmUWaAqkR4fJBt/YhpwYnT7O9+oWoPltS8h6Q2XV8XkvR2KJ93IgYBx
         LMmnR4P/QBRFcOK1grvQfBcgM8d+m5dWO1B1q0Zi1BInVChUVs0g/hkAztBGfub3Tt0N
         7APw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703636732; x=1704241532;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8yhvNEPy1OdHxiHajFepdZmy+iFIGCud+lbMtAIqjO0=;
        b=jisN4fmS9GSf0e+RSqD/20tR8MoEbEKhYJHMbiSILnl/9Jh97YJY4E/DLVa6tiohE2
         qUH+9oFhA4OPzECwqFVO90FLnNRhS2FoPribw3m3tuyUngre3e6RF+aCQH/aiRbJUh4s
         uNnTEvBpWavlhvKetIcn7tIbbnngZJ2Bcv6/1zp7qTDMWRf5KNOtLnbXhS/s2gCWdF2a
         7UUNbutcnivmim12cR9iwoNRu7lhaBFdzESppbv6rtuhUp8I2Ex9yNAU8B5YvI+yGqth
         aqpTQZWpiSx6QTmDmKQPJh2PZR7fZmEF+iJR5w+ZzHRVId3AGDrL26QXgBhjWnz7IuGv
         eMfw==
X-Gm-Message-State: AOJu0YzLN1mcR3JDocbl9+ySYQ6zUtB6n9zO5sd4YKrQjTShgKvafWLC
	/4YZU4/vz1QVtmmKGpm+DX/goF7O9Q8V
X-Google-Smtp-Source: AGHT+IHfrTTFDhOmLPe/BcyhT6xcBiwDnUGm4X46zMrKWUIrGhjoY17pKeWHle6/bW8eRgBmSHtD6g==
X-Received: by 2002:a17:902:f684:b0:1d4:55b3:465f with SMTP id l4-20020a170902f68400b001d455b3465fmr239910plg.25.1703636731663;
        Tue, 26 Dec 2023 16:25:31 -0800 (PST)
Received: from [2620:0:1008:15:5a8c:89e6:ca2f:ea30] ([2620:0:1008:15:5a8c:89e6:ca2f:ea30])
        by smtp.gmail.com with ESMTPSA id w7-20020a170902e88700b001d072365b87sm10636289plg.106.2023.12.26.16.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 16:25:31 -0800 (PST)
Date: Tue, 26 Dec 2023 16:25:30 -0800 (PST)
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
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
In-Reply-To: <20231226200205.562565-11-pasha.tatashin@soleen.com>
Message-ID: <fc77b844-618d-1873-1588-15d59b8604e2@google.com>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com> <20231226200205.562565-11-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_162533_710542_7FF711DC 
X-CRM114-Status: UNSURE (   9.43  )
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

On Tue, 26 Dec 2023, Pasha Tatashin wrote:

> In order to be able to limit the amount of memory that is allocated
> by IOMMU subsystem, the memory must be accounted.
> 
> Account IOMMU as part of the secondary pagetables as it was discussed
> at LPC.
> 
> The value of SecPageTables now contains mmeory allocation by IOMMU
> and KVM.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
