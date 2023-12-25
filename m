Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 996A9C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 16:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY3jYQOPkYtcshzUuf/2g9q2B4RY3+0gYN7cgEiZeYk=; b=IqJICrpJlZ0a2b
	xAxdYwcI+MowLAKPPnzDfeCf8KKCF/mnfhILYgan6TrKwb3vyMfxzaoSzf31zmfS9VObxEwwJ6MSm
	bMfBBVd7HYW/Du1z0wL8kSrevb4nQrk+Fra9AMjyo7h+ah7sNLB2V4dmISSpTLLUVqISzdCYlhMRl
	1ZrcVFH7BnYk1LSl9iYzBKQ7Wbi3oYGSwooeg/xkVGXdrHgLFhkF5Z5vV+EUg5eCmBiDqeGfsHyUh
	nrzAquZg6YsGuIvIp50K3dGejI4zSNOfJflIEkHkBVblfU0ufceaBdv7TpsUUwCt5kW8chCAiOHao
	lxQWtS7m41CHlCfFbWJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHnWc-00B4QX-0F;
	Mon, 25 Dec 2023 16:09:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHnWX-00B4Ou-0Y
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 16:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703520588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VqafsTsLWFL6NUacBRAsGtc9kpoOdr+j/kVqdz2KGps=;
	b=KwRwlwzUzgG0vx8Vrw4EdL41TKawJEyi/lWBQ/+SclLW85RgAlzMi6uSPKDuD+hm2WtCur
	cVtURg1bT0kf4x2mszO4M0WhxcKUoMq+mt6vc2mpSG79aS43f2YpAnzjQoSjzfzqx4oKVC
	E1MaX/jG4Jac6i8ZIqyMTeU1RppWDCw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-641-hs80YqLUNpiNdjXVpsrt7A-1; Mon, 25 Dec 2023 11:09:44 -0500
X-MC-Unique: hs80YqLUNpiNdjXVpsrt7A-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40d5970422cso16415e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 08:09:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703520583; x=1704125383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VqafsTsLWFL6NUacBRAsGtc9kpoOdr+j/kVqdz2KGps=;
        b=uy3stp/SqYQ1dFZIsAX3OuHjOpRS1n1yYKvKGyT1JlGRitdIISTZh8yB4oN8Ylgv5h
         xiwcbyMgYg8YftqhK1hmrRbggp4jIplipkxjXrROIT/rgg4JDlZs1dSG1+FeaeUKkjsM
         WHPrh+DNNuCT4GaIh3y2hspZAYsIVB52oLsHs3/GNsmTVzMMygDxdOgxxiiA8fxTeE8a
         wLp59O2OZve5glY9OOr+9nxwC8PKML0w89MMUtVc05xjvKtRpVyxz8fxK9g+DCk2Ci60
         qV4S3tC8+Rj5LzlL2sfkS/YYSx2Fuwxiqkt5W5q2UEuztFr+7A9tMNw1tXudhSrxaVUq
         SC2w==
X-Gm-Message-State: AOJu0YxGyk4DnBr+upnxelHMgI4hxsLrZ7OVyZUjQH4QJx7fwaTt/20R
	pmz+CdkCg29erNoQHKXqCHquijd3703eHTyrRn2dnfe0zuAxr+VsY7URytV0KkUvIPz2J6V3+NI
	46Zw8c2quWWy9nbQTjLE+wK/e9GCAbBiP8GRnMkz+
X-Received: by 2002:a05:600c:4587:b0:40c:33be:d193 with SMTP id r7-20020a05600c458700b0040c33bed193mr4060346wmo.78.1703520582984;
        Mon, 25 Dec 2023 08:09:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfGGCax+SlWX/roShT1Wqm6zJg2zHkXbA4PNy8JwUTudzLUljk5TaAwhoH/7jZ8kvUv2pY7Q==
X-Received: by 2002:a05:600c:4587:b0:40c:33be:d193 with SMTP id r7-20020a05600c458700b0040c33bed193mr4060329wmo.78.1703520582646;
        Mon, 25 Dec 2023 08:09:42 -0800 (PST)
Received: from redhat.com ([2a06:c701:73ef:4100:2cf6:9475:f85:181e])
        by smtp.gmail.com with ESMTPSA id f12-20020a05600c4e8c00b0040d3db8186fsm16769282wmq.5.2023.12.25.08.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 08:09:41 -0800 (PST)
Date: Mon, 25 Dec 2023 11:09:37 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
	alim.akhtar@samsung.com, alyssa@rosenzweig.io,
	asahi@lists.linux.dev, baolu.lu@linux.intel.com,
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net,
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com,
	joro@8bytes.org, kevin.tian@intel.com,
	krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org,
	robin.murphy@arm.com, samuel@sholland.org,
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH 15/16] vhost-vdpa: account iommu allocations
Message-ID: <20231225110930-mutt-send-email-mst@kernel.org>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-16-pasha.tatashin@soleen.com>
MIME-Version: 1.0
In-Reply-To: <20231128204938.1453583-16-pasha.tatashin@soleen.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_080949_277812_974818B5 
X-CRM114-Status: GOOD (  15.89  )
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

On Tue, Nov 28, 2023 at 08:49:37PM +0000, Pasha Tatashin wrote:
> iommu allocations should be accounted in order to allow admins to
> monitor and limit the amount of iommu memory.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>


Acked-by: Michael S. Tsirkin <mst@redhat.com>


> ---
>  drivers/vhost/vdpa.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/vhost/vdpa.c b/drivers/vhost/vdpa.c
> index da7ec77cdaff..a51c69c078d9 100644
> --- a/drivers/vhost/vdpa.c
> +++ b/drivers/vhost/vdpa.c
> @@ -968,7 +968,8 @@ static int vhost_vdpa_map(struct vhost_vdpa *v, struct vhost_iotlb *iotlb,
>  			r = ops->set_map(vdpa, asid, iotlb);
>  	} else {
>  		r = iommu_map(v->domain, iova, pa, size,
> -			      perm_to_iommu_flags(perm), GFP_KERNEL);
> +			      perm_to_iommu_flags(perm),
> +			      GFP_KERNEL_ACCOUNT);
>  	}
>  	if (r) {
>  		vhost_iotlb_del_range(iotlb, iova, iova + size - 1);
> -- 
> 2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
