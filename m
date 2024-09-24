Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 286ABCF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 10:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVG4LOGtu6paoA3oNtpB3jkshj5Hwpxkq/rEiF4hnBg=; b=zKHo2I+bCnj85R
	j6Ikh1j0hNA5QMMqcr5OekubqG3FDOF1oZIQpDa7O/Ep49SKnVA50CQOlD8yW/NbqRRhI1j5xNuRJ
	BKCTt6U70EJXAcXlTlo7zE//8lRh5aYhuEiXhPLBG7mdvogxkQyRmwJ5wshXcgX1N77FYLYWLDJKA
	n3zo2NvzUn2dsA+cZ/gQcgRag+tafWz9PthzswwbT28JF+f3PB4v8gnX1jSC2zpZW1S6eyCULBF4e
	pnUAzAq3V8WipdLnnQEQh3zgfEsCa919TYkvpXcoJR7aapbAwzONWpJXwPTO2siGG5HahDB+9zXrg
	n61+97PCuyu/ekal4y8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st2Uk-00000001xEY-0U27;
	Tue, 24 Sep 2024 10:10:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st2Oo-00000001vPJ-26zI;
	Tue, 24 Sep 2024 10:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9PhYPLjVwe/Ok8R5xESci9lBy2EalpZUO9Ew79WKLdI=; b=BJAjnir01Q8EwBe47wbTlEjWse
	izG8PIe1WvVNw+uu7j6TOBEweoTJXKNCFc/aF7g9QqmQ+YgX9sv9fDwn3LAmJnC34q22gAvk7VmEz
	DIpy2ErB4mUsIjp+ddkPnVZZu9A+x2LeR1UJgCdYdixMoENeAMeV4zi5vPrjuzKvftOY7uWLyV1LH
	PEagDY6nf4rb4nXvEPPssndeDk1Um9rGarZwbQnbJdZPDgb18oWJ7LPYbJgRURzmbt4sIalHIVFKz
	DctLLmRYir6Ep9RBqmGn4XBoI1CLTN+Aw91lINwiuR+LxBC4EE2f2wFPrZ136Z9wW/o7gMPMIV2Z8
	gKvRqSXg==;
Received: from 90-177-212-167.rck.o2.cz ([90.177.212.167] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1st2Oj-0000yj-Qg; Tue, 24 Sep 2024 12:03:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Depend on CONFIG_COMMON_CLK
Date: Tue, 24 Sep 2024 12:03:56 +0200
Message-ID: <2000463.jZfb76A358@phil>
In-Reply-To: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
References: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_030402_573569_2CCD29FD 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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

Am Montag, 23. September 2024, 18:40:16 CEST schrieb Cristian Ciocaltea:
> Ensure CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX depends on CONFIG_COMMON_CLK to
> fix the following link errors when compile testing some random kernel
> configurations:
> 
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_phy_clk_register':
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1031:(.text+0x470): undefined reference to `__clk_get_name'
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1036:(.text+0x4ba): undefined reference to `devm_clk_hw_register'
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4d2): undefined reference to `of_clk_hw_simple_get'
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4da): undefined reference to `devm_of_clk_add_hw_provider'
> 
> Fixes: c4b09c562086 ("phy: phy-rockchip-samsung-hdptx: Add clock provider support")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202409180305.53PXymZn-lkp@intel.com/
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
