Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC783C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 16:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ye9ivO19O4XDGT81VsZfo3wwqUQaFLxzIkbq0Tc+ZZU=; b=lLrNpGMzBOE64h
	jQkif4trf8FtarGqgjNwGDIk6iD67QI2lHkLk/k/JWP3RG0Q2jaLu+5nVzQu/mXNvwyUln9uBgXWu
	fua4QSiZMlEOh83/ck8Tz0mpnw0HtaOlOpEhQnPx6jm+wyCieHXkDg8xBNnIT3g82pM0v5CivYkh/
	VwGHpsPWMJ2HblIT3Gow76AFMwGns8DqiUOvhuQZTe8veh0+duD4NkG6pCaOoiHTL7BVVT5cQf5Dt
	hRpgmNTF+Z0Z+VpGeXaHMKm7XkD1tH8SkxbIOopIuw+CvnzJBCnqGqk8PBZMONzAAHnfDAMBs9W7Q
	LtrGxQFH95w2y/dUabKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9qgj-004ZWv-AF; Fri, 08 Jul 2022 16:18:41 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9qgW-004ZR1-HC; Fri, 08 Jul 2022 16:18:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FDB7106F;
	Fri,  8 Jul 2022 09:18:23 -0700 (PDT)
Received: from [10.57.86.102] (unknown [10.57.86.102])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2FDB3F66F;
	Fri,  8 Jul 2022 09:18:20 -0700 (PDT)
Message-ID: <5611d1c5-44db-4144-3c46-256323d39fe3@arm.com>
Date: Fri, 8 Jul 2022 17:17:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] rtc: hym8563: try multiple times to init device
Content-Language: en-GB
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
References: <20220608161150.58919-1-linux@fw-web.de>
 <20220608161150.58919-2-linux@fw-web.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220608161150.58919-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_091828_650590_751C59BC 
X-CRM114-Status: GOOD (  20.52  )
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

On 2022-06-08 17:11, Frank Wunderlich wrote:
> From: Peter Geis <pgwipeout@gmail.com>
> 
> RTC sometimes does not respond the first time in init.
> Try multiple times to get a response.

FWIW, given that HYM8563 is fairly common on RK3288 boards - I can't say 
I've ever noticed an issue with mine, for instance - it seems dubious 
that this would be a general issue of the chip itself. Are you sure it's 
not a SoC or board-level issue with the I2C bus being in a funny initial 
state, timings being marginal, or suchlike?

Robin.

> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>   drivers/rtc/rtc-hym8563.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-hym8563.c b/drivers/rtc/rtc-hym8563.c
> index 90e602e99d03..9adcedaa4613 100644
> --- a/drivers/rtc/rtc-hym8563.c
> +++ b/drivers/rtc/rtc-hym8563.c
> @@ -13,6 +13,7 @@
>   #include <linux/clk-provider.h>
>   #include <linux/i2c.h>
>   #include <linux/bcd.h>
> +#include <linux/delay.h>
>   #include <linux/rtc.h>
>   
>   #define HYM8563_CTL1		0x00
> @@ -438,10 +439,16 @@ static irqreturn_t hym8563_irq(int irq, void *dev_id)
>   
>   static int hym8563_init_device(struct i2c_client *client)
>   {
> -	int ret;
> +	int ret, i;
>   
>   	/* Clear stop flag if present */
> -	ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
> +	for (i = 0; i < 3; i++) {
> +		ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
> +		if (ret == 0)
> +			break;
> +		msleep(20);
> +	}
> +
>   	if (ret < 0)
>   		return ret;
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
