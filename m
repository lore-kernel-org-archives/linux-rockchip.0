Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FDCC47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 12:04:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE9DF613CE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 12:04:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE9DF613CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XEegrsaJWJJQK7Q2gO6swzFvgEenLjuWiTLChv/eBeg=; b=ika3bP5xF/i9hG6S8kwwDiCueC
	H+JZILtM5M/8p3s6wZa0e4u/DxKkOoBt5Fc3Xen/hHJOTvToGyLElbKUtEhM0TUtYPYPLfM0meq7j
	xbJev7JmNQXCDg5RzwmMKhMwN+C/25ZEV04Tdcfsob+Ter7Z28ffvsSvE6HGTnBwzIEwIrSFty92M
	tgcNqtnHveNdtZL3yJe2gK50Re3jDDw6lXhouyNyx8fz9THa+qN7yTAYXzv1xKAopXTh1ubGri0b3
	6s6cc2Hve6fpC81HrAqYA4gbKYDkJTn14tJSzBXGsTWTj4FYtkx/tbaKaAEdUh8nTyPGL2Y8iWzgu
	oE/DZjbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llsGe-00DnWw-6q; Wed, 26 May 2021 12:04:08 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llqDR-00D16S-60; Wed, 26 May 2021 09:52:43 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id lqDDlSShGWkKblqDGlCXu0; Wed, 26 May 2021 11:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1622022754; bh=Rdaz+LOR1+afTnAEvgUo1L0WhEts2qvul/FWPyUzdy4=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=LUmQxeiRnNy+/HU6Lh1n6pz+5SUAoiZ31q0h5OCfoN8fjyxBuhWwIkamPseea4ZE0
 BX2ulwLZx5t4vAv9reu5CgXXPzeGWN8XVMNnTnvH0Coa2srH0VHlqSRqavH2mxKRQ/
 +9/+zDBvsbsygNLST9M23mWAobWT68e2MqopCxzxPseNgnAYwrAfGjXHTkkOEVZajX
 OvPrJ8T5rNn/dVhEzRs5JAhZQeLEvoCDYD3c6rlQFdNaAtL5BMPTsABRN9Z/Gm8v3Z
 a5gXzju99ZIu6oq0oU24/v0zmDtozUYBe020C4y15qygXEc5V9TnFKQZOnxQa5vNKn
 bOboLXn4YnYNg==
Subject: Re: [PATCH v11 9/9] media: hantro: IMX8M: add variant for G2/HEVC
 codec
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210525161238.1191168-1-benjamin.gaignard@collabora.com>
 <20210525161238.1191168-10-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <1454f153-c04b-6b90-8467-54bb33c6f3fa@xs4all.nl>
Date: Wed, 26 May 2021 11:52:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210525161238.1191168-10-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfCOfRmbgJ5kgs+pMbhJANdZd/+nNTxbFWGJqt22qSstqNiQ8h/Qxizk+Xzn3jJn9jglNdSTtwpVIY8mP81g9okeU5sM6rMQnCCSTTNFUu0xapsjioI5v
 iRXLqpKa33km3e+4hlespkwTTCjr2yBohAK5LZTw4LhjECi4dOCEFn9eVMjwCuicHM0cqN4MtQQ0SU/6be57Dd2ri8haUYhWaD5i0PHYg3cOq6qzrFLb+2mK
 BdowueuiqVxit4iQt1+DVwi2zYeL4vNqb/mjpMiTbuxxau7ktiaL6/YnLApErY55ocn4ZGhZct2kWDXoCjJ0fz5Fao4dU5WakXfSdJI94qWMnRtaSfQaA9WU
 wWinRdPeEWQWEDSnO0o3M8Y9g1nEg4k81OEaPTUENsxg+S5bZQ+z3+pkQWbk7rg9Y3qSubX4RUZVAdhB3S+f/9MnPpqzfwqRRYFyvCNoc/KMuukfnkVxSAtD
 rGElX10/ZzUOwaTlH5WY4dgNFev/iBmU2ij4zcMycktMJN7x9zT4WfnQKBmXOQ8jz5CybJTdoFmwlcWoIbocAASUAuODpuTOZXNmCFsr2b0DugJWT1DlmBuT
 lfcYJuVt6gEHt6eclDzNmDLa9Tn24q6bvMvuB0tFOnhesFFuO64/vujBaj8c478tuSRS9myZNW+ktQU0P8hg2E2uIfbkT32Z4i7r+uZXuPvZArx1tfcI3Boh
 Z3Z/05vsflmHzgy5s5T7gBRp2KW541rAUhTQXWxEGsernxnxyOFj2A/JlP0J26csrq/jDz5DDZEo42q95ASqVXlxGmru47oEU8Y0MM8PN1Y/rVSaDDQx/KHZ
 eRC8Y4zQveRqGp47ZqU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_025241_402650_1E9FBE2F 
X-CRM114-Status: GOOD (  22.92  )
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

On 25/05/2021 18:12, Benjamin Gaignard wrote:
> Add variant to IMX8M to enable G2/HEVC codec.
> Define the capabilities for the hardware up to 3840x2160.
> G2 doesn't have a postprocessor, uses the same clocks and has it
> own interrupt.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c   |  1 +
>  drivers/staging/media/hantro/hantro_hw.h    |  1 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 96 ++++++++++++++++++++-
>  3 files changed, 96 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index ae8a0037706f..507cd5b454b3 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -588,6 +588,7 @@ static const struct of_device_id of_hantro_match[] = {
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
>  	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
> +	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },

