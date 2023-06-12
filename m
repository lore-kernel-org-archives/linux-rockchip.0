Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1FF7C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 09:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUi8mojJW7Wgpclji7uQ35muA8UBxuf5WPAlxIXjvYw=; b=rGsEwKRjMj6Djo
	XPBZwveaF3UaPlSoVd3SVRu/vPx6rF64ATjwPsosBpF5E7A9dWsOc2sD77VjcbcSwSNCiKLMZA449
	xHoQ8lvshahvarkXVAble0YX+0es2Jy9UN+1bpXGezSL+VVAixhLWjgx76D7DCN+yLT9rpyEJxTBG
	vBI7XRPuik50XikQmwfTJdnFw8ovyziivv0870iUI1VXq/gXwbI/fWvl2g6nrqHrvfYPjI5ZLclbN
	lDbpDf4pAyMRxnUasWoM+BUfnnvG7AaxzeMov2EXBaC6aMR3hFNq/c/P8dq+BaobMWBQVM4vARwXW
	6DYKfMTSKxmN4UyQkYVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8e68-003LfF-1V;
	Mon, 12 Jun 2023 09:44:28 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8e65-003LdS-0A;
	Mon, 12 Jun 2023 09:44:26 +0000
Received: from [IPV6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2] (unknown [IPv6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 871996606E8A;
	Mon, 12 Jun 2023 10:44:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686563063;
	bh=L9+Fd1Jt5ie6N8kEME3WfF11akqrl+GDjydWidgLGqs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EjeOWbbks3EjuI4NqUETG1gV3dsuUDknLu8oMiDShQ4GxbXW7xQj3YKKFjA9UrW7s
	 TWKCgT7xEvM/ZLMaJaA8ioi/nd5KOMUeXkvatvZA5SBMZRrAF3S/FrVNgZLXqcZy2G
	 9f8glb4VkgnBygg+is8v/YUOfHXCm5DYCYHqFLCFWWMyB3nG6bUQoSM28ADbC4w3mX
	 ZmcjyOyS7KYp5A73+mtui4v0QQrCuXljUGDVnwUluz8HNDGKKPAdus/IiaT31aRdnK
	 hjoxB00bnn4TyNsh5WOYOBj5x0QMD4HiFyT6aNthL9VWc9CQETSlBlrGXQKF5a8GPW
	 LYWFxVt78FLhw==
Message-ID: <61c68bd9-aa3a-bd55-0a06-958e4e3a3be2@collabora.com>
Date: Mon, 12 Jun 2023 11:44:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230610143601.173307-1-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_024425_224800_00281850 
X-CRM114-Status: UNSURE (   8.15  )
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

Il 10/06/23 16:36, Shreeya Patel ha scritto:
> rk3588-saradc isn't compatible with the rk3399-saradc variant,
> hence, fix the following dtbs_check warning for 'oneOf' condition
> failure.
> 
> DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb
> /home/shreeya/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb:
> 	saradc@fec10000: compatible: 'oneOf' conditional failed,
> 	one must be fixed:
> 	['rockchip,rk3588-saradc'] is too short
> 	'rockchip,saradc' was expected
> 	'rockchip,rk3066-tsadc' was expected
> 	'rockchip,rk3399-saradc' was expected
> 
> Fixes: 2daf2ae9793d ("dt-bindings: iio: adc: Add rockchip,rk3588-saradc string")
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
