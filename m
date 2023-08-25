Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 271E4EE49AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 21:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg0fep/HTrl/WTbpE1e4WY5obwBJFJwucXeEZjY3XwU=; b=Oy3fmKYiZzuynX
	6Km1tar2ZQq27hQa3UrM9Ufjs3LKuuVTGxeqCkAlWA3u+JKVLTHtpurWm8zM7FZRiFeiy1v1teTXJ
	5j/1ao/8CjZPRuSn3J1hzEcPoX1RFTQAcrTrgTFPmOxrHsrLDEhdrLdY3blJTy9tMRHgqlDtliDqf
	QR+Jgb+F3lW7zoJM7L10TSj9zOabJ4mHhbAuAHqtAFfFHduL0/TwtA6cvzEeAQl1rC/pZPsEdqyyO
	60lOx9gvNdZa0LLUUxCL155C6/PZoN73YLrZ0oqhH9pdNbdeymkTjnIszHa20+73+KtfsV53oD7s7
	16qkUUdZBi8g3NTMNCCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZegk-0064Hb-1r;
	Fri, 25 Aug 2023 21:49:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZegh-0064Ga-2h
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 21:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693000191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jDIH1s5AgxOERqalZWlNYkaKtZibmqZdBdpJvN3/v8U=;
	b=PktTfmCAa9jpJJdknKjV3DmkCMZTFGtZITtUKAd0y0JPi87wGMhBZdFw+KtpL4STQd20XZ
	OUNDO/ARMBYpUBbhL2vjMTaCPYozfQVFXE2H7UDibChL5ZwqLpYDBZCkvAKROIM26akmGS
	U/T160GKWjp2hkqgdqQTDGJ1ecC8IRg=
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com
 [209.85.219.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-246-C7R2Uq2RMv2BMhiGkXzSjA-1; Fri, 25 Aug 2023 17:49:47 -0400
X-MC-Unique: C7R2Uq2RMv2BMhiGkXzSjA-1
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-d72e09f1263so1661667276.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Aug 2023 14:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693000187; x=1693604987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jDIH1s5AgxOERqalZWlNYkaKtZibmqZdBdpJvN3/v8U=;
        b=hHX3BaWp7Lp33E2O+IyT4awZHhtkntN6jOseixw415IOZAmFucMgTgpNhu9Gr5GrVk
         TUOK6gkb+DIo+aTgJ6OuNCbneMG+tDz5IfBdQz5Wzv3Uv1Y+rVjSJ3/Dsb6BiXZT6qWE
         Wox7DqUZHGhId0ltZ/YGXFDOxAum6hAdUUJRVxjwfFfP1tEVqnxDi5dgIQ2cQYemObU0
         gAonWY+La7wYYd1qZ3UvOtm2+6rrNZk5qtNLKaeeytD0hgGecJh3l2JiLlsdIcaTWezS
         jzQ49I/oufi4ZqRdRVRLBWINrF9QBNYOA93Hkl0g1JXkKTiz9HGJSYAq5JB6ff6b087p
         e12Q==
X-Gm-Message-State: AOJu0YyYJNwy5zVtYFvcW9wGI/wnK+zGlzxaKIboOnuOdSSWDIH1IDc+
	w/h0s7POPbbEOPSQH7RxyxpMvBXoS+tQNMamTNqGLtkKjJrUd8ql1hB8PRjuqorNMv5beLjJqxb
	ic2boNDw8niyISFaFs/vlpz87/vvVPjaq
X-Received: by 2002:a25:d8d6:0:b0:d78:3047:62c6 with SMTP id p205-20020a25d8d6000000b00d78304762c6mr3495331ybg.21.1693000187283;
        Fri, 25 Aug 2023 14:49:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgZnJ6x3Khmaw73UVVO8ipGtpfGFEkJnwrK/gjpvrarbZH5j/AtFZ9PMl7lOmV6YAsTBEFgw==
X-Received: by 2002:a25:d8d6:0:b0:d78:3047:62c6 with SMTP id p205-20020a25d8d6000000b00d78304762c6mr3495280ybg.21.1693000186913;
        Fri, 25 Aug 2023 14:49:46 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id ki6-20020a05622a770600b0040ff0e520besm770523qtb.35.2023.08.25.14.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 14:49:46 -0700 (PDT)
Date: Fri, 25 Aug 2023 14:49:07 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Andy Gross <agross@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Bjorn Andersson <andersson@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, 
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>, 
	Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, linuxppc-dev@lists.ozlabs.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Matthew Rosato <mjrosato@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Rob Clark <robdclark@gmail.com>, 
	Robin Murphy <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>, 
	Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Lu Baolu <baolu.lu@linux.intel.com>, 
	Dmitry Osipenko <digetx@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle <schnelle@linux.ibm.com>, 
	Steven Price <steven.price@arm.com>, Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v7 06/24] iommu/tegra-gart: Remove tegra-gart
Message-ID: <stzz6hsyx25u5bbkgwftde2jdtjxgb5ghofwfymv2ny4vfbpch@nuli2d2mthaq>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <6-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <6-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_144951_948923_0AAEAC17 
X-CRM114-Status: GOOD (  18.90  )
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

On Wed, Aug 23, 2023 at 01:47:20PM -0300, Jason Gunthorpe wrote:
> Thierry says this is not used anymore, and doesn't think it makes sense as
> an iommu driver. The HW it supports is about 10 years old now and newer HW
> uses different IOMMU drivers.
> 
> As this is the only driver with a GART approach, and it doesn't really
> meet the driver expectations from the IOMMU core, let's just remove it
> so we don't have to think about how to make it fit in.
> 
> It has a number of identified problems:
>  - The assignment of iommu_groups doesn't match the HW behavior
> 
>  - It claims to have an UNMANAGED domain but it is really an IDENTITY
>    domain with a translation aperture. This is inconsistent with the core
>    expectation for security sensitive operations
> 
>  - It doesn't implement a SW page table under struct iommu_domain so
>    * It can't accept a map until the domain is attached
>    * It forgets about all maps after the domain is detached
>    * It doesn't clear the HW of maps once the domain is detached
>      (made worse by having the wrong groups)
> 
> Cc: Thierry Reding <treding@nvidia.com>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Acked-by: Thierry Reding <treding@nvidia.com>
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
