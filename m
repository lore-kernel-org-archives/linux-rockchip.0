Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCFC3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 09:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9X84ujv+eGw2lLwmuXz50fgjjhfePBbaf55MOT6KDzo=; b=0q5iXNlXOvflfR
	TOgkB8AW8qPwIDwgpwhL9EQTir3p9tsTN+xXofGz2xWyhkBiKVuJpFKZbgOTAPvILQIpRp51duaAV
	s8l2lgSmktRzEdg1cx8LDgG5EDhSS5QM28417drNbHCT25rz2npOhm4au66wD8/6sKcinwJ0SkAJq
	YDKlvmj8RyS4JhiC0Xb9oMafxObv4wAwDYNhSCG/nRqj7mOvrA09koYwcbjkA0idOKLZnotBvZ/8A
	QD9ijig1RejxoKJf/BxzeR+NB8kKSX4rOStObBPTSeycYfHiLRpt6CkzgixIwor8RGkl8Nm85S5GC
	3L7OCSSF7TmQut4bxSig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvF4z-003bXx-I5; Sun, 29 May 2022 09:19:21 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvF4x-003bXG-BN; Sun, 29 May 2022 09:19:20 +0000
Received: by mail-ed1-x52e.google.com with SMTP id h19so2020356edj.0;
        Sun, 29 May 2022 02:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+HEGRO1E10+wWKc//c336BxlasIWsJvKYVSCospJ4F4=;
        b=NFeH/wB/eb/HtoJC39Dm3B4prjToxAjJdwTsNJOe9dWWJ+fo6g8h9TELQSfd66nLHl
         PK6uoBPvMmgT03AEyKlRoCK+E9JAlvOlH9XXAF8+OYy1kXhwunmatNPnhK2iWoinreHQ
         C/2ZsUkeWV2x9df7bi89T5d/XPoVuHTH+iCgIhyLBKg8IcDdn/sPf7PhT7kpA68vCYXb
         XR/zPVFl7OKfTKnrPDbhdBb/icTC5fwU8yRkI8/SfnvEcXPe3GlPaQv86ZxDJOeLoMe9
         BH1fRW7FQbSQqTj+I/bPW+Oev5Ja8j6M6L1FAz66AEYWtsiIc/0BbzkNL5zTk8QZ/rbz
         taOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+HEGRO1E10+wWKc//c336BxlasIWsJvKYVSCospJ4F4=;
        b=q5JMBPgLiPN2EdUA87+0gBKpoU00Ta/v+Wu9IDQEfyrAQR+MiIp903rgsYLqV4KXhl
         hZOz3Re2tP9FgwVgVT9nOfBe1ruurIaGz/dlwJcvrZ0hOj/JdXJ24LRpLl9s5lqUtRsG
         wMsiT4eu6mdbjVwB7vgK00SOyhXS69bZXFNN50FB1PDs8TRz3xYwrNME45eQiLkHph9s
         ncmMCrfY+k6jx6YCQ9PptQoN1Gkcz6I6YFmSrDl3EyeLuF6PUP2hZCrnZ3zIuF8Fyd8E
         MqJTUhddFSnF/8vXzOjnEmKCCrY52Ph1A0VsE96DoxDJaQwG5Uzcsh17/d6wAokBbrla
         L/wQ==
X-Gm-Message-State: AOAM531ihiTR/pJqcbPGq1nIasQIa4hNM3D8OTKMDK7P2B/Jt6Fi3Gcy
	R8PkRBz1rskoZLCWZ8oS8DDKQwkFnAykcQ==
X-Google-Smtp-Source: ABdhPJwr0AWqiMQ6Aco3OPjNeh8dOemUUp8N4NNr09EViJuMk78MqqxeUlqxu45lAQX8V3ZnKtB1Ow==
X-Received: by 2002:a50:fc06:0:b0:42b:c6d3:6ff0 with SMTP id i6-20020a50fc06000000b0042bc6d36ff0mr22105455edr.213.1653815954354;
        Sun, 29 May 2022 02:19:14 -0700 (PDT)
Received: from kista.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id z20-20020a05640240d400b0042aad9edc9bsm4829999edb.71.2022.05.29.02.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 02:19:13 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 09/17] media: uapi: HEVC: Define V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Date: Sun, 29 May 2022 11:19:12 +0200
Message-ID: <2630478.mvXUDI8C0e@kista>
In-Reply-To: <20220527143134.3360174-10-benjamin.gaignard@collabora.com>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com> <20220527143134.3360174-10-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220529_021919_463467_AF8B5E5F 
X-CRM114-Status: GOOD (  19.70  )
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

Dne petek, 27. maj 2022 ob 16:31:26 CEST je Benjamin Gaignard napisal(a):
> Make explicit that V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control is
> a dynamic array control type.
> Some drivers may be able to receive multiple slices in one control
> to improve decoding performance.
> 
> Define the max size of the dynamic that can driver can set in .dims = {}.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 6:
> - Set V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag automatically when using
>   V4L2_CID_STATELESS_HEVC_SLICE_PARAMS control.
> - Add a define for max slices count
> 
>  Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 2 ++
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c                 | 1 +
>  include/media/hevc-ctrls.h                                | 5 +++++
>  3 files changed, 8 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/
Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index 06b967de140c..0796b1563daa 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -2986,6 +2986,8 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      These bitstream parameters are defined according to :ref:`hevc`.
>      They are described in section 7.4.7 "General slice segment header
>      semantics" of the specification.
> +    This control is a dynamically sized 1-dimensional array,
> +    V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
>  
>  .. c:type:: v4l2_ctrl_hevc_slice_params
>  
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-
core/v4l2-ctrls-defs.c
> index 9f55503cd3d6..d594efbcbb93 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
> @@ -1510,6 +1510,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum 
v4l2_ctrl_type *type,
>  		break;
>  	case V4L2_CID_STATELESS_HEVC_SLICE_PARAMS:
>  		*type = V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS;
> +		*flags |= V4L2_CTRL_FLAG_DYNAMIC_ARRAY;

This change breaks Cedrus. I'll check what needs to be changed.

Best regards,
Jernej

>  		break;
>  	case V4L2_CID_STATELESS_HEVC_SCALING_MATRIX:
>  		*type = V4L2_CTRL_TYPE_HEVC_SCALING_MATRIX;
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 0dbd5d681c28..140151609c96 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -311,9 +311,14 @@ struct v4l2_hevc_pred_weight_table {
>  #define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_LOOP_FILTER_ACROSS_SLICES_ENABLED 
(1ULL << 8)
>  #define V4L2_HEVC_SLICE_PARAMS_FLAG_DEPENDENT_SLICE_SEGMENT	(1ULL << 
9)
>  
> +#define V4L2_HEVC_SLICE_MAX_COUNT	600
> +
>  /**
>   * v4l2_ctrl_hevc_slice_params - HEVC slice parameters
>   *
> + * This control is a dynamically sized 1-dimensional array,
> + * V4L2_CTRL_FLAG_DYNAMIC_ARRAY flag must be set when using it.
> + *
>   * @bit_size: size (in bits) of the current slice data
>   * @data_bit_offset: offset (in bits) to the video data in the current slice 
data
>   * @nal_unit_type: specifies the coding type of the slice (B, P or I)
> -- 
> 2.32.0
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