From checkpatch:

WARNING: DT compatible string "nxp,imx8mq-vpu-g2" appears un-documented -- check ./Documentation/devicetree/bindings/
#29: FILE: drivers/staging/media/hantro/hantro_drv.c:591:
+       { .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },

Is a patch missing for bindings adding "nxp,imx8mq-vpu-g2"?

Regards,

	Hans


>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_SAMA5D4
>  	{ .compatible = "microchip,sama5d4-vdec", .data = &sama5d4_vdec_variant, },
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index b743b255bf32..5cc083112017 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -206,6 +206,7 @@ extern const struct hantro_variant rk3328_vpu_variant;
>  extern const struct hantro_variant rk3288_vpu_variant;
>  extern const struct hantro_variant imx8mq_vpu_variant;
>  extern const struct hantro_variant sama5d4_vdec_variant;
> +extern const struct hantro_variant imx8mq_vpu_g2_variant;
>  
>  extern const struct hantro_postproc_regs hantro_g1_postproc_regs;
>  
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index 9eb556460e52..ea152e1e6514 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -9,6 +9,9 @@
>  #include <linux/delay.h>
>  
>  #include "hantro.h"
> +#include "hantro_jpeg.h"
> +#include "hantro_g1_regs.h"
> +#include "hantro_g2_regs.h"
>  
>  #define CTRL_SOFT_RESET		0x00
>  #define RESET_G1		BIT(1)
> @@ -128,6 +131,62 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
>  	},
>  };
>  
> +static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
> +	{
> +		.fourcc = V4L2_PIX_FMT_NV12,
> +		.codec_mode = HANTRO_MODE_NONE,
> +	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
> +		.codec_mode = HANTRO_MODE_HEVC_DEC,
> +		.max_depth = 2,
> +		.frmsize = {
> +			.min_width = 48,
> +			.max_width = 3840,
> +			.step_width = MB_DIM,
> +			.min_height = 48,
> +			.max_height = 2160,
> +			.step_height = MB_DIM,
> +		},
> +	},
> +};
> +
> +static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
> +{
> +	struct hantro_dev *vpu = dev_id;
> +	enum vb2_buffer_state state;
> +	u32 status;
> +
> +	status = vdpu_read(vpu, G1_REG_INTERRUPT);
> +	state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
> +		 VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
> +
> +	vdpu_write(vpu, 0, G1_REG_INTERRUPT);
> +	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
> +
> +	hantro_irq_done(vpu, state);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t imx8m_vpu_g2_irq(int irq, void *dev_id)
> +{
> +	struct hantro_dev *vpu = dev_id;
> +	enum vb2_buffer_state state;
> +	u32 status;
> +
> +	status = vdpu_read(vpu, HEVC_REG_INTERRUPT);
> +	state = (status & HEVC_REG_INTERRUPT_DEC_RDY_INT) ?
> +		 VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
> +
> +	vdpu_write(vpu, 0, HEVC_REG_INTERRUPT);
> +	vdpu_write(vpu, HEVC_REG_CONFIG_DEC_CLK_GATE_E, HEVC_REG_CONFIG);
> +
> +	hantro_irq_done(vpu, state);
> +
> +	return IRQ_HANDLED;
> +}
> +
>  static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
>  {
>  	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
> @@ -142,6 +201,13 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
>  	imx8m_soft_reset(vpu, RESET_G1);
>  }
>  
> +static void imx8m_vpu_g2_reset(struct hantro_ctx *ctx)
> +{
> +	struct hantro_dev *vpu = ctx->dev;
> +
> +	imx8m_soft_reset(vpu, RESET_G2);
> +}
> +
>  /*
>   * Supported codec ops.
>   */
> @@ -167,13 +233,25 @@ static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
>  	},
>  };
>  
> +static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
> +	[HANTRO_MODE_HEVC_DEC] = {
> +		.run = hantro_g2_hevc_dec_run,
> +		.reset = imx8m_vpu_g2_reset,
> +		.init = hantro_hevc_dec_init,
> +		.exit = hantro_hevc_dec_exit,
> +	},
> +};
> +
>  /*
>   * VPU variants.
>   */
>  
>  static const struct hantro_irq imx8mq_irqs[] = {
> -	{ "g1", hantro_g1_irq },
> -	{ "g2", NULL /* TODO: imx8m_vpu_g2_irq */ },
> +	{ "g1", imx8m_vpu_g1_irq },
> +};
> +
> +static const struct hantro_irq imx8mq_g2_irqs[] = {
> +	{ "g2", imx8m_vpu_g2_irq },
>  };
>  
>  static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
> @@ -197,3 +275,17 @@ const struct hantro_variant imx8mq_vpu_variant = {
>  	.reg_names = imx8mq_reg_names,
>  	.num_regs = ARRAY_SIZE(imx8mq_reg_names)
>  };
> +
> +const struct hantro_variant imx8mq_vpu_g2_variant = {
> +	.dec_offset = 0x0,
> +	.dec_fmts = imx8m_vpu_g2_dec_fmts,
> +	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
> +	.codec = HANTRO_HEVC_DECODER,
> +	.codec_ops = imx8mq_vpu_g2_codec_ops,
> +	.init = imx8mq_vpu_hw_init,
> +	.runtime_resume = imx8mq_runtime_resume,
> +	.irqs = imx8mq_g2_irqs,
> +	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
> +	.clk_names = imx8mq_clk_names,
> +	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
> +};
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
