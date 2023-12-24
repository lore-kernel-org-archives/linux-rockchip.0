Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC644C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2f0lekBUE1C9I+/SCytNhz1bZYcQwRJ58JboewabBrQ=; b=ngZWSPQXCLSdAi
	+oUpg0L/oNJz0i+xbkztJeirfa9e9ZnFXoSw8BR54Cfq0x8WB1A4r9EmQqdjW2Xj8wNqQVnDAvbkA
	WmkPO5xnWnkEx+JfIGkH3kAy4o+alrguef26Ublowf0WsUamfCJs1PmgpdAqzvIRJg+dQZSeqs619
	jRBbe+vFmQdKz5y6g332+7nvMNOcqoXzXXSpP9wx1tQXymzOkxnZYsTE7C7AuUkg3iGqJJwj1GfmA
	jMHQ8dUM5FLN/VQjdsZoBI1OlEFnLpT0Akb1n8aO6xU8IAdamU7MPQJQTdpDHTGKsSGDo5fmwB0ud
	Ly1o/jF7WdEEs6+ZyUgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWKV-009vKG-2U;
	Sun, 24 Dec 2023 21:48:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWKT-009vK6-1V;
	Sun, 24 Dec 2023 21:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=iS4XqJ2iABVTA87UAP3QHDG9uzTMdMhBSMobX+j7nkw=; b=oP0ArS5XMerkIUplOafUOc2jkf
	xd6inAczmxuCSkcupZtjzZwLdPR450XFbqVXVdOoMu+ZgEVMSuXyBqVXwLEj+cvFCdjyaQ+TZlMeN
	GPOAZmWo5vwwIoSDRpkjzeZd01Ff1VKdrXgltm6g3/O7LKt01JtGOFz06MdIJNKq41AoANV1GBtj3
	PhNxXHKxaT0oXm1YvIs1BY1OMqYslvGZF/l6iqnZ/PzN0NVBoFRKY3Jw9xZriwpXUM5iuZAbG0inV
	SHNsGQLdXhf87JrqnW9GEnwoHW0R+6ZiRH01SK2HXETJ5P1bOkUJ1WUd+OiIFkLTH3xg6no19SMEl
	/vYubegA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rHWKG-00Ek0R-Do; Sun, 24 Dec 2023 21:48:01 +0000
Date: Sun, 24 Dec 2023 21:48:00 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Rientjes <rientjes@google.com>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>,
	Andrew Morton <akpm@linux-foundation.org>, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, joro@8bytes.org,
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v2 01/10] iommu/vt-d: add wrapper functions for page
 allocations
Message-ID: <ZYinEGCdl8mZjmXi@casper.infradead.org>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-2-pasha.tatashin@soleen.com>
 <776e17af-ae25-16a0-f443-66f3972b00c0@google.com>
 <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
 <1fd66377-030c-2e48-e658-4669bbf037e9@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1fd66377-030c-2e48-e658-4669bbf037e9@google.com>
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

On Sun, Dec 24, 2023 at 01:30:50PM -0800, David Rientjes wrote:
> > > s/pages/page/ here and later in this file.
> > 
> > In this file, where there a page with an "order", I reference it with
> > "pages", when no order (i.e. order = 0), I reference it with "page"
> > 
> > I.e.: __iommu_alloc_page vs. __iommu_alloc_pages
> > 
> 
> Eh, the struct page points to a (potentially compound) page, not a set or 
> list of pages.  I won't bikeshed on it, but "struct page *pages" never 
> makes sense unless it's **pages or *pages[] :)

I'd suggest that 'pages' also makes sense when _not_ using __GFP_COMP,
as we do in fact allocate an array of pages in that case.

That said, we shouldn't encourage the use of non-compound allocations.
It would also be good for someone to define a memdesc for iommu memory
like we have already for slab.  We'll need it eventually, and it'll work
out better if someone who understands iommus (ie not me) does it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
