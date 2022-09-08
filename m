Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C67BC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 07:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLtB3OzSC/L0ht92hmNE7WlpKL6QGgo2VWxdwVRgHjQ=; b=IUuj8oJqoQ6u9t
	/Ax3/baTj6E9phT3y27HU8kmjnfDBNn8NM5tBGriHf/7EaTaSpKcqyakAIXPrlPpLs/4HYHgo30Sw
	lRxaoOzuTp8SEIAR9WScdHZMTK2i4eTm/vbig76nuzaYPRscEkLOx4HUmBH154FunUBuKiBinrxQu
	J5Kb50AOORZV2b0GhhyuAnHWv2O73zqIoWt0nondKWhB0W1MAdBg+U2dat9VnEO2An0vyO5wTKHhE
	yKWI4wVit6qfYtHtZoKh5ylwtuYns6dY+EJDHd5rXVn2ns38m2QQGakOHvw1z/NA+7/q0wl3wpKDx
	WI45yM0DmXHyuxgZ+oZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCEN-000U8R-Vj; Thu, 08 Sep 2022 07:45:47 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCEK-000U7H-VK
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 07:45:46 +0000
Received: by mail-lj1-x235.google.com with SMTP id v6so5482764ljj.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 00:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date;
        bh=YU57hxsIt0xndsFxPQe4wKS86EEQsa47vk+PL88ggC4=;
        b=CiZKk+5jGDzGxvos94ZoGSm8flQLwVes+Qzz/5LAUf0N1kKYyI4lceNpe4xYQX+PyM
         40ZhE1/5wtARrDxhQmNP4NBSr3zGQD0+hvhu7aq6QZjb8IOfgoRGmbsCHuARj7TC5JUw
         KKJOITnZgH9z9fS6Oo/VVbBGN9UDKrBQ8VdcuIaDKtNADaRksu8aH/fEEOMrAEnVsN/C
         XbdVAOw8WCDwivOwwAvId3ie+Hg71GfQ4oX17rGh5RNMQ8Z91z9Fq8ELc+aySa4g6Rya
         l4s9o9vOzM1MGl9+LBc5akUAnZbRdkL+4qDZJTnRxML2jYHF8bv2smxOlKwvMu9tGr2a
         LOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=YU57hxsIt0xndsFxPQe4wKS86EEQsa47vk+PL88ggC4=;
        b=g0C1aDp9+JHuWdUQtlWJiX/aA0O2spcwwbL6LDqCWfUEcGPaKbcwM3tB7vxS4gFtwv
         1MTqo1RJJwsV0N4+i1mX9jk60VU5ktMA/RYknMlq3lr+PtQlyls0qOqqZMkn33s6sdqs
         QJnzCGro3m/J8sIZK22zg4gFhqYmgcezvpvVIj+e9P/7m+UNJRBwZAVGn4SLL3tW7hI9
         85eHb3vt07cxu/cZ2hAZKLyYQdvl8Kp0F+agn/fpIeGFP/TJ22ht5aVVzgEGph9qJXyn
         2T8uOOOYprXvcrKPpus36hZcPeNDdUhBAT2ORDut8DE1fu6fveC0R3iMsfadyZNkoqVL
         dQug==
X-Gm-Message-State: ACgBeo3Exu5MbQq1b0IJPOpgKx4H04Qu+b6LUkM+wCPDczH2neVDW7Wr
	eET7flRPPF2o7ojlCxACf+k=
X-Google-Smtp-Source: AA6agR7eIvjyLkhIow9OryI+Vh14scpRzcCjwCn40jlAc4PRh7bU1OAaULonKxvUOnyQQzm5Pvr4SQ==
X-Received: by 2002:a05:651c:2105:b0:25a:42ee:49ae with SMTP id a5-20020a05651c210500b0025a42ee49aemr2070891ljq.200.1662623142033;
        Thu, 08 Sep 2022 00:45:42 -0700 (PDT)
Received: from [172.16.194.206] ([213.255.186.46])
        by smtp.gmail.com with ESMTPSA id f10-20020a05651232ca00b00497ab39bcd0sm672620lfg.96.2022.09.08.00.45.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 00:45:41 -0700 (PDT)
Message-ID: <88f6110b-94b7-484d-cc37-d7f72c88090a@gmail.com>
Date: Thu, 8 Sep 2022 10:45:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
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
 kernel@collabora.com, shengfei Xu <xsf@rock-chips.com>
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
 <20220908003107.220143-13-sebastian.reichel@collabora.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
Subject: Re: [PATCHv2 12/13] regulator: rk808: add rk806 support
In-Reply-To: <20220908003107.220143-13-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_004545_087760_18DBB1AB 
X-CRM114-Status: GOOD (  27.44  )
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

