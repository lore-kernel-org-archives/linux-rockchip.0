Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDFE7C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 12:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ddJDWgWEzNzRu6HrJwehsKdl7TH0gzs+NojajSY5Mw=; b=4WjseCkBp/w31D
	raFq29O01Rfk4rgyeWMNvp0MqA4G5eR7CFP+SSiCArFzCO7qgelzfX5Y2VQ13gt7FRW2qUBJ17LpS
	SGi3R8lLyl0c+H8xuRlawuy+oFCykLtSYlV6LnQWJnhPdsN+aOvfPq8wjnQFyDymk867fegEL2Fhd
	C6BM6/hqPHHZ1PIXNEbts7gIExlQpuu2wK6wX4JGMBMnlrZ9ECqwYPKOkKmq/jCHMJAFmdT8X5+K4
	9mfDhaMkWkT9VrLwRe5AU2ca/pkmmlhx3uOtNmmplU7ARHYENSteNOq94Wb6ViYmaG/Ke5GirieSc
	HWyBCXqD9yzHoxq884qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJB4n-0000000Aaai-1NQK;
	Mon, 17 Jun 2024 12:03:09 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJB4k-0000000AaYS-2FfB
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 12:03:08 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4217d808034so37326305e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 05:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718625781; x=1719230581; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d8Fhf4JOX+eQHmfKJgo0VL59I075x6PJI/pMFa803UQ=;
        b=uPneFReEYPVx+SvQOC4GSNmidil2euKuzRsafDRYJlPHyDRrMVWql9Cx8e5CD0wW9d
         KuGNDUGS8RCkPUQHx83nqg1jPXbQStvliY+tKbIAidlGa76Jg5BSflEcTHNDeVitN4BK
         lhxGAfn7tcTuhLmVVl1kpnSakbQC3J4BEo45S28ir31xdV7HPOMGGBQh7NQGqeyGz9x1
         u6Br8o75PthO5BbsYzd3kkGgrAhSbj8NUsReZwTYSCz+KTPmih1s3K3awM1IZZsgm8Ks
         v3QfpXwXJ0sevSXdZS6JoyB0V9zbus2uHV4w/yWgYUHMYkhJrpvIUYqzRPBXCNq2E9YG
         S5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718625781; x=1719230581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8Fhf4JOX+eQHmfKJgo0VL59I075x6PJI/pMFa803UQ=;
        b=sH/aM/ySqUKSKas4NvoTzV5+cq3CIOFdXN5ck1DtyTWleyjRIRSa4IifjjpskqltlS
         pGjJ3eur6IQouqJPMD5+9KQa0R7E4+vw+znkTMm74DBiBay3Tn8jWLuYPjUYQEPC2cd1
         PymczqmOPuEtQEX5f44+X1qXm7YWKXYI3JNVz7M5IbbtDwayh+15g+ePDVRlJpIHn8E1
         XZsn0ijBgbRY0aLOw3Pqc2Pv2B0CU942yu45BmTjnvFDBm+ea9rx0Mn3WOP36e3/gET0
         5tVqk2chwkRoKBrBkX9DLrfzieLsTMNuwJMIzK5GJyIBzvcdZon9Dnv6MRI1m8clvxm5
         69pw==
X-Forwarded-Encrypted: i=1; AJvYcCUcLuEBGWW9tumO8HT+I7qL352/uuA2S+4JUPThXieDR+V4fuW3mjDwVvZOWeq//wxn5weDWNJoR7bbs5WV14avG+fellSXczBwUQFffFZbHTmA
X-Gm-Message-State: AOJu0YzMlxTcfRg/vuEpd+0XVQ/P8E2G+i4KPMp9KJAsR02VklwzJMSY
	JTt9atOYndAPoyxS+DDIPLFOpC2U4e3KLttgm6/LvODUq2SKo/b1oBNA2qMqXyE=
X-Google-Smtp-Source: AGHT+IETqjtVw4vm/BaAXb+7+BMz4Su+YcAJ5zJwSTOWHGTDcdm9ORyc65IHd9xEKGG8oTMrigZ+jg==
X-Received: by 2002:a05:600c:1d0f:b0:423:4c2:7a43 with SMTP id 5b1f17b1804b1-42304c27b17mr80244375e9.0.1718625781238;
        Mon, 17 Jun 2024 05:03:01 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f6127c1esm156486645e9.23.2024.06.17.05.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 05:03:00 -0700 (PDT)
Date: Mon, 17 Jun 2024 15:02:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Message-ID: <94b9e0fd-2f4f-4d75-ae39-7d780a4e6374@moroto.mountain>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_050306_689482_98EB9161 
X-CRM114-Status: GOOD (  15.27  )
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

On Fri, Jun 14, 2024 at 09:56:27PM -0400, Detlev Casanova wrote:
> +static int rkvdec2_start_streaming(struct vb2_queue *q, unsigned int count)
> +{
> +	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(q);
> +	const struct rkvdec2_coded_fmt_desc *desc;
> +	int ret, i;
> +	u32 width, height;
> +
> +	if (V4L2_TYPE_IS_CAPTURE(q->type))
> +		return 0;
> +
> +	desc = ctx->coded_fmt_desc;
> +	if (WARN_ON(!desc))
> +		return -EINVAL;
> +
> +	width = ctx->decoded_fmt.fmt.pix_mp.width;
> +	height = ctx->decoded_fmt.fmt.pix_mp.height;
> +	for (i = 0; i < RKVDEC2_RCB_COUNT; i++) {
> +		ctx->rcb_bufs[i].cpu =
> +			dma_alloc_coherent(ctx->dev->dev,
> +					   RCB_SIZE(i),
> +					   &ctx->rcb_bufs[i].dma,
> +					   GFP_KERNEL);
> +		if (!ctx->rcb_bufs[i].cpu) {
> +			ret = -ENOMEM;
> +			goto err_rcb;
> +		}
> +	}
> +
> +	if (desc->ops->start) {
> +		ret = desc->ops->start(ctx);
> +		if (ret)
> +			goto err_ops_start;
> +	}
> +
> +	return 0;
> +
> +err_ops_start:
> +err_rcb:
> +	i--;
> +	while (i) {
> +		dma_free_coherent(ctx->dev->dev,
> +				  RCB_SIZE(i),
> +				  ctx->rcb_bufs[i].cpu,
> +				  ctx->rcb_bufs[i].dma);
> +		i--;
> +	}

This will leak the first element of the ctx->rcb_bufs[i] array.  The
traditional way to write this is either while (--i >= 0) or for unsigned
int i iterators it would be while (i--).

> +
> +	return ret;
> +}

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
