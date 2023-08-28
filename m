Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95BE6C83F12
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Aug 2023 20:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfIMZVjDDy8GYz9yYXXaHPSXYMwTF0IuwNu4truFtZE=; b=kOLVyLhwgyFAkF
	9PbyLlhnHkXLLytVr+cpI9plijgLJt1CAM/cTx3LxnPf4TqN8Pw0iIvkSSKRp5YPmJhCIqI1P1TR/
	4v36I5eTxxW/TyoFsimIJSKvhP8cZlz0gKazbzkXuiRqr3Xm0XiXpW+sZolsuLxbuIlKVojvfxoXb
	xtsQG0InmUhTKy7Hoht/XkbIv8pqxdw93O1oBsN2tRRuHSWgHaf3frmqvBCy85jQ/ESfUnQMeFH/q
	oxMCk2yXe9qUXjSGsGE2OFV8XJPDsh9ZIBLTlZnN3ofSPHu1QFVk1YHJmPyRE3FDg1SnEBrpNk20w
	3yE33tA2HTRvKGKcFpgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qajJq-00AGiG-0u;
	Mon, 28 Aug 2023 20:58:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qajJm-00AGft-2W
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Aug 2023 20:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693256315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BkaTz3YQaxv4XNx1z6p3EOnPP86a0L+L06c9Q1h/cfg=;
	b=YwyTtnesoTqWDIxeUTe+s9TIjKizXl9FLO7J1stvvXh7hlDgWm2BPbsJb+33U+trc5EtYV
	0XR+I8p3e9nodMkuL/c3r76iXGYS27YskPuikB2rHd6Muzlurh6Os5CdVgSrXES/TTv3C4
	WoaD5V+Wab+agO/lwTxWHrmBSiiVDz4=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-543-_Biqg2Q6NCWsXQEWp4zwyQ-1; Mon, 28 Aug 2023 16:58:33 -0400
X-MC-Unique: _Biqg2Q6NCWsXQEWp4zwyQ-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-411fae3127eso45224411cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Aug 2023 13:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693256313; x=1693861113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BkaTz3YQaxv4XNx1z6p3EOnPP86a0L+L06c9Q1h/cfg=;
        b=d16fn1guIhP3QXaHnD3kf6KNT7LjIbOksIRPis4EQETn7E+NZOdILwIyi3lyi2EZci
         +tulwT2t572IhYbgxd4uhqo8r6nc3zWbwUwL/vUdzu+9om3qAnmbOXacX+ZuZ/banWmx
         0jyXQiioRrpT12rePIsfXK3KHNhZn4pJcAXhwsOLR/J96IZOmNu00WJAvyvTC9Q3n36M
         DEd0w2GSNe2Dt63TeiuYv5IIaJlUMZEdo+fvoW1fqu3YoZiRltAuYal+/m16UDhxunBu
         t6JHhvbUOkzyTavBvjTVHsn2p5All6AAGzLtI/dB7VhurmIyEP2Sh3/ALPx16E2dNtnb
         DGZw==
X-Gm-Message-State: AOJu0YwmMTdq3W+x6VrNeLo9JzZrRfkGsJjFW2DWDWqNvCFtjHYUSCLc
	pcPchOrPQ6QVwX3qgTUYGYjfGsGrVc2Z4SaLMrS76XkK73BiqGMENS3WhgdV10tGXJZJLrbm+U/
	z/gRjKg4mt1iKHqADR2Z5K3gYQBqW4jNt
X-Received: by 2002:a05:622a:12:b0:411:f7e6:3be5 with SMTP id x18-20020a05622a001200b00411f7e63be5mr18754097qtw.30.1693256313485;
        Mon, 28 Aug 2023 13:58:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqzxLWZK4Sb4/58FxlbaHsUgrMjm1Fc7pMUPbHePKpRNp9fWsIa9/KWnDi5jm+4pqQWfwb1w==
X-Received: by 2002:a05:622a:12:b0:411:f7e6:3be5 with SMTP id x18-20020a05622a001200b00411f7e63be5mr18754084qtw.30.1693256313282;
        Mon, 28 Aug 2023 13:58:33 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id a11-20020a05620a102b00b0076cf49bcb50sm2613298qkk.37.2023.08.28.13.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 13:58:32 -0700 (PDT)
Date: Mon, 28 Aug 2023 13:58:31 -0700
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
Subject: Re: [PATCH v7 15/24] iommu: Remove ops->set_platform_dma_ops()
Message-ID: <6thxe2cqyfs6czmd63a7ompjpvkv2c2aestp7almmk725r5ivd@2lmwtzyfylmp>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <15-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <15-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_135838_897778_43119ACF 
X-CRM114-Status: GOOD (  12.33  )
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

On Wed, Aug 23, 2023 at 01:47:29PM -0300, Jason Gunthorpe wrote:
> All drivers are now using IDENTITY or PLATFORM domains for what this did,
> we can remove it now. It is no longer possible to attach to a NULL domain.
> 
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Niklas Schnelle <schnelle@linux.ibm.com>
> Tested-by: Steven Price <steven.price@arm.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/iommu.c | 30 +++++-------------------------
>  include/linux/iommu.h |  4 ----
>  2 files changed, 5 insertions(+), 29 deletions(-)
> 

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
