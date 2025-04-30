Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7CF6C369D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 10:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=is8c4wEncY6cgU/3xPlNc/TNC5OCB5JKnnnN/8BfIMk=; b=0fU8kXBwnxN6iN
	wLV6W/uNiuzA3ZCJrmugMuzS3CLnoWMVjuoYhRAZ4ZYBVcgUy2ndsn5s6OV91RQSBihpArVfR+sMY
	oYdVitl7wnRc2Jjei4Li9fz067qTA7flm3rR+nAe/GGQPhyIEfnsjX3olOthP3cxticKr7ZMeNbIz
	rS0ceJL6Yi3i18BFaZMgbCnHQWkF4K7E5PMw+TPc00dDJH9U7R6q23/KnKIIxxkMZvxiQM/bq2P4L
	rlrms+t4owQ2YLNVm0dyA8STLZnnMCa94kJe4lvW3rx1oPHVUFC0X6y0ZyPRVx3E7lvcDQ5pnv6g+
	C4D33Xz4sTwCB0ZiRQ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA4x5-0000000CaEu-3pu6;
	Wed, 30 Apr 2025 10:46:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA4af-0000000CVwx-2J7w;
	Wed, 30 Apr 2025 10:22:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ED5F96111C;
	Wed, 30 Apr 2025 10:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2AC0C4CEE9;
	Wed, 30 Apr 2025 10:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746008576;
	bh=3Yw9ztdY5WEc4kBWw0QPEtWQp8inoc+qPFkV13xi6rI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KHtxCrlVKQ/c7Di3/EPrP4Klw2sjrcpp0ng93iIQd0JjoHnRQLbGXkbhx0Ujz2zAV
	 HD9gcP5h6jiGU6nFPnu3w7h7kdZuCma8f8/q4OSJYysgOnWqOdrhoHDd0495PHeNjl
	 Wf5/QpHW0IamoyeZrvBi3oBvlEOs0Hsmjp0WpzDEDF+NT8WAR0eVsVuT/ZX2ddHB+r
	 YyDeS/9KFYdtYvMrBPY+yNzmYbHTTV0bacwcDYUgTc/8rvkxXsm7VFLdaTmJshfgfv
	 kP5mio1gMtnGEA3czsFJiYTbseAmQAhUsUcGN+xcN6TdurME3r26bA3Iqzm/Zv8LKU
	 mz+b/rVpnf0mw==
Date: Wed, 30 Apr 2025 12:22:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add rk3399 industry
 evaluation board
Message-ID: <20250430-light-chital-of-cookies-b8f2ab@kuoka>
References: <20250427094211.246-1-kernel@airkyi.com>
 <20250427094211.246-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250427094211.246-2-kernel@airkyi.com>
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Apr 27, 2025 at 05:42:10PM GMT, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add devicetree binding for the rk3399 industry evaluation board.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
