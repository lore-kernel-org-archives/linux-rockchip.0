Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A2FCED263
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 03:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TksvCq90SKBUfX/Ca+gy0VMOuIgYujKwOsxVn4GU8X8=; b=ExB5fkYyOWE6U4
	EdQ6v1qjNiBYxr7lEQhqKdVhs85ioF2/xR95zIa6SOq9Z+0MPEp5TjyEB2sL7kWkQOmkEvLvHXmJh
	QDbWwHqtgZudjKvrusrl6RZ4odnpRMK0RM7a5qDGpDFbI+qot2HeVb6eyESfdK9PSfHquGrUenoQW
	jEByg0Fk6IGtjH7dIBRTcTJr26ExIg9cr3+Q9ClfuiioyP0mygKKRmYQoPYaTfumGxVlyfO9rq120
	r5qLPWsLhqDFFDgZ/smdqd6pkjO1ynqOPjf3wLznvq5TyggEccai2WDWtdcdZxkDPoatS5Fs5oevy
	m+rjVat/1Spcthl8Njnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy0aT-00000004N5C-11Qk;
	Tue, 08 Oct 2024 03:08:37 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy0Z9-00000004Mx3-1JeH;
	Tue, 08 Oct 2024 03:07:16 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2e13718283bso585219a91.3;
        Mon, 07 Oct 2024 20:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728356834; x=1728961634; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iUEZcciJrrtCxrQ9GRGdW8hIdm0bQGx8cBqztK/kqVE=;
        b=hamaoE02MvNgknbk4ke42XssFWY6qFhlSVYERxR/z1wDTvKu2jz89uRSBzvitjfGHQ
         Ym4tc9EvFv7682CR+Whw+EM/mgUXtCP0Q59NoNqwmHAkKTTmG1UZErIittyLzrwmiGeP
         oBjB998VL33aXwFsEZinVgX8wxAVIxNqI7ZB+3O/7Cyv1Y6LVGSz/+NKHTGigIv6FpSF
         +2+Psz5ulWhTktBjbXbFWCJ7JY7u18hN1wJoV5SeF1rWAh9VX5i9Bh2fkPf0oWhcFAIc
         B+VrDbP15yJVveGdTxDSp8+KWW1TL+DeHr8rVbpnltLmHE68SEJ8pnay5ntXf1P0y+fL
         qY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728356834; x=1728961634;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iUEZcciJrrtCxrQ9GRGdW8hIdm0bQGx8cBqztK/kqVE=;
        b=W0ZSZgRZ2ZovaUO1GUkC/Ane4/MC6J9DQgPPMNKvJ6iwxMXzgKwLXbDh/UOK8gaXQl
         D4LeZcCIyBKm06+FYA+wEr+WvkcZAfZY8z7CuI7pXcWekuPYxuRQoMDEOTofxfUK4wh/
         iIoC2lkMO1WzPptO+YlUTGz6hDVHcfAxxJZ4Dj7hf2ueiFlJowmut9mw4g37NkwZ+icb
         cCNiS/bezm0l7r4lgTvsJmhaXx+DuB2Z6OSH+ojuP4uOGLYIG7ii7zls4mlDL+4L3kfG
         NGFv5AtNy/rdzpWkEV8nzldB12Tj+JuI/kdGhNagjpipoK73SJCVmli/EE4yLSzKTVmx
         ovWw==
