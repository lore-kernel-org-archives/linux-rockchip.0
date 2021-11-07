Return-Path: <SRS0=wu9b=P2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B25C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Nov 2021 23:21:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65EAC61242
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Nov 2021 23:21:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 65EAC61242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlI/0kb92CTU0kgyU3SA2/74lvd5z1XNBm8/J+zqNfY=; b=PE9twWvrYqfybs
	QqdMdFq0znyXFVzXzbp9iXOAKwxDRyXUf7c+ej/mNL+PE4N9ssuInK64Qo0dfFMbyUIYAAZb15JgT
	2XS0SkT66VIKKMXpNifSLxAV/H/k6uAYmgivAPOLTaSmCtY6RaIKKLJD2iYDEQMILiLI6sU39zWAY
	XtpKlESnxQDWbd5ShwPmtGkJ4dQikq2rLxswrWDx+wy2nvkBkHZhezWsVVN26IVIMg8FNwBINMYAi
	523Zo8nleOCzSf2rvV9+TvvkQVkDUCK83ucQOacQiMDs0Z4wQ6ryGHzg2OeEu1WmJPLb6xj7Wl/US
	/JKDnVgJY+IzP4fmWaAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjrTi-00F0xg-8e; Sun, 07 Nov 2021 23:21:34 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjrTf-00F0x1-LM; Sun, 07 Nov 2021 23:21:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id b15so35992100edd.7;
 Sun, 07 Nov 2021 15:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WTBhpEahrowQ2ALiN3lDIEDJOWsyFFyMB8PMmXvvAeE=;
 b=HkgOqWZv0C0DRhygxSzbwd/rCaJhsyioUQv53BfYE3oHlGgTy1zXcwkisbZXt+oMUg
 +EqANN7/n8Z5FVdRsvQm1hMCiahTfDIEiqlF4NAdZABtLVdBUyOlc7WgRx7LnPd62+B2
 BFuVdgzjKyZL0bzdDNqUlsdOjwXbtWzCiaIOuiT/BLogIjqlmXqhMN/JNjSqVkm05+hN
 yhv73OLAElPDKIHfM8MWiS0c7GYYra7wnbEHR2xFP4e8ohKXS5YnaYDOp6/TuhMTjtNe
 W2W1O8OqHc75/82f/bUU6wynxWo/cbeHxhz6jlZWpsBVyipSiEkUtTl49vaC1Tsm0rFU
 7awA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WTBhpEahrowQ2ALiN3lDIEDJOWsyFFyMB8PMmXvvAeE=;
 b=AAUmbQ4wUR/PBNGqkJ2G14R0ZtrzBxjeohS6R/KkFA4+YkHRMKQpFaFa+E0NOzKLoh
 nLaVYDDEzpNxDzJ74IJF4alAmt3lh9LZ8Y3ssdYw1P1AP/uZQ9zR8K6ZkGQml/IcKpnr
 0kJTKmqRK1OZ/Ua9LnyhjQgIxajjPGLIttBxic6/AAYE70bVlL0no4C1bi5wiyeTNmGP
 4wFE6yYnnBAaXRxPo1Jjc66kGr7IMfbKskFIRR55x2kKEHqIINOdmTJ0Ylqt91zs4tuz
 yzQ+czwvMStdBIqPv+T7qdtCP58ak1Kj39G/Ggmq2cisxv9lIhnkrndH47/LPE543ldN
 /xlg==
X-Gm-Message-State: AOAM532vvhPHgkrAXuMFTlpkiRPrE0SDDn4C+zQsFOnUfU/kNxcREIbH
 5zrjobfk68vDk8Qh2Dw6G1EOcGFLpqMb39q9G3c=
X-Google-Smtp-Source: ABdhPJzeXuWd/+oKqkEM8Fm9c1no/YXBkjFWIOBrPvS2fO6XwWF/9C+38d3ftpq6Jm/S3kIQv5cEJOhH/8Me8fy2avw=
X-Received: by 2002:a17:906:1112:: with SMTP id
 h18mr23416237eja.50.1636327290054; 
 Sun, 07 Nov 2021 15:21:30 -0800 (PST)
