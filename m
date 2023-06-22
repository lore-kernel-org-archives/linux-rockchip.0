Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2817EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 13:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEhpXGQxBYRvBJhVWv90WsKXsI1vxAr182HzPR3MOZE=; b=QcEdAzqdYmjH4B
	QiEmqB+qrE+h56kORzfgGQwU4bc/9ODBQIQJFCZYKoiPQU6grBJJUPf6fMSmlrViEqv6dyHN6E9mN
	xFD1OSAxrbt82jXtGjKATmEacwLALWNIRytF6RpffPh+kwjplLls0teGHVFpdE7AwReb6qPs69ADi
	O2H32g4ldhRcBTUclWVCGRhpv0oVh8iECbi3dgULJK8WB7CTpsNe/S3lHo7dT9xVp1Bvr/s9DuTgd
	kn9ECIgrtyGW5dCbepUfsoIo/ahevxmSlEkNAAOlqWbwwWfiftutw3vCHZdHr4HkQRXh6vEd0TCVB
	zneoY7X+Sxf3n47WyMGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCKni-000s0o-25;
	Thu, 22 Jun 2023 13:56:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCKne-000rxM-01
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 13:56:40 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-311183ef595so7208790f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Jun 2023 06:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687442195; x=1690034195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QEW2WXBte3jN1fLJ211gvIuJSeoOteLGjUnX78P98k4=;
        b=rrCXA0HYW+NRaxuK0LzkBkWHaS32roNXnVTcSlzHkz0PKFiRzi6Lf0a2kxT5sw4sbW
         jjMVv3gbRGX7y73/rTeAxgcyKJRaEjx8hgeXVmr1KOVjDxufD90egWATGqaHhCdg5lyL
         CCWBPoNFR/6czRV2XsuleAFb6zUW8evSN0nKHKSOPM/86ngFyJnI//xhzazH6g+ufdey
         iAvpeJ61KZ0V6PMuriG406hq6r4Jp2DjThmRQnPoG+2mD5V8pIHj1OSfFc1yhmt6x4Iw
         hJJY0N9IrNvCEy31Uv4j6O7vgmIRqgPp5toYxfIEQfRxNvrKDPf6N2IWfmuS9pLtFoy0
         IMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687442195; x=1690034195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEW2WXBte3jN1fLJ211gvIuJSeoOteLGjUnX78P98k4=;
        b=RjUhiQZQewapCbPVidiK/DOPCCGC9xNVZY+00pOhi9vjDbHxg6nEibVMVZa8nxVUTA
         vOIEmHalkzbD2gYQvoG2xciQ7kZfiTcrt2PIUbnB1gJMn+TxPKntqbD1rBEXB58RbJ6e
         gn4m3V5K+1onEkIIVoIeD0cyJ/vqnz3ucxD9li2oRIRVsE4VNRytLzZ4iz7oNhf63QgI
         U3+yTS7q0c6kqf15RFhiCTZEseIcvQob9odiRn1C3G8F5vIyDtl1WTPiNF9Gb9ow7ubQ
         klbHOmmBp8ly1SBqVKIInA6Bki4cWh9aQZuunvBF3ovp0jrG9KWcIcgBIUfpz/2S1s8N
         6RFQ==
X-Gm-Message-State: AC+VfDzlUgqw1RW3y31YdcrHQLYhNdjPj75SZll1l3zdCgN0Wjs94yrv
	by50vV0R+8i8YuHzGaJIUahAnQ==
X-Google-Smtp-Source: ACHHUZ6a6EZPyQbiw2QFhMNDMLiHUFcNZTWVMQXmY1brW9zlZbdXXamxNjQ4bnHgoRKMXiHVkCeg6Q==
X-Received: by 2002:adf:ec45:0:b0:30f:af06:7320 with SMTP id w5-20020adfec45000000b0030faf067320mr1923670wrn.23.1687442195120;
        Thu, 22 Jun 2023 06:56:35 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id s3-20020a7bc383000000b003f6132f95e6sm18924956wmj.35.2023.06.22.06.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 06:56:33 -0700 (PDT)
Date: Thu, 22 Jun 2023 16:56:29 +0300
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
Message-ID: <1d9fea5b-5c74-4fc2-9287-71cd68adbda1@kadam.mountain>
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622131349.144160-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_065638_098686_90CD2DBC 
X-CRM114-Status: GOOD (  15.13  )
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

The UINT_MAX limit adds a level of danger.  It would be safer to do what
the vfs layer does for MAX_RW_COUNT and use "INT_MAX - PAGE_SIZE".  That
way you can take size + sizeof() and it's only very rarely going to turn
negative.  Or at least just INT_MAX.  I would keep the VB2_MAX_FRAME and
define it as:

#define VB2_MAX_FRAME (INT_MAX & PAGE_MASK)  /* The mask prevents 85% of integer overflows */

>  
>  	for (buffer = 0; buffer < num_buffers; ++buffer) {
>  		/* Allocate vb2 buffer structures */
> @@ -858,9 +858,9 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
>  	/*
>  	 * Make sure the requested values and current defaults are sane.
>  	 */
> -	WARN_ON(q->min_buffers_needed > VB2_MAX_FRAME);
> +	WARN_ON(q->min_buffers_needed > UINT_MAX);

This will trigger a static checker warning because the condition is
impossible.

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
