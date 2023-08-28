Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5578C83F12
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Aug 2023 20:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cE9jA3zSyKpcox4Qjylj4VXq8b8tJn/tUAezfYkz21I=; b=ENZfP3GyT/BXpE
	F4EHSZAIJIhXKolYI8zB7NIIAorUoFNp/WFVuP6t2roHpTla4b0EuStOlvKXIxAKvwsnVpcNU6kWY
	FAMggigoBGzPmx1OmmJA9u+masFfai1AQaVR1QmlxJWfr0EQJQzOp/O6seOgtnjM9g+xIia5SMs8/
	0/4JbpFzkKKUr0oQPEkQTxI8ubNjlY7vzzMgxaXy+ZbKiqAcDxyyWO/N/I4Lkg0uoUJDbkiBCTzXx
	aburCXmZj6IrSfNQOGDazMIE+SQJeA/JcXPhXDfqRmT8OO5j0w0vqA3ROJXtzv12FThKGg3XEC2Ko
	MUl03KmP3ZYdQPq3Z07w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qailx-00AEKr-27;
	Mon, 28 Aug 2023 20:23:41 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qailt-00AEIe-0k
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Aug 2023 20:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693254215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7SWaOyZqAW1ypmmx+bKaDOztNb8uWrADkHnWIObYyr8=;
	b=VK+M/CBzkKxHW6yrbITXip4eGXItvFft8GiKi4cLJd8QvOq3Faz+EeMsaEFwjbi5HlV3Hy
	XUgbFo+edipv2qbwDhwEMfMXsAEtjXC3lvylUOnV73/2nWiapVAEUt6FC3kukKxAQW3e7+
	/9zShAUwtuNKKR4v43mnUhtbM5+JQYc=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-438-jMUmOMV3PrGBunGyPwM05w-1; Mon, 28 Aug 2023 16:23:34 -0400
X-MC-Unique: jMUmOMV3PrGBunGyPwM05w-1
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-76e1a6a107eso437397385a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Aug 2023 13:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693254214; x=1693859014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7SWaOyZqAW1ypmmx+bKaDOztNb8uWrADkHnWIObYyr8=;
        b=SulpbLSC3B9EFfB7J8I/ASgpD/OqMBSCkrb8np6icZOrysCJPYyi1Z/JGCaZhkZsLH
         6+YPq2d6pUAdtUnsdSpx0iqCw319UzOygUveSSdOohWoHiWgfExlOhzTHGB/uBH49GfM
         BLRV5QF2rhWpaBLWtDnql0IlqfdFN8hYyCp/uHQvj0QGMq5xRwAwV9f2kbkjQcnrAxc8
         syC6cpuEzMwCEg45ZrPtfIFQin1OGxHRs8uAHKOfU3bFpzp9HeFLjTEKMZhkYfM34I2p
         6rz4G0ygA/cQdVz2ye3XpXHv4rYFD1e9NHNWE9uk27ja5DpA1jUTQi8VAFHlliZeG6O7
         UFxQ==
X-Gm-Message-State: AOJu0YwyXv5XEg6wy/bP4GACVsjuDMvosenv7gp0cHHQ6xlRkujnaZmt
	Bq4/5StESAthrRy+rx2P95gi3PLzJX1u9YsJQIX8xvTDrTIE5p8Lf8lrAXwW4ApEPlbc1mHKK0G
	ICz9+6vLiSuDXhMoTUngKpgGTEs5yQ0fd
X-Received: by 2002:a05:620a:444f:b0:76d:b0d9:8714 with SMTP id w15-20020a05620a444f00b0076db0d98714mr26208250qkp.5.1693254214111;
        Mon, 28 Aug 2023 13:23:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOGXo/skhCWFBeQ+UjSUbgbXxxw2vI3Xem+7mdhyD8WFWDReG5aEYLekTiVlVTA/jMtEv3Aw==
X-Received: by 2002:a05:620a:444f:b0:76d:b0d9:8714 with SMTP id w15-20020a05620a444f00b0076db0d98714mr26208198qkp.5.1693254213880;
        Mon, 28 Aug 2023 13:23:33 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id pe40-20020a05620a852800b0076ca9f79e1fsm2608267qkn.46.2023.08.28.13.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 13:23:33 -0700 (PDT)
Date: Mon, 28 Aug 2023 13:23:31 -0700
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
Subject: Re: [PATCH v7 10/24] iommu/exynos: Implement an IDENTITY domain
Message-ID: <p4rskudydgzbrgdhod2jiv7ksj2a2pxopsfnbvc6jfxtay4oaa@x5xu6eiqfpl5>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <10-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <10-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_132337_339981_66A45DD2 
X-CRM114-Status: GOOD (  11.50  )
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

On Wed, Aug 23, 2023 at 01:47:24PM -0300, Jason Gunthorpe wrote:
> What exynos calls exynos_iommu_detach_device is actually putting the iommu
> into identity mode.
> 
> Move to the new core support for ARM_DMA_USE_IOMMU by defining
> ops->identity_domain.
> 
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/exynos-iommu.c | 66 +++++++++++++++++-------------------
>  1 file changed, 32 insertions(+), 34 deletions(-)
> 

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
