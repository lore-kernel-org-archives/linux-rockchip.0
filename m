Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60070C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dnF4vUJxi93Q+ZBtYwbWbtQJ1M26TKoVUuQvDbM1rM=; b=aXq+ZK0hIkQ7am
	JNuJSwnYf6SMm5HgK4Pb0kidqvY4peteDJbEscQLcE8dkYDQdmrPPByyt2pw36ISBEoAJT45iaS38
	eHCvdtUDTEHmog+rmHr+8+wtiiFcUn/GRkTDJYvq3PaniW6oq3rCrqU9xptTuz2mr/OVIhKN9Gg/a
	x7XmD3AiuMU0dtVafjCpKig07ITZI7B6g5vHj1oXydRGKWTYrnC+oK/ie1tgd4VETrN4vx8eXiC4M
	5dFpoWDubRxklO9m/oYp7j2TQFlEdaw2xqWOc/2n+0rd3zM9PDhDj+BR/onTF/QuCgxmI3R+jsARY
	93T22rlh9K2nlKXKxl2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivOB-008zcb-MJ; Mon, 25 Apr 2022 09:52:15 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivO8-008zbw-Mo
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:52:14 +0000
Received: by mail-ej1-x631.google.com with SMTP id gh6so4462351ejb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=53PzOAb/6ZIFsnfh5G8KIpLpMHisHpH8jbCospIPB5Y=;
 b=cdihKGMmfIlx0x7OoCDE4JJHr4/I0N0m3/7hIJ+hxcqlMNeEutPQDBvWLK96q2XHzd
 hwRbtYFYDRnu5oUGHeSk5xq5113OSbzD9M59ryGa1DcdUl4WGzf/oKadSnXCnsUrXbsK
 krzC50c8zio24zIiaYGNJruDcFgsVtVdNBc4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=53PzOAb/6ZIFsnfh5G8KIpLpMHisHpH8jbCospIPB5Y=;
 b=wpe7G8bTkb4UBLO0p0gRCZ9wbkq9694mJs0JFYFfZK/Q6UZLAv+l8XWiRTGOHMTd4P
 YCfo7ZoBvDz+7DS+BmWNCsflxm+oL9JVxO+V/47hRQAfGLzeQhI3zeI6kUwMa0bZQI53
 M+qV1KCTvFJ7qDByyoIoWr0RrKj50RQPqyPmfeYKqDbsTCEGqnZthdJxhtTZWIPnWDc5
 UKp8Ljvd0CP0ZNfyyDR+DnjvBJUxH9qBMRGpjXB3rOfQEatAhsA6qmn9V18nZT6eJ9Xt
 dCw2sApGv4Zs6u/JjfWyAHgpUczr4XrcI2B0/eheJlS76iYiqKt9jP7/mEIiXuykJ+KE
 7Dfg==
X-Gm-Message-State: AOAM531KHQmFEfEzOgltRteROvfCfA3KPMVTdm2G1zHPd49UgnXBqMrM
 OW7H98a6NLpk6sucaFR/G8igJA==
X-Google-Smtp-Source: ABdhPJxTf7T92A+nZyK8/+UutZf/nt6FBewyx0ovWDOKY/eJ5r5YK7HzQFerdOCItdCcQjBI1en7aQ==
X-Received: by 2002:a17:906:cf84:b0:6f3:a3d8:365f with SMTP id
 um4-20020a170906cf8400b006f3a3d8365fmr589460ejb.242.1650880331316; 
 Mon, 25 Apr 2022 02:52:11 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 b89-20020a509f62000000b00425e21479fdsm1647679edf.19.2022.04.25.02.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:52:11 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:51:53 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 09/21] media: rkisp1: regs: Rename CCL, ICCL and IRCL
 registers with VI_ prefix
