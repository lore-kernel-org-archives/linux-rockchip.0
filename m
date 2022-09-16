Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED3A4ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 11:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whSNEjLDsZ3tCf38t3XqU7OBdi/j9e2qty2CGDbry2M=; b=pUUVoaG/yEPcCx
	5x23EFFOlpMKzI/ZkQGc3rwM4LQ2ravS1UiS96nmEfI7pL8mlm2zZxlpMQBQDsfUiVMjZRxWI0PK1
	UoXASkmvJ68mSo/z1ZuwBFxL0PvPD7V+cnFSqTV07LC4fMGpAcYIb9WbQ78Lr9+/p9oxHTuGKUIfn
	FjLbTqDdPjXwqHwnee3BIpyVsglmFoJeqSfKMmbP9YGM3eb5daaCAln2FksRwtpUZgLvOuJM8ghHS
	EXWEAYaWjp2yyhr7Xqra9/iBU5rk2/gpN1p/KCFLFLOcdMv8JoNqHWPDi9hNEGBq9JY86/psn9i+3
	WBlpWqAUrpLzYuKJfbDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ94a-00CS25-HC; Fri, 16 Sep 2022 10:59:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ948-00CRld-4N; Fri, 16 Sep 2022 10:59:27 +0000
Received: from [89.101.193.72] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZ945-0002Gx-84; Fri, 16 Sep 2022 12:59:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Tianling Shen <cnsztl@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S Enterprise Edition
Date: Fri, 16 Sep 2022 12:59:20 +0200
Message-ID: <3633903.MHq7AAxBmi@phil>
In-Reply-To: <20220915022511.4267-1-cnsztl@gmail.com>
References: <20220911040628.13774-1-cnsztl@gmail.com> <20220915022511.4267-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_035924_221512_FA615711 
X-CRM114-Status: GOOD (  14.85  )
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

Am Donnerstag, 15. September 2022, 04:25:10 CEST schrieb Tianling Shen:
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S
> Enterprise Edition.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>

applied both series for 6.1

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 7811ba64149c..309f76b803a5 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -151,6 +151,7 @@ properties:
>                - friendlyarm,nanopi-m4b
>                - friendlyarm,nanopi-neo4
>                - friendlyarm,nanopi-r4s
> +              - friendlyarm,nanopi-r4s-enterprise
>            - const: rockchip,rk3399
>  
>        - description: GeekBuying GeekBox
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
