Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45887CE7AA3
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 11:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nC2KVVcMfI2gtNybu4XJykRNsjJlsBghu/5VK0i3vN0=; b=A1Lj/bhve9lbrU
	9yu608b5BgXtwMAQxGNO3U4hAb2zOKBW5gGrcDrj6mIwp7YQWVMWISQ2PIpdCE8ZlKXNTvWu0dGnN
	u78mGIlVtpu/BC6M2tzBwLmCkidv7gl0F+8lYvfdh+N4lCX4njCJ/D+sfat65wQSu1Lo1TluLDQnz
	3S+8uj10d+KNuaLGFmTUpYL4qlWL5gRwEvoz1fA3ESRWo2hSELNWSG0R9H7xjGxBn+psUeaUn1arZ
	NPAPUEbZhi3FTIU3xcTLJYkaEOuzB6hiZ43YzZJmIgzMTTi4vInwlzrxZI93rPD9e4bvCClHXAzOU
	TFHWRIUOv2YRWrynNbwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smXYI-0000000C4NW-11Qm;
	Fri, 06 Sep 2024 11:54:58 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smXVa-0000000C3Zl-2vVS;
	Fri, 06 Sep 2024 11:52:12 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-206aee4073cso18375045ad.1;
        Fri, 06 Sep 2024 04:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725623529; x=1726228329; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=AbePJzZ4hGsbaWWD+/pwowfJhv2yPuQVjdwZ6CxA4rE=;
        b=eKfUffuzg5/1koysGrOk6FderwAM/imLWGzcrgwYmHUNfH/ol9iE3tkzPkk6I/3kFX
         NmKWE5e2QS1Ob/gju93GZ7PB1maGtSkSGAaYDAyi/6RLu5RO/Ut3f+uoci+uZefTQBqL
         NyNRuCZDMrSWPgTIXtOJ4WmxDI9meYCI/8VdLBy7Mbp8CwKQPg8LHi5R6QWMR4Yj0jIU
         fAD4HcubbRTEGvLDgMn9FMi1e2O8qqwg/+PBrJpLZwR/2RR58SrSYscwFRq5RHNNHHgV
         U+BBAVsGPMu+iyTs39UG9mk80h2UWZCQJ9wdDRulz3tarTDtoRyOecPq9rYiVBlvqfNX
         4FCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725623529; x=1726228329;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AbePJzZ4hGsbaWWD+/pwowfJhv2yPuQVjdwZ6CxA4rE=;
        b=SydXuM1zL37MknjEEwu3K4Cu1YNvNtcHeKtTByAtdFsoHQySAPS7YfJ+6751OE0IlL
         eKHuWbSs9xwwqxEdUmDiI7IOpSxcR/zTzssFj26qPrE0jtlHZSZdpbeiRl1yDnWkxrV/
         41Lka+ESOuI2XBNhQiZ0OUaDeOK0pvgI7Rk+OJ2uxCAMQ7Pibhq4om5YaPFmRma9vnBt
         GaSNZSZrY2/AkWib1XrEixpPcbUHZgKEMC4cflj9bgTwj1H0wR7tRFBJ4PqSEcctOVKf
         EHWyG/1kW+37rhS3GVoUtXxsckRPt1Czv9R9rVpc+3LzBzn87aqQZFvhZTYSHy6xj8ku
         tRFA==
X-Forwarded-Encrypted: i=1; AJvYcCVUS0bm5KpimBEKcmuIv0C5GH7bSnTtmFvI3BenFQhsLe9K3NDPXgCgfkO80Yns7tRGdgt652DFaXqiIc6/v84=@lists.infradead.org, AJvYcCXJNInL8BlIRm3osZXCPOz7DcXLh8lPR99/Ni4KW5JLK0460ntmB41+blC9WKjZ4swS47a/TLxjVdx7MQf1L9TG@lists.infradead.org
X-Gm-Message-State: AOJu0YzF1YFZL8HvKgKiTGp2vdg5Ujurok81C13jkTBkMUSLlgowa7E1
	xsVdfsOd3S5DjrcYLqoYl+VBY6tF9/d1H36wgD1LWRaM6izLJO0RcKeqdw==
