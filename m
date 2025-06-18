Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74325C7115D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 18:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cubFN6mk+LxUIm4pGXz99hPk6wuNpK1vu0cIdlnog0A=; b=c7+EiA3w/Fxn17
	tHfRjJdy57lB0QxPdVvuFJ1puIMXeK2s0aYkAMc06WcpmL8bJAuyhHulb0aFkiD6CnL/Do1sT6VgQ
	P3jOQK0NSXn0sK0HZpYRnN6FL1bGE/KERslu/IyOss7JwqovTyQGJWbVRhmyJ5ssslrEbOP3ahvYC
	fn1z+8CCVIr9mA8wMwqSpSE+vD636AylrHt2lf/om8pxe4mnirLTq3FNIoxKjd7ZO3Yp9mVWUDnP7
	J4uQKYWv3aeoPAJT4F6rtoZHji+tKQVMMxZFJC8Sd75Tzyx2wDeGvYNlJhfvOXLfaxFoKdLw7pQCy
	YsDCiLf7Mw9vj+5N36uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRx6h-0000000B0jX-144V;
	Wed, 18 Jun 2025 18:01:55 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRuEC-0000000AVlp-3G5S
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 14:57:29 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-7d3862646eeso428346585a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 07:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750258648; x=1750863448; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nWuA5n/7XV52piKpzEtlj4+eRvGXTp7zsvMDV3q1c/g=;
        b=fRIi+RUuAlTr55qnUST6K28RL559QqjaC3qKJontlZhXsSifrbY+2oAJ711aDq8Wvu
         N7Y/Xf4vxLvrT7CjYIfLeKtdzB0Q/eon2HqsKOnL4ZvD1iL8hplsgvjerVF9LXlUju/s
         tLVuDfPdOL2QskJXHYsxkca0cMAufvDDYJXe4B8/F8sr03JBv0zfT8H5S0RL0oFX/Fuc
         jgq9MUncridmoe+qtQ95NCQS9y/h8ZI/AMekbRBToshDo8gUjBPg3GzZWcslrEIKPvLX
         gGva54NI7UjplBvaSMQAywJh7TUoooEdaz9bdUfsnWYtURd05RZE724gl9ODja1jgaO+
         Vxfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750258648; x=1750863448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nWuA5n/7XV52piKpzEtlj4+eRvGXTp7zsvMDV3q1c/g=;
        b=qci4XthYjtRXSHaxh0+X2HMuR/gq8tM4d4Y5B81BZAFv4IUeHEPm+5iURStygT+Xip
         OeWQw7uX1Q2WPCg0jiYKlE/AzfNsDY3vpL5X1Ev5cYUNRygERwGL5IaCI1fLveGK28c2
         R7/P59Bb4xUp4R9go10YJmoA2wQd6y6CKaqui0GJoC/8QKBdewjXUIbyIBMOQZ9tu1HR
         wV5GoS87GRJC/VkHEo3y4BVCFSe3jm5Gkdkv8l+kavxdty5h5sIwOS6USup25y84V+E0
         xzWNAJ6D4xApVD8U8EDrxTYKALVcPT2a72jjLp+xMyMuHKu5Wy/3V1r0tbql9xqzeX18
         3coQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqYrOPgVY5IeumSOwhJR34QDKUhpTuY00MFSVuDReagN8ga1WUXxlHfwOyyXdtThqRkAf0oqidDOeWYYwYAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzeiU3kLXJ28rt7JuSSxrT4EdZ8mrjElZqb/WfML7t0Z9HdZp9S
	cms/SV9Bo6WplCMfxC8R2dlM3fIHaaOriwk36I56koVZ6wJOX4ktaEyN8+nF5mQ8bpI=
X-Gm-Gg: ASbGnctvpepiYmZcR0DtPUX8/elJziJasxj5vgxAkxDn249NTQ/P8dhO96cY98U0l1B
	9zOUsgWnQj0kWdQzOxUHsnE0h2IGN1844PuJPyKlusCu38WeFn9CJ/sRELVzqw8PKjUmtRt8mu7
	k3jDc7afvrYHXhMc2sRh9ITdHecFOYnvxAer4nRo+fzAptHYl8vea7BM6dn63TTb9i2j1tYj3ti
	xZl5zGPt43KxpGc7AdtuBe/VrGk+0U1kxHdrhUCl1dnlOjOcYcQq+OZdRb6ljkyFl8YQvXJGhFe
	e6joqnMDVRvoJLTMkOHmXpt5gqvBfVG8VLQyeAMtSrTfF8PQgOyZjaKxMo2WFeDwhuPhy5niKHb
	FPF50RUBE4svW1X5kdA47iVmT04XL2paNlUzlOQ==