On 9/8/22 03:31, Sebastian Reichel wrote:
> Add rk806 support to the existing rk808 regulator
> driver.
> 
> This has been implemented using shengfei Xu's rk806
> specific driver from the vendor tree as reference.
> 
> Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/regulator/rk808-regulator.c | 482 ++++++++++++++++++++++++++++
>   1 file changed, 482 insertions(+)
> 
> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
> index fa9fc1aa1ae3..cd1a2cff4a37 100644
> --- a/drivers/regulator/rk808-regulator.c
> +++ b/drivers/regulator/rk808-regulator.c

Thanks for upstreaming the downstream stuff! :)
I wonder if we could drop some code by using the existing helpers? Or 
maybe I am missreading some code. Wouldn't be the first (and probably 
not the last) time...

//snip

>   struct rk808_regulator_data {
>   	struct gpio_desc *dvs_gpio[2];
>   };
> @@ -216,6 +271,223 @@ static const unsigned int rk817_buck1_4_ramp_table[] = {
>   	3000, 6300, 12500, 25000
>   };
>   
> +static int rk806_get_voltage_sel_regmap(struct regulator_dev *rdev)
> +{
> +	unsigned int val;
> +	int vsel_reg, ret;
> +
> +	vsel_reg = rdev->desc->vsel_reg;
> +
> +	ret = regmap_read(rdev->regmap, vsel_reg, &val);
> +	if (ret != 0)
> +		return ret;
> +
> +	val &= rdev->desc->vsel_mask;
> +	val >>= ffs(rdev->desc->vsel_mask) - 1;
> +
> +	return val;
> +}

Could we just use the regulator_get_voltage_sel_regmap()?

> +
> +static int rk806_set_voltage(struct regulator_dev *rdev,
> +			     int req_min_uV, int req_max_uV,
> +			     unsigned int *selector)
> +{
> +	int vsel_reg, ret, sel;
> +
> +	ret = regulator_map_voltage_linear_range(rdev, req_min_uV, req_max_uV);
> +	if (ret >= 0) {
> +		*selector = ret;
> +		sel = ret;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	vsel_reg = rdev->desc->vsel_reg;
> +
> +	sel <<= ffs(rdev->desc->vsel_mask) - 1;
> +
> +	ret = regmap_update_bits(rdev->regmap, vsel_reg,
> +				 rdev->desc->vsel_mask, sel);
> +
> +	return ret;
> +}

Hmm. Maybe this is not necessary? I wonder if we could get away just 
with the .map and .set_voltage_sel (regulator_get_voltage_sel_regmap() 
and regulator_map_voltage_linear_range()).

// snip
> +
> +static int rk806_set_ramp_delay_ldo(struct regulator_dev *rdev, int ramp_delay)
> +{
> +	unsigned int ramp_value = RK806_RAMP_RATE_2LSB_PER_1CLK;
> +	int regval;
> +
> +	switch (ramp_delay) {
> +	case 1 ... 780:
> +		ramp_value = RK806_RAMP_RATE_1LSB_PER_32CLK;
> +		break;
> +	case 781 ... 1900:
> +		ramp_value = RK806_RAMP_RATE_1LSB_PER_13CLK;
> +		break;
> +	case 1901 ... 3120:
> +		ramp_value = RK806_RAMP_RATE_1LSB_PER_8CLK;
> +		break;
> +	case 3121 ... 6280:
> +		ramp_value = RK806_RAMP_RATE_1LSB_PER_4CLK;
> +		break;
> +	case 6281 ... 12500:
> +		ramp_value = RK806_RAMP_RATE_1LSB_PER_2CLK;
> +		break;
> +	case 12501 ... 25000:
> +		ramp_value = RK806_RAMP_RATE_1LSB_PER_1CLK;
> +		break;
> +	case 25001 ... 50000:
> +		ramp_value = RK806_RAMP_RATE_2LSB_PER_1CLK;
> +		break;
> +	case 50001 ... 100000:
> +		ramp_value = RK806_RAMP_RATE_4LSB_PER_1CLK;
> +		break;
> +	default:
> +		pr_warn("%s ramp_delay: %d not supported, setting 10000\n",
> +			rdev->desc->name, ramp_delay);
> +	}
> +
> +	regval = ramp_value << (ffs(rdev->desc->ramp_mask) - 1);
> +	return regmap_update_bits(rdev->regmap, rdev->desc->ramp_reg,
> +				  rdev->desc->ramp_mask, regval);
> +}

Do you think we could get rid of this function by populating a 
ramp-delay table and using regulator_set_ramp_delay_regmap()?

Best Regards
	-- Matti

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
