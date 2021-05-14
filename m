Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41B98C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 13:09:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF4276145D
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 13:09:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF4276145D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	From:References:Cc:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pR3/4sntNdgCV/M2A0zTr1H3uStj29tSH/kpRWWnPZA=; b=FqL6aGqePiuNIVUgpnSQb5Ofu
	LvpjQwp4pXKMxgt2ZILya5H+MOnCU8cl5FA6QJy/5eoZS1jFm3mKp+ko7YLzbAnuWc3IPNB263MPV
	v8ogPEjyOM+aH554tIH3d+cYtrWG/00keP55DVC31g4fB4DEcgpOSKMHdxPhIsU7AUoQYVRs/WtrI
	/qOdWslgmj138TESYas6MnzfXp6dTwozKRIVu+wihANZ0byHw7AidnQOkSGY4eY5ztdImpju6/pmg
	B6aIZmesj1DpHwN5HEFa7VoEAfhDfYTsbSnPkoaPxUDYYqSXeNSlSbLnIKDzs8426sRhn+gHQRP+1
	sjXMPUrzQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhXZA-0086Yj-Kt; Fri, 14 May 2021 13:09:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXZ8-0086YZ-G7
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 13:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References
 :Cc:To:Sender:Reply-To:Content-ID:Content-Description;
 bh=vxd4gwielh/In9s2yHd9jiHsp29Niwe75ha9kBzTWs0=; b=2NACFvb2pnOdyndVNdrnSlyRnZ
 JsO3DQkEgj720sCywxu8+NLq6bcqSLImuM3nOb7m5QQun+dJE6zRSt3vbMRkTLc0mypu1GcM0YRVC
 bPCLy5+y6SnU524IE3mickXkLf8l/768BigJXw3Y3pUU9SfYqxOY2pyIm4FJENox+2bGtUSDuCxM0
 LGe/H/UaiWOJhh1BLWwG+d0Rz3+IBtKVzw3knYgoHf6CAdOs0VLb6f+ZEyhnmfj9nmemqTtVs1O7y
 nKb0GlXX0WS/tyVQVa0E6qlLIWsGxKVwfwhEgQJwolvbrhA21G4rpnuBdHTavmX5nkcLWOF1R9MyF
 Wxlru/1Q==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXZ3-00Bzhv-C5
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 13:09:17 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so1390068wmy.5
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 06:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vxd4gwielh/In9s2yHd9jiHsp29Niwe75ha9kBzTWs0=;
 b=LGxjrpHGNyYhLFlwL2a72H7JiX+/tsYzkAWbknpuXwSRXQqwNK3vj+9ZhrUMq/Na37
 LSce4PkpVFDuwHLUo0wqPkqybncZqFRHrAKjVi6IkGpoEdUMf3yD2CAtQnB/I5mggUhH
 CDEH63OcpQh+avALxw+92DtGFfI5r+Sbk2rq9Y/PSJZXih+UfJv+KMvHdSha7A95KO4D
 4pbSj7cPUVu2YuxrhBbTPRbiOtAMYnHbI8hY7mcYEAhiqkdiqGX/gsR9uUdhKwAyTBHe
 UruIlx543Acb1dNLLSs6XDR1XAZ61qiUpq/ukTeJOKXqoeeCyx2xXAPQ0AQvfeP02xuP
 F7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vxd4gwielh/In9s2yHd9jiHsp29Niwe75ha9kBzTWs0=;
 b=FvABSbdnFLxj1G9nWVp14JS1UysNUhRoKttsDrrq5NslTn6dszLG7NeM3MjViHGi3R
 ISqb9pj4Au8ScyA7D19akrNCr2rjxpz3p+7X28+X+HGorbBDPfUEZV2Ekz3mu9BQW0DO
 qyNvw6Vw11xhC+hRlWiK3ZTVEHPzg/wXcVVSjxUlicyXWaA0tTJSrwEI06CQL2+V3ZgV
 OeHT9jbMqgiqSNCPEmsPMsq6t+EuBL0bNF4aRDkxMPovOGzQbli9PO7hut7i42cm8H79
 reOhJV1FvuXrnv7leLyDkMTViP1iuhOLWEg4LlLHyxVrWnYJ/uYoexHowi1TrRnNCs4P
 VHFw==
