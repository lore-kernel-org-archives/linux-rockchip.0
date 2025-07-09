Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 090CDC83F0A
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 19:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpoFu27o4YAGcVxZAorWQ0XGhfe91zuqK9xDsDiSqD8=; b=5B1VgMqTpx8CGc
	6l9fvlRPBmlyacSfpHzFcKWUubyvTaLNLMbzwdBFeRZEcD5W2y/JpWq7UO+o2Lpbg15GdYsKM6Msx
	SDWcgbYIu8nz4ZfANq+qRRDl0UmwR93wLz0JIjdOYd7bk4Y5+A0D+MzmqURQM2a/jcUQ5jaXle+Tq
	/sQl4GkJEm0dW695qj8luF4YxrSCp7u4Js+WcFrUd8pROk9kytKbUd+hdPqc0pMSDTB+3DTXIhP35
	QJXt3WfmwUs1+J71Ygn14HLsN0gsOMceV21D0eHxzDJ58tLCqK+bTW9DRNeTFSu4/rMZEiYyuQF9b
	+iAMJseaPZJK39UH6RGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZaFi-00000009g6u-0Zj3;
	Wed, 09 Jul 2025 19:14:46 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZXvM-00000009LDq-0lGi
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 16:45:37 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-7d3dd14a7edso8969685a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Jul 2025 09:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1752079535; x=1752684335; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p78QlcMtmUxArNMXSNSzK9z/0Q60UCVFZj4PTIuJazk=;
        b=hB3ZutOh45410ManGA6LkUrbpdBCoBL0Se4SVlGBCq/LaXHYI1bwKPU700iZoWWj9i
         PJ3RbcA9mO8KfMyvALfp5rIP8aKqLDE3BivOindhr5dEPHH1+wSYW3rWEujG4BNmGcd6
         3QoOFaEqcvKNpAaz7C3pVSfLPtA/WDYWSUyGOLJVZYfAKI1TDIXgv9yN/LPsS9C9Kz3/
         nvBSyDaY/da4sAyx66te0qRamX780LcCTg8BF/fR8Cp5s015ucXJyEEAdQiHGcRbqLKj
         VDXbvsQWlSr63M86zolM4chpZaCVa2ysX3AbeUxOFfmK7SgUte5BKt+ip/igATU98Trx
         okSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752079535; x=1752684335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p78QlcMtmUxArNMXSNSzK9z/0Q60UCVFZj4PTIuJazk=;
        b=NWmmh70Gy2hMPn05TEjZyX5nIxyB5ic9WMrC3zJyjFJn+7g0gksfykZGIaIRx7XcUm
         pmFfdHOeXsbkT0Tw1/dqAF372oSJCe5Ewn5uUraHmoug8V+/tKSHRiW2fpf/WebEDvRg
         uDWxQ07SAYfTQ6EQAae1c8UWNLU0HGS0PHEObcjpwIsl5Qz6nTyWuDDc88+rhXTzoeek
         mFpjSwqJD7OSreegYq181v/HCO9KXkTNsIluuVqaeWijv83tU/nCMWh3pAfAgNB3WZ0D
         3NhYcy2n9/g5c8qNfxLOlxQvDlZhrt79DXqXIZEjU6Eh7dSQ3VgB2unYmEVYLdGPStn6
         VmIg==
X-Forwarded-Encrypted: i=1; AJvYcCUuF/0ylmonU17shvZicyEHQY5AbHE3OzD/6MollhJ3DfufSmV135v3aQMria31xSXVBIzxSkXW2kPjiPfwzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLT5wug+fmQtcKKjkv7u6PWT/iU3x6ZaKqGlQ4fTapkdq10eB4
	4/dB0onuXmu5qt1Y0773A+dLeyd84fiBuM/Inv0zwEHPaDnY0m5NyHlZrtNQ3LpnnvY=
X-Gm-Gg: ASbGncvpzJULeK+YBzFrfrocSJlLnJzJBORH+D7mQy3ZJ83dKYXWCabMqVgxuAAMuIb
	rIHGknk+1nSmXYSKq0GyacfSZbIbNdTzzqeErEczRANo9nG64kwuKdOV2nKEXMt1B1idTrBQn0J
	KtUuna1NsyzAlinpagxLO78ZNhSU67G38OLTwmIZJ52LEn8PdoEmKb/zZE62HotLv7k6YWVRDDC
	njjtanK8wXqd1f0s5KY2A8+2EgZKVIImhsHN+NqXzMV70Pm2tPHy0YVukIJOA8gg1pWrzJPuLVe
	YtWVD9FyZidFrKGetgX/EBIlWo59lMzb1dkl
X-Google-Smtp-Source: AGHT+IGK03f6ZaextKn5HgBl1Cn7IIaPVEmVU0WLiCp6KHagOT5Rlof/NRcyv22KPYGKQjltoso/Xw==
X-Received: by 2002:a05:620a:294b:b0:7d4:547b:39a2 with SMTP id af79cd13be357-7dc92c86103mr31634985a.12.1752079534564;
        Wed, 09 Jul 2025 09:45:34 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d5dbe8f069sm969867685a.77.2025.07.09.09.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 09:45:33 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uZXvJ-00000007Sge-0n2C;
	Wed, 09 Jul 2025 13:45:33 -0300
Date: Wed, 9 Jul 2025 13:45:33 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v5 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250709164533.GA1759573@ziepe.ca>
References: <20250709085337.53697-1-benjamin.gaignard@collabora.com>
 <20250709085337.53697-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250709085337.53697-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_094536_331862_D3FE84DC 
X-CRM114-Status: GOOD (  15.06  )
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

On Wed, Jul 09, 2025 at 10:53:28AM +0200, Benjamin Gaignard wrote:
> +static int vsi_iommu_attach_device(struct iommu_domain *domain,
> +				   struct device *dev)
> +{
> +	struct vsi_iommu *iommu = dev_iommu_priv_get(dev);
> +	struct vsi_iommu_domain *vsi_domain = to_vsi_domain(domain);
> +	unsigned long flags;
> +	int ret = 0;
> +
> +	ret = pm_runtime_resume_and_get(iommu->dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	spin_lock_irqsave(&iommu->lock, flags);
> +	/* iommu already attached */
> +	if (iommu->domain == domain)
> +		goto unlock;
> +
> +	vsi_iommu_enable(iommu, domain);
> +	list_add_tail(&iommu->node, &vsi_domain->iommus);
> +	iommu->domain = domain;
> +
> +unlock:
> +	spin_unlock_irqrestore(&iommu->lock, flags);
> +	pm_runtime_put_autosuspend(iommu->dev);
> +	return ret;

I thought this was mentioned before, but this doesn't handle
attach_device being called twice without an identity attach in
between.

And now the new locking doesn't protect concurrent invalidation races,
the lock is in the wrong place.

hold the domain lock across the whole sequence to hold off any
invalidation until the linked list is consistent with the HW
programming:

 spin_lock_irqsave(&vsi_domain->lock, flags2); // Prevent invalidation

 vsi_iommu_enable(iommu, domain);
 list_del(&iommu->node);
 list_add_tail(&iommu->node, &vsi_domain->iommus);

 spin_unlock_irqrestore(&vsi_domain->lock, flags);

Then remove this:

 +	/* iommu already attached */
 +	if (iommu->domain == domain)
 +		goto unlock;

Since the fix above makes it safe regardless.

And, also feels like again, but vsi_iommu_enable() needs to fully
flush the cache since the translation is being changed, shouldn't
there also be writes to VSI_MMU_FLUSH_BASE ?

Otherwise the locking change looks OK and I don't have other comments.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
