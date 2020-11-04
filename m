Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD494C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 10:51:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB4E820786
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 10:51:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Rw+vvu6h"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB4E820786
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AwhOFhtwvRAw03LOz/acaobFxnbjm8yAD9RKDArA3eo=; b=Rw+vvu6hu2oz3ILCEiNHWv6hK
	IvyLf1uJEmPIqA0skB63E/DUs6aUFZfaexMjswpV7FX4xHXEBH7NLDULJ/CBflNj+EVUbyG2wm8Im
	d+tLrM3gZMLGIrBkwr/Lay8BxkizbdftySAcEl91xbrwHPis9TLfkcgFXP79Lq74NgVmNWWFRQfnF
	h7gY4kb5UwHPtJkp4rK0rXVodPMcDsCtCDGeUsTAI02leD+nxOVmZQ44SxayYUhJ+Al7j+nBduTfY
	Aq8/zhmhyrD1YoUFQP+Agb/0yvcmBCQAdXTUqwunxfgztWbVOdyusOQ2RHBMMURUgfL5F9aDF5D02
	3seNsOdUA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaGO6-0000Es-P8; Wed, 04 Nov 2020 10:51:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaGO3-0000C8-P2; Wed, 04 Nov 2020 10:51:33 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kaGNp-00054b-Sv; Wed, 04 Nov 2020 11:51:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
Date: Wed, 04 Nov 2020 11:51:17 +0100
Message-ID: <4984701.vSXMUKeAfh@diego>
In-Reply-To: <20201104094950.2096-1-m.reichl@fivetechno.de>
References: <20201104094950.2096-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_055131_848290_7A6DC42B 
X-CRM114-Status: GOOD (  19.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 dianders@chromium.org, linux-kernel@vger.kernel.org,
 Markus Reichl <m.reichl@fivetechno.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Markus,

Am Mittwoch, 4. November 2020, 10:49:45 CET schrieb Markus Reichl:
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in evironments where UUIDs
> are not practical. Use newly introduced aliases for mmcblk devices from [1].
> 
> [1]
> https://patchwork.kernel.org/patch/11747669/
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index e7a459fa4322..bc9482b59428 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -13,6 +13,11 @@ / {
>  	model = "Firefly ROC-RK3399-PC Board";
>  	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
>  
> +	aliases {
> +		mmc0 = &sdmmc;
> +		mmc1 = &sdhci;
> +	};
> +

Any reason for this odering?

I.e. some previous incarnations had it ordered as (emmc, mmc, sdio).
This is also true for the ChromeOS out-of-tree usage of those, the
rk3399 dts in the chromeos-4.4 tree also orders this as sdhci, sdmmc, sdio.

And I guess a further question would be when we're doing arbitary orderings
anyway, why is this not in rk3399.dtsi ;-) ?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
