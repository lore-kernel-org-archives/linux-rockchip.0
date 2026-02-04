Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F0CE95389
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 11:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URkXczfg/I0yV3ucuOV8H2Ix3YnWQqbd+QNcILDwzuI=; b=nx0p+ngP/ARHSZ
	G18h4rQC1hEA268+il2JQnOofa2j8OniiUIO77dqDPFt95M9LKoKJKYC7jqzytZNv7hhD3/p14ZaA
	XyOonF1Q8qSTjapvuAGu3ST8Ajt5eqRa/5FOyMGEPo21xZRw/Nm0Pi5m8CiwBPHDel6l1os6yhJNI
	pNd3b9TxO2gbkuoi+f6hd4AEvwdzc138R2QSSdKtL+rrGTnGbAb/08kCDYjkpKue6CpLQVPGjogaw
	TxBkbyBbaWQ5aIRvyENePKdIZE0jasCBIti4lVKJCRsw9rH+rOOx2HadBzVrog1qwP9/OU+LlPczQ
	9dptBw9GScCh1e6jd5HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbC8-00000008NDE-2Waa;
	Wed, 04 Feb 2026 11:37:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbC6-00000008NCN-0MDH;
	Wed, 04 Feb 2026 11:37:15 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--ff4.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::ff4])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 4214F13D7;
	Wed,  4 Feb 2026 12:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770204990;
	bh=Ej3KL0sC5zb1ZESyYIKgtPgiVBwvQfrer86L8393e4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ksSdqiXUzolRSKMLCYomaVvVwE+l7IeexfwSYN6Wlwg3ZWoQcu0//VYNIwC+X7C7I
	 cfgi6sPYE1KFn0HD9mmPL1Eokc6NsxMcwPpgWbxfeV+qqci1Hma3MpHW9c2Ei+9w9o
	 rYhJKaSL1/Zy1glZPcsKqROqZPvH5yEShYSOvFCo=
Date: Wed, 4 Feb 2026 13:37:10 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Isaac Scott <isaac.scott@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, mchehab@kernel.org,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/6] media: rkisp1-isp: Add target_format
Message-ID: <20260204113710.GA156228@killaraus>
References: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
 <20260204112506.3706049-4-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260204112506.3706049-4-isaac.scott@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_033714_304408_CA01E046 
X-CRM114-Status: GOOD (  18.47  )
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

On Wed, Feb 04, 2026 at 11:25:03AM +0000, Isaac Scott wrote:
> In passthough mode, we want to make sure the output format of the ISP is
> identical to the input format. Add logic to ensure the format we
> configure the output of the ISP with is the sink format when we are in
> bypass, and the source format if we are not.

I don't think that's right. In bypass mode, userspace needs to configure
the same format on the image sink and image source pads of the ISP, and
not set any cropping. The crop rectangle on the source pad should
contain the information you need.

> Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index f636d738b7e8..716bd7f3c66d 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -175,9 +175,10 @@ static void rkisp1_gasket_disable(struct rkisp1_device *rkisp1)
>  static void rkisp1_config_ism(struct rkisp1_isp *isp,
>  			      const struct v4l2_subdev_state *sd_state)
>  {
> -	const struct v4l2_rect *src_crop =
> +	const struct v4l2_rect *target_crop =
>  		v4l2_subdev_state_get_crop(sd_state,
> -					   RKISP1_ISP_PAD_SOURCE_VIDEO);
> +			(isp->rkisp1->in_bypass ?
> +				RKISP1_ISP_PAD_SINK_VIDEO : RKISP1_ISP_PAD_SOURCE_VIDEO));
>  	struct rkisp1_device *rkisp1 = isp->rkisp1;
>  	u32 val;
>  
> @@ -185,10 +186,10 @@ static void rkisp1_config_ism(struct rkisp1_isp *isp,
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_MAX_DX, 0);
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_MAX_DY, 0);
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_DISPLACE, 0);
> -	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_OFFS, src_crop->left);
> -	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_OFFS, src_crop->top);
> -	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_SIZE, src_crop->width);
> -	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_SIZE, src_crop->height);
> +	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_OFFS, target_crop->left);
> +	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_OFFS, target_crop->top);
> +	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_SIZE, target_crop->width);
> +	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_SIZE, target_crop->height);
>  
>  	/* IS(Image Stabilization) is always on, working as output crop */
>  	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_CTRL, 1);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
