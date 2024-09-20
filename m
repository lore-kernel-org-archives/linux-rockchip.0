Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23127CE8D45
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 09:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69aoXxxmkOIXEUrI8cObDxzoTOjtuYFD14OuKLiWwsM=; b=uCF2nuiJPTEQZw
	EGd2Fk4PhF7yognv1SOC+sIz7waCn+5dXawUmpXRhQ2m0Kt9fTLFADrCZHJbF/oVMx/v9un5oBu50
	yA6DIQTeiw1e28Br95uu5yIdts1vMK92py3jPA+uZqY6HPKqhPxeDTnnbHA0f6W6m0di3bBl+k0pb
	OLHt81ufDgcF2ZutFu/wUABh42ePgJUyf/z0kE5lgk01ThAmnnKYpItRwKY+Itso4fIpzDW3WEVEG
	QTNyDVeW8hlg4RcYgkJIH6TDEnRaamR1kbWGOd1wYtcG7BtRohsP2WaMjNRm7BiKldvc59X4FTW35
	hDeQHL/1hLToI9sUhvmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sraOr-0000000ByOl-0c3Q;
	Fri, 20 Sep 2024 09:58:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sraNj-0000000ByG8-13vJ;
	Fri, 20 Sep 2024 09:56:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZjYXtCI4nuFEDAhXrD2uZbQsprc9VRMwkexVscbAyM0=; b=sORopcg130vTP2BE+HEZOFpnfT
	Zs6sk4eDWLQoVWqYfadzyCn7a2sdObvIjsa7Lql16zLwBNvae24aYxECwxyajBps4CHQsZe4cTwDc
	izA6tjN0aAJ4JWz4kj8hmHSICwOj6Xquh9P4jv2p4Id/lxssuqTQFvddtru5NxexjFSeCWOJWHDDo
	NXMJ8VQgG1g3ozMSc0ZReMf5QHUR3MnhMYHc7/9GlAwQlBVkEgHfJLU8+X+QdhaSXzhCjRepcSayx
	QvCShrI3QKj5x6JbTH8hKvHJwXd61yikR5VGMVvp0PlIJxdyNhorXQtf3G98dOmlAfT07NEHCl8Yf
	AehKMy7g==;
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sraNb-0000fJ-8O; Fri, 20 Sep 2024 11:56:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: joro@8bytes.org, Andy Yan <andyshrk@163.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, iommu@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
Date: Fri, 20 Sep 2024 11:56:46 +0200
Message-ID: <2220454.C4sosBPzcN@phil>
In-Reply-To: <20240920094947.7566-1-andyshrk@163.com>
References: <20240920094947.7566-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_025655_345140_9FA04BF5 
X-CRM114-Status: GOOD (  13.82  )
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

Am Freitag, 20. September 2024, 11:49:40 CEST schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Just like RK3588, RK3576 is compatible to the existing rk3568
> binding.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
>  Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index 621dde0e45d8..6ce41d11ff5e 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -25,6 +25,7 @@ properties:
>            - rockchip,rk3568-iommu
>        - items:
>            - enum:
> +              - rockchip,rk3576-iommu
>                - rockchip,rk3588-iommu
>            - const: rockchip,rk3568-iommu
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
