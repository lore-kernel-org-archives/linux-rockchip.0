Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4846C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 15:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UmQZET3XDGqROvJw/aWgYdgaZP1yQlTF36NoXJLjWM=; b=Kt0T9mpEeXo1Ki
	Wf6t2JzPQTppvQ2pybrepwmkbBVbxegTnOj2hk1dJQmwcuvseL1+WGtYGLjMiUhCD+VGjzQNtElaX
	dynwbaPwK26PZtF07rgVrU4MNJlBrriVL81cimPIfFjSGMFShqqdKNYzdMJpHEQ0cmHIlJ3oiFY1S
	E2y11lTRsO4hCSmpQs7Lra4rRKf/fzqlUmbqywBppu6SV+WSbchf9KesSn8Ubb8+QRDVFQarJUCqg
	tTSx3CJ/LfaFsyedKShxP6zJ52vZKZTWWI26UkKrCxtFu4VyvLp8WD8Vn1ekyL/6OcB+nuzkjtdsN
	QT6xXi2qea8KsoorXk3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puEoY-0051hH-26;
	Wed, 03 May 2023 15:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puEoU-0051gI-0D;
	Wed, 03 May 2023 15:54:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0212E2F4;
	Wed,  3 May 2023 08:55:24 -0700 (PDT)
Received: from [10.57.82.232] (unknown [10.57.82.232])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A7AC53F67D;
	Wed,  3 May 2023 08:54:33 -0700 (PDT)
Message-ID: <e73c6192-8fd5-042d-ce03-095b336270ee@arm.com>
Date: Wed, 3 May 2023 16:54:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 16/20] iommu/sun50i: Add an IOMMU_IDENTITIY_DOMAIN
Content-Language: en-GB
To: Jason Gunthorpe <jgg@nvidia.com>, Andy Gross <agross@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bjorn Andersson
 <andersson@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>, Orson Zhai <orsonzhai@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy
 <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>
Cc: Lu Baolu <baolu.lu@linux.intel.com>, Kevin Tian <kevin.tian@intel.com>,
 Nicolin Chen <nicolinc@nvidia.com>, Steven Price <steven.price@arm.com>
References: <16-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <16-v1-21cc72fcfb22+a7a-iommu_all_defdom_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_085442_222784_E2F930B4 
X-CRM114-Status: GOOD (  17.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 2023-05-01 19:03, Jason Gunthorpe wrote:
> This brings back the ops->detach_dev() code that commit
> 1b932ceddd19 ("iommu: Remove detach_dev callbacks") deleted and turns it
> into an IDENTITY domain.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>   drivers/iommu/sun50i-iommu.c | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index 74c5cb93e90027..15fd62d360778f 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -772,6 +772,26 @@ static void sun50i_iommu_detach_device(struct iommu_domain *domain,
>   		sun50i_iommu_detach_domain(iommu, sun50i_domain);
>   }
>   
> +static int sun50i_iommu_identity_attach(struct iommu_domain *identity_domain,
> +					struct device *dev)
> +{
> +	struct sun50i_iommu *iommu = dev_iommu_priv_get(dev);
> +
> +	if (iommu->domain == identity_domain || !iommu->domain)

I don't think that first condition could ever be true.

Thanks,
Robin.

> +		return 0;
> +	sun50i_iommu_detach_device(iommu->domain, dev);
> +	return 0;
> +}
> +
> +static struct iommu_domain_ops sun50i_iommu_identity_ops = {
> +	.attach_dev = sun50i_iommu_identity_attach,
> +};
> +
> +static struct iommu_domain sun50i_iommu_identity_domain = {
> +	.type = IOMMU_DOMAIN_IDENTITY,
> +	.ops = &sun50i_iommu_identity_ops,
> +};
> +
>   static int sun50i_iommu_attach_device(struct iommu_domain *domain,
>   				      struct device *dev)
>   {
> @@ -827,6 +847,7 @@ static int sun50i_iommu_of_xlate(struct device *dev,
>   }
>   
>   static const struct iommu_ops sun50i_iommu_ops = {
> +	.identity_domain = &sun50i_iommu_identity_domain,
>   	.pgsize_bitmap	= SZ_4K,
>   	.device_group	= sun50i_iommu_device_group,
>   	.domain_alloc	= sun50i_iommu_domain_alloc,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
