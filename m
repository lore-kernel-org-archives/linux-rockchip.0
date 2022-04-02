Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D417C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OagqglQLjksRoRkWYIYOAE16zW6INVZzBMsvWzLIRdw=; b=tho9bjWS35nIJF
	IMRXLrvUyfl6q82+zwgyZ6zhb/MxPluqmnuE6N8u4gbTSgNrJHsMrtsby46tv8udP2nfxhZOzv4x9
	8zAZjBNP47eVK4wFIdjFIxvffYhG7u5vL1v13K/Yvegej5OQE70aLO0TL9pYJ67AmSWcDiZK77IeD
	tTKNJNYCKqhgdQyJc1IeBpOLM1LAFR2Jc4i2eocIAcaMhmOOwreYL3ZnixnBN8sZ0opKqsqGeoM/A
	5SZ7A5cvj+gLPp1/RNXWcyx27wEovvfOPdjg+nJJK2B/HoVF5oydgJa4RWUBPWwtQDvJi+i21oyUU
	aZnUTNBkyhkxhxgdtLXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naboI-008ao3-Go; Sat, 02 Apr 2022 11:20:50 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naboD-008an0-UU
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 11:20:49 +0000
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-de3eda6b5dso5465474fac.0
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 04:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g3P8pgW5TKXbnqnv/dYdIwK49jDG9AWiv4cnKL0b/84=;
 b=3IE1inTso+FzIQVXK7Y9dK0Ix8Ksu/yX4a6Bo3R6+h3Oz4bS41gmAHst8gIZAnCs9V
 ztPE75tgtHnjEUf7I7IV4ASYWNqnQCalUWt8eCC0Na3v5LBLh/AwsMMQ5725Wh7UD6Ol
 k5wM4oN3zPsgdIJqjpryqh67qivaQZonDwJ9WVH2UQvsZYKa1NkiRvDBkQQ6J/y8VwdA
 /NcanNMJA5ziIsoEbELz7/RWaSywTwDYo0YnQ6ZPVmRfiE8X7lw1eIHBapMkvGCuGqaJ
 MYWzem1Gmd8NocSNrvilDjzxNaFTrcZ44gY1oWZWiEQV0ZXkj3NBUbcWeTj4AoQGrOjK
 3AIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g3P8pgW5TKXbnqnv/dYdIwK49jDG9AWiv4cnKL0b/84=;
 b=OHJWNHTHsVzp7UdQCv7hrj27qGqF3816TQkPSD05r8I+OzbLaHzCDSSrW/KCxo/9MW
 mySxE7VT1G6lVrYXSY0NZ6cE+m83vpB1Xc9IVjGDAMbap5X58yeR7s+p06yjSSWCJqJQ
 SnoOfi9+ga+d+FeFe3PPSSqUPFOaMR54qo8OeNFK5quFtkAwU1AGzFKVfiyabvwRCqk5
 kmjVGdwkIsdcX+jCyWBGBdZZIEY9Tk2zgfctW7wMDQtC9EuvUYw2p5vG42/3zhxVXcg8
 fzdgdSoBrSTiW5U3YfBDXDPWgbRg4W7ovhACGRdcKAwXDXo3qAMbpeD2U99+ybz8MzOX
 QO/Q==
X-Gm-Message-State: AOAM530EGqCbZZZjG9ZWCilRw/j14zBXLg1ItMRpPtcZcz2Ej3ArDPMu
 UMNhw5AVMu08hd86TCBDhQIuOQ==
X-Google-Smtp-Source: ABdhPJxCr1Ebsw6Ng0vvQY9LbiN+5OUdrveilhdOqONM4pZTFHY9+L4rYhdcebNyNwKww5Ugy6MFVA==
X-Received: by 2002:a05:6871:810:b0:de:68ff:e846 with SMTP id
 q16-20020a056871081000b000de68ffe846mr7134650oap.58.1648898444505; 
 Sat, 02 Apr 2022 04:20:44 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 m23-20020a4add17000000b0032489ab619esm2005500oou.45.2022.04.02.04.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 04:20:43 -0700 (PDT)
Date: Sat, 2 Apr 2022 08:20:38 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 14/23] media: rkvdec: h264: Fix bit depth wrap in pps
 packet
Message-ID: <YkgxhgqOAw26/3EG@eze-laptop>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
 <20220331193726.289559-15-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331193726.289559-15-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_042046_050131_48DE2843 
X-CRM114-Status: GOOD (  16.94  )
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

On Thu, Mar 31, 2022 at 03:37:16PM -0400, Nicolas Dufresne wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The luma and chroma bit depth fields in the pps packet are 3 bits wide.
> 8 is wrongly added to the bit depth values written to these 3 bit fields.
> Because only the 3 LSB are written, the hardware was configured
> correctly.
> 
> Correct this by not adding 8 to the luma and chroma bit depth value.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")

Thanks!

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index bcde37d72244..8d44a884a52e 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -662,8 +662,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
>  	WRITE_PPS(0xff, PROFILE_IDC);
>  	WRITE_PPS(1, CONSTRAINT_SET3_FLAG);
>  	WRITE_PPS(sps->chroma_format_idc, CHROMA_FORMAT_IDC);
> -	WRITE_PPS(sps->bit_depth_luma_minus8 + 8, BIT_DEPTH_LUMA);
> -	WRITE_PPS(sps->bit_depth_chroma_minus8 + 8, BIT_DEPTH_CHROMA);
> +	WRITE_PPS(sps->bit_depth_luma_minus8, BIT_DEPTH_LUMA);
> +	WRITE_PPS(sps->bit_depth_chroma_minus8, BIT_DEPTH_CHROMA);
>  	WRITE_PPS(0, QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG);
>  	WRITE_PPS(sps->log2_max_frame_num_minus4, LOG2_MAX_FRAME_NUM_MINUS4);
>  	WRITE_PPS(sps->max_num_ref_frames, MAX_NUM_REF_FRAMES);
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
