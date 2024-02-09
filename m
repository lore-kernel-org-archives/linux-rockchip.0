Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC0F8C4828F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 10:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQQlqWYwyl7s9F3KNQXWkA4skzhGX7tXpXiVClCgZlU=; b=PS6ZecdkOetYly
	PK//Pcsw+wjlSVy0igZk2QZb1fOHsGWgxMJQGyb/RxNW/ZN7yDcJMaSyA44HNeQCinKsF8I6fK+GN
	ifSnEA7MGoKPyh9xDS42VEKD+BzsX6gIdkcrrpzb1imcNOsjTjSfXpiaGTsfWsdwi8vTZgAb9yyjS
	a5NvQoIHGBvN2U/kbvLoFZprHdokhNSuwWAi3QqjGVws92m98kOsTWv4xoDjWPni6dGwlilxgVQ4d
	vJqa2i7WhfY1th+cyAX+05XfHyrOc21iStUgh7G60Fisr5THmwCr+fLPi6mYFhsDp6FkoEiIyhpD+
	u3KMEBbKVjG75lCW2tKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOSg-0000000GlKV-2Duf;
	Fri, 09 Feb 2024 10:50:26 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOSa-0000000GlH1-1mjH
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 10:50:21 +0000
Received: from 8bytes.org (p4ffe0c3c.dip0.t-ipconnect.de [79.254.12.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 23B431C1D36;
	Fri,  9 Feb 2024 11:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1707475819;
	bh=1l4xiU706H2waXh/SIkgEpJmrgL3FO4YrpToTkMtbVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DXIjdvdYGrzwWVWMVI6Remj5A1/1opy6lpRHzFIYTZLWyMVxAS0GqiHt0QzLsiugc
	 tvvxaVIiLYwWjLDketPdgB6IjeIzuRQjf0VXRq4uzWaUxF47AnNB7oFkRdbiNpNUbW
	 HDmrYJbED+uweFULqbi7wy+SndFRaeBkGeZFChggfx9o340PcIvRurtq71ONFv2o7f
	 s27ei5GDzj0AfGwrq5wl8tU5tEoNGwWKu9P94P6KWZA0kBrbD2nsaeccZF+eyuQp8t
	 +eQxQXTJDI6ZkcdJbl70Peccoydsny5tIoOXDqlQ72EccI2IjbeNb/kQ6vb3dy6xwO
	 XwUbAf264qglA==
Date: Fri, 9 Feb 2024 11:50:17 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com,
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
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com,
	bagasdotme@gmail.com, mkoutny@suse.com
Subject: Re: [PATCH v4 00/10] IOMMU memory observability
Message-ID: <ZcYDaTRhQLaBAZ5H@8bytes.org>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_025020_643166_E001EB57 
X-CRM114-Status: UNSURE (   7.89  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Pasha,

On Wed, Feb 07, 2024 at 05:40:52PM +0000, Pasha Tatashin wrote:
> v4:
> - Synced with v6.8-rc3 =

> - Updated commit log for "iommu: account IOMMU allocated memory" as
>   suggested by Michal Koutn=FD
> - Added more Acked-bys David Rientjes and Thierry Reding
> - Added Tested-by Bagas Sanjaya.

Thanks for these changes! To merge them I need more reviews and/or acks
from the actual iommu driver maintainers.

Thanks,

	Joerg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
