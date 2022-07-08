Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF84C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 11:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfPUpYTCxcr/PVPcDrxfXhco42nu/WgM4ojqlYs6IxY=; b=KiibZl6By///rK
	kTdknxNVKOi4qyT7KCxNxofcOtKjunmEWW/xCaEfI2pinepzEdEgkNkuDg1GDXKdT1tl7EbA1hVxy
	FrQDTy4kQ8GYxHyD7WDcqa4fGBqZQc54DF6mcMg/nqh5/h25T5OhpcdcqcAX1x5FsfLR1qYcVJQM2
	lvMBMDAhc9E+fOc53YpZ3zhSFYoIBO1YsB1bhei4UlyknS45XN01Mr+kZBBo7b4cQZxqxLsr7x8P1
	CBAnDrZKvVmIVtSvoq+em8AclA3urVmTuNGd6dCN2XDMzaz/95yfoX4oN96JT0pYliLuxWgeKuDI7
	+3be7wl2+iadpjNxlQVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9mSQ-003T0A-K5; Fri, 08 Jul 2022 11:47:38 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9mSN-003SyL-7a; Fri, 08 Jul 2022 11:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657280834;
	bh=EWEAPU38vj7LmQ0GV5eR0yBw5Q9Puye2G39BDYq0u9U=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=i08e/rcxzGvUZZ6G9QLLYOldTQAicMr5nKV+Jya7oEM29J+uy5Q6o5EJcefDdpCZp
	 xdi6J6MpXUGzoRZ8zjfu66CheQjXhBeFlXe13MGZz5Xa0vSbYrgLoAL+tcjAIZkYzw
	 VKn4C9OaaRAaMlmX7ilOm6kVXI0xOFQZ0D8ihV4o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.69] ([157.180.225.69]) by web-mail.gmx.net
 (3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP); Fri, 8 Jul 2022
 13:47:14 +0200
MIME-Version: 1.0
Message-ID: <trinity-e64eb9b8-7b25-4893-a1a2-ecbf9da3ef71-1657280834206@3c-app-gmx-bs34>
From: Frank Wunderlich <frank-w@public-files.de>
To: Samuel Holland <samuel@sholland.org>
Cc: Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Peter Geis <pgwipeout@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Heiko Stuebner <heiko@sntech.de>, Kishon
 Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Aw: [PATCH] phy: rockchip-inno-usb2: Ignore OTG IRQs in host mode
Date: Fri, 8 Jul 2022 13:47:14 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220708061434.38115-1-samuel@sholland.org>
References: <20220708061434.38115-1-samuel@sholland.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:GfoyUgrdNBpE5DDJbWK8te0BuGsOwpkIMZlmgMLq1ItIB/f3fCmj/9ymcLMVp17XUT2zY
 3xp9r+UOjlAqGwFSDjqez3Ln2yovoTGQGt22vq8xptS1y220lsviKcnC5y3XihFCTJvaqPSWydpT
 QlSQW2TRIZRyM/vB9LZ5Xr2rjIbYLlexTW8UsnotLz3QUPu6HzZGLZtgNPTHuhvrsiYkai6FHyZC
 SkWma4f0xPHm3Y/9yGxeETmZ3QWbEZrDg0V1WCAv7o89412MTt2PfkAno2j+6BBSizptC/DqVu+F
 Fo=
X-UI-Out-Filterresults: notjunk:1;V03:K0:wytnxtIYGok=:dTYOmJoT3eHdOG7IhPcXGp
 OGG8ryZh66JdV6Kq/GVwA8zElZc+LivbVYefnktcRVFAV/5PacCunOPDFSVGh/JcbSrFq5mO2
 B34W9Mkpio1MGUgNaCmWdlxC6Gg5V1I7dijebd5UbtMDRddWD6Mgt9OP981YMO/A5tBNAgcYq
 xsZxL7Zyqv1xwrQ+KTlyxKY+KlJsLvnKxlf5vQ4kYLg5SVImesW9Nz8AXiH0cw0fTIMZmRrXX
 9JV6HJXqmiZViJcpUNceMvSel/WGRQ75Knt6G1L45YhSb2C4C9qHfKfJ+vl+Xp0feQM0tqnQx
 tx4IRW3jrTqByEK0zl4rfDtMXBZ8HxDuxZXrPjqE7W7SMwFixbeM7TXWtfCe1N9C0cOJywGRR
 zVOSBAlMuZcRplnszMihWYtjlfesdzhB3xJtq3Wz87tfWUNdiW20Fy1eQCDrlXsHIdjfjnfYz
 be1mE3jHyh2LGPSVe5r4hU1x3RMKeQYu2ypkNwzO8YH86Z3+hPTiKeHGdpwe6HiXO8ZAdp8nM
 hzBafo32SQglxXd65Otp9vZT90+0dSpvESQdV66xftA2woSAFqbiZqTogIVSF85fqdr3wR9Wv
 EP9husCEOd2RJvTHaJxVAnaVB65mLBn0Xtsd3i7clKmxKN0yWuffwy+YTDIDFB2FsoWrvdQGz
 aIwQRVCtsspGPgs0zTDJM+6fyljHzHqI6tZ4foTlX7xk8MNLm3phwIXzVZljwZOZjVzbvwlb8
 fKCiPz/aKZCsEFFbTU0wOkCOBWJA2ybdzGuEm2/mVKA2o1XC0m7umnxZAnj/9mul/0gfujTJT
 xszZGf7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_044735_749929_50447B53 
X-CRM114-Status: GOOD (  17.74  )
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

Hi Samuel

thx for the fix...with this it works again

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank


> Gesendet: Freitag, 08. Juli 2022 um 08:14 Uhr
> Von: "Samuel Holland" <samuel@sholland.org>
> An: "Frank Wunderlich" <frank-w@public-files.de>, "Vinod Koul" <vkoul@kernel.org>
> Cc: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Peter Geis" <pgwipeout@gmail.com>, "Samuel Holland" <samuel@sholland.org>, "Heiko Stuebner" <heiko@sntech.de>, "Kishon Vijay Abraham I" <kishon@ti.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
> Betreff: [PATCH] phy: rockchip-inno-usb2: Ignore OTG IRQs in host mode
>
> When the OTG port is fixed to host mode, the driver does not request its
> IRQs, nor does it enable those IRQs in hardware. Similarly, the driver
> should ignore the OTG port IRQs when handling the shared interrupt.
>
> Otherwise, it would update the extcon based on an ID pin which may be in
> an undefined state, or try to queue a uninitialized work item.
>
> Fixes: 6a98df08ccd5 ("phy: rockchip-inno-usb2: Fix muxed interrupt support")
> Reported-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 6711659f727c..26b841c49ec6 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -978,7 +978,9 @@ static irqreturn_t rockchip_usb2phy_irq(int irq, void *data)
>
>  		switch (rport->port_id) {
>  		case USB2PHY_PORT_OTG:
> -			ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
> +			if (rport->mode != USB_DR_MODE_HOST &&
> +			    rport->mode != USB_DR_MODE_UNKNOWN)
> +				ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
>  			break;
>  		case USB2PHY_PORT_HOST:
>  			ret |= rockchip_usb2phy_linestate_irq(irq, rport);
> --
> 2.35.1
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
