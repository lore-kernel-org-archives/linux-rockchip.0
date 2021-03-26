Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38C9AC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:14:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7B44619EE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:14:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7B44619EE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AxwjsOIk+tRjuZGppHriZMBUHZLun3hfBDvraBjEqqk=; b=Tu+bL2cDmj2ar4OePZnsGQTiC
	CKmDKeQutEVIVDI5rXVfR5uDqkycfsdMhjUW8m1AtZTwSMmJyAt0X996j4PyPQBzOdQ0dLIisjNUB
	XSWFfkK1ldTsbZtcWnQeJsmbDWVT5iDmF4/uE9LXYYrmZry0FXdSSs9lN3RzvJiuFxwE9cPI8d8mt
	C81Zl0e8qQzI7ZDxmgB7SRgKSilrRY6k20EAlT1kcB0/ohMLcZi01Ghs5h8ndi4OQMb9GGu8ZfGWs
	BjnXzNUm0tJy32LNmbM0Vdk5MnuRW4sphazdmRGhq34cAsloLFJH6LpVy8xHLt8JO9HQqFaqhqOFG
	VGXewFjcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnDw-003kU4-AM; Fri, 26 Mar 2021 14:14:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnDt-003kTJ-7s
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 14:14:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnDj-0006Hs-Ik; Fri, 26 Mar 2021 15:13:51 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnDj-0006e9-30; Fri, 26 Mar 2021 15:13:51 +0100
Date: Fri, 26 Mar 2021 15:13:51 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
Message-ID: <20210326141351.GB8441@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-4-benjamin.gaignard@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:12:15 up 36 days, 17:36, 97 users,  load average: 0.14, 0.18, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_141401_357225_C19996EB 
X-CRM114-Status: GOOD (  30.03  )
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

On Thu, Mar 18, 2021 at 09:20:36AM +0100, Benjamin Gaignard wrote:
> In order to be able to share the control hardware block between
> VPUs use a syscon instead a ioremap it in the driver.
> To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
> phandle is not found look at 'ctrl' reg-name.
> With the method it becomes useless to provide a list of register
> names so remove it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
>  - use syscon instead of VPU reset driver.
>  - if DT doesn't provide syscon keep backward compatibilty by using
>    'ctrl' reg-name.
> 
>  drivers/staging/media/hantro/hantro.h       |  5 +-
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 52 ++++++++++++---------
>  2 files changed, 34 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> index 65f9f7ea7dcf..a99a96b84b5e 100644
> --- a/drivers/staging/media/hantro/hantro.h
> +++ b/drivers/staging/media/hantro/hantro.h
> @@ -13,6 +13,7 @@
>  #define HANTRO_H_
>  
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/videodev2.h>
>  #include <linux/wait.h>
>  #include <linux/clk.h>
> @@ -167,7 +168,7 @@ hantro_vdev_to_func(struct video_device *vdev)
>   * @reg_bases:		Mapped addresses of VPU registers.
>   * @enc_base:		Mapped address of VPU encoder register for convenience.
>   * @dec_base:		Mapped address of VPU decoder register for convenience.
> - * @ctrl_base:		Mapped address of VPU control block.
> + * @ctrl_base:		Regmap of VPU control block.
>   * @vpu_mutex:		Mutex to synchronize V4L2 calls.
>   * @irqlock:		Spinlock to synchronize access to data structures
>   *			shared with interrupt handlers.
> @@ -186,7 +187,7 @@ struct hantro_dev {
>  	void __iomem **reg_bases;
>  	void __iomem *enc_base;
>  	void __iomem *dec_base;
> -	void __iomem *ctrl_base;
> +	struct regmap *ctrl_base;
>  
>  	struct mutex vpu_mutex;	/* video_device lock */
>  	spinlock_t irqlock;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index c222de075ef4..bd9d135dd440 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -7,6 +7,7 @@
>  
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
>  
>  #include "hantro.h"
>  #include "hantro_jpeg.h"
> @@ -24,30 +25,28 @@
>  #define CTRL_G1_PP_FUSE		0x0c
>  #define CTRL_G2_DEC_FUSE	0x10
>  
> +static const struct regmap_config ctrl_regmap_ctrl = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 0x14,
> +};
> +
>  static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
>  {
> -	u32 val;
> -
>  	/* Assert */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val &= ~reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> +	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET, reset_bits, 0);
>  
>  	udelay(2);
>  
>  	/* Release */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val |= reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> +	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET,
> +			   reset_bits, reset_bits);
>  }
>  
>  static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
>  {
> -	u32 val;
> -
> -	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
> -	val |= clock_bits;
> -	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);
> +	regmap_update_bits(vpu->ctrl_base, CTRL_CLOCK_ENABLE,
> +			   clock_bits, clock_bits);
>  }
>  
>  static int imx8mq_runtime_resume(struct hantro_dev *vpu)
> @@ -64,9 +63,9 @@ static int imx8mq_runtime_resume(struct hantro_dev *vpu)
>  	imx8m_clk_enable(vpu, CLOCK_G1 | CLOCK_G2);
>  
>  	/* Set values of the fuse registers */
> -	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_DEC_FUSE);
> -	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_PP_FUSE);
> -	writel(0xffffffff, vpu->ctrl_base + CTRL_G2_DEC_FUSE);
> +	regmap_write(vpu->ctrl_base, CTRL_G1_DEC_FUSE, 0xffffffff);
> +	regmap_write(vpu->ctrl_base, CTRL_G1_PP_FUSE, 0xffffffff);
> +	regmap_write(vpu->ctrl_base, CTRL_G2_DEC_FUSE, 0xffffffff);
>  
>  	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
>  
> @@ -150,8 +149,22 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
>  
>  static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
>  {
> -	vpu->dec_base = vpu->reg_bases[0];
> -	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
> +	struct device_node *np = vpu->dev->of_node;
> +
> +	vpu->ctrl_base = syscon_regmap_lookup_by_phandle(np, "nxp,imx8mq-vpu-ctrl");

I think calling this nxp,imx8m-vpu-ctrl would allow to share this with
i.MX8MM later. Otherwise,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

thanks
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
