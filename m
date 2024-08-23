Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C133C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 05:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jU7aOoPSPr8ia0jvWh0N9cr/LRmQPl8DU2aDK4ejAuQ=; b=rRjCYqsuPy9deqY4eCOTAQG3KG
	b6tsaBGNRNGUVCapy98kbznqwrYjgJjW4AX6iPnLiqKdK1/FzNOSViuOvd4e5DavJ445EWajgNDgF
	YlqPy47ELVmrzGrw9+8DL38Y7j4twbBjbsGRetkc0vZLzSirPiYOE3ZGRPYl3rwRnQ3sxFFN3nJ8X
	XBWHwpWhQ2hatl12t06b3AsmQlnNGdgKvfFuZpxOZlgtcLA8nZ48h8lnv/BGXgrJ7kQxd8nwLJY1M
	nx++XTvmS9KyUlYDi/aSFDnWqxaE7Up11Joi3EH+VPEtHoBL5umIUBl6+I4SpDg4HqQ4YkeBGE64W
	Q68VNIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shN7V-0000000FM1A-25m4;
	Fri, 23 Aug 2024 05:45:57 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shN6k-0000000FLsC-0ePK;
	Fri, 23 Aug 2024 05:45:11 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724391908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9GwKuNVlfgC5W+9zlKT/gn1CtvwJSC/hAS1+oQKVxL0=;
	b=uYz9Sx82KEjltSgj9k7p7gTmj84l82XVbz/+FrOV2fchA3LAlio2d1irfHFJS/SwyyQlN+
	N/0zOPE0OAxzPvygvTWDdFI2IovwVFUuhxvN/bB7aPvs2EUTUZXpwpllTvfFB8mSEg1Pkw
	naIZYOiLI+cQ343I3ol0sODHlpVO/5kbiMUwfB08wkz/R52G8Ex9ps0myU63vbz4KMGsIy
	kQsD2+oACdrNxF1wsY9igmgWoPqFkKNL+E9SBFmfPQ5qrfeIy5YKMpNqTQY8xHBtRCe31R
	WnLGyHemK7YtRV53my1aupiRFMpfQYePBuUyDsEiqwJZKksjLz1iN8kyQza1hg==
Date: Fri, 23 Aug 2024 07:45:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaehoon
 Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com, Shawn Lin
 <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4 3/4] mmc: dw_mmc-rockchip: Skip all phases bigger than
 270 degrees
In-Reply-To: <20240822212418.982927-4-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-4-detlev.casanova@collabora.com>
Message-ID: <711f2561ac3d84bcd5bbe26723869b47@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_224510_378517_63062D58 
X-CRM114-Status: GOOD (  16.54  )
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

On 2024-08-22 23:15, Detlev Casanova wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
> 
> Per design recommendation, it'd better not try to use any phase
> which is bigger than 270. Let's officially follow this.

Would it be possible to provide a reference to the actual design
specification?  This change affects all users of the dw_mmc-rockchip
driver, so in case any regressions are found later, having as much
detail as possible can only be beneficial.

> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> (cherry picked from commit 2a53aab5cfa43065b2e979959d727332a8a03c03)
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
> b/drivers/mmc/host/dw_mmc-rockchip.c
> index 2748f9bf2691..1458cb5fd5c7 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -310,6 +310,9 @@ static int dw_mci_rk3288_execute_tuning(struct
> dw_mci_slot *slot, u32 opcode)
> 
>  	/* Try each phase and extract good ranges */
>  	for (i = 0; i < priv->num_phases; ) {
> +		/* Cannot guarantee any phases larger than 270 would work well */
> +		if (TUNING_ITERATION_TO_PHASE(i, priv->num_phases) > 270)
> +			break;
>  		rockchip_mmc_set_phase(host, true,
>  				       TUNING_ITERATION_TO_PHASE(
>  						i,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
