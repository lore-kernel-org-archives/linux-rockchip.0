Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC7DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3IQ6/AAZE1mrJsoPkbbOKQlaDGvcD7SVV56t3mn4lw=; b=FAN2UJmGbT5W+A
	wDdI/GnPMvEzxtBUCDzsgzeNQPcCPuFkND7mTDHPje+qUmEHcl67oT4HoDraMg+f1n9NYs/8kfrEU
	MFfwZwV2X3UtAKkYhhPEuDjXnLWwzQPyH/Dzo8OTPvSxzeLTOzZLGnnpXBvQErmSuRlJs86hY/WVa
	JrYvfuAWdUdpIneC2JXq97gBDCy0sfGfyZNFs0QCMcvhpIAXWFjwV2CoM6yUoNadzSN+sPpx3siOp
	nUlCdlIIIc6eW+8iBQgJ4gZFoc1tvKT6FRGzyQ+it+59mfIGkanLZGhdshA1Gbc474xLGcT+kbYSE
	cTMtakPT8C3XVMxERX7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nixGh-009NPg-BT; Mon, 25 Apr 2022 11:52:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nixGe-009NNz-4g
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:52:37 +0000
Received: by mail-ej1-x634.google.com with SMTP id l7so29138024ejn.2
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EF9uo8DAJAgucJr2sOJJIteNlLGTCrdyTxetLoJ3Wzc=;
 b=G4t+3akTuo6RNho9wE/xnBMRkZaEAxo8Aa1nPauY8BmZJHY1rICJ8+LvvnLLW7oJx9
 AE9sowddd97dz1loNTIzlb2KqsEyChCCPfJqus7jzZ1iOKOviMyRGIU9yvkHJiuD2GI2
 R+qv1MQp/DDhcIGUrLulDJHcRCMzzHMzjI9t0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EF9uo8DAJAgucJr2sOJJIteNlLGTCrdyTxetLoJ3Wzc=;
 b=ba7JP5I2Oy5O52Wltrr+Ngc+Q8fRmRYAFF3RAqKafDOw3pd/BZQNLjOb9Mw+SgF3at
 +gd27bcW5W3Q2DIy3ZpM/w6U5bH1rXNZFbHHhYahh2TZYBn74LbGrc2pQRRovqqTbQad
 FTzpFADG7r8EnDdspQYry0p6/yiGWGAyVHyIEZ3QYqsMQdezSm4HrF9BYsOdz9U/XMgR
 0IY+a8rHeuB3pE4Bi4Bn1I+UcD+fbM9znbUoS+0bhw3hqlJA4OkGKk7+z3kxrYRbnv6B
 0XAQ+8sI/C54hH5TSdjwI9CunTWuSPo7KRF4J0nCO53N96mpAvFfrdO+MMTgKcISOIUW
 OEbw==
X-Gm-Message-State: AOAM532fvz0fw0rbxF44nscG0tpyIW6TEZjJ8d7WJHSzU5ix6Z59O3J+
 Q1QEG4Cu3Qbmdu/8vHo50ROpwAwwwmAdRw==
X-Google-Smtp-Source: ABdhPJzzCkz28sGq97VxSslhlPAPWiEiq0fmx9EE+E28YxrTRIHS8xpl9G9437Kq5OUuZXwDdBeVgw==
X-Received: by 2002:a17:907:a412:b0:6f0:1071:25ac with SMTP id
 sg18-20020a170907a41200b006f0107125acmr16019319ejc.261.1650887552584; 
 Mon, 25 Apr 2022 04:52:32 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 t15-20020a1709064f0f00b006f00349c4c3sm3481279eju.122.2022.04.25.04.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:52:32 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:52:14 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 20/21] media: rkisp1: Align macro definitions
Message-ID: <YmaLbhEArcbCC/Ho@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-21-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-21-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_045236_245784_5574760A 
X-CRM114-Status: GOOD (  18.70  )
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

> Make the code more readable by using the same alignment for all macros
> in rkisp1-common.h.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-common.h  | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index a7ffe2830fa8..4243ff5e2197 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -29,14 +29,14 @@ struct dentry;
>   * flags on the 'direction' field in struct 'rkisp1_isp_mbus_info' that indicate
>   * on which pad the media bus format is supported
>   */
> -#define RKISP1_ISP_SD_SRC BIT(0)
> -#define RKISP1_ISP_SD_SINK BIT(1)
> +#define RKISP1_ISP_SD_SRC			BIT(0)
> +#define RKISP1_ISP_SD_SINK			BIT(1)
>  
>  /* min and max values for the widths and heights of the entities */
> -#define RKISP1_ISP_MAX_WIDTH		4032
> -#define RKISP1_ISP_MAX_HEIGHT		3024
> -#define RKISP1_ISP_MIN_WIDTH		32
> -#define RKISP1_ISP_MIN_HEIGHT		32
> +#define RKISP1_ISP_MAX_WIDTH			4032
> +#define RKISP1_ISP_MAX_HEIGHT			3024
> +#define RKISP1_ISP_MIN_WIDTH			32
> +#define RKISP1_ISP_MIN_HEIGHT			32
>  
>  #define RKISP1_RSZ_MP_SRC_MAX_WIDTH		4416
>  #define RKISP1_RSZ_MP_SRC_MAX_HEIGHT		3312
> @@ -46,20 +46,20 @@ struct dentry;
>  #define RKISP1_RSZ_SRC_MIN_HEIGHT		16
>  
>  /* the default width and height of all the entities */
> -#define RKISP1_DEFAULT_WIDTH		800
> -#define RKISP1_DEFAULT_HEIGHT		600
> +#define RKISP1_DEFAULT_WIDTH			800
> +#define RKISP1_DEFAULT_HEIGHT			600
>  
> -#define RKISP1_DRIVER_NAME	"rkisp1"
> -#define RKISP1_BUS_INFO		"platform:" RKISP1_DRIVER_NAME
> +#define RKISP1_DRIVER_NAME			"rkisp1"
> +#define RKISP1_BUS_INFO				"platform:" RKISP1_DRIVER_NAME
>  
>  /* maximum number of clocks */
> -#define RKISP1_MAX_BUS_CLK	8
> +#define RKISP1_MAX_BUS_CLK			8
>  
>  /* a bitmask of the ready stats */
> -#define RKISP1_STATS_MEAS_MASK		(RKISP1_CIF_ISP_AWB_DONE |	\
> -					 RKISP1_CIF_ISP_AFM_FIN |	\
> -					 RKISP1_CIF_ISP_EXP_END |	\
> -					 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
> +#define RKISP1_STATS_MEAS_MASK			(RKISP1_CIF_ISP_AWB_DONE |	\
> +						 RKISP1_CIF_ISP_AFM_FIN |	\
> +						 RKISP1_CIF_ISP_EXP_END |	\
> +						 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>  
>  /* enum for the resizer pads */
>  enum rkisp1_rsz_pad {
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
