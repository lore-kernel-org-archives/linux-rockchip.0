Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C334C02183
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jan 2025 10:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuyXmqZc7LDeW3vtAP/Tz90YZASEKFjlCVK8Ro4m6EI=; b=rtPYm6LThIZDyT
	YDkgwCG4vpFv7vwnbnDz3uOVUF/VZEaK1pMsmFJpun3rBAOi7D9fvL055RwOf0yCFKNpDCnOA1dFO
	LyvMPlumqBjAXnSD7cWakiXkchf0lxevHZlhf3yC/1oE01s4CiKl0Bf7HZVrf4OgNGCUjKElrKAr1
	TsxnEz+NAhk3mm7xH9ZX2f16M0biPQBi8aKEbT0drOIuV02rmMfrntISm4i4d9PRA1SqkR9diYEIQ
	wL3a1eGxBqViOd8/7FzaK9qeuqIIocPW7Hqg6cb3m+HLau7bJ/sZ6AqMUR7lfRXg2/GIiGsioBJI6
	e8HgL/iJdVMcmJEznMxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYk1W-000000005F0-171l;
	Fri, 17 Jan 2025 10:56:22 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYk0E-0000000054u-16Oe;
	Fri, 17 Jan 2025 10:55:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BACEBA42BD3;
	Fri, 17 Jan 2025 10:53:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02B4C4CEDD;
	Fri, 17 Jan 2025 10:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737111300;
	bh=mznmnvbqPaNzOEOTQeMYHdZ/QQ4aIM9FNbZ5f0Sk/jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q5fqfWtxk8NkHmnMlthkMG2gItGoTJd1zSdDoLCz6IjQlg9MWwugXDPLcBEp6TNm4
	 RoyYb8f+1q5cpUrQv2TD4NA3fSe4yd3Le3I5l6DxcNNUcQcTNcAo4QRiosznafyMoL
	 kqsOZjfigRXJZOuuDAmh9m0FirH6Ip7s7GIOhQKDNFLeY9vCmqDsZgvMKzNNARsn9v
	 RW1W5+mweyjo9dCgIeM16TlByze+uh6PjkR4B9Sj7XTlWEeeZi2EGMGQBNEmMsR/HN
	 GixNdIA+yH0BxwdVmB8I6bTEPIhaCCQST8TXMFptU6x1gszoiGpknoovd568WFUpoX
	 kgWYQKiSkoDpw==
Date: Fri, 17 Jan 2025 11:54:55 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: add overlay tests for Rock
 5B PCIe overlays
Message-ID: <Z4o2_0yX-hq-DfCs@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_025502_442356_1C034AA8 
X-CRM114-Status: GOOD (  17.85  )
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

On Thu, Jan 16, 2025 at 03:47:11PM +0100, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> According to commit 40658534756f ("arm64: dts: rockchip: Add rock5b
> overlays for PCIe endpoint mode"), Rock 5B can operate in PCIe endpoint
> mode. For that to work, the rk3588-rock-5b-pcie-ep.dtbo overlay needs to
> be applied on Rock 5B base Device Tree. If that Rock 5B is connected to
> another Rock 5B, the latter needs to apply the
> rk3588-rock-5b-pcie-srns.dtbo overlay.
> 
> In order to make sure the overlays are still valid in the future, let's
> add a validation test by applying the overlays on top of the main base
> at build time.
> 
> Fixes: 40658534756f ("arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode")

Not sure if I agree with the Fixes-tag.
I don't think there is anything broken with that commit, but I definitely
think that it is a good idea make sure that they don't break in the future.


> @@ -145,8 +145,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
> @@ -165,5 +163,9 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
>  
>  # Overlays
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtb

You moved these lines further down, but you changed the suffix from
.dtbo to .dtb, why? It seems a little confusing, is that really needed?


Kind regards,
Niklas

>  
>  rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb rk3588-edgeble-neu6a-wifi.dtbo
> +rk3588-rock-5b-pcie-ep-dtbs := rk3588-rock-5b.dtb rk3588-rock-5b-pcie-ep.dtbo
> +rk3588-rock-5b-pcie-srns-dtbs := rk3588-rock-5b.dtb rk3588-rock-5b-pcie-srns.dtbo
> 
> -- 
> 2.48.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
