Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E37ECCD1BF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bTZLciBmC2KZVBj74Y9eFThkbmYc8ViWQehIYeGFPk=; b=vC0hu5a+P5UF0C
	TdZ1nsSEDEMf9J1DMtAgjD/C87IMAN74k/mOaY4Hocyv5Jn+Y+DkDA05Ai5kxqtqtPQ4AmBVMIVkz
	gY7hJX/VkHc66ykPxiSk0+wh2muMa7aNNWlezUQ+e2L6P/LKMG0rb49j+s+PTBm7BZrch/056WaK7
	L3114KFzU9ewfy1zam4t1AW5L84GMlv46ulpOIqowNRgAwaPmHaNX6vdvHXmoisv31VtBW/sYtLqe
	OoDg/PtU6rOXY41bPdDX8DPfDPAXSszAfTdREnAeGO8qKl3m2rYcr0wLinJEllGEUwcoR5nUaCL22
	G9ieZGeaB54n0iKxAOvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBgDy-00000004KvP-2MjK;
	Wed, 22 Oct 2025 21:18:26 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBgDv-00000004KtK-1OOX
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 21:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1761167901;
 bh=gjD4xTxPCIrvIM0BFCotpSFuXxIKJDdOf+62DNFPt90=;
 b=xOukglulPCQSDu1AhfQiMyc/xbJIhDCkJ/YH8RQ8Z1xZTB3DpKzWYNsZkEQgyvcXM2L7W6dYu
 S0Z+tanzPUSN451Y/Wjj5UPyRtmBTo0Pm9Hw1XE41shxRqs92uN4jEi0vWCMhVOJtDZD6ZXBUg5
 DIAc6ksCYxd1sBsuSSJKtgSvtGhXsC1RhddlwTN14l2UtBXZQy75Krksyg7rWRJP3/zCHsxYYcZ
 JYQyXwbNiuoIQFC1adFrTrDUVruGyXocqODB5FFWnKxCr4UEk8fhB4cB8c+4UHE737F6mlKZtPz
 nwjep3W11teasHFkT9Lis4hdwz8ro5t4Ee+VHUQcZQpg==
X-Forward-Email-ID: 68f94a1a7ffe5c5c38c092d4
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.3.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <74866576-8834-49e6-adb6-b0189a1b43fe@kwiboo.se>
Date: Wed, 22 Oct 2025 23:18:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/15] media: rkvdec: Enable all clocks without naming
 them
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Ricardo Ribalda <ribalda@chromium.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Yunke Cao <yunkec@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 James Cowgill <james.cowgill@blaize.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, linux-kernel@vger.kernel.org
References: <20251022174508.284929-1-detlev.casanova@collabora.com>
 <20251022174508.284929-12-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251022174508.284929-12-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_141823_495501_4BB66425 
X-CRM114-Status: GOOD (  22.56  )
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

Hi Detlev,

On 10/22/2025 7:45 PM, Detlev Casanova wrote:
> For other variants, the clock names and number will differ.
> 
> There is no need to keep track of the clock names in the driver so drop
> them to avoid having a list for each variant.
> 
> Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock 5B
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../media/platform/rockchip/rkvdec/rkvdec.c   | 24 +++++--------------
>  .../media/platform/rockchip/rkvdec/rkvdec.h   |  1 +
>  2 files changed, 7 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> index b0e90c9b826e..aa92b586429e 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -1311,15 +1311,10 @@ static const struct of_device_id of_rkvdec_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, of_rkvdec_match);
>  
> -static const char * const rkvdec_clk_names[] = {
> -	"axi", "ahb", "cabac", "core"
> -};
> -
>  static int rkvdec_probe(struct platform_device *pdev)
>  {
>  	const struct rkvdec_variant *variant;
>  	struct rkvdec_dev *rkvdec;
> -	unsigned int i;
>  	int ret, irq;
>  
>  	variant = of_device_get_match_data(&pdev->dev);
> @@ -1336,19 +1331,12 @@ static int rkvdec_probe(struct platform_device *pdev)
>  	mutex_init(&rkvdec->vdev_lock);
>  	INIT_DELAYED_WORK(&rkvdec->watchdog_work, rkvdec_watchdog_func);
>  
> -	rkvdec->clocks = devm_kcalloc(&pdev->dev, ARRAY_SIZE(rkvdec_clk_names),
> -				      sizeof(*rkvdec->clocks), GFP_KERNEL);
> -	if (!rkvdec->clocks)
> -		return -ENOMEM;
> -
> -	for (i = 0; i < ARRAY_SIZE(rkvdec_clk_names); i++)
> -		rkvdec->clocks[i].id = rkvdec_clk_names[i];
> -
> -	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(rkvdec_clk_names),
> -				rkvdec->clocks);
> -	if (ret)
> +	ret = devm_clk_bulk_get_all_enabled(&pdev->dev, &rkvdec->clocks);
> +	if (ret < 0)
>  		return ret;
>  
> +	rkvdec->clk_count = ret;
> +
>  	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(rkvdec->regs))
>  		return PTR_ERR(rkvdec->regs);
> @@ -1426,7 +1414,7 @@ static int rkvdec_runtime_resume(struct device *dev)
>  {
>  	struct rkvdec_dev *rkvdec = dev_get_drvdata(dev);
>  
> -	return clk_bulk_prepare_enable(ARRAY_SIZE(rkvdec_clk_names),
> +	return clk_bulk_prepare_enable(rkvdec->clk_count,
>  				       rkvdec->clocks);

This can probably now fit on one line.

>  }
>  
> @@ -1434,7 +1422,7 @@ static int rkvdec_runtime_suspend(struct device *dev)
>  {
>  	struct rkvdec_dev *rkvdec = dev_get_drvdata(dev);
>  
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(rkvdec_clk_names),
> +	clk_bulk_disable_unprepare(rkvdec->clk_count,
>  				   rkvdec->clocks);

Same here.

>  	return 0;
>  }
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.h b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> index dfafb2c2cbc1..4094f92f8a44 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
> @@ -131,6 +131,7 @@ struct rkvdec_dev {
>  	struct v4l2_m2m_dev *m2m_dev;
>  	struct device *dev;
>  	struct clk_bulk_data *clocks;
> +	unsigned int clk_count;

Please name this num_clocks to match similar count/num variables used by
the driver and also closer matches the clk_bulk_data name.

Regards,
Jonas

>  	void __iomem *regs;
>  	struct mutex vdev_lock; /* serializes ioctls */
>  	struct delayed_work watchdog_work;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
