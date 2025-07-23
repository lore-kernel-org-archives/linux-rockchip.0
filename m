Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85961C83F25
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 08:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt1QCIXZP4jzep8C+vWmn8mvEMisFu5sWL23NJaPAFI=; b=yiy+6rA/iGSq7J
	g5vOMZlUJ0t7464QmPBJCMmgYlUokVwUTz0Efjpp2u5Ywq2Zki1G557Tabwstr4ULwZYoam2rxM/1
	WwEFGzl7lIlhyj185Q86vvtP30RYVvLCbapBdlDjkK2dkHyxXGcUHUlDEdrDWZclz8pkGhiSqcbmB
	0DoCVCvWJOkQCZ2h17zLgTWuvAUGZ4ba1jA0ccwKet99acQWljXL99PX9lwOc34ALq/6UKwWByf9I
	p0+ph/+XunP7UVvKBXfRB+VVjDmyqspOe1/cqw34k8hS9HjLtlYgb/FDRoSsYgybtwxeK7NdU2zkE
	ZiNd+KR/g7u2grNbsd2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUX6-00000004KqN-1SeF;
	Wed, 23 Jul 2025 08:09:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUCm-00000004Hm5-2vJ2;
	Wed, 23 Jul 2025 07:48:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C528A66923;
	Wed, 23 Jul 2025 07:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15CF4C4CEE7;
	Wed, 23 Jul 2025 07:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753256879;
	bh=KKn1BH2pU5ZMIp/brMQbOxv6/eE2JB3+FPK/EVwTJEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pqmUo9BC2wb+EIBkEj8YcSNMz6GCFUmCrc/X+6TbLnXqwuG2OKYA8oFA15SguPS+j
	 MAVtyLPjoQZJmRYejaeYEXCPsiCL5JLtfD/GtS/gGyTrJtH0Rabg72Mheklyh750PG
	 6f97AynZ9MvkAXWSYEiVjEa9Z7lSNgRxjA5AG1nTmnuBmR3vek8kVlBFkmkJPSvE1j
	 Ii2/ZCsl0Rqnr2yayr3BX7b/8wAr/DEj4Tq/5Mw7a53di50DSTJfs/nzLRgcYOacU7
	 ozH30cEGU4Xmy+4bocX68Nvanhfcwwlsn2mLtgNZ9R88YAojlIg2zLFqveVFZAn243
	 eWi48zyMYS2xQ==
Date: Wed, 23 Jul 2025 09:47:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: muhammed.efecetin.67@gmail.com
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, neil.armstrong@linaro.org, lee@kernel.org, 
	rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
Subject: Re: [PATCH v2 3/5] mfd: add Khadas Edge 2 registers to khadas-mcu.
Message-ID: <20250723-adamant-smiling-markhor-a8ebee@kuoka>
References: <cover.1753179491.git.efectn@protonmail.com>
 <41993cb8130fc206ee6820866154baef7db804e8.1753179491.git.efectn@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41993cb8130fc206ee6820866154baef7db804e8.1753179491.git.efectn@protonmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jul 22, 2025 at 03:38:13PM +0300, muhammed.efecetin.67@gmail.com wrote:
>  	ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
> @@ -94,7 +130,11 @@ static int khadas_mcu_probe(struct i2c_client *client)
>  
>  	ddata->dev = dev;
>  
> -	ddata->regmap = devm_regmap_init_i2c(client, &khadas_mcu_regmap_config);
> +	if (of_device_is_compatible(dev->of_node, "khadas,mcu-v2"))

This does not scale. Use device match data for exactly this purpose.

> +		regmap_config = &khadas_mcu_regmap_config_v2;
> +	else
> +		regmap_config = &khadas_mcu_regmap_config;
> +	ddata->regmap = devm_regmap_init_i2c(client, regmap_config);
>  	if (IS_ERR(ddata->regmap)) {
>  		ret = PTR_ERR(ddata->regmap);
>  		dev_err(dev, "Failed to allocate register map: %d\n", ret);
> @@ -113,6 +153,7 @@ static int khadas_mcu_probe(struct i2c_client *client)
>  #ifdef CONFIG_OF
>  static const struct of_device_id khadas_mcu_of_match[] = {
>  	{ .compatible = "khadas,mcu", },
> +	{ .compatible = "khadas,mcu-v2", },

So devices are 100% compatible? Empty match data suggests that...

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
