Return-Path: <SRS0=bU6c=P5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 19:26:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9E34F6108B
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 19:26:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9E34F6108B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6/A8TmXnEHGYeK9HW7fgpkUzgCV+iElaXv4mcxecz0=; b=eKB6zr3+awnkkT
	ZosVlxdjU1U7kniefKsRwJKRZ4vuy6hYvtXVCIC+QOy/NY7SysnYFWwVPOF2EA+9ITWWTEfAwu2J8
	+aEPz8tyHpDhSnxShME626QhPJYX9HkNJ+MFqq4rdwoiaWMMBdOEpkzEyuuf64/HjHUcQMiYNWWx1
	1j3UemZySzSz2rePXGJEYEZd+zpeyesaCzJbi26RW5cc33Qc5rAZB+0tCfv0O6rl7bvI1Nsk1Py9V
	cXsQfAkTGg6ohykGmePoDC2s+eEmeflqman/oVER6mQVCA3HIouaG9ZNTxKonNTXXE7cIiMMTCCmQ
	UjUrEdcdsx7FhhiU9QEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mktEY-0068nC-W7; Wed, 10 Nov 2021 19:26:11 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mktEW-0068lL-8R; Wed, 10 Nov 2021 19:26:09 +0000
Received: by mail-wr1-x42b.google.com with SMTP id n29so5804682wra.11;
 Wed, 10 Nov 2021 11:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=stxfGq5TzEk/m+h1V0oWIaH2yEXT1vhy8334vKhpSbk=;
 b=HSbkCB5tuRc+2W2n8fgn9E3Tq0iwlPq1i+mBl1CVpMIVh0k5ZYJaWbZ5Hb146uIwb7
 1m/7OWgXQ6CvJCRl1QHVqTV1f5a/bHcJhkEHoxF8CDvtwhBBc+rOYnUfwkIbMRF8oGxa
 /0cUt5yNj3ON6xQ+cqwzUZw59rA2Cs0kG8GZBrBdIOI9Cj0nN5iJWMz9e+hD4yGqOImh
 +g+ElXEzWESJZTGgaRBPCmMiKqGCvjhKUCrDGfCd2WLzYaa10S8wsSJ1USQulhDKhXQW
 KRHmCIQwul/QBl2TzNKh8MakjGfZZyMLMqvVeZ2FvQn+EhVbW9RKQdgpwWFOCoVbwHGN
 O8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=stxfGq5TzEk/m+h1V0oWIaH2yEXT1vhy8334vKhpSbk=;
 b=n1/IABrCUF553xiBqwnjLydbgmSiKwoXuXhyhEoisJHc2kp5CqexBIFUJJi862GAqm
 QJLdU0/5+pvigVUPAuXmJTislljruzwlXuAx065fOzfmEO5OFBp3SxGjHqXkieEagQYj
 S39lGldmXEgbPWS5necidIUt08CWgH7qc7GXMVAFZSgAGrQzMiznYFaZDFigbM6kEWZA
 fxTWVxqctOsuG1P1bC9EAcTB3MbGKPoQ5T6ewt1TdTh+063ZYUVtt0ILYdaGs6p6rVkS
 O2Q0Ez0tA0nn3DGkkENj9zxS9LBhpqV6uFaLnYzswVt1vAx01MHoJvZmcgxRX/peCAgD
 sVCw==
X-Gm-Message-State: AOAM533xWJAWyPDnsoZD54ZCZdTT7QNGyOgK7+DxGbWcfJ4W4UmHOvNy
 AACqjB4PQFjLoiyOvppaqiJpYBBoc4s=
X-Google-Smtp-Source: ABdhPJxTG94yTUSY/Xh7rvmJIuspjf0raoj13K6wYdvH8/nsbTpXXHcT2atafOeteM53GX0FbKj6Ow==
X-Received: by 2002:a05:6000:1688:: with SMTP id
 y8mr1773432wrd.420.1636572366357; 
 Wed, 10 Nov 2021 11:26:06 -0800 (PST)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net.
 [86.58.29.253])
 by smtp.gmail.com with ESMTPSA id b197sm610739wmb.24.2021.11.10.11.26.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Nov 2021 11:26:05 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 1/4] media: hevc: Remove RPS named flags
