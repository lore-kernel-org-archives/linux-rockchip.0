Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E04C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 11:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOkwxDRKyzbCqx7JoqhO1dPAGovnsRXcByw8Cb6ftHg=; b=JUMKaANr72/13t
	x2L3CcCv7OSTXaejskCN9rHUpKX9E8D7yw/GiTchjw/Vm2vYXlVi4P4jJe2WSt6s5v+cQ2kAvg+Ud
	x1W9iQ4pgOhQ1/X0bzzz0agycfbfl/yVd4k7e+gExJ5jsJxf3ryJ3bCW6zPMpwpa2f1BuT0Hr9i58
	Qhn1Ugh4TNwNfG1SA11nrojjLoleaMTN0jbaVPEZP3l5LPqbNJwZRQJKnhK4lLAZ3bbgweTlB1AaX
	K2136ELZAcW3xxLGQIMssZzHEYGlc2lO0HCwIyiTiAdB4FeLjr6e3qBN/2VJo5N2/ZYfapruM5IbW
	sVG4lq9gSVVqt96t7RyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1QeU-00A9Sb-1P;
	Tue, 23 May 2023 11:58:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1QeR-00A9R2-18
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 11:58:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 72F8D625DF;
	Tue, 23 May 2023 11:58:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFCD3C433EF;
	Tue, 23 May 2023 11:58:00 +0000 (UTC)
Message-ID: <7a447631-e6f7-fae2-6884-c404db7e2b0b@xs4all.nl>
Date: Tue, 23 May 2023 13:57:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] media: verisilicon: rockchip_vpu2_hw_jpeg_enc:
 Consolidate setting of source buffer addresses
Content-Language: en-US
To: Andri Yngvason <andri@yngvason.is>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230509150249.824440-1-andri@yngvason.is>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20230509150249.824440-1-andri@yngvason.is>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_045803_472734_3ED1C3C6 
X-CRM114-Status: GOOD (  20.51  )
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

Hi Andri,

On 09/05/2023 17:02, Andri Yngvason wrote:

Please provide a commit message!

Thank you,

	Hans

> Signed-off-by: Andri Yngvason <andri@yngvason.is>
> ---
>  .../verisilicon/rockchip_vpu2_hw_jpeg_enc.c   | 36 ++++++++++---------
>  1 file changed, 19 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
> index 8395c4d48dd0..52c76fb91c56 100644
> --- a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
> +++ b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
> @@ -32,6 +32,16 @@
>  
>  #define VEPU_JPEG_QUANT_TABLE_COUNT 16
>  
> +static inline u32 __vepu_reg_addr_for_plane(int plane)
> +{
> +	switch (plane) {
> +	case 0: return VEPU_REG_ADDR_IN_PLANE_0;
> +	case 1: return VEPU_REG_ADDR_IN_PLANE_1;
> +	case 2: return VEPU_REG_ADDR_IN_PLANE_2;
> +	}
> +	return 0;
> +}
> +
>  static void rockchip_vpu2_set_src_img_ctrl(struct hantro_dev *vpu,
>  					   struct hantro_ctx *ctx)
>  {
> @@ -70,35 +80,27 @@ static void rockchip_vpu2_jpeg_enc_set_buffers(struct hantro_dev *vpu,
>  					       struct vb2_buffer *dst_buf)
>  {
>  	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
> -	dma_addr_t src[3];
> +	unsigned int num_planes = pix_fmt->num_planes;
> +	unsigned int i;
> +	dma_addr_t src;
>  	u32 size_left;
>  
>  	size_left = vb2_plane_size(dst_buf, 0) - ctx->vpu_dst_fmt->header_size;
>  	if (WARN_ON(vb2_plane_size(dst_buf, 0) < ctx->vpu_dst_fmt->header_size))
>  		size_left = 0;
>  
> -	WARN_ON(pix_fmt->num_planes > 3);
> +	WARN_ON(num_planes > 3);
> +	if (num_planes > 3)
> +		num_planes = 3;
>  
>  	vepu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(dst_buf, 0) +
>  				ctx->vpu_dst_fmt->header_size,
>  			   VEPU_REG_ADDR_OUTPUT_STREAM);
>  	vepu_write_relaxed(vpu, size_left, VEPU_REG_STR_BUF_LIMIT);
>  
> -	if (pix_fmt->num_planes == 1) {
> -		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> -		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
> -	} else if (pix_fmt->num_planes == 2) {
> -		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> -		src[1] = vb2_dma_contig_plane_dma_addr(src_buf, 1);
> -		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
> -		vepu_write_relaxed(vpu, src[1], VEPU_REG_ADDR_IN_PLANE_1);
> -	} else {
> -		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> -		src[1] = vb2_dma_contig_plane_dma_addr(src_buf, 1);
> -		src[2] = vb2_dma_contig_plane_dma_addr(src_buf, 2);
> -		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
> -		vepu_write_relaxed(vpu, src[1], VEPU_REG_ADDR_IN_PLANE_1);
> -		vepu_write_relaxed(vpu, src[2], VEPU_REG_ADDR_IN_PLANE_2);
> +	for (i = 0; i < num_planes; i++) {
> +		src = vb2_dma_contig_plane_dma_addr(src_buf, i);
> +		vepu_write_relaxed(vpu, src, __vepu_reg_addr_for_plane(i));
>  	}
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
