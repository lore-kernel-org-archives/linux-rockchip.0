Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C554C02181
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 22:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Gy1mphkmJh1a4jp1gxpyYeUVxeF6Agp8AVaBuWQ0qk=; b=FZlRPRv8SrkbbP
	ousemDPojrL1Tg/pY+bicOvHVRdO/D0BqlOvBv54lBp8oFYfmkG6PRv8s0Mt5PiUr5oQcgrUTBEE+
	JwSvxrL93+suKT2s1u8Fjwo2ahVtZpD8cfGkW7jrKmBXTjizfG35PujxmkSeVQCpY1vAqNCyeX3Wa
	4aaaSOnCpPyxmO5ZMkU+TgRxYqx+v/sbkHAgK70fZffM1H468Z2ZK4PNchr/n7umPL5Ko80nsWy3E
	Ve5NGaFwJyMOiC22vy2bAVxRCqJd8AKhCdqfhI+Vnjz2Zgdnf6IM7q/VO/gyYBUeM3p0l9plQcTNI
	aukzy2GmWVizODs77RDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tajIt-0000000BLFl-3gxA;
	Wed, 22 Jan 2025 22:34:31 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tajHZ-0000000BL7b-3RlX;
	Wed, 22 Jan 2025 22:33:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1737585183; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Mf5SCFjvqN7ECeeglhX4pUqVwkTxLeBy165andaGnIp/Fgu2n/1sN6TDoqBtOU2B6o8tkAl9Cftz/EYiJHMVFns+Hy8/Q3sA+Hxd9s/vd1R7wUJd4/kFQYfA7K91vgdM8SN4oVMgW10n5mSUeFZnVDyzAW36UIdR68t+n/VxrsM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1737585183; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VK83oYZiUr/4FmQT3AHsLHS5JaACjWwYH+JkriqTEp0=; 
	b=EOajkPhdQFwFGSaeZn8sjYVOeX3nf2OUIcG4inISrTCUcaZ1Kir8njkIMAdbBQ6jtrSn5VY6HHPS6/DSjFQplXRVgJznOqhDl7Is85m+Tg2lljv7myHfivzd6Vyo2Rs6pvi2qBXDM2qbRw71PA+910zpdXMu3EGgKW6ILsqgtKo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1737585183;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:Message-Id:Reply-To;
	bh=VK83oYZiUr/4FmQT3AHsLHS5JaACjWwYH+JkriqTEp0=;
	b=FrK5YHLSKXM+x3in0IfbPVxSH6sl9S5nkt1rAE5IOjgSaXDZNf/nlH4aMR1+1TmZ
	jCpyUNWSWtcZy/yCR4A0rRakBY5nIWx++R0S8QaZ9gvlCILFHxAYE7hnik6W2YNX+CJ
	IoRmX3lqWISJbRL+iiMvXz3XrXDpD9Lrtmfrpoeg=
Received: by mx.zohomail.com with SMTPS id 1737585179773821.5799938261969;
	Wed, 22 Jan 2025 14:32:59 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 833431808C6; Wed, 22 Jan 2025 23:32:56 +0100 (CET)
Date: Wed, 22 Jan 2025 23:32:56 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] phy: rockchip: fix Kconfig dependency more
Message-ID: <zf6uopaitghxemdrjzbyb3kilkd4xncg6ckdhrauprcqc4m4gy@lvwzhptywvzy>
References: <20250122065249.1390081-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122065249.1390081-1-arnd@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_143309_965046_9A22156B 
X-CRM114-Status: GOOD (  20.51  )
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
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Zhang Yubing <yubing.zhang@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, Jan 22, 2025 at 07:52:44AM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> A previous patch ensured that USB Type C connector support is enabled,
> but it is still possible to build the phy driver without enabling
> CONFIG_USB (host support) or CONFIG_USB_GADGET (device support), and
> in that case the common helper functions are unavailable:
> 
> aarch64-linux-ld: drivers/phy/rockchip/phy-rockchip-usbdp.o: in function `rk_udphy_probe':
> phy-rockchip-usbdp.c:(.text+0xe74): undefined reference to `usb_get_maximum_speed'
> 
> Select CONFIG_USB_COMMON directly here, like we do in some other phy
> drivers, to make sure this is available even when actual USB support
> is disabled or in a loadable module that cannot be reached from a
> built-in phy driver.
> 
> Fixes: 9c79b779643e ("phy: rockchip: fix CONFIG_TYPEC dependency")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Thanks,

-- Sebastian

>  drivers/phy/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index 2f7a05f21dc5..dcb8e1628632 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -125,6 +125,7 @@ config PHY_ROCKCHIP_USBDP
>  	depends on ARCH_ROCKCHIP && OF
>  	depends on TYPEC
>  	select GENERIC_PHY
> +	select USB_COMMON
>  	help
>  	  Enable this to support the Rockchip USB3.0/DP combo PHY with
>  	  Samsung IP block. This is required for USB3 support on RK3588.
> -- 
> 2.39.5
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
