Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 036E4EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 14:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BppOcplyO1AE5l+VgbSuF9dUHWMdrLbXd/V+aopTYA8=; b=bVoeqidbQxlRVi
	cc9oOT0P09GyDoKbG1RkFXh64jyXY4sAPbWWerlABqH4PluWJTm6nmLLv593W3fnnjILNNzVSLSt0
	8ZPXgyjBqld7k+Q2Qp4QoxM6NbeyDhusRudW0nRdXd9INDXdNYTqkOWinSyd/tKMYvHv6B0QnrsQd
	oZottYC5lVE6975VEm+LFCxPjbKfJoTZd5/dHAwVzVQ5Unlxt+y+WfxmvZkyYWokYsodgSl5RdRo0
	SEFqfBbmR2+lzNPTT9oHOEL0ksmnAbvwRod5cKRSPjQPhLA9Cc6W+nexVO5sFFtEA10att4joh5FO
	ogWvjRy4trSWbOCYxzGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCL2B-000uuf-2l;
	Thu, 22 Jun 2023 14:11:39 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCL26-000uqO-11
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 14:11:36 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fa7512e599so5684995e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Jun 2023 07:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687443086; x=1690035086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GHxJuqmuhPWFpQhIFC68lKcmCkInE/kiaYAhaHcn0+Y=;
        b=gEz/PAQ1qIP5WZun0LdTuL2gGMzh3DxKsvzmJ6Q0I9nak7WYgFwIua8o4b7DyFjInu
         SH+yb8hYWg8DPwV1viEU6ZlC5W12dzJ0cpS2WhYFT+HXtgViha0pmeDj9pynoswZZOTF
         P/sVO4e/j0gRgSpCoWweryl6LRW3mzxc+ShAtTe6cVPWa+CAxgZSyLrflRN7eA/KAapm
         ub1C0L2rIcRzkgBqnTbcW75iwVmmT8HRAKNXuHDGEi4rT3fGAi2MDTpm1XQbWGrx9Gzd
         RmYbgNRvkmPX0g4ourdc60JrhU8l+mRk/wFWm+1F6nQcKJZEAzhKd8wx7xJunOOfg0nk
         9TzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687443086; x=1690035086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GHxJuqmuhPWFpQhIFC68lKcmCkInE/kiaYAhaHcn0+Y=;
        b=YTmXLEEQCtTHJ+IfAaRUnEx09QttNehOf35iaoMw6ZyIYdSPzjEmT07BZYuVCl0PTj
         iuVz/N4ZYeJczzXJ0x8wMoOZJjS6GGCAALxx825UBYQ7AEeEofn8ERCunzxwUQW83hEn
         q4mGjo7UX1pyZVGbqzUKvoncrPKPM60I16K9Lhrvy/7GwVCa3lTGznWI2FqB6KKKbxCs
         cKpNLm/p4BZOKRO2n+OrL5LjxPJDKIY9GnhB/N7ZaZ8XABE1fPyRlCWyRDVejTGFls72
         s6EXvfwkoPCiZN6chl2Jg90qUCJBzQ3zHvMpGwTPhNHXGuOc3JROMnhUg+MU6xmsNdlk
         YIyA==
X-Gm-Message-State: AC+VfDwXAijS/qJ3gYspbG39VI5M54myMrdwUJoZJBYtmo6VYlBEVISV
	nCBxNPVC6Cs6jrA5gctNmpqS+w==
X-Google-Smtp-Source: ACHHUZ6BmQp3My+dLgyfXTj9FadTnh4ZdU89bg6m7H4+QQzmHulg0AjgY/idmg/TybIPzxG+o/8epA==
X-Received: by 2002:a7b:c3d3:0:b0:3f9:b7cf:262f with SMTP id t19-20020a7bc3d3000000b003f9b7cf262fmr6889086wmj.4.1687443086247;
        Thu, 22 Jun 2023 07:11:26 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id p24-20020a1c7418000000b003f9c859894esm3753202wmc.7.2023.06.22.07.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:11:24 -0700 (PDT)
Date: Thu, 22 Jun 2023 17:11:19 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
	ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v3 03/11] media: videobuf2: Remove VB2_MAX_FRAME limit on
 buffer storage
Message-ID: <bddd6cb7-cd72-4fb5-8d4a-d02cb9c46dce@kadam.mountain>
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622131349.144160-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_071134_361610_1C6EC586 
X-CRM114-Status: GOOD (  11.50  )
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

On Thu, Jun 22, 2023 at 03:13:41PM +0200, Benjamin Gaignard wrote:
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index f1ff7af34a9f..86e1e926fa45 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -455,9 +455,9 @@ static int __vb2_queue_alloc(struct vb2_queue *q, enum vb2_memory memory,
>  	struct vb2_buffer *vb;
>  	int ret;
>  
> -	/* Ensure that q->num_buffers+num_buffers is below VB2_MAX_FRAME */
> +	/* Ensure that q->num_buffers + num_buffers is UINT_MAX */
>  	num_buffers = min_t(unsigned int, num_buffers,
> -			    VB2_MAX_FRAME - q->num_buffers);
> +			    UINT_MAX - q->num_buffers);
>  
>  	for (buffer = 0; buffer < num_buffers; ++buffer) {
>  		/* Allocate vb2 buffer structures */

Ah...  Here's one of the integer overflow bugs I was talking about.  The
__vb2_queue_alloc() function returns an int so if num_buffers goes over
INT_MAX we are hosed.

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
