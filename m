Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EA8DECAAD5
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 08:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GU1AfWhu2FqR4rwNX+4ooETI69I0s0eX6uY2BdhNDrA=; b=F1kmheyuAnKSiE
	ohhLG7SRLL6uWD3gPhxpphUvNwDUn7twds3GBZLo8J1SIn0dzVagXk1r0bBuB2TdXaymPUKyaiKHa
	eYU9ss9Dk3GgS2bf57uIFDLjKKOrTOBbR2MrU7WbBSWHNY+N53IbJj5BNcbm3mc9vrHC+agXF5868
	Eceip6RoTOFZtav0Np17L2fkw+9Ncpurc3NATdT9LOBahLZJ+1sIOfOJ90u7c0N2YGU6s/gv7gZ9c
	W39QZlkMi+UYrqmQ2WBhkfIZWauC4YZnQcWP0syLOW0kKMTpOA4oZwVP78zEMwHGu1P7onZCMdxnn
	YYWN4bigiieA1h6Wgn2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDA3-00186F-2T; Thu, 08 Sep 2022 08:45:23 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWD9z-001849-PT
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 08:45:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64A1914BF;
	Thu,  8 Sep 2022 01:45:21 -0700 (PDT)
Received: from [10.57.15.197] (unknown [10.57.15.197])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47F3F3F73D;
	Thu,  8 Sep 2022 01:45:06 -0700 (PDT)
Message-ID: <818a7891-b5c8-beb6-5ccd-e1c0d1c22a23@arm.com>
Date: Thu, 8 Sep 2022 09:45:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [PATCHv2 02/13] mfd: rk808: use dev_err_probe
Content-Language: en-GB
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
 <20220908003107.220143-3-sebastian.reichel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220908003107.220143-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_014519_954351_987A94C4 
X-CRM114-Status: GOOD (  20.18  )
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

On 2022-09-08 01:30, Sebastian Reichel wrote:
> Use dev_err_probe instead of dev_err in probe function,
> which simplifies code a little bit and prints the error
> code.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/mfd/rk808.c | 50 ++++++++++++++++-----------------------------
>   1 file changed, 18 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index c17fea1d48ca..e793de9146f7 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -650,18 +650,14 @@ static int rk808_probe(struct i2c_client *client,
>   
>   	/* Read chip variant */
>   	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
> -	if (msb < 0) {
> -		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
> -			RK808_ID_MSB);
> -		return msb;
> -	}
> +	if (msb < 0)
> +		return dev_err_probe(&client->dev, msb, "failed to read the chip id at 0x%x\n",
> +				     RK808_ID_MSB);
>   
>   	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
> -	if (lsb < 0) {
> -		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
> -			RK808_ID_LSB);
> -		return lsb;
> -	}
> +	if (lsb < 0)
> +		return dev_err_probe(&client->dev, lsb, "failed to read the chip id at 0x%x\n",
> +				     RK808_ID_LSB);

Hmm, refactoring these is probably a good opportunity to fix them as 
well - I'm not sure printing the register offset is really all that 
useful, but particularly not when it's hard-coded and may not correspond 
to the actual access that failed.

Robin.

>   
>   	rk808->variant = ((msb << 8) | lsb) & RK8XX_ID_MSK;
>   	dev_info(&client->dev, "chip id: 0x%x\n", (unsigned int)rk808->variant);
> @@ -710,44 +706,34 @@ static int rk808_probe(struct i2c_client *client,
>   	i2c_set_clientdata(client, rk808);
>   
>   	rk808->regmap = devm_regmap_init_i2c(client, rk808->regmap_cfg);
> -	if (IS_ERR(rk808->regmap)) {
> -		dev_err(&client->dev, "regmap initialization failed\n");
> -		return PTR_ERR(rk808->regmap);
> -	}
> +	if (IS_ERR(rk808->regmap))
> +		return dev_err_probe(&client->dev, PTR_ERR(rk808->regmap),
> +				     "regmap initialization failed\n");
>   
> -	if (!client->irq) {
> -		dev_err(&client->dev, "No interrupt support, no core IRQ\n");
> -		return -EINVAL;
> -	}
> +	if (!client->irq)
> +		return dev_err_probe(&client->dev, -EINVAL, "No interrupt support, no core IRQ\n");
>   
>   	ret = devm_regmap_add_irq_chip(&client->dev, rk808->regmap, client->irq,
>   				       IRQF_ONESHOT, -1,
>   				       rk808->regmap_irq_chip, &rk808->irq_data);
> -	if (ret) {
> -		dev_err(&client->dev, "Failed to add irq_chip %d\n", ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "Failed to add irq_chip\n");
>   
>   	for (i = 0; i < nr_pre_init_regs; i++) {
>   		ret = regmap_update_bits(rk808->regmap,
>   					pre_init_reg[i].addr,
>   					pre_init_reg[i].mask,
>   					pre_init_reg[i].value);
> -		if (ret) {
> -			dev_err(&client->dev,
> -				"0x%x write err\n",
> -				pre_init_reg[i].addr);
> -			return ret;
> -		}
> +		if (ret)
> +			return dev_err_probe(&client->dev, ret, "0x%x write err\n",
> +					     pre_init_reg[i].addr);
>   	}
>   
>   	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
>   			      cells, nr_cells, NULL, 0,
>   			      regmap_irq_get_domain(rk808->irq_data));
> -	if (ret) {
> -		dev_err(&client->dev, "failed to add MFD devices %d\n", ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "failed to add MFD devices\n");
>   
>   	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>   		ret = devm_register_sys_off_handler(&client->dev,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
