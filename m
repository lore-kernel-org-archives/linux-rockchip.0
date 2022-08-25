Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2EDC28D13
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 12:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbQoFWE/OyNw592PhNXSex205/SEyizH4eNUYJWUtSk=; b=Nu1+ba5TM3l2lg
	ipxJkOpjnTs9hjAm3B4jdClSpmQnB3VtH0kSnkth6qIMKTZ0ryCg/zi5Rg7OkWAIMj2WTBCYeixv6
	SU9O38Elknj6zRjOIVO4rUYECYa67CgPDJioJkk48wwrPhf7wF7jSXrebpauaZzRpdQoUtIjJfnkm
	0R2nCeW5FPNJse70ekrlZsHjjSuGVus2bRLsTLlymcm5HMIxg3WmkXgli0NTuaRaHff5jdCDaJIfU
	S5knkZN35yo2gac52HCwuO85ImmZoWCjqNkUXhAZG6JgpuoFkGIDjgEd3rs9/HjVfs3dVJiImXBrW
	cxaaCc2Gp07m303gboJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRCNE-00E4JI-DQ; Thu, 25 Aug 2022 12:54:16 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRCNB-00E4Ei-Q2
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 12:54:15 +0000
Received: by mail-lf1-x134.google.com with SMTP id d8so15714602lfq.0
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 05:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc;
        bh=jxnsfnBGG5VdB1lVE8fH5s5A95cPwiONxnAdHX4wr9E=;
        b=klwh1VXiA5wDmk/YAhXp+jeLzscceYd/KnNYYrIaoLUP/n4pB+7vjTNlVP87H84vtg
         omexKvtVBswab1oB7uhQlVWE68k12W1KTU6UfZa7gZdvHZF1uGq7S/vUQnF3kEIMW5O1
         NCr4/kn51J0eFpYYS6S6QY/BVwGt7LfHsuy2XcYbtnXbm1uZlLFjhFpbX9X4uQVUw4Zb
         OreVCVPUkr2d2z8xnkj0CEoXwKzkxfgDMFb1plzMTvKvRcihZpvnJLv0uleSvXgJ2FHt
         66SQA+Sd1ZEXoo5wOwVwD+dGBy82BvemWfw+4dINocqZhxXi1Y6KO3F+0CnNhsSfl+9R
         GKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=jxnsfnBGG5VdB1lVE8fH5s5A95cPwiONxnAdHX4wr9E=;
        b=bEGa/CH+C40Uf6o9Nu25X3QkURRQqXs1EWK7VfoozJM4mRkxkrY3iNlBzlmRPCypo1
         PtIFZsohR6OgUaz9+H8dZ+NskR+CfIhLWVgWloszI8ZIC2+FLfZYL9Q6VKUdbauYVuw4
         1BCxwxpROMzpFu2Eu1wWWsTGQTj+HijgMjaLYspbsTVYObTpui7LYqhrF3M10JTskjKN
         kFzfxveV7+Kk4QzSS6lDzMf3AH2ak4veyrUkctfhCkaBwrAJ++pOvU3RBsaVoX6lki5y
         uI7LD6Sv1EEphI8/huvkI9gQAOVhbAeDyxGaNd1xKF6R8dR2IZ7meZiBOE/pRBXtJRuQ
         faCw==
X-Gm-Message-State: ACgBeo1hMgTDzs511tfDeK7Vqyu5wupE00xY+C1BD56KRTbcaIjShLEf
	k85tlb5U2t7nQVtMOgPoUNU=
X-Google-Smtp-Source: AA6agR66kK7+dDe6VMrnf/smOFnmyCX9KsjAqm/QN0PsFuXucy+qetKfTjxkAsbjQFftWAmWKT7PaA==
X-Received: by 2002:a05:6512:c11:b0:492:f0b1:1628 with SMTP id z17-20020a0565120c1100b00492f0b11628mr1052778lfu.682.1661432048414;
        Thu, 25 Aug 2022 05:54:08 -0700 (PDT)