MIME-Version: 1.0
References: <20211106183802.893285-1-aford173@gmail.com>
 <20211106183802.893285-5-aford173@gmail.com>
In-Reply-To: <20211106183802.893285-5-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 7 Nov 2021 17:21:19 -0600
Message-ID: <CAHCN7xKOpc9p+zk1DgAZV5kYh+GHMT6pr-sQ87So6tQPHnp22w@mail.gmail.com>
Subject: Re: [RFC 4/5] media: hantro: Add H1 encoder support on i.MX8M Mini
To: linux-media <linux-media@vger.kernel.org>
Cc: Tim Harvey <tharvey@gateworks.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>, 
 Marek Vasut <marek.vasut@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>, 
 Adam Ford-BE <aford@beaconembedded.com>, cstevens@beaconembedded.com, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang <qiangqing.zhang@nxp.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Alice Guo <alice.guo@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_152131_751519_775A0081 
X-CRM114-Status: GOOD (  24.43  )
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

On Sat, Nov 6, 2021 at 1:38 PM Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M Mini has supports the Hantro H1 encoder, so
> enable it using the same supported formats as other devices
> using the H1 encoder.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---

I randomly checked one or two registers when I first attempted this
patch, but it does appear that the H1 is likely not to work yet due to
too many differences.  It appears that patches 4 and 5 will likely
have to be dropped until they can be investigated and reworked.

I am still running into some power domain issues for the rest of the
series where I cannot read the regmaps for the vpu blk-ctrl register
even when H1 is disabled.

adam


