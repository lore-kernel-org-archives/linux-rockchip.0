Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C92C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 14:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gk0dvU3G+AfJDCmztQ9dK1ZmWoEHGNXRmer0iY8EOsU=; b=qQR6xn3QWUbTb7
	wHiu7aYttVRlxk/YGf8iw8m4Wn2t5qFFzJ+Sx7NN5Kin5oKE8ZZaxPDs75H2rJ2YlrAKNrMd0K0Hj
	oeRcIqftPF5gJN4NglaeuOLtCKpr+MsGo9lUEQn1mh3cVfXmlpVsRrdIPyJZPA++T/VdkvqvVP6Th
	DorBuliOhOS8czxnweRQkDNXe3rspbV+vOvujEuF74+aRN3QmtRtFc/tkhQ7Y4xIPK/U045A4MumO
	tXJ6GupCKOQHNYelR+fzUoF0aQHU9ffa5Z1JdZabdWLtUejUQQN6gJcVUEPnkie3WEoZuNOmVPoNz
	XYJJqYxb/7DdVzFGzhhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nltqB-006KGG-UZ; Tue, 03 May 2022 14:49:27 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nltq8-006KDo-P5
 for linux-rockchip@lists.infradead.org; Tue, 03 May 2022 14:49:26 +0000
Received: by mail-oi1-x22d.google.com with SMTP id l16so11145595oil.6
 for <linux-rockchip@lists.infradead.org>; Tue, 03 May 2022 07:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=L88EHtQ6nEd2T7lOrwIfVWNdp4VhbNintMvDvOLss8Q=;
 b=ORflvvEwfGsYDuH3xu13w2z6La7dFK0pcvzJHprpjjZDa7UOodm2NbKomhn0ZxHAv/
 WeE/Ng3JKryVEH1P+hAiDezRt5zKgpCZFB8g9ORQIIDosgtqZCbSX44tUWWNkJadZB+/
 f01px+Cg1VZ51LCys1DxkiAGuzIUWsIkAu5kSVwDPiBpmSCQrsc9Wp/cSw9zB0DZW/r2
 x0RJRXQJtbf49AAbQ/BfojEXpX68Og4gQffmpy/hrwZE0bRI2eZudc34eUEzTMEiAow7
 NXiA9f5U22R7Ln9pfvBUI+tMK2+425HiEAEphIOSfl/avuv1WHc1jpnEDZOYcXLFF6KN
 zihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L88EHtQ6nEd2T7lOrwIfVWNdp4VhbNintMvDvOLss8Q=;
 b=KBqIbwHbVCjHz1slPwzB9egPOjL7xuV8tivqvWVfllXNwNF7NhbxDKjJWDyWStdvxb
 qQNGpaJJwBPsEVWo6hFHj52/2yEaasx9efsdqK6NozcnlS9DyQPfhyKnARLD8BEIW7fA
 AvCgRmT6jjZjahrD0dpxgMcUDlTo263d9/ASquYvnQxUjpNznplOzjWvEiV9VwACLWfI
 UlecjGKI24UXytt469ECb7lpiJyiDkTvQoLa5m2UWcVF0jDkOV7rNGCLSytxFdy04+3L
 kDmbQZHaQSvlkAALmsI7XEJeMwye6fdsnMFovHXrfFRwKbhid4YWiVeZT2NDgUF3ubIy
 GbOA==
X-Gm-Message-State: AOAM531NURVee5NK/kG7tFO8Q15oKG0w+Iiq4UUF1Ifg0uwufG9CPYPS
 OamhbY1oHa0/EIyq1ThJSLJpfw==
X-Google-Smtp-Source: ABdhPJw8xg+KsB8XzF+qTHUK9MDA9KrMrs/SF3SF90jBoUxSXf+/VSVFqz3qHdYKPaSfEzX/l0ykMA==
X-Received: by 2002:a05:6808:56b:b0:325:9f5e:3fd4 with SMTP id
 j11-20020a056808056b00b003259f5e3fd4mr1978437oig.199.1651589361547; 
 Tue, 03 May 2022 07:49:21 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 o20-20020a0568080bd400b00325cda1ffafsm1707597oik.46.2022.05.03.07.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 May 2022 07:49:21 -0700 (PDT)
Date: Tue, 3 May 2022 11:49:15 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com
Subject: Re: [PATCH v3] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
Message-ID: <YnFA6z0VxUdF6zht@eze-laptop>
References: <20220503135529.683474-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220503135529.683474-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_074924_901893_7D1A1E75 
X-CRM114-Status: GOOD (  15.79  )
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

On Tue, May 03, 2022 at 03:55:29PM +0200, Benjamin Gaignard wrote:
> Always set pps_cb_qp_offset and pps_cr_qp_offset values in Hantro/G2
> register whatever is V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT
> flag value.
> The vendor code does the case to set these values.
> This fix conformance test CAINIT_G_SHARP_3.
> 

Another silly nitpick: s/fix/fixes.

> Fluster HEVC score is increase by one with this patch.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 6deb31b7b993..503f4b028bc5 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -194,13 +194,8 @@ static void set_params(struct hantro_ctx *ctx)
>  		hantro_reg_write(vpu, &g2_max_cu_qpd_depth, 0);
>  	}
>  
> -	if (pps->flags & V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT) {
> -		hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
> -		hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
> -	} else {
> -		hantro_reg_write(vpu, &g2_cb_qp_offset, 0);
> -		hantro_reg_write(vpu, &g2_cr_qp_offset, 0);
> -	}
> +	hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
> +	hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
>  
>  	hantro_reg_write(vpu, &g2_filt_offset_beta, pps->pps_beta_offset_div2);
>  	hantro_reg_write(vpu, &g2_filt_offset_tc, pps->pps_tc_offset_div2);
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
