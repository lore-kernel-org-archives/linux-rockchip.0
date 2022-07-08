Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD92C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 09:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2OqE1ap66C0DutP72jhUjxSZVgHmo5DnJ9+F5H4dF4=; b=PEj6qC4TLoQdkJ
	Qyhp8I6VVUqitHX8LN+bDB+wDQSDRj+6ObCoWrw5yiINg8t/lHq0+uAl5l5kLv6ZI1GxdABAearu5
	m7pFZIWBXmru0PjI2A3UkxS9WvEB5dRkF9lCIL8ZyqJJmYHEhpRRu73dHBkzUXFU08zhzCX0U0nfb
	Gma+Iuzl7hPq0SiLvGQ1kTZs1LBn+M8+q+MGUs1a3QgT+QB6/6zNu2h/SBMplvCf77eP0NyKZSaTY
	oMMAulNJwYHPMSQPK67Hrs4PWCx6noVyqXQwfmCdDjrVdEeE3uHL1C1AFwMwQdSaPokMlDclUDUlb
	cn70Flr9q9SNTkYldLIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9khF-0033ba-1k; Fri, 08 Jul 2022 09:54:49 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9kgr-0033Os-M8
	for linux-rockchip@lists.infradead.org; Fri, 08 Jul 2022 09:54:31 +0000
Received: by mail-oi1-x229.google.com with SMTP id r82so26462987oig.2
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Jul 2022 02:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vEaJ5po9Za//FEsrnkPxw8yZtxSE9rhk4WCBsPOWM7o=;
        b=IKPynV5CRGV7vLXVINTPyxkKjJie+puMmQK+dPjIBcPew6KRz2RR05MmLQG9MQGwK6
         4lhKjJMDx0RhUt1VGaTH/NQvXq0/hjYiY6MaLRdMInpaOH3E8VXCXBbupYvOBIXXvfcX
         rdHsJPLSGFljCjcLKPVLBv9pO/Vj64ltNtjPloOoU0OT35mWSxBaN4rKPhcT8actbOiI
         H9G2S4h3fz0vfo/q1kc9d/xmS5Bs1U1RHp6iOmFpatIy4ZTpgvXV4LG6mhATxYpO5Zfa
         R4q1vFDGI1WVz6fOL3ckOwlc7NzapmEGuUv67cmI+GSYJIv6CcNcAPdZG/q41zI06Vwf
         59ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vEaJ5po9Za//FEsrnkPxw8yZtxSE9rhk4WCBsPOWM7o=;
        b=wJ7CjvHY74oYxiE3CJbLVyo8anWs8QStstvAY7UiD1OblDJkFV0Dd23DDJKrzKhuUT
         ykT2cCHTrQorsoGanJrpR7u7rCaM69pUgrf8kdqlfvALax8nlTcGLZdjNWK11GCpRzAF
         pULiB/sTWI1CbihGpPo+EbvyfX3ZcoxliHdrmziCZXU4W9tN51WGvb2+GnapTaKwTMqW
         QAQFseLWkwhBMU2fDCsXOLypccPvFwL2N1OPFabUqU2Fl3Lt8mynqdWKmxoRM1f12ExU
         +uhubNIn2o9/TFKJhtk1UgWUSuz0G80+eEengn2xoG4XQfVUJ1WGPSjyOlJkrjrmTcgu
         JQgA==
X-Gm-Message-State: AJIora/7/ruqc2QKH+WbrxtfsoZnhxC3ctn7mrt6Xo5B8bO/XIYnKMBq
	qTrej5LagpZQY0b0KtmusRWMUQ==
X-Google-Smtp-Source: AGRyM1v4wJ7JVr6gpnAq37NLXMjnCZVAR1q0WYYm/dBK+pZJG0d6tLmmRs6CSDsDhSuogKiYR+xGfw==
X-Received: by 2002:a05:6808:eca:b0:2f9:c581:3f76 with SMTP id q10-20020a0568080eca00b002f9c5813f76mr1328601oiv.138.1657274062762;
        Fri, 08 Jul 2022 02:54:22 -0700 (PDT)
Received: from eze-laptop ([186.13.97.246])
        by smtp.gmail.com with ESMTPSA id b11-20020a9d60cb000000b00616dfd2c859sm11916643otk.59.2022.07.08.02.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 02:54:21 -0700 (PDT)
Date: Fri, 8 Jul 2022 06:54:13 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v11 13/17] media: controls: Log HEVC stateless control in
 .std_log
Message-ID: <Ysf+xcbuIyYy7HIn@eze-laptop>
References: <20220706093803.158810-1-benjamin.gaignard@collabora.com>
 <20220706093803.158810-14-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220706093803.158810-14-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_025425_770790_FB6A452B 
X-CRM114-Status: GOOD (  13.10  )
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

On Wed, Jul 06, 2022 at 11:37:59AM +0200, Benjamin Gaignard wrote:
> Simply print the type of the control.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/media/v4l2-core/v4l2-ctrls-core.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> index ff8a61f24d0a..c5c5407584ff 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
> @@ -307,6 +307,21 @@ static void std_log(const struct v4l2_ctrl *ctrl)
>  	case V4L2_CTRL_TYPE_VP9_FRAME:
>  		pr_cont("VP9_FRAME");
>  		break;
> +	case V4L2_CTRL_TYPE_HEVC_SPS:
> +		pr_cont("HEVC_SPS");
> +		break;
> +	case V4L2_CTRL_TYPE_HEVC_PPS:
> +		pr_cont("HEVC_PPS");
> +		break;
> +	case V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS:
> +		pr_cont("HEVC_SLICE_PARAMS");
> +		break;
> +	case V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX:
> +		pr_cont("HEVC_SCALING_MATRIX");
> +		break;
> +	case V4L2_CTRL_TYPE_HEVC_DECODE_PARAMS:
> +		pr_cont("HEVC_DECODE_PARAMS");
> +		break;
>  	default:
>  		pr_cont("unknown type %d", ctrl->type);
>  		break;
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