Message-ID: <YmZvOXPfxZ7UYPhw@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-10-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-10-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_025212_783189_156BA5FC 
X-CRM114-Status: GOOD (  18.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Laurent Pinchart wrote:

> The documentation names the CCL, ICCL and IRCL registers with a VI_
> prefix, like the VI_ID and VI_DPCL registers. Fix the macro names
> accordingly.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 19 +++---
>  .../platform/rockchip/rkisp1/rkisp1-params.c  |  8 +--
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    | 60 +++++++++----------
>  3 files changed, 44 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 4f7b2157b8cc..3c77cec568fb 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -523,20 +523,21 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
>  	readx_poll_timeout(readl, rkisp1->base_addr + RKISP1_CIF_ISP_RIS,
>  			   val, val & RKISP1_CIF_ISP_OFF, 20, 100);
>  	rkisp1_write(rkisp1,
> -		     RKISP1_CIF_IRCL_MIPI_SW_RST | RKISP1_CIF_IRCL_ISP_SW_RST,
> -		     RKISP1_CIF_IRCL);
> -	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_IRCL);
> +		     RKISP1_CIF_VI_IRCL_MIPI_SW_RST |
> +		     RKISP1_CIF_VI_IRCL_ISP_SW_RST,
> +		     RKISP1_CIF_VI_IRCL);
> +	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_VI_IRCL);
>  }
>  
>  static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
>  {
> -	u32 val = RKISP1_CIF_ICCL_ISP_CLK | RKISP1_CIF_ICCL_CP_CLK |
> -		  RKISP1_CIF_ICCL_MRSZ_CLK | RKISP1_CIF_ICCL_SRSZ_CLK |
> -		  RKISP1_CIF_ICCL_JPEG_CLK | RKISP1_CIF_ICCL_MI_CLK |
> -		  RKISP1_CIF_ICCL_IE_CLK | RKISP1_CIF_ICCL_MIPI_CLK |
> -		  RKISP1_CIF_ICCL_DCROP_CLK;
> +	u32 val = RKISP1_CIF_VI_ICCL_ISP_CLK | RKISP1_CIF_VI_ICCL_CP_CLK |
> +		  RKISP1_CIF_VI_ICCL_MRSZ_CLK | RKISP1_CIF_VI_ICCL_SRSZ_CLK |
> +		  RKISP1_CIF_VI_ICCL_JPEG_CLK | RKISP1_CIF_VI_ICCL_MI_CLK |
> +		  RKISP1_CIF_VI_ICCL_IE_CLK | RKISP1_CIF_VI_ICCL_MIPI_CLK |
> +		  RKISP1_CIF_VI_ICCL_DCROP_CLK;
>  
> -	rkisp1_write(rkisp1, val, RKISP1_CIF_ICCL);
> +	rkisp1_write(rkisp1, val, RKISP1_CIF_VI_ICCL);
>  
>  	/* ensure sp and mp can run at the same time in V12 */
>  	if (rkisp1->media_dev.hw_revision == RKISP1_V12) {
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index f6da2571b55f..cb5840b5d974 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1058,8 +1058,8 @@ static void rkisp1_ie_config(struct rkisp1_params *params,
>  static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
>  {
>  	if (en) {
> -		rkisp1_param_set_bits(params, RKISP1_CIF_ICCL,
> -				      RKISP1_CIF_ICCL_IE_CLK);
> +		rkisp1_param_set_bits(params, RKISP1_CIF_VI_ICCL,
> +				      RKISP1_CIF_VI_ICCL_IE_CLK);
>  		rkisp1_write(params->rkisp1, RKISP1_CIF_IMG_EFF_CTRL_ENABLE,
>  			     RKISP1_CIF_IMG_EFF_CTRL);
>  		rkisp1_param_set_bits(params, RKISP1_CIF_IMG_EFF_CTRL,
> @@ -1067,8 +1067,8 @@ static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
>  	} else {
>  		rkisp1_param_clear_bits(params, RKISP1_CIF_IMG_EFF_CTRL,
>  					RKISP1_CIF_IMG_EFF_CTRL_ENABLE);
> -		rkisp1_param_clear_bits(params, RKISP1_CIF_ICCL,
> -					RKISP1_CIF_ICCL_IE_CLK);
> +		rkisp1_param_clear_bits(params, RKISP1_CIF_VI_ICCL,
> +					RKISP1_CIF_VI_ICCL_IE_CLK);
>  	}
>  }
>  
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> index 887f4768dc0a..0f6ea67b4d5a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -210,7 +210,7 @@
>  #define RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP	BIT(1)
>  #define RKISP1_CIF_MI_XTD_FMT_CTRL_DMA_CB_CR_SWAP	BIT(2)
>  
> -/* CCL */
> +/* VI_CCL */
>  #define RKISP1_CIF_CCL_CIF_CLK_DIS			BIT(2)
>  /* VI_ISP_CLK_CTRL */
>  #define RKISP1_CIF_CLK_CTRL_ISP_RAW			BIT(0)
> @@ -241,32 +241,32 @@
>  #define RKISP1_CIF_CLK_CTRL_RSZS			BIT(25)
>  #define RKISP1_CIF_CLK_CTRL_MIPI			BIT(26)
>  #define RKISP1_CIF_CLK_CTRL_MARVINMI			BIT(27)
> -/* ICCL */
> -#define RKISP1_CIF_ICCL_ISP_CLK				BIT(0)
> -#define RKISP1_CIF_ICCL_CP_CLK				BIT(1)
> -#define RKISP1_CIF_ICCL_RES_2				BIT(2)
> -#define RKISP1_CIF_ICCL_MRSZ_CLK			BIT(3)
> -#define RKISP1_CIF_ICCL_SRSZ_CLK			BIT(4)
> -#define RKISP1_CIF_ICCL_JPEG_CLK			BIT(5)
> -#define RKISP1_CIF_ICCL_MI_CLK				BIT(6)
> -#define RKISP1_CIF_ICCL_RES_7				BIT(7)
> -#define RKISP1_CIF_ICCL_IE_CLK				BIT(8)
> -#define RKISP1_CIF_ICCL_SIMP_CLK			BIT(9)
> -#define RKISP1_CIF_ICCL_SMIA_CLK			BIT(10)
> -#define RKISP1_CIF_ICCL_MIPI_CLK			BIT(11)
> -#define RKISP1_CIF_ICCL_DCROP_CLK			BIT(12)
> -/* IRCL */
> -#define RKISP1_CIF_IRCL_ISP_SW_RST			BIT(0)
> -#define RKISP1_CIF_IRCL_CP_SW_RST			BIT(1)
> -#define RKISP1_CIF_IRCL_YCS_SW_RST			BIT(2)
> -#define RKISP1_CIF_IRCL_MRSZ_SW_RST			BIT(3)
> -#define RKISP1_CIF_IRCL_SRSZ_SW_RST			BIT(4)
> -#define RKISP1_CIF_IRCL_JPEG_SW_RST			BIT(5)
> -#define RKISP1_CIF_IRCL_MI_SW_RST			BIT(6)
> -#define RKISP1_CIF_IRCL_CIF_SW_RST			BIT(7)
> -#define RKISP1_CIF_IRCL_IE_SW_RST			BIT(8)
> -#define RKISP1_CIF_IRCL_SI_SW_RST			BIT(9)
> -#define RKISP1_CIF_IRCL_MIPI_SW_RST			BIT(11)
> +/* VI_ICCL */
> +#define RKISP1_CIF_VI_ICCL_ISP_CLK			BIT(0)
> +#define RKISP1_CIF_VI_ICCL_CP_CLK			BIT(1)
> +#define RKISP1_CIF_VI_ICCL_RES_2			BIT(2)
> +#define RKISP1_CIF_VI_ICCL_MRSZ_CLK			BIT(3)
> +#define RKISP1_CIF_VI_ICCL_SRSZ_CLK			BIT(4)
> +#define RKISP1_CIF_VI_ICCL_JPEG_CLK			BIT(5)
> +#define RKISP1_CIF_VI_ICCL_MI_CLK			BIT(6)
> +#define RKISP1_CIF_VI_ICCL_RES_7			BIT(7)
> +#define RKISP1_CIF_VI_ICCL_IE_CLK			BIT(8)
> +#define RKISP1_CIF_VI_ICCL_SIMP_CLK			BIT(9)
> +#define RKISP1_CIF_VI_ICCL_SMIA_CLK			BIT(10)
> +#define RKISP1_CIF_VI_ICCL_MIPI_CLK			BIT(11)
> +#define RKISP1_CIF_VI_ICCL_DCROP_CLK			BIT(12)
> +/* VI_IRCL */
> +#define RKISP1_CIF_VI_IRCL_ISP_SW_RST			BIT(0)
> +#define RKISP1_CIF_VI_IRCL_CP_SW_RST			BIT(1)
> +#define RKISP1_CIF_VI_IRCL_YCS_SW_RST			BIT(2)
> +#define RKISP1_CIF_VI_IRCL_MRSZ_SW_RST			BIT(3)
> +#define RKISP1_CIF_VI_IRCL_SRSZ_SW_RST			BIT(4)
> +#define RKISP1_CIF_VI_IRCL_JPEG_SW_RST			BIT(5)
> +#define RKISP1_CIF_VI_IRCL_MI_SW_RST			BIT(6)
> +#define RKISP1_CIF_VI_IRCL_CIF_SW_RST			BIT(7)
> +#define RKISP1_CIF_VI_IRCL_IE_SW_RST			BIT(8)
> +#define RKISP1_CIF_VI_IRCL_SI_SW_RST			BIT(9)
> +#define RKISP1_CIF_VI_IRCL_MIPI_SW_RST			BIT(11)
>  
>  /* C_PROC_CTR */
>  #define RKISP1_CIF_C_PROC_CTR_ENABLE			BIT(0)
> @@ -687,11 +687,11 @@
>  /*                            CIF Registers                            */
>  /* =================================================================== */
>  #define RKISP1_CIF_CTRL_BASE			0x00000000
> -#define RKISP1_CIF_CCL				(RKISP1_CIF_CTRL_BASE + 0x00000000)
> +#define RKISP1_CIF_VI_CCL			(RKISP1_CIF_CTRL_BASE + 0x00000000)
>  #define RKISP1_CIF_VI_ID			(RKISP1_CIF_CTRL_BASE + 0x00000008)
>  #define RKISP1_CIF_VI_ISP_CLK_CTRL_V12		(RKISP1_CIF_CTRL_BASE + 0x0000000C)
> -#define RKISP1_CIF_ICCL				(RKISP1_CIF_CTRL_BASE + 0x00000010)
> -#define RKISP1_CIF_IRCL				(RKISP1_CIF_CTRL_BASE + 0x00000014)
> +#define RKISP1_CIF_VI_ICCL			(RKISP1_CIF_CTRL_BASE + 0x00000010)
> +#define RKISP1_CIF_VI_IRCL			(RKISP1_CIF_CTRL_BASE + 0x00000014)
>  #define RKISP1_CIF_VI_DPCL			(RKISP1_CIF_CTRL_BASE + 0x00000018)
>  
>  #define RKISP1_CIF_IMG_EFF_BASE			0x00000200
> -- 
> Regards,
> 
> Laurent Pinchart
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
