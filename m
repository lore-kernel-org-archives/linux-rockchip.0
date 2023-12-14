Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869B6C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 09:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt6YW3G/LtZilEg154bVgxcb4E2wRp1ECV+IUP/IZl4=; b=MudjWoFLZGVFnx
	FMbV49ec4HFIWfXn6NS92vc2CQnKoJ+wh/bNNnEtp+GxfX8ZV27ZBcGwvlhKmg0Ck41DRSJDuN6mu
	ubNtdAzO4FDCtrdvDpd3wXnLf2llKTBi5M1HWNEEEahgW4rhKInDvw0eO6RiMy/5XDHrFaYCEB8FR
	3zv1bQfSAN5GwHOh1YWS1J+96k5PxQoudt5o1BXMjTX317dWso79/IXMxrUsMHABz7osTqcAFrf78
	iHvH16Rc06cMt4DlSG8uHZzQ7hEYCG4jJHWeeRVIk2crKIN3VzDddRKtC99Rh0gTmimPsDB/H+Xop
	lFctevl3fIzmd2AxmQAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDiMs-00HNwa-28;
	Thu, 14 Dec 2023 09:50:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDiMo-00HNvM-2b;
	Thu, 14 Dec 2023 09:50:56 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDiMN-00023i-MP; Thu, 14 Dec 2023 10:50:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: iommu@lists.linux.dev, Andy Yan <andyshrk@163.com>, joro@8bytes.org,
 jroedel@suse.de
Cc: conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, robin.murphy@arm.com, will@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu, 14 Dec 2023 10:50:26 +0100
Message-ID: <14263703.RDIVbhacDa@diego>
In-Reply-To: <20231212005710.1837066-1-andyshrk@163.com>
References: <20231212005710.1837066-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_015054_843606_B67A402D 
X-CRM114-Status: GOOD (  18.93  )
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

Hi Joerg,

Am Dienstag, 12. Dezember 2023, 01:57:10 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add a Rockchip RK3588 compatible
> 
> I split it from the vop2 patch series as suggested by Heiko[0]
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

could you possibly pick this patch for the iommu tree?


Thanks a lot
Heiko


> [0]https://patchwork.kernel.org/project/dri-devel/patch/20231207080235.652719-1-andyshrk@163.com/
> 
> ---
> 
> Changes in v2:
> - Add maintainers for the iommu subsystem to cc list
> 
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml     | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index ba9124f721f1..621dde0e45d8 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -19,9 +19,14 @@ description: |+
>  
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,iommu
> -      - rockchip,rk3568-iommu
> +    oneOf:
> +      - enum:
> +          - rockchip,iommu
> +          - rockchip,rk3568-iommu
> +      - items:
> +          - enum:
> +              - rockchip,rk3588-iommu
> +          - const: rockchip,rk3568-iommu
>  
>    reg:
>      items:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