X-Gm-Message-State: AOAM532lJp65Yh9SaN9ydJ7/1tMChWrVjSvn48dcXzE5qatL+rkkUFfK
 1gvbVgJWBbohypn1HN1dYuU9VjBtCF2Ifg==
X-Google-Smtp-Source: ABdhPJxBx8G4jKyl3XMe5aM0P5dHCwLZ7ZEQCpNBtBztGJ81yWYpUAPSAQLl9n/5Yogclopa+rOdMg==
X-Received: by 2002:a1c:7e82:: with SMTP id z124mr9554769wmc.51.1620997750591; 
 Fri, 14 May 2021 06:09:10 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f38:4600:e164:efbc:883:51b9?
 (p200300ea8f384600e164efbc088351b9.dip0.t-ipconnect.de.
 [2003:ea:8f38:4600:e164:efbc:883:51b9])
 by smtp.googlemail.com with ESMTPSA id b6sm11543548wmj.2.2021.05.14.06.09.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 06:09:10 -0700 (PDT)
To: Peter Geis <pgwipeout@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Russell King <linux@armlinux.org.uk>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <a4e2188f-bd3e-d505-f922-2c2930b3838f@gmail.com>
Date: Fri, 14 May 2021 15:09:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514115826.3025223-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_060913_460381_AD0F9CC4 
X-CRM114-Status: GOOD (  27.58  )
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

On 14.05.2021 13:58, Peter Geis wrote:
> Add a driver for the Motorcomm yt8511 phy that will be used in the
> production Pine64 rk3566-quartz64 development board.
> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> Changes v3:
> - Add rgmii mode selection support
> 
> Changes v2:
> - Change to __phy_modify
> - Handle return errors
> - Remove unnecessary &
> 
>  MAINTAINERS                 |   6 ++
>  drivers/net/phy/Kconfig     |   6 ++
>  drivers/net/phy/Makefile    |   1 +
>  drivers/net/phy/motorcomm.c | 121 ++++++++++++++++++++++++++++++++++++
>  4 files changed, 134 insertions(+)
>  create mode 100644 drivers/net/phy/motorcomm.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 601b5ae0368a..2a2e406238fc 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12388,6 +12388,12 @@ F:	Documentation/userspace-api/media/drivers/meye*
>  F:	drivers/media/pci/meye/
>  F:	include/uapi/linux/meye.h
>  
> +MOTORCOMM PHY DRIVER
> +M:	Peter Geis <pgwipeout@gmail.com>
> +L:	netdev@vger.kernel.org
> +S:	Maintained
> +F:	drivers/net/phy/motorcomm.c
> +
>  MOXA SMARTIO/INDUSTIO/INTELLIO SERIAL CARD
>  S:	Orphan
>  F:	Documentation/driver-api/serial/moxa-smartio.rst
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index 288bf405ebdb..16db9f8037b5 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -229,6 +229,12 @@ config MICROSEMI_PHY
>  	help
>  	  Currently supports VSC8514, VSC8530, VSC8531, VSC8540 and VSC8541 PHYs
>  
> +config MOTORCOMM_PHY
> +	tristate "Motorcomm PHYs"
> +	help
> +	  Enables support for Motorcomm network PHYs.
> +	  Currently supports the YT8511 gigabit PHY.
> +
>  config NATIONAL_PHY
>  	tristate "National Semiconductor PHYs"
>  	help
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index bcda7ed2455d..37ffbc6e3c87 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -70,6 +70,7 @@ obj-$(CONFIG_MICREL_PHY)	+= micrel.o
>  obj-$(CONFIG_MICROCHIP_PHY)	+= microchip.o
>  obj-$(CONFIG_MICROCHIP_T1_PHY)	+= microchip_t1.o
>  obj-$(CONFIG_MICROSEMI_PHY)	+= mscc/
> +obj-$(CONFIG_MOTORCOMM_PHY)	+= motorcomm.o
>  obj-$(CONFIG_NATIONAL_PHY)	+= national.o
>  obj-$(CONFIG_NXP_C45_TJA11XX_PHY)	+= nxp-c45-tja11xx.o
>  obj-$(CONFIG_NXP_TJA11XX_PHY)	+= nxp-tja11xx.o
> diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
> new file mode 100644
> index 000000000000..b85f10efa28e
> --- /dev/null
> +++ b/drivers/net/phy/motorcomm.c
> @@ -0,0 +1,121 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Motorcomm PHYs
> + *
> + * Author: Peter Geis <pgwipeout@gmail.com>
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/phy.h>
> +
> +#define PHY_ID_YT8511		0x0000010a

