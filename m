Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF926C71157
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 01:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYpWoo0gH+x6FDXsk9qKd/CjQUgW6fT9zKjJX+2oqcU=; b=gapWxMBt5t5Ljl
	OCrl10atyCl3oZfHSJK+PlkuHtlb4SGGxtSHSpDrKHO3uIMEai+TapPiK1g2ghVqYVvPMoloCjAYs
	02E8iq6kEOwyyirgTSJv3OYC/CoXD+6e01LM40gTYORkBF8U8PQkpRtdfZsK2IS5Md7fQZ6+UnY6M
	jrYOX3cRnGacs6RGy8TxHZd7gqJgeWcqct6aQyDDYJOr+v/V5IX+ms49DZj9l4wAH1MDGrQ70wJof
	/+lCoh1R+zBejnHTDMyqYkuMdOI17i8k1m7qsUJSsncuUmZTwBh9zp0GpLS+YFkEh/A9MXIrqIZ/e
	x0KrB7OMDH5w8BmeQvsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uS3mp-0000000Bhga-0d6T;
	Thu, 19 Jun 2025 01:09:51 +0000
Received: from out30-100.freemail.mail.aliyun.com ([115.124.30.100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uS3kZ-0000000BhMN-2vN1;
	Thu, 19 Jun 2025 01:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1750295245; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=AHKGW4H7LN/JdA90Hf//Jy9UM44rzmLKYv/T1BIQf3A=;
	b=iyFWQYdf42eDcQSAGmoiJ6NjUW0lY7j0oJoRjhaMvTe5GvCf9A8F8xiirmpI9+3vWBWjU8E0LUe0EPw6mE7zxb18tqKBMoPnA71FHEBaOt/QdnvZhmvYdFp0vAYys7nrdZ6RG+10zeM2yb3hDIsZqxzHasQWjI0MI/wvik+sXX0=
Received: from 30.74.144.119(mailfrom:baolin.wang@linux.alibaba.com fp:SMTPD_---0WeFD6QU_1750295241 cluster:ay36)
          by smtp.aliyun-inc.com;
          Thu, 19 Jun 2025 09:07:21 +0800
Message-ID: <fd838615-d550-4e3a-9b4c-616a977fa410@linux.alibaba.com>
Date: Thu, 19 Jun 2025 09:07:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/12] gpio: pmic-eic-sprd: drop unneeded .set() callback
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org>
 <20250617-gpiochip-set-rv-gpio-v1-5-903703881fa2@linaro.org>
From: Baolin Wang <baolin.wang@linux.alibaba.com>
In-Reply-To: <20250617-gpiochip-set-rv-gpio-v1-5-903703881fa2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_180732_364131_50846FB5 
X-CRM114-Status: GOOD (  13.52  )
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



On 2025/6/17 20:24, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> The lines on this chip are input-only. GPIO core can handle the missing
> .set() callback so there's no need to implement a dummy here. Drop it.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Thanks.
Reviewed-by: Baolin Wang <baolin.wang@linux.alibaba.com>

> ---
>   drivers/gpio/gpio-pmic-eic-sprd.c | 7 -------
>   1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-pmic-eic-sprd.c b/drivers/gpio/gpio-pmic-eic-sprd.c
> index d9b228bea42eec53ba9d0d0945125f530a22946c..cb015fb5c9467484022723910354219e2c98d3c7 100644
> --- a/drivers/gpio/gpio-pmic-eic-sprd.c
> +++ b/drivers/gpio/gpio-pmic-eic-sprd.c
> @@ -109,12 +109,6 @@ static int sprd_pmic_eic_direction_input(struct gpio_chip *chip,
>   	return 0;
>   }
>   
> -static void sprd_pmic_eic_set(struct gpio_chip *chip, unsigned int offset,
> -			      int value)
> -{
> -	/* EICs are always input, nothing need to do here. */
> -}
> -
>   static int sprd_pmic_eic_set_debounce(struct gpio_chip *chip,
>   				      unsigned int offset,
>   				      unsigned int debounce)
> @@ -351,7 +345,6 @@ static int sprd_pmic_eic_probe(struct platform_device *pdev)
>   	pmic_eic->chip.request = sprd_pmic_eic_request;
>   	pmic_eic->chip.free = sprd_pmic_eic_free;
>   	pmic_eic->chip.set_config = sprd_pmic_eic_set_config;
> -	pmic_eic->chip.set = sprd_pmic_eic_set;
>   	pmic_eic->chip.get = sprd_pmic_eic_get;
>   	pmic_eic->chip.can_sleep = true;
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
