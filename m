Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E8ECD1F9C6
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 20:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFHgJtH3g6y6w7h4xtzSLQ1TVucZl4si8Kv842XiCvU=; b=Y0KaPqpDPVkq4a
	snKWi9x/886B/qGdvq7Dk+vlPMYUE1xzuaNPqghXUZ2j+YH+H/pefQX7ErVxi5wCcRP3pjcZYUxGD
	G2eRjZpucylDT9X+EByefyiFhTUWRFmdgyAxjL0ctmZKPPmDO2RpLpbzLU93tQwBDz5Nz6OYJuptH
	O2sEkTMiqXD46EQyhqdSe4JDJ7VziSCv/f7DXRGcUuMbUIBPODACXQxwsxOcAYRpk5AcYqQVALWEg
	D6htwTYRSkW9ZUuZ4fh9TwMabFNjVk7XfL2POH9Woz8ESykLb9bh16GncW9fwSa3to43HeHBMk/mD
	9c4TYIdJCX2uwY9U3jXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nwU-00000009Um7-3UtI;
	Tue, 15 Oct 2024 20:14:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nv4-00000009UVC-0Zkw;
	Tue, 15 Oct 2024 20:13:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 417125C117A;
	Tue, 15 Oct 2024 20:13:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2807DC4CEC6;
	Tue, 15 Oct 2024 20:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729023205;
	bh=i6xUc2BLIxopI8JVWx6yrBevmVH88BaZ1U6j/GtsNaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DPiYtKXpb7VReZQjPz4f5W7ppw/AqYRmw1kJOmBgklH9jFfoquXVrwjGzou4Nj+Cg
	 NlbsyMuuT5mWw/zCjy1fQMxIfr2Ijop5jS5q77dnlmK9H7qKuBjvn4bzwWHpuhFjUL
	 obT0/Mw7A7lDpaI4bu1Wl3AUZGqlDZbE8GDmkl2Rxjv02D/MDRyuruiUKBMOJ848zl
	 SSGO2/rbRilAyJyprHzSik7OlTLKId4AM/XLVZYcEDwP092bWUHUmZf0Wx+0dOTCFT
	 gGu1XHc6hEJ6xTfAx7o04/78twSM66dTc9Ixi82RFAxImYMT5CoI+VhrsSUYg7z5NQ
	 Ugw/6lq+zBcTg==
Date: Tue, 15 Oct 2024 15:13:24 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Andy Yan <andyshrk@163.com>, Dragan Simic <dsimic@manjaro.org>,
	Tim Lunn <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>, Jing Luo <jing@jing.rocks>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum
 to Orange Pi 5 entry
Message-ID: <172902320363.1787838.552661206100007627.robh@kernel.org>
References: <20241014180324.536702-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014180324.536702-1-cenk.uluisik@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_131326_239773_EA79DED8 
X-CRM114-Status: GOOD (  14.71  )
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


On Mon, 14 Oct 2024 20:02:52 +0200, Cenk Uluisik wrote:
> This extends the Xunlong Orange Pi 5 device tree binding
> with an enum for the Orange Pi 5b, which is implemented
> before the device tree.
> 
> How does this board differ from the original Orange Pi 5?
>   - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
>     slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
>     for the WiFi.
>   - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
>     "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
>     hooked to BT_WAKE_HOST.
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates
>       from within the eMMC
>       storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
