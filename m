Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24AD6C54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 21:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dbzaHPKK7XOHJsonSROgWyqpcqSPtXYn7j122l3g6c=; b=R27jE33IZ5UeRk
	tj0J1QpQUeFXeCWzhM+aHzCoa0mhtJ6M9NMmxibJ/AqEvvpTQpYVzmbM/6CL0xCIpd8+KjiqBCG21
	xwRqpZ19dRbaidwONDaBSu7nbnZ/8i9q2C8xNqyWOU0AihUVkZz9oHvQwTMFDL9yQ7qZjdsr2wceK
	Kgv66ue9qTBB4SNfZSFan7S5r7kCXN/0mwq9PGtXAJajUbXkFXVsYSTQMy5rJPo11+9b7hWsMCQtL
	hKgeShNqJhWayg5e3CKXMNbOcCUMKS78ooyPNqYS6z70r2HPjgehQ+ZX/rfgyVL+BuXjfZFFk7gqR
	wZa5CrAbk+MO4Gyt0K0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlFUg-00000001gAY-0wrS;
	Fri, 15 Mar 2024 21:53:38 +0000
Received: from mail.8bytes.org ([2a01:238:42d9:3f00:e505:6202:4f0c:f051])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlFUa-00000001g9A-1aYn
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Mar 2024 21:53:36 +0000
Received: from 8bytes.org (p4ffe0c3c.dip0.t-ipconnect.de [79.254.12.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 1C8531E2193;
	Fri, 15 Mar 2024 22:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1710539602;
	bh=jhM7ZU8FyIla2o0H5m42cLWxc85vKv1rzCK2ST8oj+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ejWnM7JjNgo1Ys7WJ+duORdqNChXIKawPJHEGPvKzhkkfIAJlfXspOCr+eQiMME96
	 tsTNs3axuK/FqxnqYzLYkhwGHhTDgI6Cdp6ZKqqXu7KW7v9HCNEeuqiwmAad9NsHgd
	 lq+LllK57GAVJFVoam7Sf8tvQ9nx4V+81+F0a32IC+o8INOLldtxyrDbk2lIuD0/Iq
	 tbEjEEqioSbWbO88Xjro/jyflz8JvdRxBIwvkrBbje7A/LU8xIgIDkO6vb/wAwlPza
	 ylpM/bpodX485nATx/iDV9D/v0w1o7eJtSGgjBG0OqY6jWlAfbe2CebOkr+Ex3MpAg
	 U7tplkqnSgVoQ==
Date: Fri, 15 Mar 2024 22:53:20 +0100
From: Joerg Roedel <joro@8bytes.org>
To: David Rientjes <rientjes@google.com>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>,
	Andrew Morton <akpm@linux-foundation.org>, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, krzysztof.kozlowski@linaro.org,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com, bagasdotme@gmail.com,
	mkoutny@suse.com
Subject: Re: [PATCH v5 00/11] IOMMU memory observability
Message-ID: <ZfTDUGSshZUbs13-@8bytes.org>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
 <00555af4-8786-b772-7897-aef1e912b368@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00555af4-8786-b772-7897-aef1e912b368@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_145332_582839_AA620A38 
X-CRM114-Status: GOOD (  14.21  )
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

Hi David,

On Fri, Mar 15, 2024 at 02:33:53PM -0700, David Rientjes wrote:
> Joerg, is this series anticipated to be queued up in the core branch of 
> git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git so it gets into 
> linux-next?
> 
> This observability seems particularly useful so that we can monitor and 
> alert on any unexpected increases (unbounded memory growth from this 
> subsystem has in the past caused us issues before the memory is otherwise 
> not observable by host software).
> 
> Or are we still waiting on code reviews from some folks that we should 
> ping?

A few more reviews would certainly help, but I will also do a review on
my own. If things are looking good I can merge it into the iommu tree
when 6.9-rc3 is released (which is the usual time I start merging new
stuff).

Regards,

	Joerg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
