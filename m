Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38C43C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:46:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9F7560F6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:46:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A9F7560F6E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3KdLlgCdUsTOlBgo+IqUG3AW1WG0Zi2tpJiubv7fLM=; b=hL6xwwvA/hvFi4
	6+sv28IWND1fc1yXElVfVPWcuOp97+XPsYMAdOcmJGWn61kJfJ9QCGctPC0PH+NVkBP8LhHJMDBnI
	ohftSkq6OgnGkWK03Hqv3N0CKov6LPhs/xo7UWjrQVL43RkNTLbI90GcZMYE6KxzDuuFkxg1hr3Tm
	m0sKtrERFppB94tolMsxOQcAK5E4qLd0v2r4lY2t2egxKALj3jAWau7iz8Clc8H59ks3x3NoHGFFt
	jkafiSQD80g+Goob9GxKGt+b9I7TnR1sfElLToxbMawuPwHa7dVcBbUna2aGkRl+M83Sg2DmIrWNZ
	LiFs4qB+No0kjpZeqCKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcDyw-00DNOD-9Q; Sun, 17 Oct 2021 21:46:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcDyk-00DNMm-2o; Sun, 17 Oct 2021 21:46:03 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mcDyg-0004up-B7; Sun, 17 Oct 2021 23:45:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, kishon@ti.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: remove usb-phy fallback
 string for rk3066a/rk3188
Date: Sun, 17 Oct 2021 23:45:57 +0200
Message-ID: <2801784.XqmsWqfj7A@phil>
In-Reply-To: <20210828111218.10026-1-jbx6244@gmail.com>
References: <20210828111218.10026-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_144602_183303_5DA7CFE3 
X-CRM114-Status: GOOD (  15.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Vinod, Kishon,

Am Samstag, 28. August 2021, 13:12:17 CEST schrieb Johan Jonker:
> With the conversion of rockchip-usb-phy.yaml a long time used fallback
> string for rk3066a/rk3188 was added. The linux driver doesn't do much with
> the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
> does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
> don't match. Remove the usb-phy fallback string for rk3066a/rk3188
> to prevent possible strange side effects.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

are you picking up this patch or can I get an Ack to just apply it
together with the dts patch2?

Thanks
Heiko

> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.yaml     | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> index f0fc8275d..499d55131 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> @@ -11,13 +11,10 @@ maintainers:
>  
>  properties:
>    compatible:
> -    oneOf:
> -      - const: rockchip,rk3288-usb-phy
> -      - items:
> -          - enum:
> -              - rockchip,rk3066a-usb-phy
> -              - rockchip,rk3188-usb-phy
> -          - const: rockchip,rk3288-usb-phy
> +    enum:
> +      - rockchip,rk3066a-usb-phy
> +      - rockchip,rk3188-usb-phy
> +      - rockchip,rk3288-usb-phy
>  
>    "#address-cells":
>      const: 1
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
