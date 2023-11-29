Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA1AC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 20:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBKpBkBne2bZCiUfF+JQ9cHyrr2WeTWM4mEHpAsxH0I=; b=onjIjrKthpH1Un
	Mcrw0y7yPX+Q/c7V2/kHWlKIw/sjvH7QG4X3pR+kF3zLVMgNYgFX0olwaGKx0RDQtBho7d0TS+5XI
	tvfFqFy3PFxCq3jq9Nn5Gw9QQH0yU3Xz04RzqIU8NTMVcDivJqJhJVbj98flm8tnZoFrmYvEzpxqL
	1fS080ws44342S/aYI0j5KUZBUTrCkKAt563JdsPtYLYkWYocCT9KHBRh7t5vJA2PHDhjwM1/5XQg
	pBCMRP3LC4XA6EF8TPeEt6cuO0sS32cmbnOyb4RKrueS+CeP77MIIX9cBB7pc3AJdvXO58Rai+9Ux
	EepNa/Hv3ARQZ3sQB3+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8QmA-009DKY-1Y;
	Wed, 29 Nov 2023 20:03:14 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Qm6-009DID-28
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 20:03:13 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1f03d9ad89fso45684fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 12:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701288187; x=1701892987; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oFOuz3/DxdhVTy2MXC00IZ5cc+fO6ZXycOtXt73BBek=;
        b=J3yiGwqPoyijkBDVVW+u0i5RZUYyOLSPQXKl5ybnsIWmH/CeNSWgDQRDz6wQ5otyCJ
         jlW7a4RiMz6T6JQ7dfi/ak3y4T4imGTq1gMggVTqm9E0J63WW6/ndd7bcdPid1xUqc3A
         YnjcTjVtm6MQl4czowf/OfRnI+8ogJoySDDkXlCQZsp9tbiqH5EXXNwnDCNXJ8Kt8CxK
         IHJMKyBRXE7dLga+rJM0wQziuJcoPy9aQjJMD8NE9VSiiYR+TtTBmqUoxAI+GM5rpv8z
         C+MC3xupXJ+Zo3Kw6yd3aRj3W7FYOT1xwZ0GZueP8KJFIi1L4vrFsUZ9G9Sx5EAkgeuw
         L0Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701288187; x=1701892987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oFOuz3/DxdhVTy2MXC00IZ5cc+fO6ZXycOtXt73BBek=;
        b=bhUJPuAbfMCPNGNXpF863YiSmU0XXmRVQMLb8qoD+JpFGdbzVWEyqDmxiw/2BHD1F5
         l4PynRUHp5o4zVwzdljlP/2pbHPwGEA/akJdMLkwUfUj8XgEPCQ3vh8I/W6c5wrZ3bow
         vpquRaZqKChLtq4KnWglshHi+UbtZkYrqBxBAEfo4KTyID8kNXDX95hrIAatqZRBfoyx
         wN51rvBkxh3nSongOckb6hp9j8sICYg2mKlNgtXhFppCzvodB4/u7Pm24l5fLJ/BZwOa
         c422CurM8ksnxz4ZBpfcrlfao3Uubw/nKrqIcJnZida9BjTpeMouD/dmCs9RJZaFGE/7
         aB2g==
X-Gm-Message-State: AOJu0YyBEN5rio1sZpkpmKW9QcxuKEJiyz7GOmxgTON4nh0eKVwmOAuy
	6BgTfz9A2dJ2S50F0T26Z1ZKdw==
X-Google-Smtp-Source: AGHT+IHhptM9jGiKnASdRwicfnuRd8rDMhOAWz7BQW7PJi3eFPiHvWovE7BfQ4zpeMeNVsilXqTyVQ==
X-Received: by 2002:a05:6870:6c0b:b0:1f9:571e:f80f with SMTP id na11-20020a0568706c0b00b001f9571ef80fmr27454829oab.13.1701288187396;
        Wed, 29 Nov 2023 12:03:07 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id s12-20020a056830438c00b006ce2f0818d3sm2098526otv.22.2023.11.29.12.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 12:03:06 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r8Qm1-005pNS-Mg;
	Wed, 29 Nov 2023 16:03:05 -0400
Date: Wed, 29 Nov 2023 16:03:05 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: Robin Murphy <robin.murphy@arm.com>, akpm@linux-foundation.org,
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
	paulmck@kernel.org, rdunlap@infradead.org, samuel@sholland.org,
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided
 by iommu-pages.h
Message-ID: <20231129200305.GI1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com>
 <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
 <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
 <20231128235037.GC1312390@ziepe.ca>
 <52de3aca-41b1-471e-8f87-1a77de547510@arm.com>
 <CA+CK2bCcfS1Fo8RvTeGXj_ejPRX9--sh5Jz8nzhkZnut4juDmg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bCcfS1Fo8RvTeGXj_ejPRX9--sh5Jz8nzhkZnut4juDmg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_120310_719960_7BDF7425 
X-CRM114-Status: GOOD (  13.66  )
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

On Wed, Nov 29, 2023 at 02:45:03PM -0500, Pasha Tatashin wrote:

> > same kind of big systems where IOMMU pagetables would be of any concern.
> > I believe some of the some of the "serious" NICs can easily run up
> > hundreds of megabytes if not gigabytes worth of queues, SKB pools, etc.
> > - would you propose accounting those too?
> 
> Yes. Any kind of kernel memory that is proportional to the workload
> should be accountable. Someone is using those resources compared to
> the idling system, and that someone should be charged.

There is a difference between charged and accounted

You should be running around adding GFP_KERNEL_ACCOUNT, yes. I already
did a bunch of that work. Split that out from this series and send it
to the right maintainers.

Adding a counter for allocations and showing in procfs is a very
different question. IMHO that should not be done in micro, the
threshold to add a new counter should be high.

There is definately room for a generic debugging feature to break down
GFP_KERNEL_ACCOUNT by owernship somehow. Maybe it can already be done
with BPF. IDK

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
