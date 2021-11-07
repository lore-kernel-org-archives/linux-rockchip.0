Return-Path: <SRS0=wu9b=P2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E75D2C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Nov 2021 19:19:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B23456113A
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Nov 2021 19:19:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B23456113A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=megous.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxHH8X5xCha5y7T/hGCFBQMoV6TBxoRXNPcyfnCuy+E=; b=TGMZvBRqn9Jq2p
	IQGtsDf+00EPQHldls/VaBEkF4OdvW8pSHwfAFUpa2pcz/72hojbBM6o8xWkOfEZPlRbtI1ZvXNbO
	yc+2GWzgGUjuIZjZ2TexgTwo8dJvvafHFNvvKCcBUfktegMnKdhLb4T6ZoFhqg5/s1c1rmanczc6w
	OnIKyLvToHh9kWqTvjvirjRqrJ0n2nn5vL6w1eN20h8phkvza8QwRULBDVEPr4vUCmf0wtoY5ezJ3
	Ga2BEGHS/Rp+afH09sV4lpckIKghG/NjnSDIJ/YOSvIGBJ+yQko6ZuEJ0VGlREG3pN1PJ0rhWQXvk
	zs2ZhZyP6W5rI+0SCU+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjnhS-00Eldy-SA; Sun, 07 Nov 2021 19:19:30 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjnhF-00ElcO-Vh; Sun, 07 Nov 2021 19:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1636312756; bh=3A4Dli+gg8HWNov7I1Eit9gqhTCBR/mKSOT/BJaGxdU=;
 h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
 b=e8O1Ig5CN8RH38LZg6yzToDBqt2MJjikmDxd+Ccm7IJtzEKal1U0B+5XMoWB/bBpA
 sYF2N6duAh51fLoLh3WT660E9NBTMru5ugi0lCwBMo8h7aC7GZmk7BDoZj+7tmvYC5
 fHE/iZ6hFE0qFzzzR3PmORgDVENEWGeX+XKEX/II=
Date: Sun, 7 Nov 2021 20:19:16 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>, kernel test robot <lkp@intel.com>,
 Tobias Schramm <t.schramm@manjaro.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: phy: rockchip-inno-usb2: Don't print useless error
Message-ID: <20211107191916.5bkgjqiptftr3b7i@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>,
 kernel test robot <lkp@intel.com>,
 Tobias Schramm <t.schramm@manjaro.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20211107185836.2540901-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211107185836.2540901-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_111918_204130_26C2C326 
X-CRM114-Status: GOOD (  14.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sun, Nov 07, 2021 at 07:58:35PM +0100, megous hlavni wrote:
> The interrupt is optional, make the dmesg not complain about it
> missing.

Ooops. Sorry, this applies only on top of Peter Geis's 

"phy: phy-rockchip-inno-usb2: support muxed interrupts"

which is not mainline yet. Please ignore.

kind regards,
	o.

> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 428c2313a9cb2..27820bee04eae 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1180,7 +1180,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>  	phy_cfgs = match->data;
>  	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
>  	rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
> -	rphy->irq = platform_get_irq(pdev, 0);
> +	rphy->irq = platform_get_irq_optional(pdev, 0);
>  	platform_set_drvdata(pdev, rphy);
>  
>  	ret = rockchip_usb2phy_extcon_register(rphy);
> -- 
> 2.33.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
