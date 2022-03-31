Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41BEC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 20:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJlef/894kxM3Pr3GIo+7jUZDDnc1MlXdMJjZCH9j+w=; b=UYbiEsFiDBY2RO
	0mMTTCpVTfh/QwnYuxsSWcoczQtJFirUiZknb8VnSgiucyHCH4OpRra3uMISfj90hMkLYC2Y7f4Kj
	lANgGx1LjrBm/MZXVkEpvmqbltMnlMEafhHrjDC5mr7lVC4VIg05Tp4e24wLdbhd1F8Xaz+zVJv/V
	GoTIABHhMVZ4BZBOShTeDnoRu6hMc24RMEjVSxpcPo2CdM4vun6od3Swe0TCVtoSoawuAZoFNYk+P
	XcbciTtyC6sZL9eBf7xaWwZGrOMLV0bJAyH+Mqg+fWEyUsb/4w7/qD7WWSMs42Hp3bntzkOP3de7G
	KtHIRZ/MfLk5WUxTxDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na1Cp-003XH6-9J; Thu, 31 Mar 2022 20:15:43 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na1Ck-003XG2-EZ
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 20:15:42 +0000
Received: by mail-oi1-x235.google.com with SMTP id b188so657493oia.13
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Mar 2022 13:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6O6TQE9gY/RCGoA8Lj72Kezh8AhkaXWoFpitVHtqqC0=;
 b=mXBaYXFodB5BNYtQLsAi85UeIgUz+rJ8jR+IjiFZ7xdlENE8KMHvCXLuuZLNbwMwx2
 woFVXRWjONwaTsuJqBRZbtbssVAObJzulRjY/OOqYy5RVGQRFUuoj6VMHtyCP+iLwZVH
 AXRy5kqcp/yQ8DrLEinN4/hL3JYxoLGiDeQ62TnzGrMe9RPKG8OTEfDdW+L+ACVrzuZC
 hCHP05rd5gQYTbLk7gzcg0t/pR1vNhlgDDfZhEBo1gk03ccs7VWJCITWMFe8GHrJaGhB
 vWi9ZMT9l5ycdy5Co2CJd8cPoiy8xAQmIdtlDAd+PzlDjajTJC0+zPiAfeEF03DmSMFZ
 w+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6O6TQE9gY/RCGoA8Lj72Kezh8AhkaXWoFpitVHtqqC0=;
 b=NkC2yqDDaW+AeQWuzWUtxrtKCm8BAlBuAsm3Bi4FqQi5kIPkwxyyFg91DeQLCDfpR2
 1wH+Ulgme/d4Xuf3G8bGiwUIGwanieTxiIObhTDO7kRFPry1/rq8kPx0R+g9GUQvOSxT
 tUaQGlUh+NDtHkB44yr/Aq+fU0GwB9V1TLaRI76oLNNRCJF9J1zmc/wpfGqLCRLPMmdk
 ieR7+LHw5MriKHPFB+qylPTFRo3w3O1NKxp6w7Dy3os65HfhVoI41YvBpinwJ7k3ahL+
 5NwJI1codrAAh4Bgx68OE0a/kqHqxeDJ5Hz02kppHSVgdDHDqyoQ33QY9RbB9l9X+mhP
 oQBw==
X-Gm-Message-State: AOAM533rwwdHbHfB7nsYfEfENxBFIc9PomwZbEo8jAxEpb3PYtx1RZQI
 Bno7NlM1kw1iwJzzw2hgPX3CTQ==
X-Google-Smtp-Source: ABdhPJz0dHz0S0Kxb6XfpeUoORZA029B4Og25ME2y94yefm5MksonaTie6pvHqTlUxRYIXLjV2cN7g==
X-Received: by 2002:a05:6808:ec5:b0:2f7:4019:53be with SMTP id
 q5-20020a0568080ec500b002f7401953bemr3370230oiv.176.1648757737012; 
 Thu, 31 Mar 2022 13:15:37 -0700 (PDT)
Received: from eze-laptop ([190.194.87.200]) by smtp.gmail.com with ESMTPSA id
 z10-20020a0568301daa00b005ce0f36dd81sm252391oti.12.2022.03.31.13.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 13:15:36 -0700 (PDT)
Date: Thu, 31 Mar 2022 17:15:31 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: hantro: Empty encoder capture buffers by default
Message-ID: <YkYL45bEwjS/1+Rs@eze-laptop>
References: <20220331084907.628349-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331084907.628349-1-wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_131538_729801_FCF0EB12 
X-CRM114-Status: GOOD (  19.81  )
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

On Thu, Mar 31, 2022 at 04:49:06PM +0800, Chen-Yu Tsai wrote:
> The payload size for encoder capture buffers is set by the driver upon
> finishing encoding each frame, based on the encoded length returned from
> hardware, and whatever header and padding length used. Setting a
> non-zero default serves no real purpose, and also causes issues if the
> capture buffer is returned to userspace unused, confusing the
> application.
> 
> Instead, always set the payload size to 0 for encoder capture buffers
> when preparing them.
> 
> Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
> Fixes: 082aaecff35f ("media: hantro: Fix .buf_prepare")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
> 
> This was previously incorrectly squashed into my Hantro encoder cmd
> patch [1].
> 
> [1] https://lore.kernel.org/linux-media/20220301042225.1540019-1-wenst@chromium.org/
> 
>  drivers/staging/media/hantro/hantro_v4l2.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 67148ba346f5..261beb0c40f6 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -733,8 +733,12 @@ static int hantro_buf_prepare(struct vb2_buffer *vb)
>  	 * (for OUTPUT buffers, if userspace passes 0 bytesused, v4l2-core sets
>  	 * it to buffer length).
>  	 */
> -	if (V4L2_TYPE_IS_CAPTURE(vq->type))
> -		vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
> +	if (V4L2_TYPE_IS_CAPTURE(vq->type)) {
> +		if (ctx->is_encoder)
> +			vb2_set_plane_payload(vb, 0, 0);
> +		else
> +			vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.35.1.1021.g381101b075-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