>  drivers/staging/media/hantro/hantro_drv.c   |  1 +
>  drivers/staging/media/hantro/hantro_hw.h    |  1 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 83 +++++++++++++++++++++
>  3 files changed, 85 insertions(+)
>
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 2aa1c520be50..29e8dc52c2e4 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -594,6 +594,7 @@ static const struct of_device_id of_hantro_match[] = {
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
>         { .compatible = "nxp,imx8mm-vpu", .data = &imx8mm_vpu_variant, },
>         { .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
> +       { .compatible = "nxp,imx8mm-vpu-h1", .data = &imx8mm_vpu_h1_variant },
>         { .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
>         { .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
>  #endif
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index c276ecd57066..9f6ae5bf13ee 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -212,6 +212,7 @@ enum hantro_enc_fmt {
>  };
>
>  extern const struct hantro_variant imx8mm_vpu_g2_variant;
> +extern const struct hantro_variant imx8mm_vpu_h1_variant;
>  extern const struct hantro_variant imx8mm_vpu_variant;
>  extern const struct hantro_variant imx8mq_vpu_g2_variant;
>  extern const struct hantro_variant imx8mq_vpu_variant;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index c819609d14d1..69760f88efa5 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -12,6 +12,7 @@
>  #include "hantro_jpeg.h"
>  #include "hantro_g1_regs.h"
>  #include "hantro_g2_regs.h"
> +#include "hantro_h1_regs.h"
>
>  #define CTRL_SOFT_RESET                0x00
>  #define RESET_G1               BIT(1)
> @@ -151,6 +152,43 @@ static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
>         },
>  };
>
> +static const struct hantro_fmt imx8m_vpu_h1_enc_fmts[] = {
> +       {
> +               .fourcc = V4L2_PIX_FMT_YUV420M,
> +               .codec_mode = HANTRO_MODE_NONE,
> +               .enc_fmt = HANTRO_VPU_ENC_FMT_YUV420P,
> +       },
> +       {
> +               .fourcc = V4L2_PIX_FMT_NV12M,
> +               .codec_mode = HANTRO_MODE_NONE,
> +               .enc_fmt = HANTRO_VPU_ENC_FMT_YUV420SP,
> +       },
> +       {
> +               .fourcc = V4L2_PIX_FMT_YUYV,
> +               .codec_mode = HANTRO_MODE_NONE,
> +               .enc_fmt = HANTRO_VPU_ENC_FMT_YUYV422,
> +       },
> +       {
> +               .fourcc = V4L2_PIX_FMT_UYVY,
> +               .codec_mode = HANTRO_MODE_NONE,
> +               .enc_fmt = HANTRO_VPU_ENC_FMT_UYVY422,
> +       },
> +       {
> +               .fourcc = V4L2_PIX_FMT_JPEG,
> +               .codec_mode = HANTRO_MODE_JPEG_ENC,
> +               .max_depth = 2,
> +               .header_size = JPEG_HEADER_SIZE,
> +               .frmsize = {
> +                       .min_width = 96,
> +                       .max_width = 8192,
> +                       .step_width = MB_DIM,
> +                       .min_height = 32,
> +                       .max_height = 8192,
> +                       .step_height = MB_DIM,
> +               },
> +       },
> +};
> +
>  static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
>  {
>         struct hantro_dev *vpu = dev_id;
> @@ -187,6 +225,24 @@ static irqreturn_t imx8m_vpu_g2_irq(int irq, void *dev_id)
>         return IRQ_HANDLED;
>  }
>
> +static irqreturn_t imx8m_vpu_h1_irq(int irq, void *dev_id)
> +{
> +       struct hantro_dev *vpu = dev_id;
> +       enum vb2_buffer_state state;
> +       u32 status;
> +
> +       status = vepu_read(vpu, H1_REG_INTERRUPT);
> +       state = (status & H1_REG_INTERRUPT_FRAME_RDY) ?
> +               VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
> +
> +       vepu_write(vpu, 0, H1_REG_INTERRUPT);
> +       vepu_write(vpu, 0, H1_REG_AXI_CTRL);
> +
> +       hantro_irq_done(vpu, state);
> +
> +       return IRQ_HANDLED;
> +}
> +
>  static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
>  {
>         vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
> @@ -268,6 +324,15 @@ static const struct hantro_codec_ops imx8mm_vpu_g2_codec_ops[] = {
>         },
>  };
>
> +static const struct hantro_codec_ops imx8mm_vpu_h1_codec_ops[] = {
> +       [HANTRO_MODE_JPEG_ENC] = {
> +               .run = hantro_h1_jpeg_enc_run,
> +               .init = hantro_jpeg_enc_init,
> +               .done = hantro_jpeg_enc_done,
> +               .exit = hantro_jpeg_enc_exit,
> +       },
> +};
> +
>  /*
>   * VPU variants.
>   */
> @@ -280,6 +345,10 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
>         { "g2", imx8m_vpu_g2_irq },
>  };
>
> +static const struct hantro_irq imx8mq_h1_irqs[] = {
> +       { "h1", imx8m_vpu_h1_irq },
> +};
> +
>  static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
>  static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
>
> @@ -287,6 +356,8 @@ static const char * const imx8mm_g1_clk_names[] = { "g1", "bus" };
>  static const char * const imx8mm_g1_reg_names[] = { "g1" };
>  static const char * const imx8mm_g2_clk_names[] = { "g2", "bus" };
>  static const char * const imx8mm_g2_reg_names[] = { "g2" };
> +static const char * const imx8mm_h1_clk_names[] = { "h1", "bus" };
> +static const char * const imx8mm_h1_reg_names[] = { "h1" };
>
>  const struct hantro_variant imx8mq_vpu_variant = {
>         .dec_fmts = imx8m_vpu_dec_fmts,
> @@ -349,3 +420,15 @@ const struct hantro_variant imx8mm_vpu_g2_variant = {
>         .clk_names = imx8mm_g2_clk_names,
>         .num_clocks = ARRAY_SIZE(imx8mm_g2_reg_names),
>  };
> +
> +const struct hantro_variant imx8mm_vpu_h1_variant = {
> +       .enc_offset = 0x0,
> +       .enc_fmts = imx8m_vpu_h1_enc_fmts,
> +       .num_enc_fmts = ARRAY_SIZE(imx8m_vpu_h1_enc_fmts),
> +       .codec = HANTRO_JPEG_ENCODER,
> +       .codec_ops = imx8mm_vpu_h1_codec_ops,
> +       .irqs = imx8mq_h1_irqs,
> +       .num_irqs = ARRAY_SIZE(imx8mq_h1_irqs),
> +       .clk_names = imx8mm_h1_clk_names,
> +       .num_clocks = ARRAY_SIZE(imx8mm_h1_clk_names)
> +};
> --
> 2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
