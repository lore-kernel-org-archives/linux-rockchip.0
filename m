Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09519C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 22:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnt6bCM/m5DoU1uvNH6pjqQnpS+yqT/yCU6OhXmsqI8=; b=lM4eCDWyOo6dHW
	dyi03CCARqBC0GC5GAYw/K/31FERQ7ZK33/RWnr0bfBFudJHmoQ8XnfQSxq1E/9CsOkxJ7m9y9s5j
	hsEQgyq8WGMMWQzeLITbB2QgffiJdgS6n+o3GJo8P026a7Enw5nWU2F0NuNFErdJGe6zN1wG6oFXX
	4fO76sWtC0iqokbYyPVRpj6KX33FgmIDdFPWmFPU+B66d2b9qORTssJX5NsOv3CbqUL/gxdUuTAjl
	0zUfnr6rHNTiaC+hXLC0SjcriyKfhCc8+8BfaEp1s5OBOitKCxxI4HkudTHXvXXy6untg4SAtrpdH
	TxjuYejMtIAok8z7kY0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8pnz-00C5uf-1M;
	Thu, 30 Nov 2023 22:46:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8pnw-00C5sz-1G
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 22:46:45 +0000
Received: from i53875b1a.versanet.de ([83.135.91.26] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r8pnf-0002fN-EM; Thu, 30 Nov 2023 23:46:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 13/14] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu, 30 Nov 2023 23:46:25 +0100
Message-ID: <18610737.hlxOUv9cDv@diego>
In-Reply-To: <20231130122500.13491-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122500.13491-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_144644_427979_FA8EC0B7 
X-CRM114-Status: GOOD (  16.14  )
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

Hi Andy,

Am Donnerstag, 30. November 2023, 13:25:00 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add a Rockchip RK3588 compatible
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index ba9124f721f1..3febf0c3c404 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -22,6 +22,7 @@ properties:
>      enum:
>        - rockchip,iommu
>        - rockchip,rk3568-iommu
> +      - rockchip,rk3588-iommu

This enum only allows that the compatible has one element, namely one of
those listed here. In the dts though you declare
	compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
meaning that the rk3588-iommu is compatible to the rk3568-iommu

I think you'll need a construct like:

properties:
  compatible:
    oneOf:
      - enum:
          - rockchip,iommu
          - rockchip,rk3568-iommu
      - items:
          - enum:
              - rockchip,rk3588-iommu
          - const: rockchip,rk3568-iommu

to describe both the single-compatibles and the 2-item compatible for the
rk3588. For example pci/rockchip-dw-pcie.yaml does a similar thing already.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
