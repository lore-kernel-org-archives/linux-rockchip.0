Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C20CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 21:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrnxuN8pFrUQLMMXE8t6lAwiyFtVE15vVoOJU7NymwE=; b=kHUlVEoEDZf7gk
	sbJ3jdWX3ZNLclqke8CMlbcVT5oeLjBgTk/JVAIUHVBBX5n6eFNW7aLLtFOnbUFMrdLwmQTuH6bK4
	El2qlLsBbHD+FPZQe2KvfTgZFmWrgjZJiFvrykFxT8ziJNzuAyl/l0oQ7eqJEpIcZTu5PHu3F83BW
	wfylkYLFferE89a6gCBjN08EixF+x8YfOz579HEbLcMn8RlpTZDStAJjnyMKU15Po6I9Ha61jq4JC
	fnJwo6T9rW2pulCA32frdMepWYp7UQdBOKXuEYD/MI2xeuFgrVaydaMXftPAOEvaxiQnKy0yrXE43
	ns5LGShsejRTmkwv8Jnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBgdq-00000004O56-4BDZ;
	Wed, 22 Oct 2025 21:45:11 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBgdo-00000004O3q-0DSD
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 21:45:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1761169506;
 bh=ifffrKBZVPPFgsef5Yp4ijPvfgME0yJeeaaNp7YghaA=;
 b=yBnvCCjCgt39h9p9qJmfbqJPZykGvBX0VlKr+G7NqJHukLmRD0pSodxTIwYGMo3tHhjFDnc48
 /tBK6oSBZX44sDwNBJBDCaEcREdkuggtH/wGG1Npuz8NGrt504Ybj/hIQgbshd3xCfmUFoj43TP
 PBSCaG2AGLbPjr06Jq/qe770KDlXkno1hRNKmKiOYjMScOnbOkTfpOfcUQEDzRyE/7YyBHTe7B/
 pG75DT3appReQIcAa8j2t6x1NuNWlXBORKgbXtaDUH3MkiZd7OCJ2F7E47R3qpPEuPm5318JPps
 4vApvtl0ovBlRP1ezIApVRynYAFbZ7ioKznHYcWjzGEQ==
X-Forward-Email-ID: 68f950567ffe5c5c38c09a74
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.3.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <967409e7-5565-4616-95ce-780650609567@kwiboo.se>
Date: Wed, 22 Oct 2025 23:44:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/15] media: rkvdec: Move hevc functions to common
 file
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Ricardo Ribalda <ribalda@chromium.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Yunke Cao <yunkec@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 James Cowgill <james.cowgill@blaize.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, linux-kernel@vger.kernel.org
References: <20251022174508.284929-1-detlev.casanova@collabora.com>
 <20251022174508.284929-8-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251022174508.284929-8-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_144508_440955_D20F8BAA 
X-CRM114-Status: GOOD (  30.42  )
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

Hi Detlev,

