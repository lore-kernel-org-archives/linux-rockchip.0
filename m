Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA5CC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 05:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqkxRXw3k9EiUecMS6fqNbpqLLw9t93cwYuRzBSF8qc=; b=H1ectPOvM+AUPn
	MnEFZ5n+jPlzTDjwxwX2ROaPUkTCG+g0vHlT5fCCa5Dca5dM+BKfvp3eQIsvpVPrT/g1rqqgFyuNo
	fNLkP5XJASxyEpzuj/TsySExTEsBztiRr8vnC0GHW6sTBVV9jzI7W22GnHJraKHpLT0dEPJc1RYn8
	0pofuaQBKSdtKaMgZGG1XojxUExWCKghErxglQ/cTva6aw1hle2o2YYPwZz0uEyqcIt38HTrtW427
	yfwRU0c39Ll1PKQNIPK32yFRchTvlLTYWAhNzanwez/V+hAJOyHFvGP8FozS95TLHWfGvyPFIk8W9
	8c/OO9nH4qHAWzq2CSnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYf97-0000000DeFh-31eP;
	Tue, 30 Jul 2024 05:11:37 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYf8d-0000000DeBp-1WpR;
	Tue, 30 Jul 2024 05:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1722316220; x=1722921020; i=wahrenst@gmx.net;
	bh=g2qT0PqPzss90wszs6Vw/sUubex/AK94mW4YSO8z+6g=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=GtUlpQMkqXYlCdfWx8/dX0Wq2i6sof9gWcfWs64aI6BJI3qKXo5+AodwEWK9DWlA
	 qdbZJl00uu9DO9wgVIbwnYx8jfGZ0s5QYVYeOwxNJA+3dXSLSlFhuhDug0PkV83LI
	 HJciUHdFGIpJrkMfT/yjUkyP2mR+cXomXFm8XaIxS0emkgkyso5T4BJaNqAGSLz59
	 nOlEZfPY3HD72EzVhl0enqT6jUq16emh66uYAHxezsQUB4wiCFoo0pOsoa+Rf/bCu
	 kBQoB3127MY4K+K1SOFniXT7bztwsts/ohM52GHds0Ccj8kU6eJts9Agn1FN2l546
	 ZO3uZL9hAi5j4qWOdg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.127] ([37.4.248.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mqs0R-1rvQLd2h8b-00m67u; Tue, 30
 Jul 2024 07:10:20 +0200
Message-ID: <0b2cb5ca-f134-4733-a931-9e192e47c65d@gmx.net>
Date: Tue, 30 Jul 2024 07:10:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-5-jacobe.zang@wesion.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20240730033053.4092132-5-jacobe.zang@wesion.com>
X-Provags-ID: V03:K1:8WNkQqDKD6KnO7CaHnNyvZKHD2ZLfpHZ1KvW+8D6yIJ+YdzOq/6
 CLWdUvzbu9l6YctXbf1haRex8PX2JKcQU7WhDqvAMzzMsm0/6HAKqHK0DRnctKDabAs5BFZ
 vthC6Ht7+pR02+u8OGMUjdtgk+oE3lYNkxhNpFYnAVOFycdKUFvB88ZkSJ5bFY724iQYRV+
 Tuwsjq0ksT2Qcf7t1diEg==
UI-OutboundReport: notjunk:1;M01:P0:nd+W6xGWmI4=;A2cfTUJ99aOtAX+YCl0i1dYvdGn
 gY8LRgEJiagSJAvzjLo+cxqcN9VESNtTRJi9hoM9ziTMuej/tBgQQsP7MgG43c40YNV2JIIUP
 zJQFD680l97chT4EvmvCycxhn5qU8JNSfYHBmonmQbC+Q+T+WAW9pfNm6U1KDt0E/AwS3jhrc
 r718kLHUxjeK6MA3cvv4UC9gUMdLBhC7wST4tXu4K4L5qK1z60i6ln4DDJgBJNrlj56OMv8ld
 qijT74jCjIf8yOKIhlve+/bOCvFONfBKh/JuVlefEOABQ5PRQmOLya0XNtfq8Q0Jixif/gCxd
 TWUKlZfKnL2AuXXzl8Yu5KViNX+fbBCnCGf4CzPSXT0jiOcOfPYTHdwDjWilOFt3we5aik5Oe
 uxoPvt6CpHUkI7VwX2vqi2zcR8EkoPH5FnzzdDfF+VwO1U6LOEPpmhIL3QGfiiFNvkfCQKXaO
 FcEG7Fn8ScOcG+THZNobY1VgeafUJ1OhS69VcarqU4FbT8BRZPx24o7KZE9Z462ljJl5GX6UH
 Uu+0n+E/BZkcjksmo3oQcJB+eXADkhWdTJ1u0xWIThc5Nh3OOS2RPam8/a/dbsb/G8/zsAWlV
 vhzkPh/Q9RK8j2MYXuKWi+nFZenzFU9KZG+XjmdjhhwaWVNqsAtwLW/DnEJTjDhLctPatGuTS
 GEtSWP5tZtmgB6E3SKFlOghoSCAj3xz8VXIZpJilYua+EbRkvmuwmUMb+trLyL6DU/sLz19QK
 42yut5KRB/w5+tWdzdB4rt20sjl8bNwO10reoIKWt31a1oYp96fRXkeoKb/dWStZ1yI7rk+2S
 k0ufOL0hbl5TsgctUT3VJ2Sg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_221107_715063_AECCC478 
X-CRM114-Status: GOOD (  13.83  )
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

Hi Jacobe,

Am 30.07.24 um 05:30 schrieb Jacobe Zang:
> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver.
>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> index e406e11481a62..6246e3fd7399f 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> @@ -6,6 +6,7 @@
>   #include <linux/of.h>
>   #include <linux/of_irq.h>
>   #include <linux/of_net.h>
> +#include <linux/clk.h>
>
>   #include <defs.h>
>   #include "debug.h"
> @@ -70,6 +71,7 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>   {
>   	struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
>   	struct device_node *root, *np = dev->of_node;
> +	struct clk *clk;
>   	const char *prop;
>   	int irq;
>   	int err;
> @@ -113,6 +115,12 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>   		of_node_put(root);
>   	}
>
> +	clk = devm_clk_get_optional_enabled(dev, "lpo");
> +	if (!IS_ERR_OR_NULL(clk)) {
> +		brcmf_dbg(INFO, "enabling 32kHz clock\n");
> +		clk_set_rate(clk, 32768);
> +	}
even if the clock is optional, there should be a proper error handling
(e.g. the -EPROBE_DEFER case).

Best regards
> +
>   	if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
>   		return;
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