This PHY ID looks weird, the OUI part is empty.
Looking here http://standards-oui.ieee.org/cid/cid.txt
it seems Motorcomm has been assigned at least a CID.
An invalid OUI leaves a good chance for a PHY ID conflict.

> +
> +#define YT8511_PAGE_SELECT	0x1e
> +#define YT8511_PAGE		0x1f
> +#define YT8511_EXT_CLK_GATE	0x0c
> +#define YT8511_EXT_SLEEP_CTRL	0x27
> +
> +/* 2b00 25m from pll
> + * 2b01 25m from xtl *default*
> + * 2b10 62.m from pll
> + * 2b11 125m from pll
> + */
> +#define YT8511_CLK_125M		(BIT(2) | BIT(1))
> +
> +/* RX Delay enabled = 1.8ns 1000T, 8ns 10/100T */
> +#define YT8511_DELAY_RX		BIT(0)
> +
> +/* TX Delay is bits 7:4, default 0x5
> + * Delay = 150ps * N - 250ps, Default = 500ps
> + */
> +#define YT8511_DELAY_TX		(0x5 << 4)
> +
> +static int yt8511_read_page(struct phy_device *phydev)
> +{
> +	return __phy_read(phydev, YT8511_PAGE_SELECT);
> +};
> +
> +static int yt8511_write_page(struct phy_device *phydev, int page)
> +{
> +	return __phy_write(phydev, YT8511_PAGE_SELECT, page);
> +};
> +
> +static int yt8511_config_init(struct phy_device *phydev)
> +{
> +	int ret, oldpage, val;
> +
> +	/* set clock mode to 125mhz */
> +	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
> +	if (oldpage < 0)
> +		goto err_restore_page;
> +
> +	ret = __phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	/* set rgmii delay mode */
> +	val = __phy_read(phydev, YT8511_PAGE);
> +
> +	switch (phydev->interface) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +		val &= ~(YT8511_DELAY_RX | YT8511_DELAY_TX);
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +		val |= YT8511_DELAY_RX | YT8511_DELAY_TX;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +		val &= ~(YT8511_DELAY_TX);
> +		val |= YT8511_DELAY_RX;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_TXID:
> +		val &= ~(YT8511_DELAY_RX);
> +		val |= YT8511_DELAY_TX;
> +		break;
> +	default: /* leave everything alone in other modes */
> +		break;
> +	}
> +
> +	ret = __phy_write(phydev, YT8511_PAGE, val);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	/* disable auto sleep */
> +	ret = __phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
> +	if (ret < 0)
> +		goto err_restore_page;
> +	ret = __phy_modify(phydev, YT8511_PAGE, BIT(15), 0);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +err_restore_page:
> +	return phy_restore_page(phydev, oldpage, ret);
> +}
> +
> +static struct phy_driver motorcomm_phy_drvs[] = {
> +	{
> +		PHY_ID_MATCH_EXACT(PHY_ID_YT8511),
> +		.name		= "YT8511 Gigabit Ethernet",
> +		.config_init	= yt8511_config_init,
> +		.get_features	= genphy_read_abilities,
> +		.config_aneg	= genphy_config_aneg,
> +		.read_status	= genphy_read_status,

These three genphy callbacks are fallbacks anyway.
So you don't have to set them.

> +		.suspend	= genphy_suspend,
> +		.resume		= genphy_resume,
> +		.read_page	= yt8511_read_page,
> +		.write_page	= yt8511_write_page,
> +	},
> +};
> +
> +module_phy_driver(motorcomm_phy_drvs);
> +
> +MODULE_DESCRIPTION("Motorcomm PHY driver");
> +MODULE_AUTHOR("Peter Geis");
> +MODULE_LICENSE("GPL");
> +
> +static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> +	{ PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> +	{ /* sentinal */ }
> +};
> +
> +MODULE_DEVICE_TABLE(mdio, motorcomm_tbl);
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