On 10/22/2025 7:44 PM, Detlev Casanova wrote:
> This is a preparation commit to add support for new variants of the
> decoder.
> 
> The functions will later be shared with vdpu381 (rk3588) and vdpu383
> (rk3576).
> 
> Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock 5B
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../media/platform/rockchip/rkvdec/Makefile   |   1 +
>  .../rockchip/rkvdec/rkvdec-hevc-common.c      | 233 +++++++++++++++++
>  .../rockchip/rkvdec/rkvdec-hevc-common.h      |  51 ++++
>  .../platform/rockchip/rkvdec/rkvdec-hevc.c    | 243 +-----------------
>  4 files changed, 291 insertions(+), 237 deletions(-)
>  create mode 100644 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
>  create mode 100644 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.h
> 
> diff --git a/drivers/media/platform/rockchip/rkvdec/Makefile b/drivers/media/platform/rockchip/rkvdec/Makefile
> index d2ba7a7c15e5..1b4bc44be23e 100644
> --- a/drivers/media/platform/rockchip/rkvdec/Makefile
> +++ b/drivers/media/platform/rockchip/rkvdec/Makefile
> @@ -6,4 +6,5 @@ rockchip-vdec-y += \
>  		   rkvdec-h264.o \
>  		   rkvdec-h264-common.o \
>  		   rkvdec-hevc.o \
> +		   rkvdec-hevc-common.o \
>  		   rkvdec-vp9.o
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
> new file mode 100644
> index 000000000000..d571107f2242
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
> @@ -0,0 +1,233 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Rockchip video decoder hevc common functions
> + *
> + * Copyright (C) 2025 Collabora, Ltd.
> + *      Detlev Casanova <detlev.casanova@collabora.com>
> + *
> + * Copyright (C) 2023 Collabora, Ltd.
> + *      Sebastian Fricke <sebastian.fricke@collabora.com>
> + *
> + * Copyright (C) 2019 Collabora, Ltd.
> + *	Boris Brezillon <boris.brezillon@collabora.com>
> + *
> + * Copyright (C) 2016 Rockchip Electronics Co., Ltd.
> + *	Jeffy Chen <jeffy.chen@rock-chips.com>
> + */
> +
> +#include <linux/v4l2-common.h>
> +#include <media/v4l2-mem2mem.h>
> +
> +#include "rkvdec.h"
> +#include "rkvdec-hevc-common.h"
> +
> +/*
> + * Flip one or more matrices along their main diagonal and flatten them
> + * before writing it to the memory.
> + * Convert:
> + * ABCD         AEIM
> + * EFGH     =>  BFJN     =>     AEIMBFJNCGKODHLP
> + * IJKL         CGKO
> + * MNOP         DHLP
> + */
> +static void transpose_and_flatten_matrices(u8 *output, const u8 *input,
> +					   int matrices, int row_length)
> +{
> +	int i, j, row, x_offset, matrix_offset, rot_index, y_offset, matrix_size, new_value;
> +
> +	matrix_size = row_length * row_length;
> +	for (i = 0; i < matrices; i++) {
> +		row = 0;
> +		x_offset = 0;
> +		matrix_offset = i * matrix_size;
> +		for (j = 0; j < matrix_size; j++) {
> +			y_offset = j - (row * row_length);
> +			rot_index = y_offset * row_length + x_offset;
> +			new_value = *(input + i * matrix_size + j);
> +			output[matrix_offset + rot_index] = new_value;
> +			if ((j + 1) % row_length == 0) {
> +				row += 1;
> +				x_offset += 1;
> +			}
> +		}
> +	}
> +}
> +
> +static void assemble_scalingfactor0(u8 *output, const struct v4l2_ctrl_hevc_scaling_matrix *input)
> +{
> +	int offset = 0;
> +
> +	transpose_and_flatten_matrices(output, (const u8 *)input->scaling_list_4x4, 6, 4);
> +	offset = 6 * 16 * sizeof(u8);
> +	transpose_and_flatten_matrices(output + offset, (const u8 *)input->scaling_list_8x8, 6, 8);
> +	offset += 6 * 64 * sizeof(u8);
> +	transpose_and_flatten_matrices(output + offset,
> +				       (const u8 *)input->scaling_list_16x16, 6, 8);
> +	offset += 6 * 64 * sizeof(u8);
> +	/* Add a 128 byte padding with 0s between the two 32x32 matrices */
> +	transpose_and_flatten_matrices(output + offset,
> +				       (const u8 *)input->scaling_list_32x32, 1, 8);
> +	offset += 64 * sizeof(u8);
> +	memset(output + offset, 0, 128);
> +	offset += 128 * sizeof(u8);
> +	transpose_and_flatten_matrices(output + offset,
> +				       (const u8 *)input->scaling_list_32x32 + (64 * sizeof(u8)),
> +				       1, 8);
> +	offset += 64 * sizeof(u8);
> +	memset(output + offset, 0, 128);
> +}
> +
> +/*
> + * Required layout:
> + * A = scaling_list_dc_coef_16x16
> + * B = scaling_list_dc_coef_32x32
> + * 0 = Padding
> + *
> + * A, A, A, A, A, A, B, 0, 0, B, 0, 0
> + */
> +static void assemble_scalingdc(u8 *output, const struct v4l2_ctrl_hevc_scaling_matrix *input)
> +{
> +	u8 list_32x32[6] = {0};
> +
> +	memcpy(output, input->scaling_list_dc_coef_16x16, 6 * sizeof(u8));
> +	list_32x32[0] = input->scaling_list_dc_coef_32x32[0];
> +	list_32x32[3] = input->scaling_list_dc_coef_32x32[1];
> +	memcpy(output + 6 * sizeof(u8), list_32x32, 6 * sizeof(u8));
> +}
> +
> +static void translate_scaling_list(struct scaling_factor *output,
> +				   const struct v4l2_ctrl_hevc_scaling_matrix *input)
> +{
> +	assemble_scalingfactor0(output->scalingfactor0, input);
> +	memcpy(output->scalingfactor1, (const u8 *)input->scaling_list_4x4, 96);
> +	assemble_scalingdc(output->scalingdc, input);
> +	memset(output->reserved, 0, 4 * sizeof(u8));
> +}
> +
> +void rkvdec_hevc_assemble_hw_scaling_list(struct rkvdec_hevc_run *run,
> +					  struct scaling_factor *scaling_factor,
> +					  struct v4l2_ctrl_hevc_scaling_matrix *cache)
> +{
> +	const struct v4l2_ctrl_hevc_scaling_matrix *scaling = run->scaling_matrix;
> +
> +	if (!memcmp(cache, scaling,
> +		    sizeof(struct v4l2_ctrl_hevc_scaling_matrix)))
> +		return;
> +
> +	translate_scaling_list(scaling_factor, scaling);
> +
> +	memcpy(cache, scaling,
> +	       sizeof(struct v4l2_ctrl_hevc_scaling_matrix));
> +}
> +
> +struct vb2_buffer *
> +get_ref_buf(struct rkvdec_ctx *ctx, struct rkvdec_hevc_run *run,
> +	    unsigned int dpb_idx)
> +{
> +	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
> +	const struct v4l2_ctrl_hevc_decode_params *decode_params = run->decode_params;
> +	const struct v4l2_hevc_dpb_entry *dpb = decode_params->dpb;
> +	struct vb2_queue *cap_q = &m2m_ctx->cap_q_ctx.q;
> +	struct vb2_buffer *buf = NULL;
> +
> +	if (dpb_idx < decode_params->num_active_dpb_entries)
> +		buf = vb2_find_buffer(cap_q, dpb[dpb_idx].timestamp);
> +
> +	/*
> +	 * If a DPB entry is unused or invalid, the address of current destination
> +	 * buffer is returned.
> +	 */
> +	if (!buf)
> +		return &run->base.bufs.dst->vb2_buf;
> +
> +	return buf;
> +}
> +
> +#define RKVDEC_HEVC_MAX_DEPTH_IN_BYTES		2
> +
> +int rkvdec_hevc_adjust_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f)
> +{
> +	struct v4l2_pix_format_mplane *fmt = &f->fmt.pix_mp;
> +
> +	fmt->num_planes = 1;
> +	if (!fmt->plane_fmt[0].sizeimage)
> +		fmt->plane_fmt[0].sizeimage = fmt->width * fmt->height *
> +					      RKVDEC_HEVC_MAX_DEPTH_IN_BYTES;
> +	return 0;
> +}
> +
> +enum rkvdec_image_fmt rkvdec_hevc_get_image_fmt(struct rkvdec_ctx *ctx,
> +						struct v4l2_ctrl *ctrl)
> +{
> +	const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
> +
> +	if (ctrl->id != V4L2_CID_STATELESS_HEVC_SPS)
> +		return RKVDEC_IMG_FMT_ANY;
> +
> +	if (sps->bit_depth_luma_minus8 == 0) {
> +		if (sps->chroma_format_idc == 2)
> +			return RKVDEC_IMG_FMT_422_8BIT;
> +		else
> +			return RKVDEC_IMG_FMT_420_8BIT;
> +	} else if (sps->bit_depth_luma_minus8 == 2) {
> +		if (sps->chroma_format_idc == 2)
> +			return RKVDEC_IMG_FMT_422_10BIT;
> +		else
> +			return RKVDEC_IMG_FMT_420_10BIT;
> +	}
> +
> +	return RKVDEC_IMG_FMT_ANY;
> +}

This function is moved here in this patch, and then later rewritten and
moved once more in a later patch. Please move the functions to final
position in this patch and do not rewrite the function in a later patch.

Regards,
Jonas

[snip]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
