Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8244FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 16:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lNHxud5zbW8LzGHjgaD+gpQ6iwBXb70nXnI7ELFxKYo=; b=wiyyXsReQrsU28jauqMGCrz/v6
	nBF4fSL1ONdX4QgKjh9skrXh6MdxP+/NSklZHXnpBInM3Tf1CxGNEvR+38SFFWIFj2ItC+XlnLvOJ
	2o56HJjYgsMCd/NFxN89bFiP4iZ7XTz30w3gkFfrw1ct2g13HoWEfvHA2SF7t/riZQDy9uICcvN87
	VTYw28f6ZO5rgbhQX0SP3+ym+M2xReqsb2SmJOim04MPArHlA2Xqs+LbSD9D+hrmsRDB6Q+KnHamY
	cwzKKynDs5Q7b2SiHiUQdhPxjghYKI1qlCo2t8N6cXyark6q7mwYXBud2PwNSPPaZpytPT4+hEcyL
	ethhCLBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0Hr-00DeZZ-5g; Wed, 08 Dec 2021 16:59:23 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0Ho-00DeYF-Lw; Wed, 08 Dec 2021 16:59:22 +0000
Received: by mail-ed1-x536.google.com with SMTP id y13so10424691edd.13;
 Wed, 08 Dec 2021 08:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w86H3BBpNfyHLG7QWUfndDqHv0Jg3L2Gk9QWzHF4RqE=;
 b=CCZnHcYHpc/0wDV0aTywVVs1kp8B3AotY9AmekQDD9fbzwK/ZrLSNhD6lIvFs/4g9G
 QGhukUg9nwwFjC6Vb+PvMjhrvmrWYHInpvC6AOOBBjOxnqvsFkkdJf5PXjfSgLiUDmZZ
 r7z5raDJXf3GV7ALUNtfl/ZX5T/U0/6U3AAVPWC1uFkXvRnRB3Dctk6Hl9R6gqF1OIYt
 zjpMA2NHAKhWEcHNaM5IMVG4Kqg9KnhS8PNdeTgse9X8T/byPHgXC3IzHBuwnWPUjUEx
 5P3sGVrd04v/+Uusd1xVzqYasjVJcVN+XSMkMM09XlboRFvWLTnBHmV7RUty22+RA8gX
 N2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w86H3BBpNfyHLG7QWUfndDqHv0Jg3L2Gk9QWzHF4RqE=;
 b=MNwrtTXjAYi2AnEEf8uj62JbwKr4MVHrrtPBDiD2l+6ZM+43XgaA/p2rLDKpSBdMRH
 JM6C9EM0vtE9c4HtR3ccxgRIVKlqs+poQ8c/P2PCbESpf9cIyoi/7wE5FTyPk3mBKhcI
 zJGHaCXejUa1Kl0RC9pxJZ8dg2LDbsSl9vlDBOmfwzZjq+PTASXe6JVMj7Ss4+KjE+Xy
 /aAFq+CKY6maGpRGUb21B9rNCjTPGxSzaa8tCox7FuSWKBqN6heYi2AznrCgWjZYsYdn
 POo2oOmHTMPrLNLctij/AoyLIixMtiGBRVPRh1S9WQ/sVe9j6hNQJCX25aslJxuf4rTv
 GPQA==
X-Gm-Message-State: AOAM532OBl1M3BeRqPgrs+EDLTti9JLEKkyq48GliKm2Ul8sX5IN3GFI
 N3fmZFqbJp7Y9vNrhh4OfcE=
X-Google-Smtp-Source: ABdhPJzfUjXv8dBljCfZuAvNNB1SANokJnsfTQ+rvo88d1D93aZf8zhiXI2IQptVGUCSkUvQjdyFIQ==
X-Received: by 2002:a17:906:538d:: with SMTP id
 g13mr8946894ejo.62.1638982758085; 
 Wed, 08 Dec 2021 08:59:18 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 i10sm1850558ejw.48.2021.12.08.08.59.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Dec 2021 08:59:17 -0800 (PST)
Subject: Re: [PATCH 17/18] drm: rockchip: Add VOP2 driver
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-18-s.hauer@pengutronix.de>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bd576949-a42b-9750-fe97-b9b567c7ea75@gmail.com>
Date: Wed, 8 Dec 2021 17:59:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211208151230.3695378-18-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_085920_776588_604F1B07 
X-CRM114-Status: GOOD (  22.71  )
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

Hi,

On 12/8/21 4:12 PM, Sascha Hauer wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
> 
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
> 
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>   functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> - Drop all waiting for framesyncs
> 
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

[..]

> +
> +static const struct of_device_id vop2_dt_match[] = {
> +	{
> +		.compatible = "rockchip,rk3568-vop",
> +		.data = &rk3568_vop
> +	}, {

> +		.compatible = "rockchip,rk3568-vop",

Maybe use:
.compatible = "rockchip,rk3566-vop",

> +		.data = &rk3566_vop
> +	}, {
> +	},

Maybe sort this list alphabetical based on compatible in case later more
SoCs are added.

rk3566
rk3568

===

The structure layout size above could be reduced for if we get more
compatible strings additions.

Example vop1:

static const struct of_device_id vop_driver_dt_match[] = {
	{ .compatible = "rockchip,rk3036-vop",
	  .data = &rk3036_vop },
	{ .compatible = "rockchip,rk3126-vop",
	  .data = &rk3126_vop },
	{ .compatible = "rockchip,px30-vop-big",
	  .data = &px30_vop_big },
	{ .compatible = "rockchip,px30-vop-lit",
	  .data = &px30_vop_lit },
	{ .compatible = "rockchip,rk3066-vop",
	  .data = &rk3066_vop },
	{ .compatible = "rockchip,rk3188-vop",
	  .data = &rk3188_vop },
	{ .compatible = "rockchip,rk3288-vop",
	  .data = &rk3288_vop },
	{ .compatible = "rockchip,rk3368-vop",
	  .data = &rk3368_vop },
	{ .compatible = "rockchip,rk3366-vop",
	  .data = &rk3366_vop },
	{ .compatible = "rockchip,rk3399-vop-big",
	  .data = &rk3399_vop_big },
	{ .compatible = "rockchip,rk3399-vop-lit",
	  .data = &rk3399_vop_lit },
	{ .compatible = "rockchip,rk3228-vop",
	  .data = &rk3228_vop },
	{ .compatible = "rockchip,rk3328-vop",
	  .data = &rk3328_vop },
	{},
};

> +};
> +MODULE_DEVICE_TABLE(of, vop2_dt_match);
> +
> +static int vop2_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +
> +	return component_add(dev, &vop2_component_ops);
> +}
> +
> +static int vop2_remove(struct platform_device *pdev)
> +{
> +	component_del(&pdev->dev, &vop2_component_ops);
> +
> +	return 0;
> +}
> +
> +struct platform_driver vop2_platform_driver = {
> +	.probe = vop2_probe,
> +	.remove = vop2_remove,
> +	.driver = {
> +		.name = "rockchip-vop2",
> +		.of_match_table = of_match_ptr(vop2_dt_match),
> +	},
> +};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
