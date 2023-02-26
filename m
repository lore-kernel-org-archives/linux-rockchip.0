Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F526C7EE30
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Feb 2023 13:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YbqyMqu94HjWJM7XJ72UazFzJoVR6eijb/kk96zWkE=; b=dD6XjXddI+Nti8H+g0JUnGkyLE
	4NJEeUmGTLWXudo4e+lyMhddb70WPI9XlmzEobS3VCGpj3H2OKVXoH/LzmGPb0xvIpy98DzUZIVhq
	mQ8au8VGDIMq8EBjKhaVxIdt8t5x0gjiPIDI+3B0IRggeZPMnwQ+0gFGi2H/qsq1C4OFqK25Bm/N/
	8/JC1U+00gxxxK+j+3OHfKOwj7TbfY3ws8Qdvc1tSvMVhDJao2cQoAbPtwm79gTWcvQ8u8E4n+rcH
	cDDMszJWDj2aFYzW8tDF463SUe6A6NCgb5kKdbuyfSRGNn1eb2zYHIC6Z6LD5cUdKrkzznzCNqNCg
	x0hvn+CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGdl-007GCt-9N; Sun, 26 Feb 2023 13:00:33 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWGdb-007Fju-1j
	for linux-rockchip@lists.infradead.org; Sun, 26 Feb 2023 13:00:24 +0000
Received: by mail-ot1-x330.google.com with SMTP id q11-20020a056830440b00b00693c1a62101so2210965otv.0
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Feb 2023 05:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=lLGsk+gLJxcCRY4U0sKJyCu/BebhluGO1o8XNKetb1U=;
        b=hAzwHKJna3H3ETr470mU3Z5x24+loDNyEc9nPknLoLVwMIsBp3LaFheflZvhkCPELS
         z6YPthe9EQBpTvZWUBP0O5y12q8CAqh1E1lB7mMoDPXOnsCSwiqTjljJX/yHU6scPxM+
         mIaWHCKSe/PM5IU9wb9EAHI6VPsK4mcPVA6g87Hp9RMTArnarGeF3P6oiOvlCbHZ+/18
         PXKxQS9LwsUwa7FITcno/sTY/xfTnJt0hx8OMIvUelABzzVQu7D89bIieRlILEerrhw2
         523Gk3ohxrbT/CWarn82DlZqvH5QNFSjwYCl55Y8F/9QLvmGklJAo5iLCRDVX5085zAd
         X45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lLGsk+gLJxcCRY4U0sKJyCu/BebhluGO1o8XNKetb1U=;
        b=M+JqRD3OKaAIsMMeFujgS8yXGYs8WJtM54CfclkYDez7I/b2CEjQcecTE+ysA3mwM5
         oRIn5pT/r3/z3ZuP2pbjpAc232DHa8MhA1nK8g+ID2Pea2B7O9juQAxobUqtskstGcK3
         By2g336iadoIjTEbjIIO/OWEOKJxqo0V6jMgqJExRmEVbfAsp1BgP4EqFce6mVMnyWMR
         KSML+Y8pndGRPVIIBS7sd6swNKq2vrBdgfFnx/ABE3do+lpLcKkxgsb4myXSwtCHy9hO
         8dDFheooaLk1WN/pSM5e7ZsqF2aMa3hoF94mI9JQPIBpN0asoZoZr+RZFDkVTzrQiQN8
         vCJA==
X-Gm-Message-State: AO0yUKV4CpnOXw5jJFJJmsV/hxgB64QT7apduoRMmcEuFhOeyDTxUke2
	WhsMG7Q2sbZypmr+YhuDsgbRwQ==
X-Google-Smtp-Source: AK7set9V7t43YFTiwn5bhCTvhloWETeAoltvYJJMWDKxj/SdeWxdHqLtkJCEUVQ7uJ/+a0U7TJ4dig==
X-Received: by 2002:a05:6830:30a0:b0:68b:d092:e784 with SMTP id g32-20020a05683030a000b0068bd092e784mr11175389ots.1.1677416422716;
        Sun, 26 Feb 2023 05:00:22 -0800 (PST)
Received: from [192.168.10.175] ([190.106.125.26])
        by smtp.gmail.com with ESMTPSA id t12-20020a05683014cc00b0068bcc902b82sm1539924otq.71.2023.02.26.05.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Feb 2023 05:00:21 -0800 (PST)
Date: Sun, 26 Feb 2023 10:00:11 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v9 6/6] media: verisilicon: VP9: Only propose 10 bits
 compatible pixels formats
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Message-Id: <BSUOQR.VGJZUEF5E1XC1@vanguardiasur.com.ar>
In-Reply-To: <20230220104849.398203-7-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
	<20230220104849.398203-7-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230226_050023_151121_87D774BE 
X-CRM114-Status: GOOD (  15.30  )
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



On Mon, Feb 20 2023 at 11:48:49 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> When decoding a 10bits bitstreams VP9 driver should only expose
> 10bits pixel formats.
> To fulfill this requirement it is needed to call 
> hantro_reset_raw_fmt()
> when bit depth change and to correctly set match_depth in pixel 
> formats
> enumeration.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
> version 9:
> - Fix brackets
> 
>  drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c 
> b/drivers/media/platform/verisilicon/hantro_drv.c
> index 7d452f1afaae..d20e62c025ae 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -307,9 +307,14 @@ static int hantro_vp9_s_ctrl(struct v4l2_ctrl 
> *ctrl)
>  			   struct hantro_ctx, ctrl_handler);
> 
>  	switch (ctrl->id) {
> -	case V4L2_CID_STATELESS_VP9_FRAME:
> -		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
> -		break;
> +	case V4L2_CID_STATELESS_VP9_FRAME: {
> +		int bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
> +
> +		if (ctx->bit_depth == bit_depth)
> +			return 0;
> +
> +		return hantro_reset_raw_fmt(ctx, bit_depth);
> +	}
>  	default:
>  		return -EINVAL;
>  	}
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
