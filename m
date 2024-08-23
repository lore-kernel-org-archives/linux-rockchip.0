Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6459C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 05:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0bq/mOw9EmaypyWxaqxw3CP5jKRmRWhPRxBc0A+OSk=; b=FsCHfuOuWO99nDpuw35ptD+egM
	DWFdJyGJjZE59cC2z5Lk5vLZqOJM/D7Qa6jUyby2lQRZa61tP+zQ7EVUGNqYFiplSML56BmBWFfeb
	hBfrNE4eXDs73FBVVDKF9btOs4ZmgWxpxLAxtxqou9bmhzo8Ci/4/s9FrA1Qm5rsyWSUfpHBHvlVx
	A1hvjPRSrG+hlskbn8zmYsWcNA/a26WLpWXjxEaG9IgzzKn6C7yOQwrRMpCasCYW6HVicPBSauGnm
	Gp60CI03kOfCOeoY/DbG3tKqquw+C32+IbYLqMQCY8sCWgFgJAs9dCd1oDdKtiSkK3DMTk/UZiSJW
	2zZ2pCxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shN4E-0000000FLY9-2XOi;
	Fri, 23 Aug 2024 05:42:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shN3T-0000000FLT1-0fA5;
	Fri, 23 Aug 2024 05:41:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724391705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kRUQof1fws+WZTJx29gSd/eBycDm7t6bJjqwUp6NViY=;
	b=LRw7Ys8lgOzutA9tpD8TM3mcqM/cHCl/kjJKkrwpn3mGtvTgBmsoqtomdsRW28xZV+jB0o
	Q7WOnRHSIdE2tTbMvE8AxLg8LnBoJ220unGcC1IQWjGus1m9XHp6zIuLmN2PBzu9PELq7K
	Hf12AnExJlDAUGHYvA/kYWwSSjdhUZENypDXs2ebYxpn5/XlKS3DLOBr/OGFst6phiXvLW
	1qPkJuIq8oaFZ+csNVMTNpEH9LHRCmIwleIqZxaYm0Hz8m+XuCqolnmxiCaTlB+777m/6B
	p/d6Zy4GtieDHnE9jQ0i5YC58U2zz6FR6ghZahgWSF7H2F2DPLzmcWmt4axlug==
Date: Fri, 23 Aug 2024 07:41:44 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaehoon
 Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com, Shawn Lin
 <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4 2/4] mmc: dw_mmc-rockchip: Add internal phase support
In-Reply-To: <20240822212418.982927-3-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-3-detlev.casanova@collabora.com>
Message-ID: <f0f5dec4a5403616fa25c6ed754f6050@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_224147_408948_832D7D87 
X-CRM114-Status: GOOD (  19.21  )
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

Hello Detlev,

Please see a comment below.

On 2024-08-22 23:15, Detlev Casanova wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
> 
> Some Rockchip devices put the phase settings into the dw_mmc 
> controller.
> 
> When the feature is present, the ciu-drive and ciu-sample clocks are
> not used and the phase configuration is done directly through the mmc
> controller.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 171 +++++++++++++++++++++++++++--
>  1 file changed, 160 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
> b/drivers/mmc/host/dw_mmc-rockchip.c
> index b07190ba4b7a..2748f9bf2691 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -15,7 +15,17 @@
>  #include "dw_mmc.h"
>  #include "dw_mmc-pltfm.h"
> 
> -#define RK3288_CLKGEN_DIV	2
> +#define RK3288_CLKGEN_DIV		2
> +#define SDMMC_TIMING_CON0		0x130
> +#define SDMMC_TIMING_CON1		0x134
> +#define ROCKCHIP_MMC_DELAY_SEL		BIT(10)
> +#define ROCKCHIP_MMC_DEGREE_MASK	0x3
> +#define ROCKCHIP_MMC_DEGREE_OFFSET	1
> +#define ROCKCHIP_MMC_DELAYNUM_OFFSET	2
> +#define ROCKCHIP_MMC_DELAYNUM_MASK	(0xff << 
> ROCKCHIP_MMC_DELAYNUM_OFFSET)
> +#define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC	60
> +#define HIWORD_UPDATE(val, mask, shift) \
> +		((val) << (shift) | (mask) << ((shift) + 16))
> 
>  static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 
> };
> 
> @@ -24,8 +34,143 @@ struct dw_mci_rockchip_priv_data {
>  	struct clk		*sample_clk;
>  	int			default_sample_phase;
>  	int			num_phases;
> +	int			internal_phase;
>  };

It might be good to declare internal_phase as "unsigned int 
internal_phase:1",
i.e. as a bit field, which isn't going to save some memory in this 
particular
case, but it would show additional attention to detail.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
