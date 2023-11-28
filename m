Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A85D5C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24sPgabU0kZA6sjvZQxZono6PMrWyQZS7CMcWLKFr7o=; b=snUX+Wjb5XTz13
	7EcAewnEB8gVEEcT/j1yEEmPI4v42vWbAauRNspkKAerzlrDbunJbSr8mwas1cuMXbsQpxYuUAQ0+
	bk5rQfbTnuM/quK7vKoN6fynvARCEDfuwcXvzwfa1hYH+aG8rqtWMSmo8XV1cMip5n6/8nnFRfEcr
	0O588D0cR5yc/KiVzEKOfd68LndEkEzGJbZYR4Osjp6rkD4EUO2hrNSm884rLRVrUGZssaTVf9SlU
	VV0cNecVKQh4Bggoi7l0Oh7DBOjKhudPUuT3KyZr1isQeeJjqp3ZfSh82mi/VDioYBOsKKDKLOCn3
	F3YF2eSqxUtsckHg9Cow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87sw-006cyQ-12;
	Tue, 28 Nov 2023 23:52:58 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87su-006cx5-0P
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:52:57 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-58d5979c676so2047028eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701215575; x=1701820375; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dXv094b88Raz91Cnddakeh7QBolGZXMUWA5anR7QIWc=;
        b=JsI7zEoReUbG4CnP5gYYXKR/nH6AthOmT64YHHS8b7LP/o9p8vN8GtrTPIHQ/iQTR5
         9Z2SA2EsrFHlGK5iaGfSEtaYes67X5XAdW9jaoQdPQYp972v5vVDSTP4VJMmGVZSCgJN
         eTFKU5tVlqebGZAS6RBWTrBYoNe0quXH46BYumyqGcpf5kXQ7x0ZsGxDjEI96GEzwO9V
         UfNn+9q5yV6aC6GBI/o3W90/arQTf/oZKDL1P5Q0HVpHYb5W7yZ6MxbNpiCmkXSSXbL+
         CELWFey+2UCESqnjpaGlXG81s5QCnH+sSvi28TbCsrAbimywxzC/pbejIqFGCFLJOKoG
         6uaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701215575; x=1701820375;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXv094b88Raz91Cnddakeh7QBolGZXMUWA5anR7QIWc=;
        b=R9XFCVW4kt6uAc1cKdF9EZD/K5jsFKRkX9M+ZuldOllrDxhVeBsVUKONreFIAn40vS
         RFBl1ODbK7t+JIAoFmlFU2U9Xy7e+nIATxtbYG2LVDsojvLdgVotHLTkNwjS+Lc//rmg
         WCsB+ZBRo0403x+44WiHGkiu+S22XqhXbRS7/SaqY82A+z+xh1ggd9ylJtkP2L0pRPoE
         AagFC9CNmeCC2zI1o/q6dFKBklhos2Yeh3AYyLoJqV/4CLYiWnc2agBOIioU4DPHaLZo
         vLhZ0roexxhL7Yfn+4wGDGqczNSJtATJMAIS0Xri7c0gZPG++TJYaDh+GWamSOLR3BWj
         4zdg==
X-Gm-Message-State: AOJu0YxcQ1Y1cl4wbBjxsC6/7mvu7u/oevifduzDOIoHT9XenQmaOqKC
	Gxc1Dvay6brJUMBy9JE8m1v2Qw==
X-Google-Smtp-Source: AGHT+IGTztmrmgvPYpbtvzl17b62XmnK8+OH49tY+wjVCnGNXRfv5SNHBNwBBGUuA+R8HKGpsMl7yw==
X-Received: by 2002:a05:6870:5d93:b0:1f0:656b:5b99 with SMTP id fu19-20020a0568705d9300b001f0656b5b99mr24892940oab.11.1701215575150;
        Tue, 28 Nov 2023 15:52:55 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id z23-20020a9d62d7000000b006ce2fce83cbsm1060465otk.25.2023.11.28.15.52.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 15:52:54 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r87ss-005jIP-2h;
	Tue, 28 Nov 2023 19:52:54 -0400
Date: Tue, 28 Nov 2023 19:52:54 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
	alim.akhtar@samsung.com, alyssa@rosenzweig.io,
	asahi@lists.linux.dev, baolu.lu@linux.intel.com,
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net,
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
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
Subject: Re: [PATCH 09/16] iommu/iommufd: use page allocation function
 provided by iommu-pages.h
Message-ID: <20231128235254.GE1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-10-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231128204938.1453583-10-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_155256_163644_ECDC2940 
X-CRM114-Status: GOOD (  10.95  )
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

On Tue, Nov 28, 2023 at 08:49:31PM +0000, Pasha Tatashin wrote:
> Convert iommu/iommufd/* files to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> ---
>  drivers/iommu/iommufd/iova_bitmap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This is a short term allocation, it should not be counted, that is why
it is already not using GFP_KERNEL_ACCOUNT.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
