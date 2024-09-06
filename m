Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49277CE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luWl+QFS32kkAbwNUoHXXtplweQiymXKsqEn1lPmei0=; b=jjEiFCR4AKDg79
	NL4Dc4Vuhxx0pCBBVhBuzgWYqu0/PJ0Ug8nD3E7ZMwszEXPceo4ktrV9RaACID56dajJ8iXyuYCQT
	5ogPkTvL8NyzH7C26av8Fb2AfJWuOoZwPhqAt8pFbKUxS5KVnDzvI4A6UKrmUAyMY2uisEldsIc9x
	1MWsSK+gVhksLFNzV4GDLOgf424CcgVc23sxLoqTCoJGmzUzW9ooFVyEssVFH67RgXBYfECSG6FJx
	G3dLK44ErIwIZRq1BYQXeJrm2pH412Pac/bj+EXU+8gasNq8Hy17dmo9LBz1I6bQxBPvKQe0USg+u
	my74H6REP1CP19UeAPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWOA-0000000Bnvb-1UwR;
	Fri, 06 Sep 2024 10:40:26 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWMk-0000000BnN9-2wNm;
	Fri, 06 Sep 2024 10:39:00 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id B0B1F78A00;
	Fri,  6 Sep 2024 18:38:55 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn B0B1F78A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725619136;
	bh=8rF690V9mxP9B5MKXF/MRXog3KWCE9DsM6auRSLOXzk=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=FNFMKHyau1cg/FaXUCYgUv0fzbUE2FHQRJlL5jYLYwVzGyaJ2vRMQXyt61NzmpH8v
	 PCpi1+bahB9oEv0ktn1DEbTVKpfrumG60lLdvBjqbyRa3ptauqaQd4//b+cr/Ox1I4
	 vsMjjLL+oFDBXc1aPncIrFVsMZB4udQ3HeB2DL4o=
Message-ID: <f538ee4b-82ed-4ee1-b4e8-768a4500283e@classfun.cn>
Date: Fri, 6 Sep 2024 18:40:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] mfd: Add driver for Photonicat power management MCU
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-2-bigfoot@classfun.cn>
 <e4ee504b-98a8-4b35-9e1a-195395cdacf8@kernel.org>
Content-Language: en-US
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor Dooley,"
 <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>, Junhao Xie <bigfoot@classfun.cn>
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <e4ee504b-98a8-4b35-9e1a-195395cdacf8@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_033859_049438_8A961920 
X-CRM114-Status: GOOD (  17.47  )
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

On 2024/9/6 17:43, Krzysztof Kozlowski wrote:
> On 06/09/2024 11:36, Junhao Xie wrote:
>> Add a driver for Photonicat power management MCU, which
[...]>> +void *pcat_data_get_data(struct pcat_data *data)
>> +{
>> +	if (!data)
>> +		return NULL;
>> +	return data->data;
>> +}
>> +EXPORT_SYMBOL_GPL(pcat_data_get_data);
> 
> You need kerneldoc... or just drop it. Looks a bit useless as an
> export... Is it because you want to hide from your own driver pcat_data?
> What for? It's your driver...

Now struct pcat_data is in mfd-photonicat.c,
I will move it to photonicat-pmu.h and remove pcat_data_get_data.

> 
[...]
>> +void pcat_pmu_unregister_notify(struct pcat_pmu *pmu, struct notifier_block *nb)
> 
> You need kerneldoc.

I will add missing kernel documentation for all exported functions.

> 
[...]
>> +
>> +static const struct of_device_id pcat_pmu_dt_ids[] = {
>> +	{ .compatible = "ariaboard,photonicat-pmu", },
> 
> Undocumented compatible.
> 
> Remember about correct order of patches. ABI documentation is before users.
> 

I will adjust order of patches.

> 
[...]
>> +
>> +MODULE_ALIAS("platform:photonicat-pmu");
> 
> You should not need MODULE_ALIAS() in normal cases. If you need it,
> usually it means your device ID table is wrong (e.g. misses either
> entries or MODULE_DEVICE_TABLE()). MODULE_ALIAS() is not a substitute
> for incomplete ID table.
> 
> And it is not even correct. This is not a platform driver!
> 

Yes, I will remove MODULE_ALIAS line

> 
> Best regards,
> Krzysztof
> 

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
