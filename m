Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F6C1CE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wjhv8pWVvZtw0GW/5ZLXul4tfHPR3YLRDFc+0+1M9SE=; b=QRz46oc0UOwM9b
	cfT611jkFa5tZ2YU72B7otAsI6B2Ph+qsh9/pemZAg7xKrK3SAgbqT5IOgHo/lyvtU0t3SouYXsWO
	UYBhGi8qWxvsozfZH1OaK8VfXmb//ZcjCNEBrAlHA7YUHYGOGAdIU48xPPR9+c0tb52aKVXLfdLsG
	qCCrqjqJZN8BU0DG/bQiOOtrqkuOXBB6aiJyG8WuVADcIBGNkLESqy6RSSe+t/8jaSqbfyjpng9fg
	XnwP5Oe3/7tRtYHpCCQbCXZg5buo3M75oUFzFAij7z/vsdnQX5ljXwMrrqfjQwt7h8jIl/xECc9ih
	O2SX0QPjQiap8NIRSswQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smW28-0000000BiKr-49Ao;
	Fri, 06 Sep 2024 10:17:40 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVod-0000000BfOo-1U5I;
	Fri, 06 Sep 2024 10:03:44 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 5FBBF78A00;
	Fri,  6 Sep 2024 18:03:40 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 5FBBF78A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725617021;
	bh=RXgSAcGpbpRjtg/Lu9qBHYbFOwSMuMouT1SYO/BDTjI=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=WE6SXh89M0C/7VzQvzLylEBoKSv8L/syI05FX+mrzecU9n6k/2IGOR2Wz74saikIL
	 /GUGTKldD7t+jit+ZoyJ4BLBVb9wqQ0pTYrMABy/r6cfLe9P+wzNn0BhvgKmQK1uaD
	 8ukgXMphkxcRJyalVtMXEnLKbOmWTCdh397Ev9TY=
Message-ID: <02c2c7cc-df70-4e97-b4f1-2f160039403f@classfun.cn>
Date: Fri, 6 Sep 2024 18:05:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] power: reset: add Photonicat PMU poweroff driver
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-3-bigfoot@classfun.cn>
 <90a5b41b-84cd-4daa-b102-04a29c2cd46b@kernel.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
In-Reply-To: <90a5b41b-84cd-4daa-b102-04a29c2cd46b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_030343_606721_9A1A7295 
X-CRM114-Status: GOOD (  12.55  )
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

On 2024/9/6 17:44, Krzysztof Kozlowski wrote:
> On 06/09/2024 11:36, Junhao Xie wrote:
>> This driver implements the shutdown function of Photonicat PMU:
>>
[...]
>>  
>> +config POWER_RESET_PHOTONICAT_POWEROFF
>> +	tristate "Photonicat PMU power-off driver"
>> +	depends on MFD_PHOTONICAT_PMU
> 
> || COMPILE_TEST, no?

I will add it
depends on MFD_PHOTONICAT_PMU || COMPILE_TEST

> 
>> +	help
>> +	  This driver supports Power off for Photonicat PMU device.
[...]
>> +
>> +static int pcat_poweroff_notify(struct notifier_block *nb, unsigned long action,
>> +				void *data)
>> +{
>> +	struct pcat_poweroff *poweroff =
>> +		container_of(nb, struct pcat_poweroff, nb);
>> +
>> +	if (action != PCAT_CMD_PMU_REQUEST_SHUTDOWN)
>> +		return NOTIFY_DONE;
>> +
>> +	dev_info(poweroff->dev, "PMU request host shutdown\n");
> 
> Nope. Drop.

I will remove this log print.
The PMU will send a shutdown command when the power button is long pressed
or the battery is low. I added this line of log to indicate the shutdown command
initiated by the PMU so that users will not be confused by the sudden shutdown.

> 
>> +	orderly_poweroff(true);
>> +
>> +	return NOTIFY_DONE;
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
