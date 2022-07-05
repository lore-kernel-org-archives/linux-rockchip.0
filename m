Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D3F8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 15:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5ylrJ6mmPoARx+3DglCpXGK+swWBoFvlOVBhKfmGFY=; b=obks+LSxm+MN5h
	yR7hUhxweMZyh2Nkyu5SOfEUceOEMBDd+CV3J5NcgcOKjE/T90vUIUGJqaKX5qBnRk77dIgSJm8qu
	B/XxVvzZOLVxj3zOmye79F5dh7LhsRmLn35kLYsmtVkgyfZS+gg8F7cWUdoRJvRXm33fWjkO9Hbd9
	7cKVUClcLzqYl2b13r0bkXKowHUfVHg2ca6/FxUptPimfG5f2Foqzkgyd2nzM8qsGg/PJxl1nyBqr
	iyEI0h++pY/bgYztqmLg8jMcjDzRRcweqo8fkLPXR9GFP3TBAE0Y3YKmDTZPLMUAAdww+aj8JpvTT
	DQWNmKO7DMiZhS/sOBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kOB-0017g4-5q; Tue, 05 Jul 2022 15:22:59 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kNs-0017Ua-MM
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 15:22:45 +0000
Received: by mail-ua1-x930.google.com with SMTP id t21so4713110uaq.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 08:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=H/Bc/bJMHnC8mzLiX26E9yJXZ58JRgepqJ5GBKZIhIU=;
        b=FUu2PrOJcHfJzsPTGNQFGyVj7WroZoWbVSu8xerO75dS1A1hxzRlGdvouBnBFwSEqe
         PCc699FCk2IEmsopsLfinplJ3DwZIkZ5cIqeJx8v4tL8ZkvcZSBX2f4m1GO/XauIpHTI
         1wVdONerVllsWdipFeEmDJBNSX7RZbiy9b/Lmr0sFYsbgodT+F67jjkhcZAWbNAkPNTo
         UdK6q17Lu32ZInqcxOE0jgo5I1vOUISlBBxQTGJFgqrjCr9XCZAofjxLIR9K10j08aly
         gAQSHHC8RJJPqtGBtB+jK6GoYocJ3Wt00zSElHsyqBm98rYtSY0gzTk44ZqMqGkRjJig
         Dbiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=H/Bc/bJMHnC8mzLiX26E9yJXZ58JRgepqJ5GBKZIhIU=;
        b=r4gWyxwjWMjwTodRZl+EJf1AaxjEyE/Qjg04uhQeCCml5IW/C+T9qphiqNAsNQpPlg
         bMkh0IfGh4DVzpFCwsQ87lKL3eshzRr8Jn/FvEhPbLA1VZIpfQoI6dD56cmCmDcv14jP
         72dS0O4BCXk17auvB23SvRvqExl90tSMY+a7pDuxmIauJ/HtDamo0ipLUVc5liwxXB65
         eLLhNqQwmNn5O8A9R80pzpdMbnu1Zw2DkPjUxQWFypVqu8Hqqt+YNQzacIF7Vq///GZD
         N2vzthqd7boB2wYgrTKarRVP/4fdDFX0CLCIjFEBD7I2EM/DY8Zjk0G3uVy17U03frxS
         aIjw==
X-Gm-Message-State: AJIora88S+OP0h+XVcSBUgw151l4BYGIvuSZ4K4509njNBzhPVluBJUM
	cL7N5DAtTh8jAggtBiEohMXgFg==
X-Google-Smtp-Source: AGRyM1sib/Rl8zTG8OOfQq2RftxdlE1mO6TAX2MJwRY06PgFNm4cje0JTXSroOCahYX2r6A6k5wYIw==
X-Received: by 2002:ab0:2093:0:b0:382:935c:aaf8 with SMTP id r19-20020ab02093000000b00382935caaf8mr4927068uak.90.1657034558560;
        Tue, 05 Jul 2022 08:22:38 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id j10-20020a05610202ea00b00356f933b161sm1251842vsj.9.2022.07.05.08.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 08:22:38 -0700 (PDT)
