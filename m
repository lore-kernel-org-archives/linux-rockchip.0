From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu: rockchip: Free domain on .domain_free
Date: Tue, 15 Oct 2019 12:43:31 +0100
Message-ID: <815abfca-a15f-365d-438c-5616a05b0513@arm.com>
References: <20191002172923.22430-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191002172923.22430-1-ezequiel@collabora.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, Joerg Roedel <joro@8bytes.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org, kernel@collabora.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 02/10/2019 18:29, Ezequiel Garcia wrote:
> IOMMU domain resource life is well-defined, managed
> by .domain_alloc and .domain_free.
> 
> Therefore, domain-specific resources shouldn't be tied to
> the device life, but instead to its domain.

FWIW,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>   drivers/iommu/rockchip-iommu.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 26290f310f90..e845bd01a1a2 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -979,13 +979,13 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
>   	if (!dma_dev)
>   		return NULL;
>   
> -	rk_domain = devm_kzalloc(dma_dev, sizeof(*rk_domain), GFP_KERNEL);
> +	rk_domain = kzalloc(sizeof(*rk_domain), GFP_KERNEL);
>   	if (!rk_domain)
>   		return NULL;
>   
>   	if (type == IOMMU_DOMAIN_DMA &&
>   	    iommu_get_dma_cookie(&rk_domain->domain))
> -		return NULL;
> +		goto err_free_domain;
>   
>   	/*
>   	 * rk32xx iommus use a 2 level pagetable.
> @@ -1020,6 +1020,8 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
>   err_put_cookie:
>   	if (type == IOMMU_DOMAIN_DMA)
>   		iommu_put_dma_cookie(&rk_domain->domain);
> +err_free_domain:
> +	kfree(rk_domain);
>   
>   	return NULL;
>   }
> @@ -1048,6 +1050,7 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
>   
>   	if (domain->type == IOMMU_DOMAIN_DMA)
>   		iommu_put_dma_cookie(&rk_domain->domain);
> +	kfree(rk_domain);
>   }
>   
>   static int rk_iommu_add_device(struct device *dev)
> 