X-Forwarded-Encrypted: i=1; AJvYcCV1RrEnQdZgAXeDn5q0jrdqxIIIaBZwJ0Ga8iDuE/i57mrArAtrO56Bl45nffcq8KYEuSpUqSgwZTDE1oLuQnmi@lists.infradead.org, AJvYcCVbt2OVx8E8hkPVETQlcvgVfNJhZCe0601K38A1MLi1SZS3HylA9A3MwAR0IByLwszHnOSdwaKSssNn5ba9yEg=@lists.infradead.org, AJvYcCVgjwDRy8id8VDuFGmrkBAAMTfzXGNMEJMVF8uhJvUeeLyx9VoRApuFEP7YdebVLN1NS2Yavv+fmPJ6@lists.infradead.org
X-Gm-Message-State: AOJu0YydIvJf2D7k0VzbmCcC787qmy7clHFSMXXmoeR8qFzi76bcuEuA
	zTcVF6m4njXvMvO7y8ue90/AGFzw3O93eZRw/YRCvP3PHGbRQFm8
X-Google-Smtp-Source: AGHT+IHI3PrHh1lJM0vzHu+NddQsCN10C7/Uq91IKP/BCHMuma6y//FuC0alSdAYUJMdSIanFBdlPw==
X-Received: by 2002:a17:90a:d083:b0:2db:60b:9be5 with SMTP id 98e67ed59e1d1-2e1e63b35f2mr6898844a91.8.1728356834284;
        Mon, 07 Oct 2024 20:07:14 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e866583esm8018015a91.37.2024.10.07.20.07.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 20:07:13 -0700 (PDT)
Message-ID: <13fe91e1-2471-4a59-9581-628ce7773fdc@gmail.com>
Date: Tue, 8 Oct 2024 11:07:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] phy: rockchip: inno-usb2: convert clock management
 to bulk
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240929061025.3704-1-frawang.cn@gmail.com>
 <jx55slsincpzq6mugfsyc6qpbku2555azj7lithwggo733ggnb@rkqsxpsyoaw7>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <jx55slsincpzq6mugfsyc6qpbku2555azj7lithwggo733ggnb@rkqsxpsyoaw7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_200715_393464_F1EE5E73 
X-CRM114-Status: GOOD (  23.34  )
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

Hi Krzysztof,
On 2024/9/30 3:38, Krzysztof Kozlowski wrote:
> On Sun, Sep 29, 2024 at 02:10:23PM +0800, Frank Wang wrote:
>> From: Frank Wang <frank.wang@rock-chips.com>
>>
>> Since some Rockchip SoCs (e.g RK3576) have more than one clock,
>> this converts the clock management from single to bulk method to
>> make the driver more flexible.
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>> Changelog:
>> v4:
>>   - a new patch split from the [PATCH v3 2/2], suggestions from Heiko.
>>
>> v1-v3:
>>   - none
>>
>>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 43 ++++++++++++++++---
>>   1 file changed, 36 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> index 4f71373ae6e1..ad3e65dc6aa4 100644
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
>> @@ -310,6 +312,13 @@ static int rockchip_usb2phy_reset(struct rockchip_usb2phy *rphy)
>>   	return 0;
>>   }
>>   
>> +static void rockchip_usb2phy_clk_bulk_disable(void *data)
>> +{
>> +	struct rockchip_usb2phy *rphy = data;
>> +
>> +	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
>> +}
>> +
>>   static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
>>   {
>>   	struct rockchip_usb2phy *rphy =
>> @@ -376,7 +385,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>>   {
>>   	struct device_node *node = rphy->dev->of_node;
>>   	struct clk_init_data init;
>> +	struct clk *refclk = NULL;
>>   	const char *clk_name;
>> +	int i;
>>   	int ret = 0;
>>   
>>   	init.flags = 0;
>> @@ -386,8 +397,15 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
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
>> @@ -1406,18 +1424,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>>   	if (IS_ERR(rphy->phy_reset))
>>   		return PTR_ERR(rphy->phy_reset);
>>   
>> -	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
>> -	if (IS_ERR(rphy->clk)) {
>> -		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
>> +	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
>> +	if (ret == -EPROBE_DEFER) {
> This does not make much sense. Why would you proceed on other critical
> errors?
>
> You want to use optional variant, I guess?

Yes, the clock properties are optional.


Best regards,
Frank

> Best regards,
> Krzysztof
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
