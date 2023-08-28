Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5867C83F11
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Aug 2023 21:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDqMD+iUX4Jo5rf5WUIbiXBOQUL7vPMo71TF4W8xQrw=; b=sNhOk1EEj9FKrq
	VQ4mAuwtrTGUOZY/V/YQcXMNUi1EhKung8ZwnpQ0yfS8bfuApo61Dx6fZ/usTIpX4LCcTmjQ1ETyh
	BgdwhqfV7+JgVnOHdvIY4dAkc+jsHhGKZqrfLShg6CC1jRWvXOGFdwOBHY4BTXohqsc2hT1qXSyJQ
	eoAckYEp8I4KLSqtvLSLNCtmg+BK9CGVAOWMb6Hajo641wG8VodwFlcYzY66LVbnvOpbN2Ws3CHVC
	kyrYdI+GcUww6InklGgR6nbF/FmJfEOQLPOllsff/799EdJmz//1/HqyYnYVlGfyXF9SmeQFj/EA2
	KgwgqbOUr26fhkgtu0vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qajOu-00AHGl-0c;
	Mon, 28 Aug 2023 21:03:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qajOr-00AHFg-2j
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Aug 2023 21:03:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693256631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HWGAjWA2SZIgARlOfsf2TOxHPntdeHshE+ifQSu/y8U=;
	b=SJy7J7OO5NgCERnXV/0/R0fqYuRw7BCXluBJhF7R8Cv3Eudkt8kzf68fkDLvuWSFjMgYT2
	+Tnfn2mg2IPm2P+9ydYF9beTYpqNMzvQH85nKpjiV0JxIctRd/F5n6z2aosUVCjoFgqF49
	oDONxOsCnym5ahxTMQkzEkgG9gvkoF4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-34-AqIcn25lM_advJIbKqbXYw-1; Mon, 28 Aug 2023 17:03:49 -0400
X-MC-Unique: AqIcn25lM_advJIbKqbXYw-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-76efd8bf515so237756685a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Aug 2023 14:03:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693256629; x=1693861429;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWGAjWA2SZIgARlOfsf2TOxHPntdeHshE+ifQSu/y8U=;
        b=N34mdFCHgbXZT3xQ9GFE1XpknzfvNbRFlJTrkxcHyij+dTjjTnzgFnbtDbrP5tNx8+
         PnXuMTqjYqdkEvWtC3PvRQF59caABHCoMdRimVtIbEBnJlYoaMFZHn3z6OAFQBdwFv9q
         JIlYY75pc+mGyOEZ46TUl7ro2sLqZWzSWqCXDFSlkVIfgevjJKuiZwix7WXLfCDV1FpD
         2iDzcYJbwoEDG7IhyxiLd+ts0+tFkW+bEbp7aedlycv2nzXQJYLjCp2yw2llyDm9l56L
         joa79S9jSFyg6ij3Z6WgFsv5b9DEk/bJJoU79t2nfQpFmwfeiBF9a5hLsPfBz/XO1rhT
         2bUA==
X-Gm-Message-State: AOJu0YwNyh6uqbtaFRzRRVbdsNIUf7qBQvBO5kjdLqu0XwzFz1SQllHS
	FaQD90UPjSfsswYgEWK/s5ynEpe35+epnNzZNK7ITwn7WTC/4TJS4gkpubvYfiR6oThsgdB/rgC
	mmBWp0rOlInWQLOgpu9Zy6sXpbyh3mk2k
X-Received: by 2002:a05:620a:4043:b0:76d:a569:cca9 with SMTP id i3-20020a05620a404300b0076da569cca9mr1135639qko.16.1693256629220;
        Mon, 28 Aug 2023 14:03:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPzgbmIBwnSRpgIiayc8cNLu07wX9Qi7uegSYIbsuDejPaJeraN4CSa9e1P57NFTVOJ82DNQ==
X-Received: by 2002:a05:620a:4043:b0:76d:a569:cca9 with SMTP id i3-20020a05620a404300b0076da569cca9mr1135581qko.16.1693256628994;
        Mon, 28 Aug 2023 14:03:48 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id l19-20020ac87253000000b0041061a16791sm2555777qtp.67.2023.08.28.14.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 14:03:48 -0700 (PDT)
Date: Mon, 28 Aug 2023 14:03:47 -0700
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
Subject: Re: [PATCH v7 18/24] iommu/mtk_iommu: Add an IOMMU_IDENTITIY_DOMAIN
Message-ID: <co5jqsviedblnyi7gkdkjuo6n3ai6o4qvzclvqfyrl6h7ugtdr@lkwojyyjq3qh>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <18-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <18-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_140353_966251_8EA12434 
X-CRM114-Status: GOOD (  11.09  )
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

On Wed, Aug 23, 2023 at 01:47:32PM -0300, Jason Gunthorpe wrote:
> This brings back the ops->detach_dev() code that commit
> 1b932ceddd19 ("iommu: Remove detach_dev callbacks") deleted and turns it
> into an IDENTITY domain.
> 
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/mtk_iommu.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