X-Google-Smtp-Source: AGHT+IEqAm8w07CYn9jssi0u9N9oTKmQEBd4zXaVvYiKXP4kVC2Pg2ZszP/NIklhkByTPLh6hrPUVw==
X-Received: by 2002:a05:620a:2720:b0:7d3:8fd2:c0cd with SMTP id af79cd13be357-7d3c6d0c5e6mr2844239185a.56.1750258645240;
        Wed, 18 Jun 2025 07:57:25 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3b8edf51fsm771719285a.93.2025.06.18.07.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 07:57:24 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uRuE7-00000006osS-460H;
	Wed, 18 Jun 2025 11:57:23 -0300
Date: Wed, 18 Jun 2025 11:57:23 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250618145723.GR1376515@ziepe.ca>
References: <20250618140923.97693-1-benjamin.gaignard@collabora.com>
 <20250618140923.97693-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250618140923.97693-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_075728_814763_FB654084 
X-CRM114-Status: GOOD (  18.97  )
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

On Wed, Jun 18, 2025 at 04:09:12PM +0200, Benjamin Gaignard wrote:
> +config VSI_IOMMU
> +	bool "Verisilicon IOMMU Support"
> +	depends on ARM64
> +	select IOMMU_API
> +	select ARM_DMA_USE_IOMMU

ARM_DMA_USE_IOMMU is only used by ARM32, you don't need it if you
depends on ARM64

> +static void vsi_iommu_release_device(struct device *dev)
> +{
> +	struct vsi_iommu *iommu = dev_iommu_priv_get(dev);
> +
> +	device_link_remove(dev, iommu->dev);
> +}

This does not seem right, release is supposed to reprogram the HW to
stop walking any page table.

You should implement a static blocked (or identity?) domain that idles
the hardware and use that as the blocked and release_domain in the
ops.

The logic around vsi_iommu_detach_device() and
vsi_iommu_attach_device() is also not quite right. The attach can
happen while iommu->domain is already set and doesn't deal with
removing the iommu from the old domain's list.

I would probably change vsi_iommu_enable() into vsi_iommu_set_paging()
and then presumably vsi_iommu_disable() is vsi_iommu_set_blocking() ?

vsi_iommu_detach_device() should be deleted and integrated into the
blocked domain and attach error unwind.

> +static int vsi_iommu_of_xlate(struct device *dev,
> +			      const struct of_phandle_args *args)
> +{
> +	struct platform_device *iommu_dev;
> +
> +	if (!dev_iommu_priv_get(dev)) {
> +		iommu_dev = of_find_device_by_node(args->np);
> +		if (WARN_ON(!iommu_dev))
> +			return -EINVAL;
> +
> +		dev_iommu_priv_set(dev, platform_get_drvdata(iommu_dev));
> +	}

The driver should ideally not be calling dev_iommu_priv_set/get here,
and this leads the reference doesn't it? Do what ARM did to locate
the iommu_dev.

I would also add a comment here:

> +static int vsi_iommu_map(struct iommu_domain *domain, unsigned long _iova,
> +                        phys_addr_t paddr, size_t size, size_t count,
> +                        int prot, gfp_t gfp, size_t *mapped)
> +{
> +       struct vsi_iommu_domain *vsi_domain = to_vsi_domain(domain);
> +       unsigned long flags;
> +       dma_addr_t pte_dma, iova = (dma_addr_t)_iova;
> +       u32 *page_table, *pte_addr;
> +       u32 dte, pte_index;
> +       int ret;

/*
 * IOMMU drivers are not supposed to lock the page table, however this
 * driver does not safely handle the cache flushing or table
 * installation across concurrent threads so locking is used as a simple
 * solution.
 */

> +       spin_lock_irqsave(&vsi_domain->dt_lock, flags);

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
