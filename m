Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC46FC48BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 06:29:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64BBC613BF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 06:29:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64BBC613BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JzPvkaMrz9jPsmGVR7HXq2jOEZMrIiKA4Nc0RL5AbXw=; b=2lsQu4thT24zgCA0u1tGfHxfbm
	Ly7Fp22QVSw4/EMXfZAewVJOYACVzWMcM5MMcvzgx3IgTwmpPcDLgI6YTX6KVO+wuxhMYgroxt2Lb
	uX7FTqQpjOSIJxfxCFy+oMtrGqNKyUGuxqkxZqKu4Iakk+CqHbTa+nbAjmi5mk7JUL25u0HT28STF
	Bf+o+O7MHdCx30VwR103D86AXCVwpO72Uh5V+/47PEm4I5/j82waKCqssyD3zEjK6ribvzFXWmqqt
	w4VgmI7Yu7rzG/qePWWgsnwq2NJqv23HAYHS5e2V88T14BUel1LNtZWZ/iYei/xXSemQ27i9TA6a/
	OyHaBdMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP3e-0053UN-B8; Wed, 16 Jun 2021 06:29:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP3a-0053RU-V2
 for linux-rockchip@lists.infradead.org; Wed, 16 Jun 2021 06:29:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 020571F4326D
Subject: Re: [PATCH v3 10/10] media: rockchip: rkisp1: add support for px30
 isp version
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210615225023.3929434-1-heiko@sntech.de>
 <20210615225023.3929434-11-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <02244fde-011b-6057-311a-7360d689114f@collabora.com>
Date: Wed, 16 Jun 2021 09:29:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210615225023.3929434-11-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_232947_159158_FF30B1B1 
X-CRM114-Status: GOOD (  18.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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



On 16.06.21 01:50, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The px30 uses a V12 isp block so add compatible and matchdata
> for it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   .../media/platform/rockchip/rkisp1/rkisp1-dev.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index ddc05189c62a..6e4c0710f3a3 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -398,6 +398,19 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
>   	return IRQ_HANDLED;
>   }
>   
> +static const char * const px30_isp_clks[] = {
> +	"isp",
> +	"aclk",
> +	"hclk",
> +	"pclk",
> +};
> +
> +static const struct rkisp1_match_data px30_isp_match_data = {
> +	.clks = px30_isp_clks,
> +	.size = ARRAY_SIZE(px30_isp_clks),
> +	.isp_ver = RKISP1_V12,
> +};
> +
>   static const char * const rk3399_isp_clks[] = {
>   	"isp",
>   	"aclk",
> @@ -411,6 +424,10 @@ static const struct rkisp1_match_data rk3399_isp_match_data = {
>   };
>   
>   static const struct of_device_id rkisp1_of_match[] = {
> +	{
> +		.compatible = "rockchip,px30-cif-isp",
> +		.data = &px30_isp_match_data,
> +	},
>   	{
>   		.compatible = "rockchip,rk3399-cif-isp",
>   		.data = &rk3399_isp_match_data,
> 

Hi, in order to avoid the if-else in patch 4/10 maybe we can do:

```
struct interrupt_to_isr {
	char* name;
	irqreturn_t isr(int irq, void *ctx);
}

interrupt_to_is px30_isrs[] {
	{"isp", rkisp1_isp_isr}
	{"mi",  rkisp1_capture_isr}
	{"mipi", rkisp1_mipi_isr}
}
static const struct rkisp1_match_data px30_isp_match_data = {
	.clks = px30_isp_clks,
	.size = ARRAY_SIZE(px30_isp_clks),
	.isp_ver = RKISP1_V12,
	.isrs = px30_isrs
};
//and similar for rk3399
```

Then in the probe we just do
```
for each (name,isr) in isrs
	irq = platform_get_irq_byname(name)
	devm_request_irq(dev, irq, isr,...
```


Thanks,
Dafna	


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