Received: from [172.16.194.42] ([213.255.186.46])
        by smtp.gmail.com with ESMTPSA id x10-20020a056512078a00b0048a757d1303sm477008lfr.217.2022.08.25.05.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 05:54:07 -0700 (PDT)
Message-ID: <66b99ce4-752a-17e7-3213-26a898abd4a8@gmail.com>
Date: Thu, 25 Aug 2022 15:54:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, lee@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220823193015.10229-1-macroalpha82@gmail.com>
 <20220823193015.10229-4-macroalpha82@gmail.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
Subject: Re: [PATCH V9 3/4] power: supply: Add charger driver for Rockchip
 RK817
In-Reply-To: <20220823193015.10229-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_055413_881591_6D6F2507 
X-CRM114-Status: GOOD (  23.02  )
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

On 8/23/22 22:30, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Rockchip rk817 battery charger integrated into the
> rk817 PMIC.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>   drivers/power/supply/Kconfig         |    6 +
>   drivers/power/supply/Makefile        |    1 +
>   drivers/power/supply/rk817_charger.c | 1157 ++++++++++++++++++++++++++
>   3 files changed, 1164 insertions(+)
>   create mode 100644 drivers/power/supply/rk817_charger.c
> 
> +
> +static void rk817_charging_monitor(struct work_struct *work)
> +{
> +	struct rk817_charger *charger;
> +
> +	charger = container_of(work, struct rk817_charger, work.work);
> +
> +	rk817_read_props(charger);
> +
> +	/* Run every 8 seconds like the BSP driver did. */
> +	queue_delayed_work(system_wq, &charger->work, msecs_to_jiffies(8000));
> +}

I really think we would benefit from some more framework code which 
could handle the periodic polling tasks and the coulomb counter drift 
corrections when battery is full/relaxed. I think I might revive the 
simple-gauge patch series...

> +
> +static int rk817_charger_probe(struct platform_device *pdev)
> +{
> +
> +	charger->sleep_filter_current_ua = of_value;
> +
> +	charger->bat_ps = devm_power_supply_register(&pdev->dev,
> +						     &rk817_bat_desc, &pscfg);
> +
> +	charger->chg_ps = devm_power_supply_register(&pdev->dev,
> +						     &rk817_chg_desc, &pscfg);

Hmm. I think I should respin the patch which added interface for getting 
the battery info w/o psy-device. Now we need to take into account the 
situation where the psy-core accesses the driver after the registration 
- and prior filling the battery details from the battery node (below) :/

> +
> +	if (IS_ERR(charger->chg_ps))
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Battery failed to probe\n");
> +
> +	if (IS_ERR(charger->chg_ps))
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Charger failed to probe\n");
> +
> +	ret = power_supply_get_battery_info(charger->bat_ps,
> +					    &bat_info);
> +	if (ret) {
> +		return dev_err_probe(dev, ret,
> +				     "Unable to get battery info: %d\n", ret);
> +	} > +
> +	if ((!bat_info->charge_full_design_uah) ||
> +	    (!bat_info->voltage_min_design_uv) ||
> +	    (!bat_info->voltage_max_design_uv) ||
> +	    (!bat_info->constant_charge_voltage_max_uv) ||
> +	    (!bat_info->constant_charge_current_max_ua) ||
> +	    (!bat_info->charge_term_current_ua)) {
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Required battery info missing.\n");
> +	}

Just a question - should the values be compared to -EINVAL (I think the 
power_supply_get_battery_info() did internally initialize many of the 
fields to -EINVAL and not to 0?). Maybe I am wrong...

> +
> +	charger->bat_charge_full_design_uah = bat_info->charge_full_design_uah;
> +	charger->bat_voltage_min_design_uv = bat_info->voltage_min_design_uv;
> +	charger->bat_voltage_max_design_uv = bat_info->voltage_max_design_uv;
> +

Generally, I did _really_ like the proper commenting/documenting of the 
driver. In my eyes this looked like one nice piece of a driver.

When the error checking of values returned by the 
power_supply_get_battery_info() is checked - FWIW:
Reviewed-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Yours
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
