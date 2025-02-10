Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB5DFC02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 14:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vy4CkATuSpI9xROF596AG35mdEKD9i1kOkQlrhwS+g=; b=j0dC0mjm3fqoPN
	yddH6+yYwW4ezMmo2iIfEjXu31TgOYD5+zgiYy+XGRuJPxy5/bgPD5gCSYJw9YCabVicE+2sNXrsK
	W6ZGIngILMofneLYSD3QcTeYgUHiq7CzXke7emARHMZEwVMCG40szBoHEVDvpqpipmXiVhAQHYqmu
	JNYS8NvdI/IPzOIa65Hc0XcnVqf8zoONI5jc1BLelK2ITN5KL98/7eS9ToFHMO2YXUImWGqFq/h8R
	1VvmhuoGPN3fBTcRjjHnu7mJtHGsn8OerMxxUkEXcQoli/MYXJfagaXfEcUpvF37ORqahYD53mp49
	TLdkQ/dv6DkQRHIO9+WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thUVx-000000005LH-40aN;
	Mon, 10 Feb 2025 14:11:57 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thUVv-000000005Jj-0Idl
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 14:11:56 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2fa1c093d6eso4972323a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Feb 2025 06:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1739196714; x=1739801514; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+U+cJ54sadwbAEEQ1XMnFeXEpukGhrX3NXgbMiqSEdc=;
        b=faQdOe9VFq6AnbmBoAHHHphU+ICfXJAimgeWeZhHp5WdPppci1evYgA+5ZA3urRA2d
         /PpfLS+wg5Ao2pMjWv6sWvd1WBL5z8p+cIPfLvfa+cIbZ+1gT9LlvAQKJ0su0xY5BsEo
         Q2HoAJMpNSsWMXTfr8e/zLJtIF+BT2x9j/t/dsojjD9guQbDMxJFClxGKuRGgdg50ClM
         ewu31YeJCCtn3ewE4CECbQPM9THMrcniWugRcRzN6+f3K2YTKbWyEcHkukBMhzZQJwCV
         yHwga2coWOta8mHaaRwtPFCPzpudQHjR9cRIfJe168Nc27g0Ec/1qZVCqboklb1Tlwzd
         ADzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739196714; x=1739801514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+U+cJ54sadwbAEEQ1XMnFeXEpukGhrX3NXgbMiqSEdc=;
        b=RrNCBEcoKBtt1sQ9WqRrZYpUxqjwbq3iUakFJ3zl7il8GtQxct9dCmE0FlS0umVg1r
         ZeDz5KfRu19ZoaFqNtYluj1mZEyo1Pow4eXrP4mo3oy82vRPrVN92m4QgcqhhUyNnLn0
         nVxLJxQLBV9576dCIMGH/6kxjb9zNyb08NiJikKlohDdabzL5bopj4BOSCpVV5ilmOYO
         8id3S/4cfgcobKjKEQaI3F51OD/FlRPQHh/QmBOCBM2rYRZ6TyQvi+HQN+B3mBq24IGa
         WrYXBD+kDHv1YwopTDHDyMTNz5ZN3+kFabfbWEa0vbOWoAWia8hBxWwQRmuYRL4EDl7J
         igqw==
X-Forwarded-Encrypted: i=1; AJvYcCVpC2RSXN1LQbP2xuVc9+1cYX/p16ZDtZFTr8Y/2+ctkBu+VatODJEhZ8okhv/t/zrkPykv9II5jZnAz8Rs4g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXB02JwJr0WOpbgmBCVk1wPvL5gZQxCQiAy5Ip9YTQURNIfmEs
	2QwCxCgjhx1HoSq+qASUEVMfAvGxnxRPF/hZ0cWPbZPliTB0q3sVkaE8ml7rzgwsPahk8PmPqbM
	w8czb+kFo2N3QZwruRfDhUsWxdvoSFT7USEli5w==
X-Gm-Gg: ASbGncvjsha94wMruMobPoUczNh9j0NroR/+4wzw0BBiXisDRYuZMo/MqgTw2TkMRUt
	F7Obrbj7tKlYHRYXRDSbaPuNi7fNfHd85VgpE/RKZWRUEW3xXfgOhgA3UhObStGnZ294YxoI=
X-Google-Smtp-Source: AGHT+IF1+dEqoORyKXu66dB2Rg8beCQhSwmnjjgQuD2ZBI10xzxpJ4Y1Rzbu+lgFq2AzogQw2HBplK2cVN2+wBMuIPk=
X-Received: by 2002:a17:90b:368c:b0:2ee:ee77:227c with SMTP id
 98e67ed59e1d1-2fa23f55e0cmr18756882a91.3.1739196714411; Mon, 10 Feb 2025
 06:11:54 -0800 (PST)
MIME-Version: 1.0
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de> <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
In-Reply-To: <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 10 Feb 2025 19:41:43 +0530
X-Gm-Features: AWEUYZk9JtE8zrOo2lYnBOq7Su2RsFQcHGdiZcrSSTPxmQcqmii1TNFikv1yH9o
Message-ID: <CA+VMnFyom=2BmJ_nt-At6hTQP0v+Auaw-DkCVbT9mjndMmLKtQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] arm64: dts: rockchip: add overlay test for Edgeble NCM6A
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jonas Karlman <jonas@kwiboo.se>, 
	Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_061155_297017_7806E2A6 
X-CRM114-Status: GOOD (  15.97  )
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

On Fri, 7 Feb 2025 at 20:50, Quentin Schulz <foss+kernel@0leil.net> wrote:
>
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
>  arch/arm64/boot/dts/rockchip/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 534e70a649eeada7f9b6f12596b83f5c47b184b4..02f98abe1df10f44f2ac27ea5f6c6e6c6334724e 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -192,3 +192,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
>         rk3568-wolfvision-pf5-display-vz.dtbo \
>         rk3568-wolfvision-pf5-io-expander.dtbo
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> +rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
> +       rk3588-edgeble-neu6a-wifi.dtbo

Please add neu6b-io as well, wifi dtbo is similar for it as well.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
