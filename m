Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49257E81E17
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 16:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q841UiA6RZJHYvtOLa+k49nQBljvuF48vYWc06XWzU=; b=g/LppR5SVauVyn
	ShEhlh+72RorlGgqurW5KONOMhlSL92X5N5H9wmwRZfUafvZXGSxCGay1IWrgWDfX98ooPXHd1Odi
	YIWs6kERhhXgHKHF7RzADWLG56kSgFdCLNxlepbIzj1VFS5+yqvNwMPto1cH5ETJMUV+Q8dOF4lZK
	DijM6RVcUp2I2sogvlekQMiivVXPaAH21KZxlLGJUceLINEim7VBVowPKpD/AozNEvtqvVGhlRwSV
	gSlfv0GhsUtW3iSvZXnwrMl88178a3yZ/fMx5lZUIodLnzexbWvZpLmi8H46yBRoE5Zwb8iJg+hzE
	WRWGZlOr/3blJIoVrccw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qonJc-0068UM-20;
	Fri, 06 Oct 2023 16:04:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qonJX-0068T2-2b;
	Fri, 06 Oct 2023 16:04:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1179161251;
	Fri,  6 Oct 2023 16:04:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A72BC433C8;
	Fri,  6 Oct 2023 16:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696608268;
	bh=JIca2rNF7pnZk1VDUltU0QafLhtvatujIWLbLfgLEJ0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FtnsFQACjd5d5AS+BffoAu44TRMwoBbkzz9y/AQuHZO1jWYXeA0rAkSzHQEaz72pk
	 oIq5Af/Z4jnFY/vgaOYZbCC+Il1ACSFwgzVvGgkfcl0HIpiWnk7zC/7OdyHUuSxGTD
	 vtuz8a6Iv1tyCl6WSPql5PRbFHL4Muq91AXhmCak+eh2MVf0B0vqrcbvZICOxLtPhW
	 ZhIPOfsFu976YcxTUG8bEqM0SEOHOaotW3e2bjJFYsOr1Vf7jmHVa/XoKn2FzmiLAJ
	 1wbItfg1AqkKrQK6yJi0mSYAFAFAC33mwWPqYDi2SezreOkVbeAG9dRAWqa1iZ6hIA
	 cV/DNGulBD9qg==
Message-ID: <0b2741dd-a524-dde1-7aa3-520ce076e3c6@kernel.org>
Date: Sat, 7 Oct 2023 01:04:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 02/26] PM / devfreq: rockchip-dfi: Embed desc into
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
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-3-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_090431_904241_0D11D5DF 
X-CRM114-Status: GOOD (  19.35  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
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

Applied it. Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
