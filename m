Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8572E81E1A
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 16:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egaiU0UXq707/yzHM06RV6UHjaVM3PRd5721CRnWQiw=; b=yj0Qd9KnZ59oBA
	YJiDKBWckpiorUp5kpKGf4FmbgJAzUqS3gfiucIpBr7ab7tChYdLI7gvyEGKFOAJOfHCBipea+hxW
	jdu3J4RKZk/YlID0wAo1mHrnUX50rQzWDOib0B/g9CfnIeKE6Nhzl2PHzYeo6ZHdRI4rrnv+y+Wxu
	/tpVrMjGQwFjLDaY1f6TDrOeCCfOID546CizmKzlRTKUpxdnSjqihGWdoVcS+nflZBgpT5vMlVyGW
	jQZFWO57mix4ZoZmRPcM7YMKHfCgjfnRnl9WrPdRz4srVwufuQIdZeb6qv7Lo6Dfgm0dfQAp2YaGs
	Dxko/xN9gYDE6LeW4nzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qonme-006CCy-2R;
	Fri, 06 Oct 2023 16:34:36 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qonmY-006CB5-19;
	Fri, 06 Oct 2023 16:34:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 67101CE2874;
	Fri,  6 Oct 2023 16:34:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DDA2C433C8;
	Fri,  6 Oct 2023 16:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696610067;
	bh=1HcmpHjvQ0eMD+nDrJ3xLK1sZ1Um3mNVlGOZd0rUGWQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QbsK2TdiCNYvwi75XBByYOb4fM1yAFUGIh/CljHhZghz5tbhcaeeFJFq/wT2B5xhk
	 dhjDraRzwOrPDbsp75VhI7amEg0spNerkdLwD3TA12F21eVcW9K806vcdDqeFsOX5S
	 yuLHV8etb9TczUBgWU1ROsWiqy01mvoXj3DdmN9lbv4yhfU/g75GUkRYpu/Qi6yu/n
	 LAZwS7N+cWu7mYcU48aAHB4k3iexxzC3ICN7B1hU/Clkr2rFna7EXq5ZUrxpyRU7iM
	 VLW00Ol305cyMMBSyprYOJ9NtLyEJ+J16BdpD5eIog2rUfn5TCfgCbcDgfeh9kmfn5
	 k0zGTUcaXEobg==
Message-ID: <0b4adfee-b559-aa87-93c3-7591faf0dabc@kernel.org>
Date: Sat, 7 Oct 2023 01:34:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 05/26] PM / devfreq: rockchip-dfi: dfi store raw values
 in counter struct
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
 <20230704093242.583575-6-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-6-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_093430_573644_B9014B8B 
X-CRM114-Status: GOOD (  18.08  )
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
> When adding perf support to the DFI driver the perf part will
> need the raw counter values, so move the fixed * 4 factor to
> rockchip_dfi_get_event().
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 6b1ef29df7048..680f629da64fc 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -97,7 +97,7 @@ static int rockchip_dfi_get_busier_ch(struct devfreq_event_dev *edev)
>  	/* Find out which channel is busier */
>  	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
>  		dfi->ch_usage[i].access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_DFI_ACCESS_NUM + i * 20) * 4;
> +				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		dfi->ch_usage[i].total = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
>  		tmp = dfi->ch_usage[i].access;
> @@ -149,7 +149,7 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  
>  	busier_ch = rockchip_dfi_get_busier_ch(edev);
>  
> -	edata->load_count = dfi->ch_usage[busier_ch].access;
> +	edata->load_count = dfi->ch_usage[busier_ch].access * 4;
>  	edata->total_count = dfi->ch_usage[busier_ch].total;
>  
>  	return 0;

Applied it. Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
