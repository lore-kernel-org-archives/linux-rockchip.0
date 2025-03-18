Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B35C28B28
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 12:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsV+83xNY3JdaEN2SHbHPgOdKkdeRpyrCgEfdCYE2g8=; b=dt4s6tr1zVj/4g
	BCXxx6pmZ+Mujlh//PEPmfgcv/3Hytf5ow6ISv4mlt0D/PoZUTXa7oF1b2c0fOdXWIa13WX/njKwn
	RSp6BSnDFrQzmNXZByWHD9Fq1JKl5WqIEVi3ivRZjDGIgH0Q2Kz+ptYDofatvVlUCaGAdJz5hH4j1
	n8EEjK9qjp4ohohfkEQa+Ea6hp/PausCfDiMYxhaoFX4bG/A2SMMVyfhXV2y/3lCJWJ6UJnpaHi4G
	/LlyI9pU5YiYcTRUp+KFwikRbbATk+3TtegTKfTWsV+4IIs8mjszu0vds/M7dFCduipTb/tmQ7ZnS
	MyBTMVTpSNae4Hrf2Cpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVqL-00000005qnp-1Cms;
	Tue, 18 Mar 2025 12:14:49 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVod-00000005qZp-0KN2;
	Tue, 18 Mar 2025 12:13:04 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 2756025B9B;
	Tue, 18 Mar 2025 13:12:58 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mODv3-V5KX9r; Tue, 18 Mar 2025 13:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1742299965; bh=X7IPSY0ipoBbhtXtRwGSvqy5uwDoi8Tgu1K6QKtrhvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SFsPLfOmeIxPs7LyMzZAEch62HIUaKUL8ttPrcN5ekM4MygMKLqJgO3B3QgxcWL50
	 CgM1nhfma+XOKNZ/c/foG3pcz1IkfrxsbQOGDuFE1M9VoK4tTlzszl+Hn6/MqmoKjX
	 zILe/jfV9gjVbpFsDeoHkFlqP7FUh1HgsA+Wr08CjLK1BNaXwkDG+yu5Npkiq7xBRM
	 ITDd6v8qvWZ5oxwLs0SKm72OYZ1vq3BRVx/ePO3xjqrP/7I08/zRo0OahwZwSb4l7N
	 FcEAKIOBhIsRz1fZFUlsHECwM05utQdXwdpPaR6altO8ObWjl9BhiQYs0aVTU7RlLb
	 ySKERRKUfGJQg==
Date: Tue, 18 Mar 2025 12:12:33 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Rob Herring <robh@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add missing uart3 interrupt
 for RK3528
Message-ID: <Z9ljMc96QoCNzzq3@pie>
References: <20250318100010.2253408-1-amadeus@jmu.edu.cn>
 <20250318100010.2253408-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250318100010.2253408-2-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_051303_534674_4486963D 
X-CRM114-Status: GOOD (  15.95  )
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

On Tue, Mar 18, 2025 at 06:00:08PM +0800, Chukun Pan wrote:
> The interrupt of uart3 node on rk3528 is missing, fix it.
> 
> Fixes: 7983e6c379a9 ("arm64: dts: rockchip: Add base DT for rk3528 SoC")
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Reviewed-by: Yao Zi <ziyao@disroot.org>

Thanks for catching this, seems I messed uart3 up when cleaning the
devicetree.

> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index 26c3559d6a6d..7f1ffd6003f5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -404,9 +404,10 @@ uart2: serial@ffa00000 {
>  
>  		uart3: serial@ffa08000 {
>  			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
> +			reg = <0x0 0xffa08000 0x0 0x100>;
>  			clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
>  			clock-names = "baudclk", "apb_pclk";
> -			reg = <0x0 0xffa08000 0x0 0x100>;
> +			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>  			reg-io-width = <4>;
>  			reg-shift = <2>;
>  			status = "disabled";
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
