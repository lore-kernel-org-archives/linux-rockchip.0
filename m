Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236ADCF9C71
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 08:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaES5TclrEui/qCKlDasadES77Pd3zy7truNz/EhunQ=; b=oMv0qwNxaRGEK6
	083tpVvdJZ3losejvJFfzumU9RDK5CrUFXO/jvNqxApgywefsZPUDT+dnRQqIzsGS8w3R/fz1k17z
	D2mpaY2O5eeaOHwY5bSaFfsDHPK9TmrM1tmIHEtjB5fXycLP4UjlNh3FNO0F9hSb7pOw4S/X32ct0
	kNgPBGE4Of+7tta679jra+Hc2hh/Z1IdNzRajNJT4PfE9ZHWZpy61Y2WC0mNfyawl2uE0RPbAWb+B
	Wqz3LfOtsj5C5TO7driWHeaqmyVuZmc4n/qe0R4Kf7xKqiWzGlQEyjGlPS3Gr9kXGWZYjyIGxzD/X
	5gXiIlei7QW90pTNzaKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st19N-00000001drW-15RJ;
	Tue, 24 Sep 2024 08:44:01 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st17A-00000001dTY-0tDL;
	Tue, 24 Sep 2024 08:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727167302;
	bh=0Nxohz98wsc6izrrKqrkIzll7iRJ8I4nyuTfQRY2aaU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KizET30ZYWAlv4XJzFn4/Dn1JgreGEciuLmwr+bPzLztL1s7S8v62aUwodhOw7GkZ
	 L7vJYwiUkgi11IbHhlC/FhOGcKljWZPOvsubEJ0Gsy5oaYBIW38Xwozwl8/MDBABqG
	 DpGcR4jlc0FFjh6pYTOAWwkTPngqI8hq7cCBjaGTn7LuUMLUJx+eS/zJIWNz6VyuEi
	 5xPCeYaWWWMQowVPReqfQnAXrcnKCki4eO5bjtbc1TBOUzp84WMhRxu1qOH1Q3orRg
	 B3fHiJ/gNashbVw7dlzcof0RJ/MC9Jotki+VA7cdgRAlkumLta3C5IKa5Nua+orLtJ
	 +MgFE6MFXk2fw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1D98017E1067;
	Tue, 24 Sep 2024 10:41:42 +0200 (CEST)
Message-ID: <9a7b67a4-f4aa-44df-8933-876396e873d9@collabora.com>
Date: Tue, 24 Sep 2024 10:41:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Depend on
 CONFIG_COMMON_CLK
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
References: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_014144_432184_0909D11C 
X-CRM114-Status: UNSURE (   7.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 23/09/24 18:40, Cristian Ciocaltea ha scritto:
> Ensure CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX depends on CONFIG_COMMON_CLK to
> fix the following link errors when compile testing some random kernel
> configurations:
> 
>    m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_phy_clk_register':
>    drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1031:(.text+0x470): undefined reference to `__clk_get_name'
>    m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1036:(.text+0x4ba): undefined reference to `devm_clk_hw_register'
>    m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4d2): undefined reference to `of_clk_hw_simple_get'
>    m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4da): undefined reference to `devm_of_clk_add_hw_provider'
> 
> Fixes: c4b09c562086 ("phy: phy-rockchip-samsung-hdptx: Add clock provider support")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202409180305.53PXymZn-lkp@intel.com/
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
