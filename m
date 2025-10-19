Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D00CCD183
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 14:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sgys/NIiZS2fAZ0MwrtSBAsMmqcTB5xLj2DMU7/jkuY=; b=WGLOv2V/HA6rlM
	3LUgx+Kctab15E0q8lyBZrFqQt2nQN1uhYZOUtfb8mtVOC46lZXJyJhsTjmdzYvGZ6DaVcazWW7G2
	rFelZNOOxg8C9pXllV6JVOvV9BZ+/KNHmgsLKPj9bT0Kbunt5Vm8Qzg02j2SovyhDS847/y3N1YN3
	LY9Hch2FWe6c4MpMw0LyhPkCdlA8+cWbbu0R7h9keBcXuT7CDb4RCHnpcqQ9JsGM1Y8Aj9hhUd87A
	+RIckZFuwKONQxpJKX7G1wKjVyEpctRmPSD9B7W+hZsgpBKat8iPX0wlH4BD5cuQeXMQvxtiUevmI
	QOdl7KugFViohWw0EIxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAUdu-0000000B6S6-0Cct;
	Sun, 19 Oct 2025 14:44:18 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAUdr-0000000B6Qh-1F5C
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Oct 2025 14:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1760885052;
 bh=qSqIvRJaVaOD2FEuoL8TgkWRa8SKjL48NnFIM4Gn36w=;
 b=wh250url/t2+Fx6GI6ngoAeJQmzvE3QbSpY5ERt+UyL2X82Lm0SdK+tyngIog4KFg+u96T8JF
 0uCEMigSM9ITmzGzHbXfHt2jLW06FLgBMv8pYKq/l6OxMOtNcXVrSmRAAKNrN5IekhJ3LRXcwVv
 Jt0idl32kdI6QQ5a0ls/dWjd2o39DPD+xm7eW7MMOiqY/SXccsZy9mPq/RuEyT/3qlVPCOuHX9w
 7c0OLB/+FFFjcTguuVtIKMwiAMDQ1V6qEZ1r+YoAa49tvjeK0agqe62LTEbJe9yihSHK4iAeMWf
 FhgSxDcU4SlOtvgBphw4dLXjSzezqwLg+JUP0243T2LQ==
X-Forward-Email-ID: 68f4f9393ada90b94ba980e5
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.3.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <ff1765b0-ad78-4bdb-94fa-c58456358781@kwiboo.se>
Date: Sun, 19 Oct 2025 16:44:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] phy: rockchip: inno-usb2: Add support for RK3528
To: Vinod Koul <vkoul@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianwei Zheng <jianwei.zheng@rock-chips.com>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
 <20250723122323.2344916-6-jonas@kwiboo.se> <aJtip49r8R3-2XXi@vaman>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <aJtip49r8R3-2XXi@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_074415_420259_C60412AE 
X-CRM114-Status: GOOD (  19.72  )
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

Hi Vinod,

On 8/12/2025 5:49 PM, Vinod Koul wrote:
> On 23-07-25, 12:23, Jonas Karlman wrote:
>> From: Jianwei Zheng <jianwei.zheng@rock-chips.com>
> 
> Please do not send encrypted emails over public mail lists
> 
>>
>> The RK3528 has a single USB2PHY with a otg and host port.
>>
>> Add support for the RK3528 variant of USB2PHY.
>>
>> PHY tuning for RK3528:
>>
>> - Turn off differential receiver in suspend mode to save power
>>   consumption.
>>
>> - Set HS eye-height to 400mV instead of default 450mV.
>>
>> - Choose the Tx fs/ls data as linestate from TX driver for otg port
>>   which uses dwc3 controller to improve fs/ls devices compatibility with
>>   long cables.
>>
>> This is based on vendor kernel linux-stan-6.1-rkr5 tag.
>>
>> Signed-off-by: Jianwei Zheng <jianwei.zheng@rock-chips.com>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 74 +++++++++++++++++++
>>  1 file changed, 74 insertions(+)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> index cd1a02b990ef..b8950d9f9e97 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> @@ -1507,6 +1507,28 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>>  				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
>>  }
>>  
>> +static int rk3528_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>> +{
>> +	int ret = 0;
> 
> Superfluous init

I would think it make it much clearer to init to zero because we are
bitwise OR return values from the following calls.

> 
>> +
>> +	/* Turn off otg port differential receiver in suspend mode */
>> +	ret |= regmap_write(rphy->phy_base, 0x30, BIT(18) | 0x0000);
>> +
>> +	/* Turn off host port differential receiver in suspend mode */
>> +	ret |= regmap_write(rphy->phy_base, 0x430, BIT(18) | 0x0000);
>> +
>> +	/* Set otg port HS eye height to 400mv (default is 450mv) */
>> +	ret |= regmap_write(rphy->phy_base, 0x30, GENMASK(22, 20) | 0x0000);
>> +
>> +	/* Set host port HS eye height to 400mv (default is 450mv) */
>> +	ret |= regmap_write(rphy->phy_base, 0x430, GENMASK(22, 20) | 0x0000);
>> +
>> +	/* Choose the Tx fs/ls data as linestate from TX driver for otg port */
>> +	ret |= regmap_write(rphy->phy_base, 0x94, GENMASK(22, 19) | 0x0018);
> 
> No error checking?

Error checking is happening in the function calling this internal ops.

Similar to the other tuning ops in this driver it does not matter
exactly what fails, the use of |= is there to help simplify the function
and for the caller to just error out if any of the write fails.

I will shortly send a v2 without changing anything in this patch.

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