X-Google-Smtp-Source: AGHT+IH2ACJaY497j/cAt58YuWZEVIFDwipHir1KSNdb3rlbkQHRrJGC/0C5GCJko/BHyw7CX/ljVg==
X-Received: by 2002:a17:902:f610:b0:205:eec:5755 with SMTP id d9443c01a7336-206f0526051mr33079225ad.23.1725623528999;
        Fri, 06 Sep 2024 04:52:08 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea37f1dsm41834555ad.125.2024.09.06.04.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 04:52:08 -0700 (PDT)
Message-ID: <8e2cecbe-aa48-4e84-93cc-8c028c5e649e@roeck-us.net>
Date: Fri, 6 Sep 2024 04:52:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] watchdog: Add Photonicat PMU watchdog driver
To: Junhao Xie <bigfoot@classfun.cn>, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-4-bigfoot@classfun.cn>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20240906093630.2428329-4-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_045210_908068_9E70054B 
X-CRM114-Status: GOOD (  32.84  )
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

On 9/6/24 02:36, Junhao Xie wrote:
> This driver provides access to Photonicat PMU watchdog functionality.
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
> ---
>   drivers/watchdog/Kconfig          |  12 +++
>   drivers/watchdog/Makefile         |   1 +
>   drivers/watchdog/photonicat-wdt.c | 124 ++++++++++++++++++++++++++++++
>   3 files changed, 137 insertions(+)
>   create mode 100644 drivers/watchdog/photonicat-wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index bae1d97cce89..4094216a1c09 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -300,6 +300,18 @@ config MENZ069_WATCHDOG
>   	  This driver can also be built as a module. If so the module
>   	  will be called menz069_wdt.
>   
> +config PHOTONICAT_PMU_WDT
> +	tristate "Photonicat PMU Watchdog"
> +	depends on MFD_PHOTONICAT_PMU
> +	select WATCHDOG_CORE
> +	help
> +	  This driver provides access to Photonicat PMU watchdog functionality.
> +
> +	  Say Y here to include support for the Photonicat PMU Watchdog.
> +
> +	  This driver can also be built as a module. If so the module
> +	  will be called photonicat-wdt.
> +
>   config WDAT_WDT
>   	tristate "ACPI Watchdog Action Table (WDAT)"
>   	depends on ACPI
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index b51030f035a6..14375af84039 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -234,6 +234,7 @@ obj-$(CONFIG_ZIIRAVE_WATCHDOG) += ziirave_wdt.o
>   obj-$(CONFIG_SOFT_WATCHDOG) += softdog.o
>   obj-$(CONFIG_MENF21BMC_WATCHDOG) += menf21bmc_wdt.o
>   obj-$(CONFIG_MENZ069_WATCHDOG) += menz69_wdt.o
> +obj-$(CONFIG_PHOTONICAT_PMU_WDT) += photonicat-wdt.o
>   obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
>   obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
>   obj-$(CONFIG_SL28CPLD_WATCHDOG) += sl28cpld_wdt.o
> diff --git a/drivers/watchdog/photonicat-wdt.c b/drivers/watchdog/photonicat-wdt.c
> new file mode 100644
> index 000000000000..1e758fcfb49f
> --- /dev/null
> +++ b/drivers/watchdog/photonicat-wdt.c
> @@ -0,0 +1,124 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
> + */
> +
> +#include <linux/mfd/photonicat-pmu.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/watchdog.h>
> +
> +struct pcat_watchdog {
> +	struct device *dev;

I don't see what this is used for.

> +	struct pcat_pmu *pmu;
> +	struct watchdog_device wdd;
> +	u8 timeout;
> +	bool started;
> +};
> +
> +static const struct watchdog_info pcat_wdt_info = {
> +	.options = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING | WDIOF_MAGICCLOSE,
> +	.identity = "Photonicat PMU Watchdog",
> +};
> +
> +static int pcat_wdt_setup(struct pcat_watchdog *data, int timeout)
> +{
> +	int ret;
> +	u8 time = 0;

Unnecessary initialization.

> +	u8 times[3] = { 60, 60, 0 };
> +
> +	time = MIN(255, MAX(0, timeout));
> +
> +	ret = pcat_pmu_write_data(data->pmu, PCAT_CMD_WATCHDOG_TIMEOUT_SET,
> +				  times, sizeof(times));

Where does this actually send the timeout to the chip ?

> +	if (!ret)
> +		data->started = timeout != 0;
> +
> +	return ret;
> +}
> +
> +static int pcat_wdt_start(struct watchdog_device *wdev)
> +{
> +	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
> +
> +	return pcat_wdt_setup(data, data->timeout);
> +}
> +
> +static int pcat_wdt_stop(struct watchdog_device *wdev)
> +{
> +	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
> +
> +	return pcat_wdt_setup(data, 0);
> +}
> +
> +static int pcat_wdt_ping(struct watchdog_device *wdev)
> +{
> +	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
> +
> +	return pcat_pmu_send(data->pmu, PCAT_CMD_HEARTBEAT, NULL, 0);
> +}
> +
> +static int pcat_wdt_set_timeout(struct watchdog_device *wdev, unsigned int val)
> +{
> +	int ret = 0;
> +	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
> +
> +	data->timeout = val;

This needs to store 'timeout' in wdev. Storing it locally is unnecessary.

> +	if (data->started)
> +		ret = pcat_wdt_setup(data, data->timeout);

This is misleading because it would permit setting the timeout to
0 when the watchdog isn't running, and then when the watchdog is started
it would not really start it. The code should not use a local "started"
variable but call watchdog_active(). It should also not accept "0"
as a valid timeout.

> +
> +	return ret;
> +}
> +
> +static const struct watchdog_ops pcat_wdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = pcat_wdt_start,
> +	.stop = pcat_wdt_stop,
> +	.ping = pcat_wdt_ping,
> +	.set_timeout = pcat_wdt_set_timeout,
> +};
> +
> +static int pcat_watchdog_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct pcat_watchdog *watchdog;
> +
> +	watchdog = devm_kzalloc(dev, sizeof(*watchdog), GFP_KERNEL);
> +	if (!watchdog)
> +		return -ENOMEM;
> +
> +	watchdog->dev = dev;
> +	watchdog->pmu = dev_get_drvdata(dev->parent);
> +	watchdog->wdd.info = &pcat_wdt_info;
> +	watchdog->wdd.ops = &pcat_wdt_ops;
> +	watchdog->wdd.timeout = 60;
> +	watchdog->wdd.max_timeout = U8_MAX;
> +	watchdog->wdd.min_timeout = 0;

This effectively lets the user ... kind of ... stop the watchdog
by setting the timeout to 0. This is not acceptable.

> +	watchdog->wdd.parent = dev;
> +
> +	watchdog_stop_on_reboot(&watchdog->wdd);
> +	watchdog_set_drvdata(&watchdog->wdd, watchdog);
> +	platform_set_drvdata(pdev, watchdog);
> +
No watchdog_init_timeout() ?

> +	return devm_watchdog_register_device(dev, &watchdog->wdd);
> +}
> +
> +static const struct of_device_id pcat_watchdog_dt_ids[] = {
> +	{ .compatible = "ariaboard,photonicat-pmu-watchdog", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, pcat_watchdog_dt_ids);
> +
> +static struct platform_driver pcat_watchdog_driver = {
> +	.driver = {
> +		.name = "photonicat-watchdog",
> +		.of_match_table = pcat_watchdog_dt_ids,
> +	},
> +	.probe = pcat_watchdog_probe,
> +};
> +module_platform_driver(pcat_watchdog_driver);
> +
> +MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
> +MODULE_DESCRIPTION("Photonicat PMU watchdog");
> +MODULE_LICENSE("GPL");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
