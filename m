Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7492FC282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8csr7QNVBrA5jItl76ibz70d9LOK5nFigfxCJqrqPVU=; b=UH3gOBKh9qg+DB
	I6d82W10cGV8LLbNcODlN/6fuAxPdcW7OlUGc87kuOYM6aRnZTFuMm0PFdH9N+/3Dxn/XyAPkZUzF
	nfqZwhnVzvZ162qlO6pNRLToRfvNJM2cax5tP+H5ip2rBWuUsePSlIjz5avMODHd6acX+9ezAVPJh
	J1qiAm/AuTiAszU5XMLv1//F8BNCP+A9yw3DwN5VwdQr6xwREjdTng8vMIHZBLRTkNXICrMyjB4EW
	2bp2eBNfG48rTnrU1Lc3yVw+pWnI0BGcabEuhq9yGWDnZvd2eSTGauI0DPrsg7ntrbaJFEIgpWOvr
	apYWcR0Q8P/isTir6eZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8x1-00000002S79-0KcX;
	Mon, 17 Mar 2025 11:48:11 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu8wy-00000002S4u-2pGx
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Mar 2025 11:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742212087;
 bh=HEOVbh7gUdGpeV0lk7aQTpECpLg2DtqXrUEnTsWW+ag=;
 b=HtKwR8vgnbhYQnamhs/YsFEQzAurD9L2Ua+lGxw6hkZDLmjIqy8yR/NFsu/JhykjRR1cwAL9M
 uVpsz7fngixS5pIpNrQW+0tWRgp1/d1E1APFQdxXS1Mp2do058PwmEE6kP4t6G9H9fKzkc9K7gx
 j0MDnT39uJGk3ZiEIXz28gOM6GdFscQ2CDJZj3C+lGMXjVSaGho/AESPs13EWLWDTcBdR3P2fRb
 KyCxPsxRzOcOrgzQ48HHunnoZFgX+LX6cueg11ix57hL1bYC5YCRRNY5nRg75gQdsHEnvNav9VZ
 LDAMok5jVJragwh+g9U4HfFVVpWmqhxdI8j7mWyVgXog==
X-Forward-Email-ID: 67d80befc3abe04af72034b8
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <ba057235-85d4-4635-87ad-741e369904f3@kwiboo.se>
Date: Mon, 17 Mar 2025 12:47:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] thermal: rockchip: Support RK3576 SoC in the
 thermal driver
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
References: <20250228-rk3576-tsadc-upstream-v3-0-4bfbb3b699b9@collabora.com>
 <20250228-rk3576-tsadc-upstream-v3-3-4bfbb3b699b9@collabora.com>
 <6c355664-50dd-4efd-94b7-9d93c02d3e80@kwiboo.se>
 <4994384.31r3eYUQgx@workhorse>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <4994384.31r3eYUQgx@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_044809_113771_2AAB15A1 
X-CRM114-Status: GOOD (  26.33  )
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

Hi Nicolas,

On 2025-03-17 09:28, Nicolas Frattaroli wrote:
> On Saturday, 15 March 2025 09:20:07 Central European Standard Time Jonas 
> Karlman wrote:
>> Hi Nicolas,
> 
> Hi Jonas,
> 
>>
>> On 2025-02-28 21:06, Nicolas Frattaroli wrote:
>>> From: Ye Zhang <ye.zhang@rock-chips.com>
>>>
>>> The RK3576 SoC has six TS-ADC channels: TOP, BIG_CORE, LITTLE_CORE,
>>> DDR, NPU and GPU.
>>>
>>> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
>>> [ported to mainline, reworded commit message]
>>> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>>> ---
>>>
>>>  drivers/thermal/rockchip_thermal.c | 42
>>>  ++++++++++++++++++++++++++++++++++++++ 1 file changed, 42 insertions(+)
>>>
>>> diff --git a/drivers/thermal/rockchip_thermal.c
>>> b/drivers/thermal/rockchip_thermal.c index
>>> a8ad85feb68fbb7ec8d79602b16c47838ecb3c00..bec1930bebd87859a7e519cfc9f05e1
>>> 0b1c31e87 100644 --- a/drivers/thermal/rockchip_thermal.c
>>> +++ b/drivers/thermal/rockchip_thermal.c
>>> @@ -1061,6 +1061,22 @@ static void rk_tsadcv3_tshut_mode(int chn, void
>>> __iomem *regs,> 
>>>  	writel_relaxed(val_cru, regs + TSADCV3_HSHUT_CRU_INT_EN);
>>>  
>>>  }
>>>
>>> +static void rk_tsadcv4_tshut_mode(int chn, void __iomem *regs,
>>> +				  enum tshut_mode mode)
>>> +{
>>> +	u32 val_gpio, val_cru;
>>> +
>>> +	if (mode == TSHUT_MODE_GPIO) {
>>> +		val_gpio = TSADCV2_INT_SRC_EN(chn) | 
> TSADCV2_INT_SRC_EN_MASK(chn);
>>> +		val_cru = TSADCV2_INT_SRC_EN_MASK(chn);
>>> +	} else {
>>> +		val_cru = TSADCV2_INT_SRC_EN(chn) | 
> TSADCV2_INT_SRC_EN_MASK(chn);
>>> +		val_gpio = TSADCV2_INT_SRC_EN_MASK(chn);
>>> +	}
>>> +	writel_relaxed(val_gpio, regs + TSADCV3_HSHUT_GPIO_INT_EN);
>>> +	writel_relaxed(val_cru, regs + TSADCV3_HSHUT_CRU_INT_EN);
>>> +}
>>
>> This function is identical to rk_tsadcv3_tshut_mode() in mainline.
>>
>> Should the v3 function be renamed to v4 in mainline to match vendor
>> kernel to avoid confusion?
> 
> Good catch. Yes, I'll add a patch to rename the function before introducing 
> new changes in v4, and get rid of the duplicate function.

