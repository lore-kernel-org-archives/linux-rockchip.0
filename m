Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47590C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMdICFv8oPZHbjgE8RFRXv2NiHc4cXZPevGH3gWtDb4=; b=Q8sujqWcxf83TA
	2JWp7gpaeBlOoytivrTCQvRocyl6Uo+CWBCuf4F5C6PC9YVnpKnb56lZRCHIFx+fGv0xEKQ6kGm9+
	eUl6z2EFpNx5IwuusFs9Ylob5OZjeNRKHA3rBMiRbFXj9k5ozov4N2cUjPAZr62Xw3HS5gErZVpuf
	LR3sEyFijQN1I+dgQI4sDqlznl+lAzG+7iyCi7irmJ3XTh279aPyiJRs2J3DWeIJqJb+IYqVOLWbj
	fgukHvn0oQju6hKmNrfOGM9t3TzCgU9lzUehkScZB4KP1VXj76PakoO1gCO/DlSGHIVPGDSg/XYzm
	ZbIHkJB5mCDn898ppFXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxCP-006OWR-17;
	Tue, 16 May 2023 16:06:53 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxCL-006OUc-1n;
	Tue, 16 May 2023 16:06:51 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLLgY4zbbz67fVK;
	Wed, 17 May 2023 00:05:45 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 17:06:45 +0100
Date: Tue, 16 May 2023 17:06:44 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 11/21] PM / devfreq: rockchip-dfi: Handle LPDDR2
 correctly
Message-ID: <20230516170644.0000043b@Huawei.com>
In-Reply-To: <20230505113856.463650-12-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-12-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_090649_738925_5EE4FD6F 
X-CRM114-Status: GOOD (  17.56  )
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

On Fri,  5 May 2023 13:38:46 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> According to the downstream driver the DDRMON_CTRL_LPDDR23 bit must be
> set for both LPDDR2 and LPDDR3. Add the missing LPDDR2 case and while
> at it turn the if/else if/else into switch/case which makes it easier
> to read.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Ah that resolved an earlier comment.  Also in my mind it strengthens
advantage of using an enum for ddr_type as then with some minor changes
(drop the default or make it specific to which cases it covers) the
compiler can assist you in making sure there are no unhandled values.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Jonathan

> ---
>  drivers/devfreq/event/rockchip-dfi.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 78cb594bd2a81..92ee61c96a1a9 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -82,12 +82,19 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  	writel_relaxed(HIWORD_UPDATE(0, 0xffff), dfi_regs + DDRMON_CTRL);
>  
>  	/* set ddr type to dfi */
> -	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> +	switch (dfi->ddr_type) {
> +	case ROCKCHIP_DDRTYPE_LPDDR2:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> -	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
> +		break;
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> +		break;
> +	default:
> +		break;
> +	}
>  
>  	/* enable count, use software mode */
>  	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
