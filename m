Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FCA5C369D3
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 06:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olM7vyqBcDFvRLFK5bhPfKPKGfM0z+Ctjju7qvqpbc0=; b=FlxEwqWm39Tles
	BTQruwrtnjU0W3rWUr7hPHuJVjs31WyrrZ95tNNgvGDAWBE4fszbLshufT6AtIg47Z5Dc8Rlz9laT
	+CW5n1tNT/hdHgk9qlC7iUEPP8u31PcReERv+NOtyMB4YXdRVGKDdplvHWwYzL7KJNd242B3VLqNa
	2yafAnrThbdjT7u/FCi7483mnqIqFNOyfz8HTdtpc046pAbSBl0qhFZ8UBax8FqELva8t6RsCK4s1
	/Bl6blrti3d/gqbLhLYmlFiOxtY3o5Rk2mq7+O5E5v3Q8dqLkHpzvIFPYQQulcpXzjFUIIfJR7FEz
	MQg+AYIUKIqk4y62pzxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8CKL-0000000G3Ho-099f;
	Fri, 25 Apr 2025 06:14:21 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8CIU-0000000G3Co-2NQc;
	Fri, 25 Apr 2025 06:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1745561543;
	bh=/nG4vNyP1COCiNOBKO3nrVUdbDkroVg1evrUeQmwSwk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pdY9ofalToAHJECOkQcTKUweBtDNNM6Az4/arBlM9Lofq+JgU/FTuva62TzDFmFwf
	 u47nh4ZO33wnYoDvrLZAm7vNAIHvHSFrdyXTOdcu8dfDxTSoti1EIMa96U3YY8FZU8
	 LADZ+vMUCgpgLu/SKZcn9qWOgtaNG3hIH1Ce7kn5MoJGHbI8d8oyW0JYlyWcPhk+gC
	 gBstkCAdT+z1Mkt65fEyWIB6keZ1D+KWpsWR3FsfXqdkvte76qRH3JvkIEDKk+c1gA
	 ZbVq4b1UrmMYvU0knUWYsN7MlKAxIrNiRLEGLwRCM9ijvnPNiedXZMqUST/yK7tXTW
	 Ydo2fgrAPNMbg==
Received: from [192.168.1.90] (unknown [82.76.59.226])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7935F17E0808;
	Fri, 25 Apr 2025 08:12:23 +0200 (CEST)
Message-ID: <eb1f0bf7-3827-488e-925f-18c8fee9b1a2@collabora.com>
Date: Fri, 25 Apr 2025 09:12:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output
 50.25MHz error
To: Algea Cao <algea.cao@rock-chips.com>, vkoul@kernel.org,
 kishon@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250425023720.3296069-1-algea.cao@rock-chips.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20250425023720.3296069-1-algea.cao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_231226_808703_A5457A98 
X-CRM114-Status: GOOD (  12.73  )
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

Hi Algea,

On 4/25/25 5:37 AM, Algea Cao wrote:
> When using HDMI PLL frequency division coefficient at 50.25MHz
> that calculated by rk_hdptx_phy_clk_pll_calc(), it is failed to

s/that/that is/
s/is failed/it fails/

> get PHY LANE lock. Although the calculated values are within the
> allowable range of PHY PLL configuration.
> 
> So we manually calculated PHY PLL frequency division coefficient
> at 50.25Mhz and added it to ropll_tmds_cfg. Manually calculated
> value  can make PHY LANE lock normally and output 50.25MHz normally.

I'd reword this paragraph using imperative sentences, e.g.:

In order to fix the PHY LANE lock error and provide the expected
50.25MHz output, manually compute the required PHY PLL frequency
division coefficient and add it to ropll_tmds_cfg configuration table.

> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index fe7c05748356..77236f012a1f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -476,6 +476,8 @@ static const struct ropll_config ropll_tmds_cfg[] = {
>  	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  	{ 650000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
>  	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> +	{ 502500, 84, 84, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 11, 1, 4, 5,
> +	  4, 11, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  	{ 337500, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
>  	  1, 1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  	{ 400000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,

With the above fixed,

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
