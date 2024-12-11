Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5E2E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 06:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ObEhc+i8GADnpXDx4MYpxf80UFjqnYs9Jg8chTmobZ4=; b=RZQiFcJkwvANitHcd9YDtteVqC
	ogjUPXSRV8mg83HQoXNwQSXbG+9hPVIM/6XlmT3XzQxOE4hj52IIExg4eIr3HozgwF56fhxhhpR4e
	58RDTYOxaQN2JXaI6ZE6PnmtGbySytdtKzz9kv1XAGw1EFu6FMJS7alMSKRhCdciPjNIaD1/5VLWv
	VFeqGN9vqd1NAVgX+qVdJcuNomZWKF+fJBrOw9HHkqVbFsWCpuN4nMY+CFCooF2m+1NtEDLTf5tlT
	BhZLmpAUv9QvyAEyYpdMXxgHfSix4HIXwUv9VEbO/qkhKoQc3E/fHUA7FkeQJZmZZYwC8dbWMy4h1
	XTx1sgiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGKd-0000000DwsQ-3ZAY;
	Wed, 11 Dec 2024 06:36:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGKa-0000000Dwr7-3E5b
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 06:36:21 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733898978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SkeHZEHerKUy7SfjGrFicI3v3b2ZvIM2KlYMKJUfd9M=;
	b=fyHDANetvgLxHcE55DANh5X3oFCmsH7M8nWFx4+F+qDrXeGj5lXzXBn6HAtZ5CLn/rPMrO
	T4H3dHALtSc/8n0aDCJTKmXuofgzPM/EupkWHpn/CkJF8cKJh51eYCfTNVWlXWHcH+0GzT
	Y7TzPuzvsWMrPO8HaOAajOpJ1ZLbKLHAUjFhrHTZKUjDJzSenSHHNJx0srsZCpgJey04Xb
	ToJSIyB7zixUtbkl3xEkdclTdeHVhtID5YRGE501TXb2ctidvFmvT/YENFKh0T7bQ8rBbB
	EGCh1z0ti77uCSABmL/fIEdl2LiOa8nd8rDS+VNIsRnwza6eldOa0cgJAqb7ZA==
Date: Wed, 11 Dec 2024 07:36:17 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
In-Reply-To: <20241211060936.57452-1-naoki@radxa.com>
References: <20241211060936.57452-1-naoki@radxa.com>
Message-ID: <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_223620_965797_E69414A9 
X-CRM114-Status: GOOD (  12.26  )
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

Hello Fukaumi,

On 2024-12-11 07:09, FUKAUMI Naoki wrote:
> The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
> Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
> perspective.
> 
> Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 753199a12923..2254ee079094 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -895,7 +895,7 @@ properties:
>            - const: radxa,rock-5b
>            - const: rockchip,rk3588
> 
> -      - description: Radxa ROCK 5C
> +      - description: Radxa ROCK 5C/5C Lite
>          items:
>            - const: radxa,rock-5c
>            - const: rockchip,rk3588s

I think it would be better to use "rockchip,rk3582" here, to allow
us to possibly use that information later.  For example, we might
want to be able to recognize RK3582-based boards in U-Boot without
the need to look into the e-fuses at some point, for which purpose
having a clear designator in the DT would fit perfectly.

As a reminder, using "rockchip,rk3582" would also require a small
addition to drivers/irqchip/irq-gic-v3-its.c.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
