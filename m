Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC4ECD4F5B
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 08:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4jlK3ZaO+FgYBIPOjRcL9N9pR2HnB4WX4YhS2SSJu0=; b=t8ITTEVA5Tml/w
	vjrPmzN3YSm/RlvE9p+z/WP3uNL80DYwhduxiEUFysxzYMDbej9hf6l0HbJsFVe5Rxa30by7ptgBg
	xBsrMoUBqkdvDRHCASXib57KChhhWMODqne1zOfLl+gKRo3VU5yjVm9olnEOe7kxHxV2J0jm+tpaV
	J/GT1hVzwR2ySdgtBhZVGcIo1fCLNgE8evPsaY+DNP37j0xVMH2+B84w/SXcURy/5hnvDMBGiJ5aZ
	VeHUwTPDYVjP5M/JKFcdAZOUtAixX+El1WodjnhhjL1Cto3HuDp6SLYGPg6i6F2ceh/BRaHKKVbKt
	h/deX5MPtfJ7txpaCb4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJSnc-0000000A6wo-3Iha;
	Thu, 13 Nov 2025 08:35:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJSnb-0000000A6wC-2A47;
	Thu, 13 Nov 2025 08:35:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A2607601B9;
	Thu, 13 Nov 2025 08:35:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36FFC113D0;
	Thu, 13 Nov 2025 08:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763022922;
	bh=ICI1faY+jwQWDxMwXi+RLB99AqgqE2PSln2lQy4kxmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UE2Te3G36qEKDHoZD9k/3f1GwsAneXvrd/vZ7jp6Hk+W+UTNbdlVTpDANB0UwVUa7
	 qSNDHq6qruzuGFHctcMAdxWR3Xm4bMv13mDY/L/yVHr/ivMTz7loRfwQIczCgiIURi
	 LEs4odmj7tfK2KTicIz2bjIJmcADvAl5WZHr8MeSoatlIP0u3keA075nMC1Qu1NyE9
	 ilSPNYfEZvZcinP8nGpHfz25QI0UDXi5wuUpn6ce7eR8Vp75bayV29CX2vflCOHdaV
	 rbBofld0KMJuLwJX37sjaWVFH03PNQJuwpnKyphhedQh25a0urRmXLz0GHuSp/si3j
	 COkgRBzNdKsiQ==
Date: Thu, 13 Nov 2025 09:35:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: michael.opdenacker@rootcommit.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Asus Tinkerboard 3 and 3S
Message-ID: <20251113-berserk-hairy-alligator-2eee0c@kuoka>
References: <20251111172003.2324525-1-michael.opdenacker@rootcommit.com>
 <20251111172003.2324525-2-michael.opdenacker@rootcommit.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111172003.2324525-2-michael.opdenacker@rootcommit.com>
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

On Tue, Nov 11, 2025 at 05:20:22PM +0000, michael.opdenacker@rootcommit.com wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> 
> Document the compatible strings for Asus Tinkerboard 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
> 
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch to the "3" version.
> 
> Link: https://tinker-board.asus.com/series/tinker-board-3.html [1]
> Link: https://tinker-board.asus.com/series/tinker-board-3s.html [2]
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
