Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F98DCEBF78
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 06:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXwNll3wbBykGt7tPScCp0cSyx5ZEWZ8my5rSZIxing=; b=O3fypcO3cTTGC1
	diH6M0AZ6t8BjXVPePwWVGbZZ/zPHnVHt4P1tX6wDgI/iLhT41A2MMj7wbHbo1d5fRe6ie3eMJcns
	8vDT8X1XivLb+1tSeNKJ3tnKR4y09NFoQy4evIJd+DsyFk0sOMegh0BZCnh7VrhCKjD+liRVG7Lfy
	108TxpPgjtm8U5LX5KmfRhdlHHkCVTfznHG4SaBhad1b8Q8A8CLT2sp8ZAdBSkuhbqWy1wDHGse7V
	jgHmc69mW9vijeuO9sWrzHBJcFyxFI2s8ntcbY8zmKb60QTdjyUyQrfIvq0HfbDgZ+Lg3xs8VL54k
	IcGquvE80cLFZXjwzdLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su4Iq-0000000AAhF-2ykQ;
	Fri, 27 Sep 2024 06:18:08 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4Ha-0000000AARQ-2b5j;
	Fri, 27 Sep 2024 06:16:52 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2e084dc44bcso353639a91.0;
        Thu, 26 Sep 2024 23:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727417809; x=1728022609; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFMu5nIK1XA2U6Jv3UWdl8l0/cwS3LFilHd5/wyNgKU=;
        b=fFQd8h4ZP0tGEfdXp0C7kCwb0tluIO9UM+LS48WyzOizKLIvEI7C4ycxYqiuW7Zgfb
         FVKjvZzeFsm4yw+Iu9j+Cqmc2CfyTRRj3m/bLbOF5LeEaIQB/irtpNgXa2wmzi4PdQ7m
         1VDTmkyas9IS4aviPWfnFmWZS6mLZGwqSUyFwJsv+NapADymY1bCAB6wwytwX67w32KG
         vCvqDglljIb5T71CuP0uBGU1AElyhasxH9T4QuFTOo0ApD9L3xk1u+afikJvSXNfnTmH
         H+rH+liaqcuZXiDWfhz9R5S7+J77svjo6wrTl+VLyk4uEggom/sjRrK17Ks06qmp2Drw
         bqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727417809; x=1728022609;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nFMu5nIK1XA2U6Jv3UWdl8l0/cwS3LFilHd5/wyNgKU=;
        b=vwNPxUm7xLK2PGVdWqrE2x3bGr7DG02JTLkJ4fpH7GTxKHOcOK24tF8MtXswcXRk+I
         ZnYzXcVT5JGjINVPocyKwR3mFBQ+qJByngc9JXNzd8MNG5Ogc4u4lo1wcowI4xm3yVXU
         xH+mF+JtW7OmU3iO/XDBAZYw4i9WKKkUbp7FheTlpHB5qmrEAQTNNUMlKoPhNokeKnOp
         ZI82NseIswcRLxaWhUHcshpEJWwDdnxqlzeqo4Wc96ZYZ6U3ZeoOz2Ipn+Cr1Dt8YQgP
         ZT5YjOOs1Km0W3CQLzmIHCheTMn+yhO64qNqSmBLCY9eDqklCZ202gxm3LLbF44JKdZM
         KD+g==
X-Forwarded-Encrypted: i=1; AJvYcCVL+B0b309OA2sav1H5ah7uaLOT4OWIsLw3KB5ojjKOQlUum8Ybd6StLAA7y52jgUQX2nrggcJ7SH4vo3WTRkT1@lists.infradead.org, AJvYcCW9gq0DB7Ug0eKffnpcIRr3K6Ah5tRCEqNvJGBXViO0zHZdqJM6ALPlmnCWqnhvXZJE3rxl0W+KQui+GMkQRhE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUKBAH+l8+K0i2DhNcLkKz+03qgFu0fOGWYBwzFynEbz1oAEi2
	HEPIsdD+We5cFV8eisEUAzlgdMPMZUwNeJYSDt/cLjtdRUJsxpls
X-Google-Smtp-Source: AGHT+IFMk1Agg28AI0P5xMasf2xXouzCk5MXC6T3rgBYjc4+jgRDD/x2a4D4CmpENKmag+Or5NCmng==
X-Received: by 2002:a05:6a00:190e:b0:71b:64c:813f with SMTP id d2e1a72fcca58-71b2607eb74mr1501331b3a.6.1727417808721;
        Thu, 26 Sep 2024 23:16:48 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264be25dsm857173b3a.84.2024.09.26.23.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2024 23:16:48 -0700 (PDT)
Message-ID: <9cc2d594-a930-4c4a-86ee-47228af28936@gmail.com>
Date: Fri, 27 Sep 2024 14:16:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: rockchip: inno-usb2: Add usb2 phys support
 for rk3576
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <20240926103223.29538-2-frawang.cn@gmail.com> <10867555.aFP6jjVeTY@phil>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <10867555.aFP6jjVeTY@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_231650_704607_7A55E906 
X-CRM114-Status: GOOD (  33.25  )
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

Hi Heiko,

