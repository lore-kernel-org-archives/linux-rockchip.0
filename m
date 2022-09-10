Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C5EC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkqAs6QCM20RdpGzqfX+RbMnZ3m70VxANxHgt80lsU8=; b=sRPdjrrcYqYM50
	dz2zFcWWk0buCPFdbyKJ2Da6z9M4hIP9kcmttPWE1m6j/s0zT+0eOXA1jsKExW1JYGnoRmCDnNIVL
	Nrn1mZhev6/J/sQXeho8R0TJ4d+hyKLNnXuvCvBpFvu16eqgPxmGaqXY+J6QiImNIxqR4suZh/9kE
	d/uiVvg0MMmg5Ujm2UdHbPVKFp1JoV5G287GK4xXQSl/RL08BKs58IdZ1B+JZqtouSdEKkkmhX24+
	Zec32zP8EGTPZtifu9pIHqrcSBgENFccSkZymif95yKmEohn9UyZvY549nhzrCR6YNSb+YLgjLi+O
	8Z5jahSAFXZM4o4Rm1CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX3tV-00Bqe1-DU; Sat, 10 Sep 2022 17:03:49 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX3tT-00BqVr-2V
	for linux-rockchip@lists.infradead.org; Sat, 10 Sep 2022 17:03:48 +0000
Received: by mail-lf1-x135.google.com with SMTP id o2so5778811lfc.10
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Sep 2022 10:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9oYntKUPc2tJ6xDf6QhqxRubtQHDLcc9WLX4rHJmEcE=;
        b=a4ihY34sCuJXXsbfoYioaCGOr20RuYPRG0sWanE68KCycUZ87icyY/srGQKw9sfQ3K
         Zv3x/BqyA79rE+22u4EEz3Au6Pf4MthAn4lgOmdSg3H4j2vaZAOgk9edDCDt42CP4Dg7
         6OuA6CuWQUs/+X13huvRv19BLHLweMZN67XtpZ0g6GdaGIruGCf3xmw39xQmfEbW7Y1t
         5uQjv+ZT6tGIWw3Q/beOI+wSXwYThECIAuC4sW9+GGrBrUB5m2vToXGT012Ui5tXj126
         mORn9sYyalAWv4d0yuE2OeGCvbgYBCIin+/h/CZFPRJODtMO/0P952Ug21zfEx6LGI/h
         GtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9oYntKUPc2tJ6xDf6QhqxRubtQHDLcc9WLX4rHJmEcE=;
        b=lxCLZoJ0OGHT528a6bwZbNdBX6/VTGzgzSwA4n1+nwmoT/sE8OXSKIJhLdcIFUGxq+
         fbk01ezucRYrUwZJHKKKmGgeP6LC6C+J+BOfSzzm2a1WVt0k6N9BupMyf8mVcNIQU492
         9xUUDpr2kYvIV5iPJUBhoMsyF4Rw4OiF4n6c6wHyUVNyykged4EdYtTyl/cjNngilnhz
         moOj65ByF4PlqiuG0mzvxtRrNHg13UldQi8Cv3pzykBTDrGnKoF5VH1vwgUBDdQ6G/Hw
         dS9Q+KACuhZjBkOQ+VzUP4mSq7qbr+w6VIzRfx3rnsUniqCqs3IpS8W/xj4rgi7Pdp6D
         bdGg==
X-Gm-Message-State: ACgBeo23CQfwUKSbTSj7Nb1V8tcTqsReXauPiHbmv2FCgFk9OGXmYMKF
	JH9BesUoti+4j4hkuN9b6Og=
X-Google-Smtp-Source: AA6agR47zR5XKaYVAPhR4ZGA2giOKYcMeBAxBL6MMu75ERICREq8q9WytQY8QE3q/a/XVpzzGwP2fw==
X-Received: by 2002:a05:6512:b96:b0:497:9dac:cc22 with SMTP id b22-20020a0565120b9600b004979daccc22mr5751398lfv.687.1662829424256;
        Sat, 10 Sep 2022 10:03:44 -0700 (PDT)
Received: from ?IPV6:2001:14ba:16f3:4a00::1? (dc75zzyyyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:16f3:4a00::1])
        by smtp.gmail.com with ESMTPSA id s30-20020a05651c201e00b0026acc9edecdsm401118ljo.47.2022.09.10.10.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 10:03:42 -0700 (PDT)
Message-ID: <03081def-8d49-8823-0f1d-cb710dc3a444@gmail.com>
Date: Sat, 10 Sep 2022 20:03:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCHv3 13/14] regulator: rk808: add rk806 support
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
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-14-sebastian.reichel@collabora.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20220909175522.179175-14-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_100347_187314_9C86F40B 
X-CRM114-Status: GOOD (  17.48  )
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

Hi deee Ho Sebastian,

On 9/9/22 20:55, Sebastian Reichel wrote:
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
>   drivers/regulator/rk808-regulator.c | 384 ++++++++++++++++++++++++++++
>   1 file changed, 384 insertions(+)
> 
> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
> index fa9fc1aa1ae3..8ef276ef44e3 100644
> --- a/drivers/regulator/rk808-regulator.c
> +++ b/drivers/regulator/rk808-regulator.c
> @@ -3,9 +3,11 @@

// snip

> +static const struct regulator_ops rk806_ops_dcdc = {
> +	.list_voltage		= regulator_list_voltage_linear_range,
> +	.map_voltage		= regulator_map_voltage_linear_range,
> +	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
> +	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
> +	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
> +	.set_mode		= rk806_set_mode_dcdc,
> +	.get_mode		= rk806_get_mode_dcdc,
> +
> +	.enable			= regulator_enable_regmap,
> +	.disable		= regulator_disable_regmap,
> +	.is_enabled		= regulator_is_enabled_regmap,
> +
> +	.set_suspend_mode	= rk806_set_mode_dcdc,
> +	.set_ramp_delay		= rk806_set_ramp_delay_dcdc,
> +	//.set_ramp_delay		= regulator_set_ramp_delay_regmap,

I guess leaving this was the eye-catcher for reviewers who have urge to 
nag about something ;)

Other than that - for what it matters
Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>

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
