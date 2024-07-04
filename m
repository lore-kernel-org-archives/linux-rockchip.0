Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06BBFC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOVbfMKQWmnyfIzE4udcWELXFKj/5PRNOJd8HfUbNTc=; b=G3FQ8m1fLYe5FW
	DFP0zl/u84yTz3fqzKYoO1GuYwWwLrTLy5EU34ZKB18UOeC4bWvVo2Vj8Nq1kl3eGDWikG0CjzyND
	PQrr6GDGmPcrIpXn3lucPcS5CbdJrMjOi4QpnBxtixEKuazBqJVJd0KzPpMeafuhb5l5FxEz6gNOz
	o8kvQgN98IBcXZ5p/1Oq6EBurNp5HGbnzK0xUHKY0/lzIYmPb9UZ3uYjkii8+t6atjR+5lFkmOqJ1
	tJgMKUm/J+p7HWq5/J3BcdtMGqXQMkVuMfQIBGyZEDOaxDbK+owlnbqW2rIlfAUmylJHtsY69IqcF
	uw/hMHTSv6/srpl2HTTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPSWI-0000000EJuh-3XsW;
	Thu, 04 Jul 2024 19:53:30 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPSWG-0000000EJth-15Si
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 19:53:29 +0000
Received: from ideasonboard.com (mob-5-90-52-146.net.vodafone.it [5.90.52.146])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1833663D;
	Thu,  4 Jul 2024 21:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720122778;
	bh=ngExV/olMKl11ujpgUXZNCY6b1EnRdBXsn0fIhpihEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RAzctpLQfLhV2zcKyruvzeR+Ip9RJV5w/ln605Vqm0dLvb4pFgOayGfsrOP4tLyUP
	 kQw3mDOqHln6+WY0YPfEOp30Kle4GQRMngYPt9LRBQZZdV6sIxnw0/AiBAELuIOnDw
	 EeFvAGjVbv69FyAI3LNfICTPxrAPTPVNzByJ31vY=
Date: Thu, 4 Jul 2024 21:53:20 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 4/5] media: rkisp1: Add feature flags for BLS and
 compand
Message-ID: <6kybqipw26jbqznpu75gapvj4bhqajf2eq5noo4u5irak37drz@2uz6atrpnq53>
References: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
 <20240704154932.6686-5-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240704154932.6686-5-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_125328_461793_801DCA41 
X-CRM114-Status: GOOD (  23.16  )
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

Hi Laurent

On Thu, Jul 04, 2024 at 06:49:31PM GMT, Laurent Pinchart wrote:
> From: Paul Elder <paul.elder@ideasonboard.com>
>
> Add feature flags for the dedicated black level subtraction hardware
> block and for the compand hardware block. The companding feature flag is
> added on its own (as opposed to "the absence of BLS") because we will
> need it later for when we add support for the companding block.
>
> Skip BLS configuration when the BLS feature flag is unset, as devices
> without the dedicated BLS block cannot configure a hardware block that
> doesn't exist.
>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>


> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 4 ++++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 9 ++++++---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 7 +++++++
>  3 files changed, 17 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index a52079261579..ca952fd0829b 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -116,6 +116,8 @@ enum rkisp1_isp_pad {
>   * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
>   * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
>   * @RKISP1_FEATURE_DMA_34BIT: The ISP uses 34-bit DMA addresses
> + * @RKISP1_FEATURE_BLS: The ISP has a dedicated BLS block
> + * @RKISP1_FEATURE_COMPAND: The ISP has a companding block
>   *
>   * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
>   * the driver to implement support for features present in some ISP versions
> @@ -127,6 +129,8 @@ enum rkisp1_feature {
>  	RKISP1_FEATURE_SELF_PATH = BIT(2),
>  	RKISP1_FEATURE_DUAL_CROP = BIT(3),
>  	RKISP1_FEATURE_DMA_34BIT = BIT(4),
> +	RKISP1_FEATURE_BLS = BIT(5),
> +	RKISP1_FEATURE_COMPAND = BIT(6),
>  };
>
>  #define rkisp1_has_feature(rkisp1, feature) \
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 0535ce57e862..dd114ab77800 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -509,7 +509,8 @@ static const struct rkisp1_info px30_isp_info = {
>  	.isp_ver = RKISP1_V12,
>  	.features = RKISP1_FEATURE_MIPI_CSI2
>  		  | RKISP1_FEATURE_SELF_PATH
> -		  | RKISP1_FEATURE_DUAL_CROP,
> +		  | RKISP1_FEATURE_DUAL_CROP
> +		  | RKISP1_FEATURE_BLS,
>  	.max_width = 3264,
>  	.max_height = 2448,
>  };
> @@ -532,7 +533,8 @@ static const struct rkisp1_info rk3399_isp_info = {
>  	.isp_ver = RKISP1_V10,
>  	.features = RKISP1_FEATURE_MIPI_CSI2
>  		  | RKISP1_FEATURE_SELF_PATH
> -		  | RKISP1_FEATURE_DUAL_CROP,
> +		  | RKISP1_FEATURE_DUAL_CROP
> +		  | RKISP1_FEATURE_BLS,
>  	.max_width = 4416,
>  	.max_height = 3312,
>  };
> @@ -554,7 +556,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
>  	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
>  	.isp_ver = RKISP1_V_IMX8MP,
>  	.features = RKISP1_FEATURE_MAIN_STRIDE
> -		  | RKISP1_FEATURE_DMA_34BIT,
> +		  | RKISP1_FEATURE_DMA_34BIT
> +		  | RKISP1_FEATURE_COMPAND,
>  	.max_width = 4096,
>  	.max_height = 3072,
>  };
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index d3a7c7f55db0..20bc6d582527 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1268,6 +1268,12 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	module_cfg_update = new_params->module_cfg_update;
>  	module_ens = new_params->module_ens;
>
> +	if (!rkisp1_has_feature(params->rkisp1, BLS)) {
> +		module_en_update &= ~RKISP1_CIF_ISP_MODULE_BLS;
> +		module_cfg_update &= ~RKISP1_CIF_ISP_MODULE_BLS;
> +		module_ens &= ~RKISP1_CIF_ISP_MODULE_BLS;
> +	}
> +
>  	/* update dpc config */
>  	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
>  		rkisp1_dpcc_config(params,
> @@ -1851,6 +1857,7 @@ static const struct rkisp1_ext_params_handler {
>  		.size		= sizeof(struct rkisp1_ext_params_bls_config),
>  		.handler	= rkisp1_ext_params_bls,
>  		.group		= RKISP1_EXT_PARAMS_BLOCK_GROUP_OTHERS,
> +		.features	= RKISP1_FEATURE_BLS,
>  	},
>  	[RKISP1_EXT_PARAMS_BLOCK_TYPE_DPCC] = {
>  		.size		= sizeof(struct rkisp1_ext_params_dpcc_config),
> --
> Regards,
>
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