On 2024/9/26 18:48, Heiko Stuebner wrote:
> Am Donnerstag, 26. September 2024, 12:32:23 CEST schrieb Frank Wang:
>> From: William Wu <william.wu@rock-chips.com>
>>
>> The RK3576 SoC has two independent USB2.0 PHYs, and each PHY has
>> one port.
>>
>> This change also converts the clock management from single to bulk
>> as some Rockchip SoCs (e.g RK3576) have more than one clock.
>>
>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>> Changelog:
>> v3:
>>   - amend the commit log adds clocks converting.
>>   - retrieve the clock by "clks.id" in *_clk480m_register() function.
>>
>> v2:
>>   - no changes.
>> v1:
>>   - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-2-frank.wang@rock-chips.com/
>>
>>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 139 +++++++++++++++++-
>>   1 file changed, 131 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> index 4f71373ae6e1..642c7857c5ae 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> @@ -229,9 +229,10 @@ struct rockchip_usb2phy_port {
>>    * @dev: pointer to device.
>>    * @grf: General Register Files regmap.
>>    * @usbgrf: USB General Register Files regmap.
>> - * @clk: clock struct of phy input clk.
>> + * @clks: array of phy input clocks.
>>    * @clk480m: clock struct of phy output clk.
>>    * @clk480m_hw: clock struct of phy output clk management.
>> + * @num_clks: number of phy input clocks.
>>    * @phy_reset: phy reset control.
>>    * @chg_state: states involved in USB charger detection.
>>    * @chg_type: USB charger types.
>> @@ -246,9 +247,10 @@ struct rockchip_usb2phy {
>>   	struct device	*dev;
>>   	struct regmap	*grf;
>>   	struct regmap	*usbgrf;
>> -	struct clk	*clk;
>> +	struct clk_bulk_data	*clks;
>>   	struct clk	*clk480m;
>>   	struct clk_hw	clk480m_hw;
>> +	int			num_clks;
>>   	struct reset_control	*phy_reset;
>>   	enum usb_chg_state	chg_state;
>>   	enum power_supply_type	chg_type;
>> @@ -376,7 +378,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>>   {
>>   	struct device_node *node = rphy->dev->of_node;
>>   	struct clk_init_data init;
>> +	struct clk *refclk = NULL;
>>   	const char *clk_name;
>> +	int i;
>>   	int ret = 0;
>>   
>>   	init.flags = 0;
>> @@ -386,8 +390,15 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>>   	/* optional override of the clockname */
>>   	of_property_read_string(node, "clock-output-names", &init.name);
>>   
>> -	if (rphy->clk) {
>> -		clk_name = __clk_get_name(rphy->clk);
>> +	for (i = 0; i < rphy->num_clks; i++) {
>> +		if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {
>> +			refclk = rphy->clks[i].clk;
>> +			break;
>> +		}
>> +	}
>> +
>> +	if (!IS_ERR(refclk)) {
>> +		clk_name = __clk_get_name(refclk);
>>   		init.parent_names = &clk_name;
>>   		init.num_parents = 1;
>>   	} else {
>> @@ -1406,22 +1417,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>>   	if (IS_ERR(rphy->phy_reset))
>>   		return PTR_ERR(rphy->phy_reset);
>>   
>> -	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
>> -	if (IS_ERR(rphy->clk)) {
>> -		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
>> +	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
>> +	if (ret == -EPROBE_DEFER) {
>> +		return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
>>   				     "failed to get phyclk\n");
>>   	}
>>   
>> +	/* Clocks are optional */
>> +	rphy->num_clks = ret < 0 ? 0 : ret;
>> +
>>   	ret = rockchip_usb2phy_clk480m_register(rphy);
>>   	if (ret) {
>>   		dev_err(dev, "failed to register 480m output clock\n");
>>   		return ret;
>>   	}
>>   
>> +	ret = clk_bulk_prepare_enable(rphy->num_clks, rphy->clks);
>> +	if (ret)
>> +		return ret;
>> +
> Do you actually need that separate enable step?
> There exists devm_clk_bulk_get_all_enable()
>
> https://elixir.bootlin.com/linux/v6.11/source/include/linux/clk.h#L511
>
> which you could use above. Especially as otherwise you'd need a remove
> callback to disable the clock on driver unbind?
>

Using devm_clk_bulk_get_all() just can get clocknumbers, 
anddevm_clk_bulk_get_all_enable() is not.
It seems that there is no other API can get the number of clocks separately.


>>   	if (rphy->phy_cfg->phy_tuning) {
>>   		ret = rphy->phy_cfg->phy_tuning(rphy);
>>   		if (ret)
>> -			return ret;
>> +			goto disable_clks;
>>   	}
>>   
>>   	index = 0;
>> @@ -1484,6 +1502,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>>   
>>   put_child:
>>   	of_node_put(child_np);
>> +disable_clks:
>> +	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
>>   	return ret;
>>   }
>>   
>> @@ -1495,6 +1515,30 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>>   				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
>>   }
>
> I still maintain, that this maybe should be two separate patches.
> And you even seem to have nice "cut-here" in it ;-)
>
> The code above converts the driver to use clk_bulk to handle
> multiple clocks for controller variants needing it.
>
>
> And the code below adds the rk3576-specific data to the driver.
>

Make sense, I shall split two separate patches in the next version.
BTW, should I send the clk_bulk process patch as a separate series? I 
mean I shouldn't send it together with this series, right?


Best regards,
Frank

>
>> [...]
>>
>> +
>>   static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
>>   	{
>>   		.reg = 0x0000,
>> @@ -2094,6 +2216,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>>   	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>>   	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
>>   	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
>> +	{ .compatible = "rockchip,rk3576-usb2phy", .data = &rk3576_phy_cfgs },
>>   	{ .compatible = "rockchip,rk3588-usb2phy", .data = &rk3588_phy_cfgs },
>>   	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
>>   	{}
>>
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
