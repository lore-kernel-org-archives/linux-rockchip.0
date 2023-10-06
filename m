Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 342D3E81E1E
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 18:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTY3dSGJIIW5IvIVyfKwjKcFo1teeyCy4nhivo+8PRk=; b=VFQNcn4qJcU9UP
	Ht5VPzCwD28t7G2JPGCHyQRuKuACVEYynRZ/Lfa9rA+5IqCG7KI6K6uVGFfY/NFZuRb1v2/HupWdt
	BOBhpZ10cGF5er5E3p3NXtqfOxD1N+Im0mKO9L0SxgksJZTAw/3aqipweFpoNg83HGfkdHzPDy2GY
	bxKs63aCgAejNPqrnDL3NaSXumb3SiRnXO2T+cVRexo12+w9ljPMb26Z23iePKDb3BmZLnhWeQezY
	9x4wRtUIf05JY75MFMpSOhQY7hJQOwQ4ZiXeqFNxhpdySGAgiImt1XnlHMap3Bpi9Oi8TNaMDLXbr
	8xsh9QaUupPiuzMn9hoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qopWg-006JaT-1U;
	Fri, 06 Oct 2023 18:26:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qopWc-006JZ4-16;
	Fri, 06 Oct 2023 18:26:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EB09FCE2886;
	Fri,  6 Oct 2023 18:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02E30C433C9;
	Fri,  6 Oct 2023 18:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696616767;
	bh=DMnsAyUwTj54QnEen7gCvken46S4eDiVAXnoNg1seOA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Oa1pz1OTZt/oOkqajeiEN0hflFW2ehI8EIMVSkZYPhy7fcEOUb7ZSsWTRAp28nrPP
	 JklCWOaq6FbD0G7uGVy5K/qzHyDLv4azhg0ideDhw1ptBJefMJRarfnwJV4uKUEBQ5
	 jdLgsVuTiSUtCBFb+2Fm6jFEa9seNnqECjW7dwScGcG58l+orK55KZLoaeI/fApeay
	 9M+wRqR38/fj5zAFIxD3u/uloiBFTWv5OwSaFtOar4eGzicdGRxsYC1+ebdHEHH6s6
	 gkz9uW3a1J/+qlMvqzn+vewd/aBpMoBjAsg+nhpGnrDBMamI4gSFJ8+j8eED6ZG0d5
	 F5CkIJ5UbXwPA==
Message-ID: <aa8b7d74-008d-f704-5d63-1cbaac70cf77@kernel.org>
Date: Sat, 7 Oct 2023 03:26:02 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 12/26] PM / devfreq: rockchip-dfi: Handle LPDDR4X
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
 <20230704093242.583575-13-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-13-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_112610_556738_47A61901 
X-CRM114-Status: GOOD (  16.64  )
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
> In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
> the missing case.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 1 +
>  include/soc/rockchip/rockchip_grf.h  | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 16cd5365671f7..0a568c5551699 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -89,6 +89,7 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  			       dfi_regs + DDRMON_CTRL);
>  		break;
>  	case ROCKCHIP_DDRTYPE_LPDDR4:
> +	case ROCKCHIP_DDRTYPE_LPDDR4X:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
>  		break;
> diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
> index dde1a9796ccb5..e46fd72aea8d1 100644
> --- a/include/soc/rockchip/rockchip_grf.h
> +++ b/include/soc/rockchip/rockchip_grf.h
> @@ -12,6 +12,7 @@ enum {
>  	ROCKCHIP_DDRTYPE_LPDDR2	= 5,
>  	ROCKCHIP_DDRTYPE_LPDDR3	= 6,
>  	ROCKCHIP_DDRTYPE_LPDDR4	= 7,
> +	ROCKCHIP_DDRTYPE_LPDDR4X = 8,
>  };
>  
>  #endif /* __SOC_ROCKCHIP_GRF_H */

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
