Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 001B4C02191
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 11:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTw9EVCqUanC2bVb19kXqicRkJYYwAJhPFaGAaB1pGs=; b=a+a8eIOWKkyz54
	mbrAxmYvgLxl+yIf+KL62kQag5kjQsdCXeiseQZyr6Jrx3b8e21W32uInFrgI9V3mIACAh3FO670n
	BmiNRyvNM4R7Q19EATE5adhnmdfgsg+n1AoM6nGxBuCYe5sOck5RyGrAg5kUt0rffU1Wg0Lcm3HX9
	+XXonecoThi2SPYjomeubz4QE9yWT660hA49y63ZRCgX6K/vAvWkHz7ulsg6Blpima/G1+UafGo2E
	Wze1iHN6VEjNKSxdQr0JWQahT8l5FRWDOlIYVuf3TG4B3ERrytsMAVJRyOLy3vDIat6vuFBYudSWv
	lU82bhsaBbLrceLeCtKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spQqy-00000000ayv-2hzD;
	Sat, 14 Sep 2024 11:22:12 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spQpr-00000000aqU-4AD0;
	Sat, 14 Sep 2024 11:21:07 +0000
X-QQ-mid: bizesmtpsz7t1726312842t8wcg69
X-QQ-Originating-IP: SOLrjz+HwFUP3pt84UGTG+9SZb7SAJ5qXRN8euUzMpw=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 14 Sep 2024 19:20:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2777605266862131744
Message-ID: <46A8525FAB17E4F4+92686d5e-1de3-40c6-9767-ba9f7fedd984@radxa.com>
Date: Sat, 14 Sep 2024 20:20:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card
 detect
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, Jaehoon Chung
 <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_042104_411534_3A28C759 
X-CRM114-Status: GOOD (  18.07  )
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

hi

On 9/12/24 16:26, Kever Yang wrote:
> In order to make the SD card hotplug working we need the card detect
> function logic inside the controller always working. The runtime PM will
> gate the clock and the power domain, which stops controller working when
> no data transfer happen.
> 
> So lets skip enable runtime PM when the card needs to detected by the
> controller and the card is removable.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

following RK3588(s) boards work fine without cd-gpios,

- Radxa E54C
- Radxa ROCK 5A
- Radxa ROCK 5B
- Radxa ROCK 5C

thank you very much!

Tested-by: FUKAUMI Naoki <naoki@radxa.com>

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> ---
> 
>   drivers/mmc/host/dw_mmc-rockchip.c | 23 +++++++++++++++++------
>   1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index b07190ba4b7a..df91205f9cd3 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -345,28 +345,39 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
>   	const struct dw_mci_drv_data *drv_data;
>   	const struct of_device_id *match;
>   	int ret;
> +	bool use_rpm = true;
>   
>   	if (!pdev->dev.of_node)
>   		return -ENODEV;
>   
> +	if (!device_property_read_bool(&pdev->dev, "non-removable") &&
> +	     !device_property_read_bool(&pdev->dev, "cd-gpios"))
> +		use_rpm = false;
> +
>   	match = of_match_node(dw_mci_rockchip_match, pdev->dev.of_node);
>   	drv_data = match->data;
>   
>   	pm_runtime_get_noresume(&pdev->dev);
>   	pm_runtime_set_active(&pdev->dev);
> -	pm_runtime_enable(&pdev->dev);
> -	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> -	pm_runtime_use_autosuspend(&pdev->dev);
> +
> +	if (use_rpm) {
> +		pm_runtime_enable(&pdev->dev);
> +		pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> +		pm_runtime_use_autosuspend(&pdev->dev);
> +	}
>   
>   	ret = dw_mci_pltfm_register(pdev, drv_data);
>   	if (ret) {
> -		pm_runtime_disable(&pdev->dev);
> -		pm_runtime_set_suspended(&pdev->dev);
> +		if (use_rpm) {
> +			pm_runtime_disable(&pdev->dev);
> +			pm_runtime_set_suspended(&pdev->dev);
> +		}
>   		pm_runtime_put_noidle(&pdev->dev);
>   		return ret;
>   	}
>   
> -	pm_runtime_put_autosuspend(&pdev->dev);
> +	if (use_rpm)
> +		pm_runtime_put_autosuspend(&pdev->dev);
>   
>   	return 0;
>   }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
