Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043FBC02194
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 11:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OjmZLxeKEfoqnbBiukjiEIEv3M82oya50vpU4bFLHRY=; b=PefhEqQFM0i8bzzVVD8qkjWgpR
	jpntwGiwuP/reo0o2lN0rlTztWOmYt17i6ztdNwuHjGz8dwub7dfgLt927aaco1fQtB0vpQV/4rDA
	9EKf/9mBq3Bt0lrr+sQTV8LEz5RMu0X997V9nnsDLg5r6WDVLCSL6nnGQJulbgbVaeu7/E/P9WF7p
	EeSehBAmyEXDXoMPAU+04GBdkvBcoiXV2Rs6RwMQVM9/pic74PglfZu5dByO++Tq5VsKzmXtY5gFV
	Dh9bJq8ndrDn50G0l9/w8ShJn6nxE+STUD4zcYQuO6dKUBTn+7sMQRCOHhnoHxZrV+RYr3QWNfOwl
	iqSJWtHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfH9B-00000000H1T-226A;
	Tue, 04 Feb 2025 11:31:17 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfH7p-00000000Grg-3O1B;
	Tue, 04 Feb 2025 11:29:55 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1738668591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pW4uikpbdDedvd8cqwkI+RycNXAZbEwbH5H3r/2GX5c=;
	b=Pl14l+tL/Ma1IrHL12GfDgw6LS3OSxM3ocu7+rel9yC1rmRpTTDGY85KgtHTfp6IzSbt1V
	evvxZMlzB9iUKwLi2E7Y/qTstscanH6y0COGbwAsZBK3kDESQhxFn0L6JgmPuhsXvcknhi
	jfSGD68FsThxVGjCMOHM1JN//ihVnx1w9E5WKTHO7bjpEX0INiCamqCHIc6PDciQTPYpa0
	Ag0eJsATqO7Rl9nHZsWTJxacERF8JuVmUSvqmL/82s4GX6zqV3/JNCSkDgczyl66wNeE8M
	ou/s6T8pw0/hqYL06jGIKXmQtegWEORIQ71TUhwFVe1ikYdpS5zXgLWuH1vlcQ==
Date: Tue, 04 Feb 2025 12:29:49 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jagan
 Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Quentin
 Schulz <quentin.schulz@cherry.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 2/4] arm64: dts: rockchip: add overlay test for Edgeble
 NCM6A
In-Reply-To: <20250131-pre-ict-jaguar-v4-2-c971e2852e8d@cherry.de>
References: <20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de>
 <20250131-pre-ict-jaguar-v4-2-c971e2852e8d@cherry.de>
Message-ID: <78233adca1ea107873f11a380406ef12@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_032954_148309_17492296 
X-CRM114-Status: GOOD (  15.27  )
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

On 2025-01-31 11:40, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> The Edgeble NCM6A can have WiFi modules connected and this is handled
> via an overlay (commit 951d6aaa37fe ("arm64: dts: rockchip: Add Edgeble
> NCM6A WiFi6 Overlay")).
> 
> In order to make sure the overlay is still valid in the future, let's
> add a validation test by applying the overlay on top of the main base
> at build time.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index
> bba9b2f1c761040545bea561878e9b63f8c29488..267966ea69b194887d59e38a4220239a90a91306
> 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -136,7 +136,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-w3.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-genbook.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-firefly-itx-3588j.dtb
> @@ -183,3 +182,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=
> rk3568-wolfvision-pf5-vz-2-uhd.dtb
>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
>  	rk3568-wolfvision-pf5-display-vz.dtbo \
>  	rk3568-wolfvision-pf5-io-expander.dtbo
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> +rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
> +	rk3588-edgeble-neu6a-wifi.dtbo

Obviously, virtually the same comments [*] I made on the patch 3/4
from this series apply here as well.

[*] 
https://lore.kernel.org/linux-rockchip/77b5d0efa6e56bb391575aeeb4d1be80@manjaro.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
