Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A66C76196
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Apr 2023 12:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FV+ofHpdXO1OhzV0bsEMfJbqq5HIDt8RqtyH2mCa8Lo=; b=ahUg9Ws2Wet/tV
	rkqKFd9ZNqkvX7iF65if/jsZ8byUD37tY17MEFkeuEgqot9DW7ioTpIzFQXYHTro8N/K5Oz1dx6x8
	qppUL1QnRdv2LjBOXvl/nywAA8eA3MTGg5iVcgfSsTpOV6KZnCSmQBsUDkkJS8yiK+Jz15OWd2dU8
	e7HElTJ25spx9jmtmqjtniB0RKrYCzKtPjpJ0hm6CElm6k8MfQViOmKt1w2v+LGbNF1UwWBYQjy6I
	iOnzu0qCqeYfu+ZSkrCNE4XyxXk1OTRDJHFTMde3NGTCqsvIztbzuWE2C5cvwtmPNOD08I2hrRBi4
	AYdPSBKWr2BUeKufs+/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDCC-00HYru-2J;
	Tue, 11 Apr 2023 12:34:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDC6-00HYpq-2o;
	Tue, 11 Apr 2023 12:33:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E05B561982;
	Tue, 11 Apr 2023 12:33:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF141C433D2;
	Tue, 11 Apr 2023 12:33:50 +0000 (UTC)
Message-ID: <42eefb17-6121-9cd0-4616-4af3045ec087@xs4all.nl>
Date: Tue, 11 Apr 2023 14:33:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 09/13] media: verisilicon: Add Rockchip AV1 decoder
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
 <20230330154043.1250736-10-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230330154043.1250736-10-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_053354_986031_CAA7C9A2 
X-CRM114-Status: GOOD (  20.72  )
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

Hi Benjamin,

On 30/03/2023 17:40, Benjamin Gaignard wrote:
> Implement AV1 stateless decoder for rockchip VPU981.
> It decode 8 and 10 bits AV1 bitstreams.
> AV1 scaling feature is done by the postprocessor.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/Makefile   |    1 +
>  .../media/platform/verisilicon/hantro_hw.h    |   64 +-
>  .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2024 +++++++++++++++++
>  .../verisilicon/rockchip_vpu981_regs.h        |  477 ++++
>  4 files changed, 2564 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
> 

<snip>

> +static void rockchip_vpu981_av1_dec_set_tile_info(struct hantro_ctx *ctx)
> +{
> +	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
> +	struct hantro_av1_dec_ctrls *ctrls = &av1_dec->ctrls;
> +	struct v4l2_av1_tile_info tile_info = ctrls->frame->tile_info;

I get this warning:

drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c: In function 'rockchip_vpu981_av1_dec_set_tile_info':
drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:635:1: warning: the frame size of 1080 bytes is larger than 1024 bytes [-Wframe-larger-than=]
  635 | }
      | ^

The cause is this tile_info struct that is on the stack.

Does this have to be a copy? Or can it be a pointer to ctrls->frame->tile_info?

> +	const struct v4l2_ctrl_av1_tile_group_entry *group_entry =
> +	    ctrls->tile_group_entry;
> +	int context_update_y =
> +	    tile_info.context_update_tile_id / tile_info.tile_cols;
> +	int context_update_x =
> +	    tile_info.context_update_tile_id % tile_info.tile_cols;
> +	int context_update_tile_id =
> +	    context_update_x * tile_info.tile_rows + context_update_y;
> +	u8 *dst = av1_dec->tile_info.cpu;
> +	struct hantro_dev *vpu = ctx->dev;
> +	int tile0, tile1;
> +
> +	memset(dst, 0, av1_dec->tile_info.size);
> +
> +	for (tile0 = 0; tile0 < tile_info.tile_cols; tile0++) {
> +		for (tile1 = 0; tile1 < tile_info.tile_rows; tile1++) {
> +			int tile_id = tile1 * tile_info.tile_cols + tile0;
> +			u32 start, end;
> +			u32 y0 =
> +			    tile_info.height_in_sbs_minus_1[tile1] + 1;
> +			u32 x0 = tile_info.width_in_sbs_minus_1[tile0] + 1;
> +
> +			// tile size in SB units (width,height)
> +			*dst++ = x0;
> +			*dst++ = 0;
> +			*dst++ = 0;
> +			*dst++ = 0;
> +			*dst++ = y0;
> +			*dst++ = 0;
> +			*dst++ = 0;
> +			*dst++ = 0;
> +
> +			// tile start position
> +			start = group_entry[tile_id].tile_offset - group_entry[0].tile_offset;
> +			*dst++ = start & 255;
> +			*dst++ = (start >> 8) & 255;
> +			*dst++ = (start >> 16) & 255;
> +			*dst++ = (start >> 24) & 255;
> +
> +			// # of bytes in tile data
> +			end = start + group_entry[tile_id].tile_size;
> +			*dst++ = end & 255;
> +			*dst++ = (end >> 8) & 255;
> +			*dst++ = (end >> 16) & 255;
> +			*dst++ = (end >> 24) & 255;
> +		}
> +	}
> +
> +	hantro_reg_write(vpu, &av1_multicore_expect_context_update,
> +			 !!(context_update_x == 0));
> +	hantro_reg_write(vpu, &av1_tile_enable,
> +			 !!((tile_info.tile_cols > 1) || (tile_info.tile_rows > 1)));
> +	hantro_reg_write(vpu, &av1_num_tile_cols_8k, tile_info.tile_cols);
> +	hantro_reg_write(vpu, &av1_num_tile_rows_8k, tile_info.tile_rows);
> +	hantro_reg_write(vpu, &av1_context_update_tile_id,
> +			 context_update_tile_id);
> +	hantro_reg_write(vpu, &av1_tile_transpose, 1);
> +	if (rockchip_vpu981_av1_tile_log2(tile_info.tile_cols) ||
> +	    rockchip_vpu981_av1_tile_log2(tile_info.tile_rows))
> +		hantro_reg_write(vpu, &av1_dec_tile_size_mag, tile_info.tile_size_bytes - 1);
> +	else
> +		hantro_reg_write(vpu, &av1_dec_tile_size_mag, 3);
> +
> +	hantro_write_addr(vpu, AV1_TILE_BASE, av1_dec->tile_info.dma);
> +}

Regards,

	Hans


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