Date: Wed, 10 Nov 2021 20:26:04 +0100
Message-ID: <2215692.ElGaqSPkdT@kista>
In-Reply-To: <20211012143552.661751-2-benjamin.gaignard@collabora.com>
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <20211012143552.661751-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211110_112608_363351_6E928090 
X-CRM114-Status: GOOD (  21.68  )
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

Hi Benjamin,

Dne torek, 12. oktober 2021 ob 16:35:49 CET je Benjamin Gaignard napisal(a):
> Marking a picture as long-term reference is valid for DPB but not for RPS.
> Change flag name to match with it description in HEVC spec chapiter

chapiter -> chapter

> "8.3.2 Decoding process for reference picture set".
> Remove the other unused RPS flags.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
> - change DPB field name from rps to flags
> 
>  Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst | 8 +++-----
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c         | 2 +-
>  drivers/staging/media/sunxi/cedrus/cedrus_h265.c          | 2 +-
>  include/media/hevc-ctrls.h                                | 6 ++----
>  4 files changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/
Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> index e141f0e4eec9..38da33e61c3d 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
> @@ -3166,11 +3166,9 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
>  	:c:func:`v4l2_timeval_to_ns()` function to convert the struct
>  	:c:type:`timeval` in struct :c:type:`v4l2_buffer` to a __u64.
>      * - __u8
> -      - ``rps``
> -      - The reference set for the reference frame
> -        (V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE,
> -        V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER or
> -        V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
> +      - ``flags``
> +      - Long term flag for the reference frame
> +        (V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)
>      * - __u8
>        - ``field_pic``
>        - Whether the reference is a field picture or a frame.
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/
staging/media/hantro/hantro_g2_hevc_dec.c
> index 76a921163b9a..bbf71dcea099 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -445,7 +445,7 @@ static int set_ref(struct hantro_ctx *ctx)
>  		chroma_addr = luma_addr + cr_offset;
>  		mv_addr = luma_addr + mv_offset;
>  
> -		if (dpb[i].rps == V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
> +		if (dpb[i].flags == 
V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)
>  			dpb_longterm_e |= 
BIT(V4L2_HEVC_DPB_ENTRIES_NUM_MAX - 1 - i);
>  
>  		hantro_write_addr(vpu, G2_REG_ADDR_REF(i), luma_addr);
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/
staging/media/sunxi/cedrus/cedrus_h265.c
> index 3d9561d4aadb..1edfc3823a57 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> @@ -169,7 +169,7 @@ static void cedrus_h265_ref_pic_list_write(struct 
cedrus_dev *dev,
>  		unsigned int index = list[i];
>  		u8 value = list[i];
>  
> -		if (dpb[index].rps == V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR)
> +		if (dpb[index].flags == 
V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)

Flags are usually checked with "&", same goes in Hantro case.

Once all fixed, this patch is:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  			value |= 
VE_DEC_H265_SRAM_REF_PIC_LIST_LT_REF;
>  
>  		/* Each SRAM word gathers up to 4 references. */
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index ef63bc205756..01ccda48d8c5 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -127,15 +127,13 @@ struct v4l2_ctrl_hevc_pps {
>  	__u64	flags;
>  };
>  
> -#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE	0x01
> -#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER	0x02
> -#define V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR		0x03
> +#define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
>  
>  #define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
>  
>  struct v4l2_hevc_dpb_entry {
>  	__u64	timestamp;
> -	__u8	rps;
> +	__u8	flags;
>  	__u8	field_pic;
>  	__u16	pic_order_cnt[2];
>  	__u8	padding[2];
> -- 
> 2.30.2
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
