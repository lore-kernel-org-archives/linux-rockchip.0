Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB348C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 09:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqXy2Q3eIvBNtozQtFn4uvXcmHX7ugam3LRrS9bnzKI=; b=kRJUqslylA8BlB
	DBm03XlfdiececsGmqdWbWIKpuPTQw1xMoDmDGwaBUJgUuf+TWKoiAo/Xxatj3WSjhsQzIWMyFkjO
	PrdA3HXOZUjV6+87mvcSA/8RtHIm8bcbAtYOKf/LOfkBoJUm9mKGuJr2pbWQl/oW1InTycqCTaAZj
	7clRBoNnllcuvVbDGYfEsLDw8xrQouk1fXpwUarcg3N8TdFxq4QvfAQyHNIDSgZr9YfzoMQlCTQUk
	OTz4nTo33DP81Ssar1ghh5ftmg1wYbRdPnl3AHnsodsLzATDOfMaRYKnX9+uu/dnV3xTIWz0t5P6v
	XbCkCDb8wxIY/aT48eEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJbM-0000000Di86-06Om;
	Sun, 23 Jun 2024 09:33:36 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLJbI-0000000Di71-4010;
	Sun, 23 Jun 2024 09:33:34 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so46022291fa.2;
        Sun, 23 Jun 2024 02:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719135210; x=1719740010; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AjZoaS2Am0A8j/9rhUaTOpBI3VQYzkae19fmYTVfhu4=;
        b=itoOzBeakEmKty+oUzwpLKD4KGGOeD7eiA5tZdKO+Asqa9bN3fC1i5NZWOwiaZ4wzf
         5Z9rfWoLYS3QVvUCGvL5+6Kp8tG+b2qiV0gKCKfQgo6d/Kyr3rZv9UxEXIKKQGQV3Shh
         oAX2YDYeIKy6ZlzVQLv4dajjtesC/D03jOv/m/NBu1hBPCxuCiVgNWPr1CXlnIG/bWqu
         5n9X6yitZWwbr2TQG8B92046lRBN1n9Zlqb3Jrl0xMB6Rsz2PWBRyG2E5YDYMTq2Uvtq
         fOV16f3q8J+4wUrN5hMKVt/Xporeq2uUknxDOIMZjbb/qEtJqWSpxtful/Dpx4KI/iMI
         PBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719135210; x=1719740010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AjZoaS2Am0A8j/9rhUaTOpBI3VQYzkae19fmYTVfhu4=;
        b=Xq8ICJZYbaoAEsjpwwu+iq6AS0Y4FIpKs8VJrNnbDEZYlZLAWNQ9z9W8BbhHZI4oKQ
         HpyFg4tnmEaStk7eqaszkztDL+2ajpQ2y4+49VKyBiP+3KXVxo63FrwHP2qYfMGon4Eb
         LbFFdJupinHoSQ5IvuV3kKYSUpqDqAqvEvg2p2OnwrgAfytrvH50zQAAH4Jaw6a2z4pK
         XDQZRGzYt67AtUxGQq3k5xNWZPIWgJqvMfDzcSbv07VQX6dpMJV188+reAWduXqi9EMz
         9SaWdjzod33bm2SIZtiBEEVTjC9r6NYyzbMI7C4h+Y5g+nYiXblVR1XBTdPTDbgbPFYX
         k4dw==
X-Forwarded-Encrypted: i=1; AJvYcCX0bO5QKJpecGJuW5Xo1Lp060mto5YpMjTPUFQffnPclxBl4J9rFtpGM46fUVjbRE8r6N9O5MwpvETygD09557TA3sMuLPJAv2Cbiwgh5F/f10QezjQ6c2ucmapq38ZJLIz2RCRoVlzguVUThiwdOH8T1EIG3winP4=
X-Gm-Message-State: AOJu0YxwFqz5SsLJoTzSpvRew2a7CfTq7I9U+gVw8RAGjv1MYeao/Gre
	F725UmVwZe8uaK5f7NCxYg4AEDddLRrkRcip82AnMjFdt4vSnII=
X-Google-Smtp-Source: AGHT+IH6KUI2bioFkoMZdiCXVbMS6OWNo1xhcCBiJkbNjUI36kuWQR3a8SDuPSHNgleWUhg85nvxmA==
X-Received: by 2002:a2e:3518:0:b0:2ec:57b4:1c6f with SMTP id 38308e7fff4ca-2ec5b31d1a2mr12159971fa.34.1719135210188;
        Sun, 23 Jun 2024 02:33:30 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:ffa8:3dda:1e1c:17ff? ([2a02:810b:f40:4600:ffa8:3dda:1e1c:17ff])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a724adc5dd4sm48127666b.129.2024.06.23.02.33.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jun 2024 02:33:29 -0700 (PDT)
Message-ID: <c7882f94-e2cb-4023-a53e-87ebc8fa3460@gmail.com>
Date: Sun, 23 Jun 2024 11:33:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: rockchip: Introduce the rkvdec2 driver
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>,
 Andy Yan <andy.yan@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-staging@lists.linux.dev
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
 <20240620142532.406564-3-detlev.casanova@collabora.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240620142532.406564-3-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_023333_110933_3C108AAC 