Date: Tue, 5 Jul 2022 12:22:32 -0300
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
Subject: Re: [PATCH v10 07/17] media: uapi: HEVC: Add SEI pic struct flags
Message-ID: <YsRXOJq0wTXK3/4k@eze-laptop>
References: <20220705085420.272912-1-benjamin.gaignard@collabora.com>
 <20220705085420.272912-8-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705085420.272912-8-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_082240_838671_EAF58002 
X-CRM114-Status: GOOD (  16.97  )
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

On Tue, Jul 05, 2022 at 10:54:10AM +0200, Benjamin Gaignard wrote:
> The possible values for the field_pic field in the v4l2_hevc_dpb_entry
> structure are defined in the table D.2 in HEVC specification section D.3.3.
> Add flags and documentation for each of them.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Tested-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  .../media/v4l/ext-ctrls-codec.rst             | 54 +++++++++++++++++++
>  include/media/hevc-ctrls.h                    | 14 +++++
>  2 files changed, 68 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index 3dfb81a93935..8ba16e8742f3 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3218,6 +3218,7 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>      * - __u8
>        - ``field_pic``
>        - Whether the reference is a field picture or a frame.
> +        See :ref:`HEVC dpb field pic Flags <hevc_dpb_field_pic_flags>`
>      * - __u16
>        - ``pic_order_cnt[2]``
>        - The picture order count of the reference. Only the first element of the
> @@ -3231,6 +3232,59 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>  
>      \normalsize
>  
> +.. _hevc_dpb_field_pic_flags:
> +
> +``HEVC dpb field pic Flags``
> +
> +.. raw:: latex
> +
> +    \scriptsize
> +
> +.. flat-table::
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_FRAME``
> +      - 0
> +      - (progressive) Frame
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_FIELD``
> +      - 1
> +      - Top field
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_FIELD``
> +      - 2
> +      - Bottom field
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM``
> +      - 3
> +      - Top field, bottom field, in that order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP``
> +      - 4
> +      - Bottom field, top field, in that order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM_TOP``
> +      - 5
> +      - Top field, bottom field, top field repeated, in that order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM``
> +      - 6
> +      - Bottom field, top field, bottom field repeated, in that order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_FRAME_DOUBLING``
> +      - 7
> +      - Frame doubling
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_FRAME_TRIPLING``
> +      - 8
> +      - Frame tripling
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_PREVIOUS_BOTTOM``
> +      - 9
> +      - Top field paired with previous bottom field in output order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_PREVIOUS_TOP``
> +      - 10
> +      - Bottom field paired with previous top field in output order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_NEXT_BOTTOM``
> +      - 11
> +      - Top field paired with next bottom field in output order
> +    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_NEXT_TOP``
> +      - 12
> +      - Bottom field paired with next top field in output order
> +
>  .. c:type:: v4l2_hevc_pred_weight_table
>  
>  .. raw:: latex
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 01c1795c57a9..f3695ab44389 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -132,6 +132,20 @@ struct v4l2_ctrl_hevc_pps {
>  
>  #define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
>  
> +#define V4L2_HEVC_SEI_PIC_STRUCT_FRAME				0
> +#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_FIELD			1
> +#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_FIELD			2
> +#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM			3
> +#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP			4
> +#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM_TOP			5
> +#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM		6
> +#define V4L2_HEVC_SEI_PIC_STRUCT_FRAME_DOUBLING			7
> +#define V4L2_HEVC_SEI_PIC_STRUCT_FRAME_TRIPLING			8
> +#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_PREVIOUS_BOTTOM	9
> +#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_PREVIOUS_TOP	10
> +#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_NEXT_BOTTOM		11
> +#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_NEXT_TOP		12
> +
>  #define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
>  
>  struct v4l2_hevc_dpb_entry {
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
