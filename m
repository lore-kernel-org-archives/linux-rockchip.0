Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 737C8CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 14:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbAOMNxajSyxQNMBFvyrBF0eUYjRdPI7eOToYo+ZqYE=; b=C3CArqtSKeHLa/
	pmbDeg6yu8dYNDyenvJMt6TydNq30+FotbUVH+XEoDCyd9vfqWNig8XyOZJyJzXd6sKjDdCXJWIZS
	+SGUhZOmFLVfqc0W6Owai5NdjRPV8bZ56ZKn23MGlIsOkwh92YTmaEPkCwxzFXtWGH4Vx8RWwLJPA
	2JmTG7uJwHYO5O/uBvho4sit/kMbmZZXy/yvf8R3IYD3gtBMnOLELlYxh0JID049f86Mu3ym+P0XC
	KuNWFxtHa6k9sa1f8g7bmDm0LLXuAIH3+uTDNev5uK8gUAoagLm5giFwnoXg6Ei4SBrIR1T+xDniU
	6ntI1lyg55X1VNTOaBuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6wR-00000001Wfw-0Pl2;
	Wed, 29 Oct 2025 14:14:23 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6wJ-00000001WdK-3oxM;
	Wed, 29 Oct 2025 14:14:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 0E72940D1B;
	Wed, 29 Oct 2025 15:14:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1761747252; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=eb/tlKO9/Zxp9vLJznUadT+d0q6ZWEudok8Oi1J/AHc=;
	b=QcyZ4nx4bzFvgRTgGGjXFoCKjtw0QC0NoAjioyQ/+bdgjcXHZ4AGxqJrpfZGxowXwRSAll
	5/B9SxX9ve4hpr9DHSvyCdy50RvSKIJn/bYEHXB79NRVg2JU9tJP6cBPHDLx5k1JYawqr8
	pYrQ49hp8vnF/cdHklssIQPxH/Ei2bYLuPAq20ZTw3xTQB3Ce1HrkMYCkTGebaC+fVpWIr
	AXfkV3g20E3C75Yi7Jr2jjNQPDm7RgovKrVo04CHiiQGe0jDLDB4Za5eHGDLawjeUWTrcp
	a4IwMIu4AvtkhOstRyoAZoQBFZdF7BmizJ640LBEkcT2KwIT3v4pfS9VDIf8BA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251029-rk3399-op1-include-v1-1-2472ee60e7f8@cherry.de>
References: <20251029-rk3399-op1-include-v1-1-2472ee60e7f8@cherry.de>
Date: Wed, 29 Oct 2025 15:14:09 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Quentin Schulz" <quentin.schulz@cherry.de>, stable@vger.kernel.org
To: "Quentin Schulz" <foss+kernel@0leil.net>
MIME-Version: 1.0
Message-ID: <f4149b94-30e5-ff0f-44b2-0806b2747890@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= include rk3399-base instead of rk3399 in 
 rk3399-op1
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_071416_180452_4907C3BD 
X-CRM114-Status: GOOD (  15.86  )
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

Hello Quentin,

On Wednesday, October 29, 2025 14:50 CET, Quentin Schulz <foss+kernel@0leil.net> wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> In commit 296602b8e5f7 ("arm64: dts: rockchip: Move RK3399 OPPs to dtsi
> files for SoC variants"), everything shared between variants of RK3399
> was put into rk3399-base.dtsi and the rest in variant-specific DTSI,
> such as rk3399-t, rk3399-op1, rk3399, etc.
> Therefore, the variant-specific DTSI should include rk3399-base.dtsi and
> not another variant's DTSI.
> 
> rk3399-op1 wrongly includes rk3399 (a variant) DTSI instead of
> rk3399-base DTSI, let's fix this oversight by including the intended
> DTSI.
> 
> Fortunately, this had no impact on the resulting DTB since all nodes
> were named the same and all node properties were overridden in
> rk3399-op1.dtsi. This was checked by doing a checksum of rk3399-op1 DTBs
> before and after this commit.
> 
> No intended change in behavior.

Thank you for spotting this issue and for fixing it!  That was
an honest oversight on my part, but it actually resulted in no
ill effects, which is the main reason why and how it managed to
slip by originally.

Your description of the issue is pretty much perfect, so I've
got nothing else to add but

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> Fixes: 296602b8e5f7 ("arm64: dts: rockchip: Move RK3399 OPPs to dtsi files for SoC variants")
> Cc: stable@vger.kernel.org
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-op1.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1.dtsi
> index c4f4f1ff6117b..9da6fd82e46b2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-op1.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-op1.dtsi
> @@ -3,7 +3,7 @@
>   * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
>   */
>  
> -#include "rk3399.dtsi"
> +#include "rk3399-base.dtsi"
>  
>  / {
>  	cluster0_opp: opp-table-0 {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
