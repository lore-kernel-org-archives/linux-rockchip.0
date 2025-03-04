Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91700C282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 20:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VN3tL//ZfkaVl7Bc3Mt60dwTRu43/oeVLM+BLppsX8=; b=cetk93WhsWtaHQ
	qqLPabsjm0WpcAaFPCBpgrSvfcSVva1v+1DQe3BbX6SMA5PSOrLvzSEoAB0a6Ut0/hHUOXO6Nne63
	AVi0EDlYD5cyU40OCfVvtQSoKaRcrArPeBkd11G7afC1iJnabbhtfhjePDVoBTwbMIL1Mx9Kpb4FD
	77M/CIODqYTf97V3bJsHzP5lXcm68CsdpfwLGeRgYa2q1xcQeKMbdSLBMg9CRkY73Y1plmotp8dmS
	cEVWDCbJd5asve/GZ6SNNvnXb6rsMmrCnXFOtiiRAudvQjzOXb3fETNwjx7ZaZOu3+rWCmz0JBu6s
	GZZkiYd5OyF3o564adHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpYRs-000000068oK-0sye;
	Tue, 04 Mar 2025 20:01:04 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpYHO-000000066Qn-2m8p;
	Tue, 04 Mar 2025 19:50:16 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0095C252B4;
	Tue,  4 Mar 2025 20:50:09 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOe44yWLNYEa; Tue,  4 Mar 2025 20:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741117804; bh=/vRWKQtZKb8AVks66fKFJNA8Q7HHHVpV5dIgIcKRJh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EWOlvoXB2lKejxwrdke4Er6of5ABdK3jBS9BAXlXEL0XFcLS/7C0FI/oEB1pz5JpR
	 yStJAX5kufOc7R5KTMYtpQvzZZClaZe1L05PLt1BJlCvyAp0TMiVt3jZyiEQhZKrrh
	 DC1g3n0EnlgV3+tBx61eFGMHLWBzWJuq3kRkNOP16r7p/9ZOBZKIVKjByeqdnt8ry/
	 pkLkd8wXvLy+ItQptFHSWKUtx0nVA9JiMlh7MObc7kiMZrzVqHDyUo+bduvDD9iybP
	 ZvfPyhbDp0qziwtu+YrJ/xUroOCsLzWzkjRo3HlIu3EkzYRmFG0gxi1zzBElz5i8f4
	 /EsfnkVnFBvTg==
Date: Tue, 4 Mar 2025 19:49:45 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Enable SD-card interface on
 Radxa E20C
Message-ID: <Z8dZWYpABghRHHge@pie.lan>
References: <20250301104835.36439-1-ziyao@disroot.org>
 <20250304121036.1453284-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250304121036.1453284-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_115015_116687_BFB16F0A 
X-CRM114-Status: GOOD (  19.51  )
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
Cc: detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, frank.wang@rock-chips.com, jonas@kwiboo.se, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Mar 04, 2025 at 08:10:36PM +0800, Chukun Pan wrote:
> Hi,
> 
> > +	aliases {
> > +		mmc0 = &sdmmc;
> 
> s/mmc0/mmc1

Will take it and add the missing pinctrl, as Jonas already pointed out.

> > +&sdmmc {
> > +	bus-width = <4>;
> > +	cap-mmc-highspeed;
> > +	cap-sd-highspeed;
> 
> I think for sdcard, only cap-sd-highspeed
> is needed, not cap-mmc-highspeed?

This makes sense, will remove it in the next version.

> > +	disable-wp;
> 
> Missing pinctrl.
>
> > +	rockchip,default-sample-phase = <90>;
> 
> It seems that all rk3528 devices need to set this
> default phase, so maybe this can be placed in dtsi?

Yes, since the tuned phase offset is a SoC-specific value, as pointed
out by comment in the driver,

	this is _not_ a value that is dynamically tuned and is also
	_not_ a value that will vary from board to board.  It is a value
	that could vary between different SoC models.

Will take it in the next version, thanks for finding it!

> > +	sd-uhs-sdr104;
> 
> The rk3528 devices uses gpio to switch IO voltage, maybe
> more modes should be added here like vendor kernel?

I cannot get the relationship between things you mentioned. For the
regulator, yes, here vqmmc-supply is missing, as already pointed out by
Jonas.

> And these devices use 3.3V IO voltage by default.
> 
> 	sd-uhs-sdr12;
> 	sd-uhs-sdr25;
> 	sd-uhs-sdr50;
> 	sd-uhs-sdr104;

But I don't think it's necessary to lay out these slower modes
explicitly, since SDR104 seems to imply them, see
sd_update_bus_speed_mode() in drivers/mmc/core/sd.c[1],

        if ((card->host->caps & MMC_CAP_UHS_SDR104) &&
            (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR104)) {
                        card->sd_bus_speed = UHS_SDR104_BUS_SPEED;
        } else if ((card->host->caps & MMC_CAP_UHS_DDR50) &&
                   (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_DDR50)) {
                        card->sd_bus_speed = UHS_DDR50_BUS_SPEED;
        } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
                    MMC_CAP_UHS_SDR50)) && (card->sw_caps.sd3_bus_mode &
                    SD_MODE_UHS_SDR50)) {
                        card->sd_bus_speed = UHS_SDR50_BUS_SPEED;
        } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
                    MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25)) &&
                   (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR25)) {
                        card->sd_bus_speed = UHS_SDR25_BUS_SPEED;
        } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
                    MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25 |
                    MMC_CAP_UHS_SDR12)) && (card->sw_caps.sd3_bus_mode &
                    SD_MODE_UHS_SDR12)) {
                        card->sd_bus_speed = UHS_SDR12_BUS_SPEED;
        }

> Thanks,
> Chukun
> 
> -- 
> 2.25.1
> 

Regards,
Yao Zi

[1]: https://elixir.bootlin.com/linux/v6.13.5/source/drivers/mmc/core/sd.c#L448-L479

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
