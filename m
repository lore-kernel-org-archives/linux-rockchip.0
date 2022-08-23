Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C599C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 11:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+x9hYaWmTLxAkmkEI/Ag3bEhvP0Ut/xAhwAHD+0brE=; b=W7YvxY6ctTOzWk
	Xclbk6qNCh0f2uTqGVB2iGtuFZk+Fy4nqUgf2YINa3HKA6J/QxegSAMvOf1dyKJ4HEDCDCTn9uzdP
	1pEvefLukzOXDUF3PKAc0dTpoHqnNPfCRbrVokKj26OBmGaTbqlzrPwQz4cHa17zbT2mKcvJIjNIg
	opdf503GB4sclYLzkJDFfZoTyugSJPYT0eRGxPBTIr5t26GaHPYKSVZe4U476xHMC/ZtwCrQIGwPR
	P0ykSWe7ASLaqgGBXUGIDI4cd1v93Q1IlEUlJi3eOgIIM0bZNZRifEzVO7kClqdraKjZgY4+F8wZj
	ZenxnVNB9jhNlD/SwAEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQS3c-005M9v-O2; Tue, 23 Aug 2022 11:26:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQS3K-005LyC-RR; Tue, 23 Aug 2022 11:26:40 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQS2z-0004K1-CB; Tue, 23 Aug 2022 13:26:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Samuel Holland <samuel@sholland.org>, Peter Geis <pgwipeout@gmail.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>, Michael Riesch <michael.riesch@wolfvision.net>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Return zero after otg sync
Date: Tue, 23 Aug 2022 13:26:16 +0200
Message-ID: <6544199.MhkbZ0Pkbq@diego>
In-Reply-To: <20220822103219.3985075-1-pgwipeout@gmail.com>
References: <20220822103219.3985075-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_042639_078721_5120B0F1 
X-CRM114-Status: GOOD (  17.12  )
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

Am Montag, 22. August 2022, 12:32:18 CEST schrieb Peter Geis:
> The otg sync state patch reuses the ret variable, but fails to set it to
> zero after use. This leads to a situation when the otg port is in
> peripheral mode where the otg phy aborts halfway through setup. Fix this
> by setting ret to zero after use.
> 
> Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> 
> Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 0b1e9337ee8e..5fc7c374a6b4 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1169,6 +1169,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
>  			/* do initial sync of usb state */
>  			ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
>  			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> +			ret = 0;
>  		}
>  	}

I also ran into that issue just now :-) .
So am looking forward to v2.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
