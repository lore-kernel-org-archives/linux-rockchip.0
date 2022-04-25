Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0DBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAbTVF0mnMmRXjbIoMG/U04QLF4ZzUJ4+d7lvObsf58=; b=ywbZtiTI8jBCsu
	TtpPibxBqqduWUQplMF1wXZ5SVcBE45m+GrGWBADrsqv9ONNvrW7YXLB5A8Uk0L/CQTdE7Qx8z008
	ZwXoPMIxduLsh5vYtHCmKoxdgvKRpCLXUeEWQUfKF9oK1lRIX1K1MTcrMfBFOA7pPpiSKK9qlE7Fl
	+Rvp7TZtRiHBlgTFHpQ29szHe1+NVcz6YtlRcIsVHBeXVb4qYyA6IsDDovBELjCqJ4NEJRwZ0+cWO
	7CeKehczhCpxZ6jwZGHA3TnJb9ygtGeDbz9eHflPOzF9UKnCfd3mIpZ0frq/CnKa96Rn6vCPdxgCq
	X4/0VtilYKHQli3KUWrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivIa-008yJ7-RH; Mon, 25 Apr 2022 09:46:28 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivIN-008yHs-Kq
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:46:22 +0000
Received: by mail-ej1-x629.google.com with SMTP id bv19so28495033ejb.6
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A7tKpHO66OtlkiZEApqm2Rk5PAcMX4g/UiiBEWrvxiI=;
 b=Coi+maogkdu8bgu2wPeTHl4ezRymlRBdGbdGUYjPpY+gxd4l/1K8AynSdJfcYQ8ffl
 Gy1iskzq7cJPcrCqk91WSxOT44rq1rXy9uSQ6cGGyV4lfiE1ffkILyH0b59wjEnC4DZ2
 IrMGufTk2AyJ+VOCA+q2GK6EBmUYgGBiJz+qs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A7tKpHO66OtlkiZEApqm2Rk5PAcMX4g/UiiBEWrvxiI=;
 b=CNjX/Sar8tgq+fTgwv5XCKyy/CeQ9pAI6ZxJ71ChMvU/rtPYGClAlwlsWU3fpbzsAZ
 ku3i+tOlG/t2Gvf7MNSrqyOZyRuUEmKIHG1RPIT7Druo5yFl9Desd1I3FC/+AYaH2R9T
 zsE9nLv+I8F0rc26rJrRkY1vJRyhsbbsNPVSODzzmW9qDEMPhhrfGimg0Boeg/t+hgrM
 1S/oy9jJ3ElKHZH4FwSPYQPQbAYlX3y6WTzOXJVUeKFHEqPSRAkO3g8bKwBABhyPUMfg
 EXo7Opn0VdpYcd0gN6L0xOHeJwb5Y+j82iME7HjyYCp4v4to0Ch2f3Zw1rj/UFxxHTwJ
 anvw==
X-Gm-Message-State: AOAM531WD4LCV7s5Lm6HIro8V/0jO7GblUMBi4jJpQKlMa4+8Ry3KaP2
 te1nKAZdH7qrvDr4bhhgJj4WFA==
X-Google-Smtp-Source: ABdhPJwtXDEWXDIxL3QZF8LoXzBICG5oDKTsYFb4IPHx2WCj0wAqnhjcsodvKvKCrOYD57fwFPBVJQ==
X-Received: by 2002:a17:906:99c1:b0:6ef:d995:11ac with SMTP id
 s1-20020a17090699c100b006efd99511acmr14946287ejn.244.1650879972102; 
 Mon, 25 Apr 2022 02:46:12 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 b25-20020a056402139900b0041904036ab1sm4387450edv.5.2022.04.25.02.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:46:11 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:45:54 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 07/21] media: rkisp1: Simplify
 rkisp1_entities_register() error path
Message-ID: <YmZt0kiSm5QpXKWK@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-8-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-8-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_024621_090477_A0831C52 
X-CRM114-Status: GOOD (  19.40  )
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

> Now that all the unregistration functions are safe to call on
> non-registered entities, the error path in rkisp1_entities_register()
> can be simplified. Factor out the unregistration to a separate function
> to share code with rkisp1_remove().
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 40 +++++++++----------
>  1 file changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 3f5cfa7eb937..f8b2573aa9da 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -346,48 +346,50 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
>   * Core
>   */
>  
> +static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
> +{
> +	rkisp1_params_unregister(rkisp1);
> +	rkisp1_stats_unregister(rkisp1);
> +	rkisp1_capture_devs_unregister(rkisp1);
> +	rkisp1_resizer_devs_unregister(rkisp1);
> +	rkisp1_isp_unregister(rkisp1);
> +}
> +
>  static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
>  {
>  	int ret;
>  
>  	ret = rkisp1_isp_register(rkisp1);
>  	if (ret)
> -		return ret;
> +		goto error;
>  
>  	ret = rkisp1_resizer_devs_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_isp_subdev;
> +		goto error;
>  
>  	ret = rkisp1_capture_devs_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_resizer_devs;
> +		goto error;
>  
>  	ret = rkisp1_stats_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_capture_devs;
> +		goto error;
>  
>  	ret = rkisp1_params_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_stats;
> +		goto error;
>  
>  	ret = rkisp1_subdev_notifier(rkisp1);
>  	if (ret) {
>  		dev_err(rkisp1->dev,
>  			"Failed to register subdev notifier(%d)\n", ret);
> -		goto err_unreg_params;
> +		goto error;
>  	}
>  
>  	return 0;
> -err_unreg_params:
> -	rkisp1_params_unregister(rkisp1);
> -err_unreg_stats:
> -	rkisp1_stats_unregister(rkisp1);
> -err_unreg_capture_devs:
> -	rkisp1_capture_devs_unregister(rkisp1);
> -err_unreg_resizer_devs:
> -	rkisp1_resizer_devs_unregister(rkisp1);
> -err_unreg_isp_subdev:
> -	rkisp1_isp_unregister(rkisp1);
> +
> +error:
> +	rkisp1_entities_unregister(rkisp1);
>  	return ret;
>  }
>  
> @@ -583,11 +585,7 @@ static int rkisp1_remove(struct platform_device *pdev)
>  	v4l2_async_nf_unregister(&rkisp1->notifier);
>  	v4l2_async_nf_cleanup(&rkisp1->notifier);
>  
> -	rkisp1_params_unregister(rkisp1);
> -	rkisp1_stats_unregister(rkisp1);
> -	rkisp1_capture_devs_unregister(rkisp1);
> -	rkisp1_resizer_devs_unregister(rkisp1);
> -	rkisp1_isp_unregister(rkisp1);
> +	rkisp1_entities_unregister(rkisp1);
>  
>  	media_device_unregister(&rkisp1->media_dev);
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
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
