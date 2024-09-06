Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18223CE7B1A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 13:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOeY0H2vdUF176XKwGzNTWatAGZ0nVWwmImi9tlFtsA=; b=gZnOf4hFn99ESN
	Ns2/pNdHUHu9R8nC1MVVPf98SWaoFw3hca1zYOXJIgrECtWXI4Yh8UdoRrTap442p4DRw5l7BVl/4
	rALChgO3dV30xzfs+f5Wi6o/7NJMxDG5FEcQNw4f9aCecgcWJi5bVKA9QsaPLlY1HO8wuEd+dUwwH
	KiatX3J3LW3xFd/OBWkSWPN54+Gl6uX1QTBpqY+15IbC93FQhFPlGHaHtV7GDlCkGYPM8ql1qJSIK
	Et4TQdiMJdpV3lAoTcxMFMFmvW/u+gkA667X4+QJRbiPlF3kg+fMIkKBTHrnde+62rpkp+7CgE75w
	RQc0GrKL+bQMYHjyFEqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZRK-0000000CQhd-0IcH;
	Fri, 06 Sep 2024 13:55:54 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZQI-0000000CQPR-34Um;
	Fri, 06 Sep 2024 13:54:52 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id EFF35789F3;
	Fri,  6 Sep 2024 21:54:45 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn EFF35789F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725630887;
	bh=wOZLoc1VDKIe8bHEaqWxsCpDohRt7GpQMLR8FChOFow=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=oFbfivdU+ElB44kvOY6XvYwCFSDnQNjpRzm2FrujSuqG6ussWcxw5uhFcUFEaKuLR
	 caSzTX9D8F6qgZfXAYDJt1iUdiSjIom4SDFREXOGu50ZLm4gwNf1PT1Pzrn9btM5yt
	 miy2/8z6PcYDo72ELgtkFoqo2pVMcWu9y6rJRGAo=
Message-ID: <c1312339-60be-4625-a33d-c558ad529aaf@classfun.cn>
Date: Fri, 6 Sep 2024 21:56:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] arm64: dts: rockchip: add Photonicat PMU support for
 Ariaboard Photonicat
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-10-bigfoot@classfun.cn>
 <5c8b066c-6e61-44c1-b99d-4ae1a2313033@kernel.org>
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
In-Reply-To: <5c8b066c-6e61-44c1-b99d-4ae1a2313033@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_065450_974987_D811409D 
X-CRM114-Status: GOOD (  10.82  )
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

On 2024/9/6 17:53, Krzysztof Kozlowski wrote:
> On 06/09/2024 11:36, Junhao Xie wrote:
>> This commit adds support for Photonicat power management MCU on
>> Ariaboard Photonicat.
>>
[...]
>> +
>> +		pcat_pmu_battery: supply-battery {
> 
> Drop unused labels. Everywhere. You are not making the code more readable.

I will remove them.

> 
>> +			compatible = "ariaboard,photonicat-pmu-supply";
>> +			label = "battery";
>> +			monitored-battery = <&battery>;
>> +			power-supplies = <&pcat_pmu_charger>;
> 
> Why do you reference internal design of the device as DTS? You cannot
> have here other power supply, can you?

I mistakenly thought power_supply_am_i_supplied() required power-supplies
property, it actually does not, I will remove it.

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
