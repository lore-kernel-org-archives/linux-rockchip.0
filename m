Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B43C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qndv/5sR4Ttr2+qaACAqbzkiz1z0B02SJnQ8uw8imfg=; b=NiBcp7X30TNl1NExirnk5MDqRU
	BNGu2oPQgL4RSTlutgTx27sTVDhVy3Mh/++X4m2wxsecondzEj9MOVm071yMKjMckIj/ARHHBcqsN
	oz0GlAZFntJ1p+5k0JtmncPllCNMYAI10dFa37fWNEAE0fzCHcqEV+Csr7zkYiWNVqYRNa8A+MQvv
	60r0iwSN7Cro58gH7MNl6vyRvY0ViupT3wei4c//CJEIWwx8L/+aI7NeAlKNjvZwk/38lROcZPI18
	4jY4RvbA+77OdMRGaH8WBfhnMi6NNW0J49VA3fXAfNebyt+18FEnRNjf7vSqlxcAiDQsd9uMKe+20
	I8XsXD0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKdC-0000000AJlq-1yOX;
	Mon, 29 Jul 2024 07:17:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKYU-0000000AI5h-3zGb;
	Mon, 29 Jul 2024 07:12:28 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722237142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R+2pS+boxJyCrKP1vTl60pQQkVNX6E4kibCtVggIyA8=;
	b=YWMuSFkWIjcdD32gkPlvzOS5gUUR0xXeDQu6KZLhkHuGInsiP9buBZGq1mEIc+PdpbyYUZ
	rT5cHA0eOZH0h+7m3+RMArcE8ZgAOajHZacgdV6uDmr3HSJHpZeX10MHH4Lyw0vHssfX3g
	uJjKFnv/0w2HZNWidCZF7a7cK1MyBhvaEMbOsw68K3i+2g4dMnWSK8+eNU09vajoO9HO3Q
	2bmjQ3vYKETFDHd2twAmXwksAjFAF0R/EVaOBmJq9otPjjgyVz4jpDD+d2iL7GCbgX4LIS
	Mz8lomdhfKpVNXg52FWxSzku0OZUkFYlk4oDwfY6r2X3c85ry7m0J4f5BRuqSg==
Date: Mon, 29 Jul 2024 09:12:20 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, conor+dt@kernel.org, arend.vanspriel@broadcom.com,
 efectn@protonmail.com, jagan@edgeble.ai, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com
Subject: Re: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
In-Reply-To: <20240729070102.3770318-5-jacobe.zang@wesion.com>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-5-jacobe.zang@wesion.com>
Message-ID: <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_001227_232169_8E67477D 
X-CRM114-Status: GOOD (  12.29  )
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

Hello Jacobe,

Please see one comment below.

On 2024-07-29 09:01, Jacobe Zang wrote:
> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver.
> 
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> index e406e11481a62..4db188a41fd52 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> @@ -6,6 +6,7 @@
>  #include <linux/of.h>
>  #include <linux/of_irq.h>
>  #include <linux/of_net.h>
> +#include <linux/clk.h>
> 
>  #include <defs.h>
>  #include "debug.h"
> @@ -70,6 +71,7 @@ void brcmf_of_probe(struct device *dev, enum
> brcmf_bus_type bus_type,
>  {
>  	struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
>  	struct device_node *root, *np = dev->of_node;
> +	struct clk *clk;
>  	const char *prop;
>  	int irq;
>  	int err;
> @@ -113,6 +115,13 @@ void brcmf_of_probe(struct device *dev, enum
> brcmf_bus_type bus_type,
>  		of_node_put(root);
>  	}
> 
> +	clk = devm_clk_get_optional_enabled(dev, "lpo");
> +	if (IS_ERR(clk))
> +	if (clk) {

These two lines looks really confusing.  Shouldn't it be just a single
"if (!IS_ERR(clk)) {" line instead?

> +		brcmf_dbg(INFO, "enabling 32kHz clock\n");
> +		clk_set_rate(clk, 32768);
> +	}
> +
>  	if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
>  		return;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
