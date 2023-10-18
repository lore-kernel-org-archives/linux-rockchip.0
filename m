Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E21CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 14:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8eOe3O64Cy1gXUmpI2tcKZCHB+Jk9I/tfGNVdwu4Vo=; b=aoP9BERG4CPqql
	CkW7bohBoJox6air8kMsdALknSLe881At6IXfdU6q9DcKOk4J0vtV92DfTiqeTKWTcPWe0oF5ReyG
	oFFZcr1bvi/ZJcA4kNQMTktKwhcJb5jGtQPc18/QgAQqt5VBltAqtVVGMhZn9AEuqV6yTPPH6XPZh
	nbIXLb4a6G6yt13EKPbnrhFhzMwenLBaUp/BPMhRuB1tIT791dm5mPT7ZcHhuiL56+AE2Npgelhx1
	81CWNqG513j0+NoyMwRBYrweDMApwvayJMthyKep9X/qjCwvXyMCKPTEKorQeT5L/8jzqBaAezR5+
	oc54LqUn0XxSsEhLpOqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7ta-00ExPl-1c;
	Wed, 18 Oct 2023 14:51:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7tX-00ExO9-0p;
	Wed, 18 Oct 2023 14:51:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id EECFBB82357;
	Wed, 18 Oct 2023 14:51:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E825AC433C8;
	Wed, 18 Oct 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697640692;
	bh=BbvjjIBqrx4LLuoNVbrW9S9bLaMwRPFS7lIkl7RjLWU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S878NAwuhe2zWCeS5/FbNtl7dgxsCsVjrg5yCoP67+b2sQKUEsx7TASUDFsIy7jnc
	 NTba6lHdDtNv/X70utYTiM4x7Gp4do6IB8UZLeR0DH9Do7Eqvvt6ZnICWTosJ83zZL
	 WQehJ1HCylF2JMYylUqxv5BnFXcGcCRH7kOAtqVcQOd6224wkOKxp6iqHEkGd3cnAM
	 McITwjuuNDBognSWXeNRwBqN4B5WFfKMAILEAwK7RHMjb171/Hv10pUr3m1Vrf626V
	 htgH5+bmJEF5cAo2TuXM93k/MVH7ZUAR0HH9FXDlxbgfna2E9YfvQDoOOCLE8NV05X
	 x2r8+Vp4D5BOw==
Message-ID: <39e1f40f-647a-4c3a-b070-0e504d7d3389@kernel.org>
Date: Wed, 18 Oct 2023 23:51:27 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 02/26] PM / devfreq: rockchip-dfi: Embed desc into
 private data struct
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-3-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_075135_443739_DC901518 
X-CRM114-Status: GOOD (  18.22  )
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

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> No need for an extra allocation, just embed the struct
> devfreq_event_desc into the private data struct.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 74893c06aa087..467f9f42d38f7 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -49,7 +49,7 @@ struct dmc_usage {
>   */
>  struct rockchip_dfi {
>  	struct devfreq_event_dev *edev;
> -	struct devfreq_event_desc *desc;
> +	struct devfreq_event_desc desc;
>  	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
>  	struct device *dev;
>  	void __iomem *regs;
> @@ -204,14 +204,10 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  
>  	data->dev = dev;
>  
> -	desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
> -	if (!desc)
> -		return -ENOMEM;
> -
> +	desc = &data->desc;
>  	desc->ops = &rockchip_dfi_ops;
>  	desc->driver_data = data;
>  	desc->name = np->name;
> -	data->desc = desc;
>  
>  	data->edev = devm_devfreq_event_add_edev(&pdev->dev, desc);
>  	if (IS_ERR(data->edev)) {

Already applied it on v7.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