X-CRM114-Status: GOOD (  35.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Detlev,

Am 20.06.24 um 16:19 schrieb Detlev Casanova:
> This driver supports the second generation of the Rockchip Video
> decoder, also known as vdpu34x.
> It is currently only used on the RK3588(s) SoC.
>
> There are 2 decoders on the RK3588 SoC that can work in pair to decode
> 8K video at 30 FPS but currently, only using one core at a time is
> supported.
>
> Scheduling requests between the two cores will be implemented later.
>
> The core supports H264, HEVC, VP9 and AVS2 decoding but this driver
> currently only supports H264.
>
> The driver is based on rkvdec and they may share some code in the
> future.
> The decision to make a different driver is mainly because rkvdec2 has
> more features and can work with multiple cores.
>
> The registers are mapped in a struct in RAM using bitfields. It is IO
> copied to the HW when all values are configured.
> The decision to use such a struct instead of writing buffers one by one
> is based on the following reasons:
>   - Rockchip cores are known to misbehave when registers are not written
>     in address order,
>   - Those cores also need the software to write all registers, even if
>     they are written their default values or are not related to the task
>     (this core will not start decoding some H264 frames if some VP9
>     registers are not written to 0)
>   - In the future, to support multiple cores, the scheduler could be
>     optimized by storing the precomputed registers values and copy them
>     to the HW as soos as a core becomes available.
>
> This makes the code more readable and may bring performance improvements
> in future features.
>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>   drivers/staging/media/Kconfig                |    1 +
>   drivers/staging/media/Makefile               |    1 +
>   drivers/staging/media/rkvdec2/Kconfig        |   15 +
>   drivers/staging/media/rkvdec2/Makefile       |    3 +
>   drivers/staging/media/rkvdec2/TODO           |    9 +
>   drivers/staging/media/rkvdec2/rkvdec2-h264.c |  739 +++++++++++
>   drivers/staging/media/rkvdec2/rkvdec2-regs.h |  345 +++++
>   drivers/staging/media/rkvdec2/rkvdec2.c      | 1253 ++++++++++++++++++
>   drivers/staging/media/rkvdec2/rkvdec2.h      |  130 ++
>   9 files changed, 2496 insertions(+)
>   create mode 100644 drivers/staging/media/rkvdec2/Kconfig
>   create mode 100644 drivers/staging/media/rkvdec2/Makefile
>   create mode 100644 drivers/staging/media/rkvdec2/TODO
>   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-h264.c
>   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-regs.h
>   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.c
>   create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.h
...
> +static inline void rkvdec2_memcpy_toio(void __iomem *dst, void *src, size_t len)
> +{
> +#ifdef CONFIG_ARM64
> +	__iowrite32_copy(dst, src, len);
> +#elif defined(CONFIG_ARM)
I guess that can get an "#else" since memcpy_toio exists for all archs.
> +	memcpy_toio(dst, src, len);
> +#endif
> +}
> +
...
> +	/* Set timeout threshold */
> +	if (pixels < RKVDEC2_1080P_PIXELS)
> +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_1080p;
> +	else if (pixels < RKVDEC2_4K_PIXELS)
> +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_4K;
> +	else if (pixels < RKVDEC2_8K_PIXELS)
> +		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_8K;
> +

Did you test if it works with anything > 8K? If so, you propably want to 
make the check above

+	else
+		regs->common.timeout_threshold = RKVDEC2_TIMEOUT_8K;

Otherwise the timeout may not be set/contain invalid values from any former stream.

...

> +
> +static const struct rkvdec2_coded_fmt_desc rkvdec2_coded_fmts[] = {
> +	{
> +		.fourcc = V4L2_PIX_FMT_H264_SLICE,
> +		.frmsize = {
> +			.min_width = 16,
> +			.max_width =  65520,
> +			.step_width = 16,
> +			.min_height = 16,
> +			.max_height =  65520,
> +			.step_height = 16,
> +		},
> +		.ctrls = &rkvdec2_h264_ctrls,
> +		.ops = &rkvdec2_h264_fmt_ops,
> +		.num_decoded_fmts = ARRAY_SIZE(rkvdec2_h264_decoded_fmts),
> +		.decoded_fmts = rkvdec2_h264_decoded_fmts,
> +		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> +	},
> +};
> +
Note, that this is also given to userspace (VIDIOC_ENUM_FRAMESIZES) and 
this is already incorrect in the old rkvdec driver (and hantro): From 
userspace perspective we do not have a restriction in 
step_width/step_width, as we are aligning any given width/height to HW 
requirements in the driver - what we should give to userspace is 
fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS; fsize->stepwise.min_height = 
1; fsize->stepwise.min_width = 1; fsize->stepwise.max_height = 65520; 
fsize->stepwise.max_width = 65520; I guess this new driver should be an 
opportunity to fix that and distinguish between internal and external 
frame size requirements and the .vidioc_enum_framesizes callback should 
adapted accordingly. Regards, Alex


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
