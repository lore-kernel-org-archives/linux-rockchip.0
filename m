Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24576F5141C
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Mar 2026 15:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/D2kLFchFuhS9Jh1fxhHolaY4pFn5Dmv9fwjdApGtA=; b=GAh1xnWAvktsz0
	ZUJhb3SS/Xkm047wT7KPxuT8oHpat+aDl8jMT7PVeVOn3DXYuMV7/NyG1TGIUgqu8s+OuoYDoqHG7
	1c4KHfYidQ3zQM036zLGdjWgW/NZaTmESu+Gb3bxGagtoQNqeKOe3fvCA6WVeV5k1SE8lLWWJYJaa
	nKBdjzMIVBLMM5Jsp/f6uXZlJKPdrAlGqXYZDLzY58P6tlfZrK+fq7Q+d/RURgC7nCFqlBuog1tgH
	+6ZrB2bfvqU7TYO+t1Ur0t92kNmFdmQCOSobYaontpSo9r80+9KnkLCAQS7vTRlLKXZF1AcPc4760
	KqIg8Gjioj3XDJZb+YDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vytPy-00000005IJJ-03UJ;
	Sat, 07 Mar 2026 15:18:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vytPv-00000005IJC-3KRV
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Mar 2026 15:18:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 16EDB6001D;
	Sat,  7 Mar 2026 15:18:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BF76C19422;
	Sat,  7 Mar 2026 15:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772896689;
	bh=jlypIP7aSTLT6zBopju+NVijnNmlfi4wioiJEX4k+HU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pz5TYceLrLeUNaE5OZh18nZssVhCQuGG4Dl+4595UIdhQ/LOMOsk1nsYmOSunzRgY
	 n8FzOkMCIHLLgpdtcUbrvZy03fQx6hnuoG9WgJt4juGbwcLOA7ga5TYqOkMnT0FrYv
	 ZXxbOvfTG4SA9hn3+lIZHVlVfP/XB1pGSV/ybg9psQRWEDsuvatJRWztk4UtDBO+Nh
	 8osKYuub3v2RngY27loXxr7S6UPCFRFv92Qj2uazrDK3fp1dKWb1VpLBTf9KaoXy/g
	 xuESlWTh1oD4jNWLbZKU41y071oHnLtyojHLAUun5jIg1c7o7v0zaiAJQUQhKlIU7R
	 11ImNMRK7nT8w==
Date: Sat, 7 Mar 2026 16:18:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add shaping nodes for rk3576
Message-ID: <20260307-impartial-cat-of-efficiency-a742ff@quoll>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
 <1772782832-216867-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1772782832-216867-4-git-send-email-shawn.lin@rock-chips.com>
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

On Fri, Mar 06, 2026 at 03:40:32PM +0800, Shawn Lin wrote:
>  						 <&cru PCLK_VOP_ROOT>;
>  					pm_qos = <&qos_vop_m0>,
>  						 <&qos_vop_m1ro>;
> +					pm_shaping = <&shaping_vop_m0>,
> +						     <&shaping_vop_m1ro>;
>  					#power-domain-cells = <1>;
>  					#address-cells = <1>;
>  					#size-cells = <0>;
> @@ -1602,11 +1626,21 @@
>  			reg = <0x0 0x27f05000 0x0 0x20>;
>  		};
>  
> +		shaping_gpu: shaping@27f05088 {
> +			compatible = "rockchip,rk3576-shaping", "syscon";

NAK, undocumented ABI.

And basic checkpatch would tell you that.

Also, shaping block is not a syscon. Please read what the syscon is.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
