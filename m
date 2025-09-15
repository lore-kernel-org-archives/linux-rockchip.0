Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98C77CAC59A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/XJudcbfB2+duw4OOwBgfyuyat/rtnCWL8HkYEwXf0=; b=fvIddgWG92fcF3
	WXY2NDALe55qJRgdZxscc1FqpaWChGBmDRcnUtSFZ9/hnfdaXrCET//b6Jl+kTgEUrXAkNbHfGhfj
	xinHOGkGfhpE0VLy5NhcDzXYDvahYueRM40DRVrskCEUTA6YYlwmFUywQ9EMJIfTBPCOuYQ1wRHta
	pyC8llqC5Hf30ASVYBRnUXQzSjp9IBkbgGoXOWzkvJJ2ckCnqa3E3hpbFdsDPMB8KF1c464JplLUj
	SIq1ZXzdvPzblkUZ8j3OBlrJVKqEGN3mtcLLPXHm2BhCFoKxZEFG0rqP3m0fMm4HOy+FIjeQa3hrS
	q+EKAY5VSiX0WEY9wwPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy9fJ-00000004UzY-3Upm;
	Mon, 15 Sep 2025 13:54:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy9fH-00000004Uy2-2jlS;
	Mon, 15 Sep 2025 13:54:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9734460236;
	Mon, 15 Sep 2025 13:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 299A5C4CEF1;
	Mon, 15 Sep 2025 13:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757944481;
	bh=XQja+r9pWH1pmAvJ3yoJnUXUELpdjU5crLCGTl4MGZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DB4AXQGESnInq9+Li1c4fKtX0IIAElBJuqjrRMEytH635Ne1ZA2UwbpExDWwjdZLW
	 ksjeLGhYYo0gVn+laB8i4CPnTBnMIzb8KDq+JEjAL82YYD/R731cDOSVnQXuF7bhIa
	 mDvse77MvpW6648ht5DwHLPmIqY5eWnm7MVFNOrnzbaHQ2ZSDPEz9mt/L07TzrxlHH
	 ijvCl6LRLjOICQ1v1Q0dYat2HGWFuchgQGKArmPp5SV/GH3WWhztQFSXEutK3oBOq0
	 T63Qaj2LMtoWifXQ/zKOieeohG0tMP+ijPcBxB6xDIFXcD8Ov/1wKKifqgBqdulYL/
	 e4+FlaylOs4Ig==
Date: Mon, 15 Sep 2025 08:54:40 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kaison Deng <dkx@t-chip.com.cn>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
	Andrew Lunn <andrew@lunn.ch>, Dragan Simic <dsimic@manjaro.org>,
	Wayne Chou <zxf@t-chip.com.cn>, FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Firefly
 ROC-RK3588-RT
Message-ID: <175794446144.2732898.9504412064423841025.robh@kernel.org>
References: <cover.1757902513.git.dkx@t-chip.com.cn>
 <27b2ce7950fdbf28c6c8404c3f8be3c1c35d6b3c.1757902513.git.dkx@t-chip.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27b2ce7950fdbf28c6c8404c3f8be3c1c35d6b3c.1757902513.git.dkx@t-chip.com.cn>
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


On Mon, 15 Sep 2025 10:22:04 +0800, Kaison Deng wrote:
> This documents Firefly ROC-RK3588-RT which is a SBC based on RK3588 SoC.
> 
> Link: https://en.t-firefly.com/product/industry/rocrk3588rt
> 
> Signed-off-by: Kaison Deng <dkx@t-chip.com.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