Great.

> 
>>
>>> +
>>>
>>>  static const struct rockchip_tsadc_chip px30_tsadc_data = {
>>>  
>>>  	/* cpu, gpu */
>>>  	.chn_offset = 0,
>>>
>>> @@ -1284,6 +1300,28 @@ static const struct rockchip_tsadc_chip
>>> rk3568_tsadc_data = {> 
>>>  	},
>>>  
>>>  };
>>>
>>> +static const struct rockchip_tsadc_chip rk3576_tsadc_data = {
>>> +	/* top, big_core, little_core, ddr, npu, gpu */
>>> +	.chn_offset = 0,
>>> +	.chn_num = 6, /* six channels for tsadc */
>>> +	.tshut_mode = TSHUT_MODE_GPIO, /* default TSHUT via GPIO give PMIC 
> */
>>> +	.tshut_polarity = TSHUT_LOW_ACTIVE, /* default TSHUT LOW ACTIVE */
>>> +	.tshut_temp = 95000,
>>
>> Here the default is GPIO and 95 deg, in DT node the default is override
>> to CRU and 120 deg.
>>
>> Any reason that is not the default here?
> 
> No reason, other than that this is what most Rockchip SoCs seem to do. RK3588 
> does the same thing. The hardware power-on-reset state is to not have any 
> tshut, so whatever the "default" should be is entirely made up by the driver 
> in either case.
> 
> For the sake of being consistent, I'll keep it the same in v4, as RK3588 does. 
> Otherwise, we'll have RK3576 and RK3588 do different things. If someone wants 
> to change the default, then ideally this would be done in a follow-up series 
> to make it consistent for all SoCs.
> 
> If that's alright with you, then I'll send out a v4.

Sounds good, I was mostly wondering because I am preparing patches for
RK3528 and it felt strange to define one default in driver and directly
override that default in DT to something different.

Also noticed that this driver log a warning when the DT props are
missing, something that probably should be downgraded as the props are
optional in DT schema. Something for another series.

Regards,
Jonas

> 
>>
>> Regards,
>> Jonas
>>
> 
> Regards,
> Nicolas Frattaroli
> 
>>> +	.initialize = rk_tsadcv8_initialize,
>>> +	.irq_ack = rk_tsadcv4_irq_ack,
>>> +	.control = rk_tsadcv4_control,
>>> +	.get_temp = rk_tsadcv4_get_temp,
>>> +	.set_alarm_temp = rk_tsadcv3_alarm_temp,
>>> +	.set_tshut_temp = rk_tsadcv3_tshut_temp,
>>> +	.set_tshut_mode = rk_tsadcv4_tshut_mode,
>>> +	.table = {
>>> +		.id = rk3588_code_table,
>>> +		.length = ARRAY_SIZE(rk3588_code_table),
>>> +		.data_mask = TSADCV4_DATA_MASK,
>>> +		.mode = ADC_INCREMENT,
>>> +	},
>>> +};
>>> +
>>>
>>>  static const struct rockchip_tsadc_chip rk3588_tsadc_data = {
>>>  
>>>  	/* top, big_core0, big_core1, little_core, center, gpu, npu */
>>>  	.chn_offset = 0,
>>>
>>> @@ -1342,6 +1380,10 @@ static const struct of_device_id
>>> of_rockchip_thermal_match[] = {> 
>>>  		.compatible = "rockchip,rk3568-tsadc",
>>>  		.data = (void *)&rk3568_tsadc_data,
>>>  	
>>>  	},
>>>
>>> +	{
>>> +		.compatible = "rockchip,rk3576-tsadc",
>>> +		.data = (void *)&rk3576_tsadc_data,
>>> +	},
>>>
>>>  	{
>>>  	
>>>  		.compatible = "rockchip,rk3588-tsadc",
>>>  		.data = (void *)&rk3588_tsadc_data,
> 
> 
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
