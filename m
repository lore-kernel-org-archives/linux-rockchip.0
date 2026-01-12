Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B9F4C9EC70
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 11:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUK1gTM5mIVeeXIrE7fcX9WFMd/1cCFCVdZQL5pW5EM=; b=KFB/JqKmHihbqd
	7+VkNhqgOssIfjJxh3fnEDn5wbviyYcgjd19xRoyrXw+/AcJuEpoMc32kbs9rUccOynB9YiL5F7oG
	OkTVRg7+7Ly2+Uq6JjFjHfasEKfLPuDnKi3CbYPCLgdSucSzzbJv3fAhNrWhvscGe80yfa4BwWmcJ
	J4nfUw+bKRQfKlxdWYvdt+9L6ZYeZBXXE1QWqMkHC9JxAKVwSak1pvYRqDba0tva8HCUSS7177Q0y
	pjbrqp7eXxNG9MCm0d88xyRDl9JBEDwOpRxCbdbx3+7rPErDof2w3Z6C/BcKNg0ON1DWjvMFA+Vb5
	qRsg93VD0PoYQK8eTmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFir-00000005DWO-2CSu;
	Mon, 12 Jan 2026 11:04:33 +0000
Received: from mail-m49218.qiye.163.com ([45.254.49.218])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFin-00000005DW4-10aw
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 11:04:31 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3054d7495;
	Mon, 12 Jan 2026 19:04:26 +0800 (GMT+08:00)
Message-ID: <5ee40807-79b3-4ba0-a9c6-6f0cfd2173c9@rock-chips.com>
Date: Mon, 12 Jan 2026 19:04:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: rockchip: grf: Support multiple grf to be
 handled
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb1e0eb7b03abkunm9ead88385c3b5e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkodTFZDGUtNQ0IYSEhIT0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gQGVaJ5s1nTjOA7kv8FtOXErHev5yauFMNRTXOLTa5hSjJ9/61H/e+13LZE7j1aiNAlyP2p/lJWR0WY1zX5bZpDpPLiK/7gNjaVlNRm+pEt/LZPoWOBQa6pZ3pnfcgInCV6srXmnBnmv08wfX/U8Z7UWDpTBoSgzF8kXyRyBod4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3hi2cD50khIEG/ArQOWPFeNoiV/AAAhVoZnQWKnnERk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_030429_795782_09E5FEEB 
X-CRM114-Status: GOOD (  21.27  )
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

Hi Shawn,

On 1/12/2026 11:49 AM, Shawn Lin wrote:
> Currently, only the first matched node will be handled. This leads
> to jtag switching broken for RK3576, as rk3576-sys-grf is found before
> rk3576-ioc-grf. Change the code to scan all the possible node to fix
> the problem.
> 
> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/soc/rockchip/grf.c | 59 +++++++++++++++++++++++-----------------------
>  1 file changed, 30 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 8974d1c..6d1c624e 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -213,40 +213,41 @@ static int __init rockchip_grf_init(void)
>  {
>  	const struct rockchip_grf_info *grf_info;
>  	const struct of_device_id *match;
> -	struct device_node *np;
> +	struct device_node *np, *from_np = NULL;
>  	struct regmap *grf;
>  	int ret, i;
>  
> -	np = of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
> -					     &match);
> -	if (!np)
> -		return -ENODEV;
> -	if (!match || !match->data) {
> -		pr_err("%s: missing grf data\n", __func__);
> -		of_node_put(np);
> -		return -EINVAL;
> -	}
> +	while (1) {
> +		np = of_find_matching_node_and_match(from_np,
> +				rockchip_grf_dt_match, &match);
> +		if (!np)
> +			return 0;
> +		if (!match || !match->data) {
> +			pr_err("%s: missing grf data\n", __func__);
> +			of_node_put(np);
> +			return -EINVAL;
> +		}
>  
> -	grf_info = match->data;
> -
> -	grf = syscon_node_to_regmap(np);
> -	of_node_put(np);
> -	if (IS_ERR(grf)) {
> -		pr_err("%s: could not get grf syscon\n", __func__);
> -		return PTR_ERR(grf);
> -	}
> +		grf_info = match->data;
>  
> -	for (i = 0; i < grf_info->num_values; i++) {
> -		const struct rockchip_grf_value *val = &grf_info->values[i];
> -
> -		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
> -			val->desc, val->reg, val->val);
> -		ret = regmap_write(grf, val->reg, val->val);
> -		if (ret < 0)
> -			pr_err("%s: write to %#6x failed with %d\n",
> -			       __func__, val->reg, ret);
> +		grf = syscon_node_to_regmap(np);
> +		of_node_put(np);
> +		if (IS_ERR(grf)) {
> +			pr_err("%s: could not get grf syscon\n", __func__);
> +			return PTR_ERR(grf);
> +		}
> +
> +		for (i = 0; i < grf_info->num_values; i++) {
> +			const struct rockchip_grf_value *val = &grf_info->values[i];
> +
> +			pr_info("%s: adjusting %s in %#6x to %#10x\n", __func__,
> +				val->desc, val->reg, val->val);
> +			ret = regmap_write(grf, val->reg, val->val);
> +			if (ret < 0)
> +				pr_err("%s: write to %#6x failed with %d\n",
> +					__func__, val->reg, ret);
> +		}
> +		from_np = np;
>  	}

You called of_node_put() on from_np/np here, and the next time
of_find_matching_node_and_match() is called, this function will
internally call of_node_put() on from_np. 

Would this cause a double put?

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
