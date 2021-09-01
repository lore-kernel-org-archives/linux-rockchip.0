Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 064E1C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 11:32:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8C4560F42
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 11:32:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C8C4560F42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NVJ59N8WqkuP4cYnvRLOaJv35mX3QNTH4GSvSmRvfmg=; b=BE5iBkuxn98DUgQxTzKwt4j5Xf
	16TieZmh1dI4RALjcAUYAvzev6dcSOErj47Q0E+tgqfQgLBqHBTBNB2fmdq0CtlESBqgHtwWWAS/P
	QinAaCOdrnAZOQm9fBudsHTJs1KpgvW7bzejY3uUaZj2V1ZLjIFMZzXWdXBwMRD94thmUv0htKHd6
	Bg9bPQsd8OMpqAlLYqW7qCx4jotdvKvgbLqGHKSKmkhf5bLpo2nDBlUGNJEXq0/0UVoUVAeuCfjqr
	kQ3k1fYqXmqxH7oRdihZ5seIGzz6yiwLe9pqH5p/p9x6z5pD3fbwOo13w1GX9Ml94QUnOqvyu9BTU
	SWPR6s2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLOTG-005bSr-8C; Wed, 01 Sep 2021 11:31:58 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([2001:888:0:108::2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLOPZ-005a5c-DS; Wed, 01 Sep 2021 11:28:13 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id LOPFmJkhu0e6wLOPGmQF42; Wed, 01 Sep 2021 13:27:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1630495672; bh=7MjIq9DrLqf2feI45rNo8/0rkK8PmdE54UQ5xesuT1Q=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=RcBymD3JlDdYh7JVdfp8f80cg20/EBQGZJaGM1srAA/+XHdY1+zhLrvOp3B1jba0r
 dDdIMDY/spgDEe3IhxUluXZkLhVMs/7ArxmwEWJOk0irs2gcYVE8RTefzUwSHAPcKa
 m2627W5CCGjxw/NvPcGgSqHuVXXFB2snd9X0nbvyW0SZbxZxtnIMiIDTntvXCH3RDd
 uE/EO/EZdTeraituJH+RWpPPekNHDzmp8DeVr6hB4dm3LON/lKo0DEc20H4WUaBobF
 vouitnTobqL4l59mDbY0xtXPqODy18Q21UnpIUjf75XkU08WRA8e+Py2+a0IpD7ZVp
 2fzotB1flTDFA==
Subject: Re: [PATCH] media: hantro: Trace hevc hw cycles performance register
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <elezegarcia@gmail.com>
References: <20210823135606.633052-1-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f9edaa49-31cb-b98f-1c79-13b151513077@xs4all.nl>
Date: Wed, 1 Sep 2021 13:27:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210823135606.633052-1-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfC4xkAZsoqg+9dmEoRPAO2iiF1UV7C3dEE2KqskEwbdc/GySvbVsjVzfDap+9vxAz2hGienCE7N+1dPgxs291LOUN5rxkd0M2M+3alEPmQC01WkkKJTV
 a2O337cJLuQAjAZGHFHCDHJvrbQMgtaqSUjDSS+wvnnbRzyfxDHDNKaFl3ai3QGn3aUyPLLpLC9j957fa/hskAYWeW86+KtUFBDtqV39c4fOsCMzRgCfRT+4
 sJRsn+rTBvA5f9hgzOVVh14MTN9IsrCok/UfgAhDoCpLfmpnlpqQPba02xnbu/scRm9zowUdik7O9voa1EzHSoJ1aNHO/SGX1O7Scb5yuHbViOhPm66rQsuH
 Wi3YNNTJ5XeH+AVk3xdbl8bBpw2486WAIuSvooe99XkpCmQu1fTKrnW5BPfIO5KVsh6HYEjZhhgP5ls1mZojrvhJZm2xAfzuAj18SoCPrR8f3N6kn6fkBVuw
 eHHYtkdf8+f5S8ccDZiB1hCAR+RAHN3q666LX31Owe9xSJu4CAspBPYQqjIYUl9igdE/ni/7du1zx2z/VoKAI0JijJhZug5DMDICgJMyHwn43vySU4gEJDxs
 aVEZ9V+Vgt/gNXRxm8+1zil2mOg1+3+W16krKuP31hlEw6crKuoiJry5NJoTd3oRiVdmMUJTOJvqqDfk3wuh8X/wPQ62NzDA2oAqPnftcV5WmiLEXrzlg+Xk
 vA+Au+KZv8IhVw6m6ox3ZFpaOIab4XdYQmf2XejMVB+RuVDEJjx0KxuT84hv24FB+u/yIZLe4QWqEMEGxv/jWbalWXo+G7inV40SXclHFyIMMNEt4D5FJvnH
 rnYgE8a+ZHaOHhhh4lC8oylj4s/64Soy7LsSEg9u
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_042809_793417_3CB0105C 
X-CRM114-Status: GOOD (  24.69  )
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

I'm confused: this is also part of '[PATCH v4 0/9] Additional features for Hantro HEVC', so
do you want to merge this independently from that series? Are there differences between v4 1/9
and this patch, or are they identical?

In any case, I'd like to have a Reviewed-by or Acked-by from Ezequiel before merging this.

Regards,

	Hans

On 23/08/2021 15:56, Benjamin Gaignard wrote:
> After each hevc decoded frame trace the hardware performance.
> It provides the number of hw cycles spend per decoded macroblock.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  Documentation/admin-guide/media/hantro.rst    | 14 +++++++
>  .../admin-guide/media/v4l-drivers.rst         |  1 +
>  drivers/staging/media/hantro/hantro_drv.c     |  3 ++
>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 16 ++++++++
>  drivers/staging/media/hantro/hantro_g2_regs.h |  1 +
>  drivers/staging/media/hantro/hantro_hw.h      |  1 +
>  drivers/staging/media/hantro/hantro_trace.h   | 41 +++++++++++++++++++
>  drivers/staging/media/hantro/imx8m_vpu_hw.c   |  1 +
>  8 files changed, 78 insertions(+)
>  create mode 100644 Documentation/admin-guide/media/hantro.rst
>  create mode 100644 drivers/staging/media/hantro/hantro_trace.h
> 
> diff --git a/Documentation/admin-guide/media/hantro.rst b/Documentation/admin-guide/media/hantro.rst
> new file mode 100644
> index 000000000000..6cb552a5dfcb
> --- /dev/null
> +++ b/Documentation/admin-guide/media/hantro.rst
> @@ -0,0 +1,14 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +=================
> +The hantro driver
> +=================
> +
> +Trace
> +~~~~~
> +
> +You can trace the hardware decoding performances by using event tracing::
> +
> +    # echo hantro_hevc_perf >> /sys/kernel/debug/tracing/set_event
> +
> +That will keep a log of the number of hardware cycles spend per decoded macroblock
> diff --git a/Documentation/admin-guide/media/v4l-drivers.rst b/Documentation/admin-guide/media/v4l-drivers.rst
> index 9c7ebe2ca3bd..4f2f72a2b3b5 100644
> --- a/Documentation/admin-guide/media/v4l-drivers.rst
> +++ b/Documentation/admin-guide/media/v4l-drivers.rst
> @@ -15,6 +15,7 @@ Video4Linux (V4L) driver-specific documentation
>  	cx88
>  	davinci-vpbe
>  	fimc
> +        hantro
>  	imx
>  	imx7
>  	ipu3
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 8a2edd67f2c6..236160c51e59 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -28,6 +28,9 @@
>  #include "hantro.h"
>  #include "hantro_hw.h"
>  
> +#define CREATE_TRACE_POINTS
> +#include "hantro_trace.h"
> +
>  #define DRIVER_NAME "hantro-vpu"
>  
>  int hantro_debug;
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 340efb57fd18..fef16d1724da 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -7,6 +7,7 @@
>  
>  #include "hantro_hw.h"
>  #include "hantro_g2_regs.h"
> +#include "hantro_trace.h"
>  
>  #define HEVC_DEC_MODE	0xC
>  
> @@ -22,6 +23,21 @@ static inline void hantro_write_addr(struct hantro_dev *vpu,
>  	vdpu_write(vpu, addr & 0xffffffff, offset);
>  }
>  
> +void hantro_g2_hevc_dec_done(struct hantro_ctx *ctx)
> +{
> +	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
> +	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
> +	struct hantro_dev *vpu = ctx->dev;
> +	u32 hw_cycles = 0;
> +	u32 mbs = (sps->pic_width_in_luma_samples *
> +		   sps->pic_height_in_luma_samples) >> 8;
> +
> +	if (mbs)
> +		hw_cycles = vdpu_read(vpu, G2_HW_PERFORMANCE) / mbs;
> +
> +	trace_hantro_hevc_perf(ctx, hw_cycles);
> +}
> +
>  static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
>  {
>  	struct hantro_dev *vpu = ctx->dev;
> diff --git a/drivers/staging/media/hantro/hantro_g2_regs.h b/drivers/staging/media/hantro/hantro_g2_regs.h
> index bb22fa921914..17d84ec9c5c2 100644
> --- a/drivers/staging/media/hantro/hantro_g2_regs.h
> +++ b/drivers/staging/media/hantro/hantro_g2_regs.h
> @@ -177,6 +177,7 @@
>  #define G2_REG_CONFIG_DEC_CLK_GATE_E		BIT(16)
>  #define G2_REG_CONFIG_DEC_CLK_GATE_IDLE_E	BIT(17)
>  
> +#define G2_HW_PERFORMANCE	(G2_SWREG(63))
>  #define G2_ADDR_DST		(G2_SWREG(65))
>  #define G2_REG_ADDR_REF(i)	(G2_SWREG(67)  + ((i) * 0x8))
>  #define G2_ADDR_DST_CHR		(G2_SWREG(99))
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index df7b5e3a57b9..ab6f379354cc 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -250,6 +250,7 @@ void hantro_h264_dec_exit(struct hantro_ctx *ctx);
>  int hantro_hevc_dec_init(struct hantro_ctx *ctx);
>  void hantro_hevc_dec_exit(struct hantro_ctx *ctx);
>  int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx);
> +void hantro_g2_hevc_dec_done(struct hantro_ctx *ctx);
>  int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
>  dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, int poc);
>  void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
> diff --git a/drivers/staging/media/hantro/hantro_trace.h b/drivers/staging/media/hantro/hantro_trace.h
> new file mode 100644
> index 000000000000..fa8fec26fa3c
> --- /dev/null
> +++ b/drivers/staging/media/hantro/hantro_trace.h
> @@ -0,0 +1,41 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#if !defined(__HANTRO_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
> +#define __HANTRO_TRACE_H__
> +
> +#include <linux/tracepoint.h>
> +#include <media/videobuf2-v4l2.h>
> +
> +#include "hantro.h"
> +
> +#undef TRACE_SYSTEM
> +#define TRACE_SYSTEM hantro
> +#define TRACE_INCLUDE_FILE hantro_trace
> +
> +TRACE_EVENT(hantro_hevc_perf,
> +	TP_PROTO(struct hantro_ctx *ctx, u32 hw_cycles),
> +
> +	TP_ARGS(ctx, hw_cycles),
> +
> +	TP_STRUCT__entry(
> +		__field(int, minor)
> +		__field(struct v4l2_fh *, fh)
> +		__field(u32, hw_cycles)
> +	),
> +
> +	TP_fast_assign(
> +		__entry->minor = ctx->fh.vdev->minor;
> +		__entry->fh = &ctx->fh;
> +		__entry->hw_cycles = hw_cycles;
> +	),
> +
> +	TP_printk("minor = %d, fh = %p, %8d cycles / mb",
> +		  __entry->minor, __entry->fh, __entry->hw_cycles)
> +);
> +
> +#endif /* __HANTRO_TRACE_H__ */
> +
> +#undef TRACE_INCLUDE_PATH
> +#define TRACE_INCLUDE_PATH ../../drivers/staging/media/hantro
> +
> +/* This part must be outside protection */
> +#include <trace/define_trace.h>
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index ea919bfb9891..7e9e24bb5057 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -239,6 +239,7 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
>  		.reset = imx8m_vpu_g2_reset,
>  		.init = hantro_hevc_dec_init,
>  		.exit = hantro_hevc_dec_exit,
> +		.done = hantro_g2_hevc_dec_done,
>  	},
>  };
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
