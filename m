Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B0CEC8303D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 18:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beaoz6aGxkXC3bEckPXH0/i0OZjBOQ6jJXD4MY2RRrU=; b=W4L6O+74TowCvh
	5sDBFHSD+7M4aaBh1prnCJPogVLqT50FrC/HTGpaf26SwYT2M/30JLF80rAw0TFBPbO3pwFo7Da/R
	RPW1EvYT4t6gBfLlRXAkEYqqgWg809+KS9kv1AUmppGgAK+I01xXjWKVEhgBMI3LGJ5ptSbrNvhg9
	oI7tHHPpxvKBJgznUNcqwNATZ2SxrfANP2mRsIXAnlXZi4Lzd6QyPRNpGu+VsaLyOmHlUuyqP2p/F
	v4/rD4Wwc2oQp8fpS+KGHX6JGVFM5xzw6ckSkYu/2bBxKCFCoBI+ehsMTy7r/q/Wzbh/E48EfYlgI
	V985eHDPBf5v+iZsfCbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXl65-0000000FDWn-2Tv2;
	Fri, 04 Jul 2025 18:25:17 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXkcF-0000000F9WV-3Yt8
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Jul 2025 17:54:28 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-b34a8f69862so942336a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Jul 2025 10:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1751651667; x=1752256467; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XuxUGCJzgBIyontDTdqwJrs5j4TnI5gqZ41JcRqn9+o=;
        b=AEj0SNaj+UFlGBjxePsM4CEjaG9G/L9C5NLSkcw0PYFp/2Fi1F18UWal3LBSSYCGS/
         5m3BWxQqHUO7PSC6THann6P+Y4f2QT8a//RQfY2OTQsdxfsWIym2NdRfDAbo/Je47pcW
         +wL2V9P5C7ZIoQR5aghgcmc1/COK0duTuj5dwthqb1Lqh5A89sVEe+cvBwVuRYTPgSTq
         9maY+Y6EBW6WvcXhM2bHOU1wFzBOOwFzjWMHmf5wg2FG9lag1Wpwhe1UObPsiDEsDJJu
         mxgSip7mrtItRjcRgtDLyec8wmzDlgt3zmpT8QQFDLrzledgPU5puzJDizY3K6NA94V4
         +JlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751651667; x=1752256467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuxUGCJzgBIyontDTdqwJrs5j4TnI5gqZ41JcRqn9+o=;
        b=H7qSh+OFfCRKCQI8xHdYqMK/aBPXpaxaGUK3nHAbMexc4ECoCV1CcgV8xEQnJFZvT3
         QDarnnmxFhd6MMaCQCJBjmDNOBPOqzt60ajzpUCsdJo8bv8NwTX2/uGCE5PiOFkcZ4zM
         kMGy5RVyngWS3tRR+gyPxpYAF54QcCvkxcvgRXiSnQjskoVju3up2iVVb4n2bgb3jQF2
         oNUWVsc0JKHYTyxc2lybiLb3uZAnxh7UX0nLWyvYFSFVv7qUqHF/0wGaprrxYpbPCl/G
         rcI0WI0AHsnLdmII4jipHXyl+e4k5LIYEVG9mGAi/3dQ4VcSaKW51aSonV+Bf2OS7zgU
         UKxg==
X-Forwarded-Encrypted: i=1; AJvYcCUKqeYPFNvXeHFcY5bneQQIp5/yk1AcVRz2XqFOF+C78Manc/t1UpBQZ9vF8ZdaSlyLZWLDQmmkDhYWOtnf7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyObnSs6Gd84w35nLLxLWG4kz6oZO9QZIFwmLsf3h0Q0vEGGoTg
	SFCTHVjgn6Pr3Y/IBEqIV3CCoa8ZjlE7xV9rvtnziq14Buo7WMJjn74TawUVR4zZlgQ=
X-Gm-Gg: ASbGnctJ0le94BoUq+4Zy3+UBIujatMhTlSmtDdwIfM/k1/B/C3fnVdhwr3BgDonQNh
	t0gP/BMQje7uPxddY6CV/IuWvxUFW9iHtB4JInMGJRMpWhJ+mOArTebD5HNVTNgZppDhbnj+3/I
	wz1FXKiKkteD0oRbrdYD7hHu01JhfO4jNRJTj/C75+O60xsGVzV3eeJ44h37Ogp1Bm97HoPSFXt
	KCTAzKCkSthlpFSe3EKJnfYRmVUBem5AgvDwDCUjIkuhnqMP1kcE7sYbAcU5559IqUTPpGWPAj9
	zzNqkO1FMlg4vq8WfZ7zY1WZex2JSdoOMVge
X-Google-Smtp-Source: AGHT+IEh1aJoFY/nLlH7wiffnloJQKoRXxbF/IF6yLU1DedrCGkd2rfvxrkg/X7+7Uo3KEx9efT39g==
X-Received: by 2002:a17:90a:dfcc:b0:313:1e9d:404b with SMTP id 98e67ed59e1d1-31aadcf8e2bmr4389360a91.2.1751651667045;
        Fri, 04 Jul 2025 10:54:27 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae4095asm2682225a91.8.2025.07.04.10.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 10:54:26 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uXkcD-00000005zua-0liE;
	Fri, 04 Jul 2025 14:54:25 -0300
Date: Fri, 4 Jul 2025 14:54:25 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250704175425.GM904431@ziepe.ca>
References: <20250623153931.158765-1-benjamin.gaignard@collabora.com>
 <20250623153931.158765-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250623153931.158765-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_105427_888565_43DBAF42 
X-CRM114-Status: GOOD (  19.13  )
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

On Mon, Jun 23, 2025 at 05:39:27PM +0200, Benjamin Gaignard wrote:
> The Verisilicon IOMMU hardware block can be found in combination
> with Verisilicon hardware video codecs (encoders or decoders) on
> different SoCs.
> Enable it will allow us to use non contiguous memory allocators
> for Verisilicon video codecs.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> change in version 4:
> - Kconfig dependencies
> - Fix the remarks done by Jason and Robin: locking, clocks, macros
>   probing, pm_runtime, atomic allocation.

It broadly seems OK to me

Though I did notice this:

> +static struct iommu_domain *vsi_iommu_domain_alloc_paging(struct device *dev)
> +{
> +	struct vsi_iommu *iommu = dev_iommu_priv_get(dev);
> +	struct vsi_iommu_domain *vsi_domain;
> +
> +	vsi_domain = kzalloc(sizeof(*vsi_domain), GFP_KERNEL);
> +	if (!vsi_domain)
> +		return NULL;
> +
> +	vsi_domain->iommu = iommu;

So we store the iommu in the domain? And use the iommu->lock all over
the place

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

But here we don't check that the domain matches the iommu of dev.

This seems a bit weird to me, I didn't quite get why the domain uses
iommu->lock instead of just having its own per-domain lock?

But if it does use iommu->lock then this does need to prevent using
domains with the wrong iommu because the also use the wrong lock and
then this:

> +
> +	vsi_iommu_enable(iommu, domain);
> +	list_add_tail(&iommu->node, &vsi_domain->iommus);

Is not safe?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
