Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DED54C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 02:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/65PoHybfuvjKPtWr/rDETjpDXgR7AzGlZ/rNBadGY=; b=c5vEXvpz+UoY6y
	2TC1rnm1icrKMxVIWed1EZj+DrMI6qUFo3gU0AkJTEOzoaHULPRcPe9KJsWKallqbq95M7D46GP2Z
	sf1GqBgfo6sjJyWG79mQ4+hOPA7nR9nzoGvUhqobi+Pd1gQDUXa0bN139xHPia8L+3SgCfgY67f6e
	SD81PiRta0vF8t7xxzg8s3G6Zo7b/PFYGKMGlyJBeDGPCPUvY3C1oxG9d/5Q8VEjAw6K7LwqBHJQU
	mVij1p3MKRF2TMRhuGuPAwBboJ5HX2FPhRYugxjYVu7Gz3iielkOD6oSSfdg2ZumpzCp9A4JS3D3U
	PIHk6VU51S8TyacBTyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nceCp-00EdDw-No; Fri, 08 Apr 2022 02:18:35 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nceCn-00EdDE-7f; Fri, 08 Apr 2022 02:18:34 +0000
Received: by mail-pj1-x1041.google.com with SMTP id
 j20-20020a17090ae61400b001ca9553d073so8265799pjy.5; 
 Thu, 07 Apr 2022 19:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=3zm5T0QfPFPheBJgjOFA6sW0BzyI//acXdPCPSvGRVw=;
 b=DqmhEpp/qGAb8x3ijWw7YndcBoes2nQUnvyuEhq/9gs4LSTKgI6ibRCcUxCNzgSu23
 8UGcwr3+Zo3k2PWBnG/wZJD9aFQ3ACQG/HhIhegoyzpeHkGcoHpABaV4q8DdZ47GuYv7
 CjO6qIm+SmnikDPOYkSdvcaZf90i9fgclUrtDXuRRw2+gnf2oVSQPu+ryds1cdE4jlc6
 PPN9JoVCp0LFZCx3feFGNSnsxClU76rWGx0PawnhfQSpI++ogsbA9C9aPki+Ivnqsswu
 +AHZqq8zFfQICnZQmMelH6iGG539lBhYMy6PjqLveGUw89PYSXMo08BXst/9pRqG2eUN
 7AsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=3zm5T0QfPFPheBJgjOFA6sW0BzyI//acXdPCPSvGRVw=;
 b=qhKU6RpgqIjeY0LyPqDJS3WoXtj/KJltaBAHzwKlIlg8JdL0+qbcQGPpquCdPZFZGT
 pr6wj2bziFivYWz4QiUsWvnFLD7mxxLLhjcd7uYphHuE0viB+TlfV1nqUSZQ59UqyG8r
 +LAdKhhYYK4RGuXzLLLkNIlWH4tlzUzN2AhCjdy14Jxzf3iUzoAEyAsp49rnROHqFQEQ
 dnKKiUsTDsYxT2Y4q+pfcRpr4onLrEf7MCJ4HDYl3mRYcpKGH/skIN0wlIHwS+1fbB22
 LKY4WNLEHf+y7M5z6IClZ+Wlui6DxmLg05pWdUYV7YWOTqRBG43EoP23Poj7bIjv0G1G
 t25g==
X-Gm-Message-State: AOAM530KHSuRaAcmhiWarRZRPC8qR1AT8tbkkkFN6ZcTGxGLuUXRWx7/
 gjkfUITNfuFsl5a1Zlso27OS5Ssbxqnngg==
X-Google-Smtp-Source: ABdhPJwZkfBTl8jo+XOzjU6/+PMtkzZCAaMiKnENeZrNagp1UniVk3PZKxkSLhjBVV4vm2LFYXLJkA==
X-Received: by 2002:a17:902:f70c:b0:14e:f1a4:d894 with SMTP id
 h12-20020a170902f70c00b0014ef1a4d894mr17495220plo.65.1649384308932; 
 Thu, 07 Apr 2022 19:18:28 -0700 (PDT)
Received: from [10.11.37.162] ([103.84.139.54])
 by smtp.gmail.com with ESMTPSA id
 pg14-20020a17090b1e0e00b001c75634df70sm9938774pjb.31.2022.04.07.19.18.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 19:18:28 -0700 (PDT)
Message-ID: <693c7823-9edb-f821-1573-3bb01948253f@gmail.com>
Date: Fri, 8 Apr 2022 10:18:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] media: rga: fix possible memory leak in rga_probe
Content-Language: en-US
To: jacob-chen@iotwrt.com, ezequiel@vanguardiasur.com.ar, mchehab@kernel.org, 
 heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220324083724.42654-1-hbh25y@gmail.com>
From: Hangyu Hua <hbh25y@gmail.com>
In-Reply-To: <20220324083724.42654-1-hbh25y@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_191833_301010_AC71562B 
X-CRM114-Status: GOOD (  15.20  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Gentle ping.

On 2022/3/24 16:37, Hangyu Hua wrote:
> rga->m2m_dev needs to be freed when rga_probe fails.
> 
> Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
> ---
>   drivers/media/platform/rockchip/rga/rga.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 4de5e8d2b261..c2ce4fdcdb7f 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -865,7 +865,7 @@ static int rga_probe(struct platform_device *pdev)
>   
>   	ret = pm_runtime_resume_and_get(rga->dev);
>   	if (ret < 0)
> -		goto rel_vdev;
> +		goto rel_m2m;
>   
>   	rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
>   	rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;
> @@ -881,7 +881,7 @@ static int rga_probe(struct platform_device *pdev)
>   					   DMA_ATTR_WRITE_COMBINE);
>   	if (!rga->cmdbuf_virt) {
>   		ret = -ENOMEM;
> -		goto rel_vdev;
> +		goto rel_m2m;
>   	}
>   
>   	rga->src_mmu_pages =
> @@ -918,6 +918,8 @@ static int rga_probe(struct platform_device *pdev)
>   free_dma:
>   	dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
>   		       rga->cmdbuf_phy, DMA_ATTR_WRITE_COMBINE);
> +rel_m2m:
> +	v4l2_m2m_release(rga->m2m_dev);
>   rel_vdev:
>   	video_device_release(vfd);
>   unreg_v4l2_dev:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
