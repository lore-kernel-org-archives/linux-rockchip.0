Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0899C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htEbYdVn/TCHJjPMpwSrW0C9HV0Z05jAAnmPh97rZXU=; b=uVbdb/Ifk9IuMH
	Eia05nwEKJDVAUkz6uHyctAABd8ySLhq6Zh53iJvyupx7rr7qlK6Fiz6o7n+UEwkQuvHJya0EEtBq
	m2GYx+jqNQOZaM1zkRobFXLx/XZ5LzFw2EwhXgoK3bxQqU7V2qV9IJoSYSTqhY4GLK3oWiGY8v0bS
	RNUglmCxvuWpfUnao8SEMpC/X8Xw+155rYqlH3p1Pn0QyebjzWoikq9ydx4PsJBOY0Y5Q9r+w3wEM
	zdM/iF9zD/FKmdv8DG2D3sRIAM/VtU9kU+R+nHkTcv6SwPgS/n1W3IQA/k2I794tLiEYaX0MaMnk5
	DWM4NHIlTzvPcbG9fW/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87sK-006co3-0c;
	Tue, 28 Nov 2023 23:52:20 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87sH-006cmU-13
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:52:18 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6d7eb7ff384so3991056a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701215536; x=1701820336; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KGeDrNEnimmhtGEyy4xADkNVo65XsrpvCKCPlUM9+8M=;
        b=GWeaYOJz04BrBlozPyfLH4AYe2ENcceAE4jY81YrvpfkYmiJtkLTzSATtP8XBigH+E
         LLy98FjZR+/7iLt/FPlXCkpywVE3hIG3ZfTWlmj1ZTWy2geg9CAGiFBoHYLY5hL5DI1r
         gta2zPr5Abv2drL4+Ah1beBgaauWSLNZWoj7RXFVS29BeHTKjGuBiqO8fahXg6Lu5rXG
         tCS3gE7xvlejvrKvkgM9VgfAVbfb3GQVCZ+AOjh9D5nrgkbAifuVBs3A7Bz5z/KWvOB6
         VVgZ8s3DUNlK9dLIwMUnMz60HyEQb/SKXj9lk/deSHIbndd3p2e2vYeBzwdaX1xDibMo
         uQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701215536; x=1701820336;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KGeDrNEnimmhtGEyy4xADkNVo65XsrpvCKCPlUM9+8M=;
        b=NoELsgC9dnrfHWCXfUQs18LC0bPepe2oDwCtM8dIxpO5QtUImE3Mh/IQQbkdkQfNve
         BV+HRskFzkmc09JUrPd6UgVo2s+fVYJusZyAErU3uv/yGAIqBIQlwnrNxeb73w5mJkny
         gGIxrwiwdsfarwV+vBIj4LhoAvw2jTE8461mu8ygDnMWw95fAO8FiQqpUBAXPXGSf7Tv
         NXxWn5UZArYJSQQyh1ISSQjGRBktuBFqhQYaRYEIv7Pn1qP5QuCsuB4hPqLRaDn491Ch
         mC4rsvtdFCkaX53yEwebKRqhcW9kOlNcW00UdZR9JAzs1FR9/FOLlW3tNmRyaBfqk8zi
         lzCA==
X-Gm-Message-State: AOJu0Yy54vBMxRdn0LtKegVIuoLXkG5QYqad/+8oGfs3sMwP9x3n1+bn
	nxgGvxDEh78wOTLNTkyNEqz4EQ==
X-Google-Smtp-Source: AGHT+IH9LmWzJO7y47O3QlJBfbaegvjW4JiiPSyZGlFsMKhzquzPk2K8a5k6oldvIY99Eeb+EHerAg==
X-Received: by 2002:a9d:6403:0:b0:6d6:4972:b7ae with SMTP id h3-20020a9d6403000000b006d64972b7aemr18597902otl.13.1701215536183;
        Tue, 28 Nov 2023 15:52:16 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id v10-20020a056830140a00b006d834fd3399sm504997otp.59.2023.11.28.15.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 15:52:15 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r87sE-005jI0-V5;
	Tue, 28 Nov 2023 19:52:14 -0400
Date: Tue, 28 Nov 2023 19:52:14 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Yosry Ahmed <yosryahmed@google.com>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
	alex.williamson@redhat.com, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jasowang@redhat.com,
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org,
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, mst@redhat.com,
	m.szyprowski@samsung.com, netdev@vger.kernel.org,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com,
	virtualization@lists.linux.dev, wens@csie.org, will@kernel.org,
	yu-cheng.yu@intel.com
Subject: Re: [PATCH 00/16] IOMMU memory observability
Message-ID: <20231128235214.GD1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
 <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
 <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_155217_360573_0F3FE065 
X-CRM114-Status: GOOD (  14.15  )
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

On Tue, Nov 28, 2023 at 03:03:30PM -0800, Yosry Ahmed wrote:
> > Yes, another counter for KVM could be added. On the other hand KVM
> > only can be computed by subtracting one from another as there are only
> > two types of secondary page tables, KVM and IOMMU:
> >
> > /sys/devices/system/node/node0/meminfo
> > Node 0 SecPageTables:    422204 kB
> >
> >  /sys/devices/system/node/nodeN/vmstat
> > nr_iommu_pages 105555
> >
> > KVM only = SecPageTables - nr_iommu_pages * PAGE_SIZE / 1024
> >
> 
> Right, but as I mention above, if userspace starts depending on this
> equation, we won't be able to add any more classes of "secondary" page
> tables to SecPageTables. I'd like to avoid that if possible. We can do
> the subtraction in the kernel.

What Sean had suggested was that SecPageTables was always intended to
account all the non-primary mmu memory used by page tables. If this is
the case we shouldn't be trying to break it apart into finer
counters. These are big picture counters, not detailed allocation by
owner counters.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
