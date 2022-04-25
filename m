Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E6DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2gu3ZF52VTu/WxsS2Att4chfUn/z0uyjT86bhFs/D4=; b=daCG4pV7GgdsyC
	lMhqX27Vyx0r/G72BWA1Z78OjMcd0tza3GtZw+lgJaiwVU0FAp1u58bECZCWNtQyi3fbaITcAcd4W
	CAIap1UQxlUqEZcZLMPtV5N3H3UMa0xGKcZkWOvKg8gk4/QT8UBNKpjKQThiWD4hWBeFH24R+MfBW
	7ZjvXAFuD+MYkJi3UBZvqeRsvfbSMiQQTc5wBAl/svs08zGKmBknK0X5ETiwt2DGCrJGkmsy9WK2J
	F+DB5rqvwrUDfrnQhSZ5qNNdbFGIxHEDArGe747wojhox1qfaTLnji7IXwCE0ZqmiWJ7V10mTB+CR
	BXoNHYKmPC6H70JjW6BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niwZz-009EmZ-ID; Mon, 25 Apr 2022 11:08:31 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niwZv-009ElL-SE
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:08:29 +0000
Received: by mail-ed1-x52c.google.com with SMTP id z19so4669212edx.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BcdRZqKdMJBQ1wt30qPrSOU9U7EvCQM4OsprjViQEtI=;
 b=h7k/BwOCnS+jSR+bP00epoCsSh3rNlFRnzBTE2rZyIaXfPINflmd40ujUh0DQHAi0d
 axyKQW0vRbllgKHGwVhU4r+Um9xB/hbK/tcStUWxTQCzyC0lFJWVHC4rKQ+XlOQITxw5
 gBwbHTRjrkAB6jVOVPN2+9gSIc+i+yVU1EQKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BcdRZqKdMJBQ1wt30qPrSOU9U7EvCQM4OsprjViQEtI=;
 b=geyAfpiPGHQ3KDKgVHqsT3iml63/RdPRWl/nAq23nJgDYuy22E3D1Vms5u2ojs4Ucn
 tDVxTVwq096awDwxGunAAHXqfeR8D4NL4c14+H+AW75uaRZ7oAYKkY/qjEh5XORFeoQY
 ZfhAaRzjqwCGXGRM2IVpq0pB32TPMhiirYxuOXahEcs0x/aaXBroa/4KkaPb0R0lJ2eZ
 pd7fgI+9ztiPhJ6dEF76zN2U51Msk/PmqPLfLjgqyqJnPPH+SK2NSq6KGKAnZA1MXevS
 uHMFQAYSmVO+JTPccId3yBkAP5Jq2C2p6MdiFo8DCSAtnCJJeQCHVdMN99Tdeh4f5Tuv
 ESYw==
X-Gm-Message-State: AOAM533dhyv4efjunz7ZwL6BuMGclgEDnI23sM3zYZA6/oG51k7E6xV8
 ldSFVa2A/QSO/2CtZ9hnv4bkoQ==
X-Google-Smtp-Source: ABdhPJyxnkGEMkSLnDsc+2vkgxuXv9ivj8nTtJLGTT9lQQ9or7oJXjoEA14ojonE2vsg/UqCcncrAg==
X-Received: by 2002:a05:6402:27cb:b0:423:d386:42be with SMTP id
 c11-20020a05640227cb00b00423d38642bemr18311766ede.227.1650884905802; 
 Mon, 25 Apr 2022 04:08:25 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 lf5-20020a170907174500b006f3806fc9cdsm2002654ejc.39.2022.04.25.04.08.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:08:25 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:08:08 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 14/21] media: rkisp1: debug: Collect input status by
 sampling ISP_FLAGS_SHD
Message-ID: <YmaBGMrrbt5/v1vO@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-15-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-15-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_040827_974300_2DAEE30E 
X-CRM114-Status: GOOD (  23.20  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Laurent Pinchart wrote:

> The ISP_FLAGS_SHD register exposes the ISP parallel input signals (data
> and synchronization) in real time. This can help debugging when the
> device doesn't output any image. Sample the register 10000 times with a
> 1=B5s delay and expose the result through debugfs.

I think this is quite clever :)

Out of curiosity, how long does reading the debug file takes?

> =

> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v3:
> =

> - Fix pm_runtime_get_if_in_use() return value handling
> =

> Changes since v2:
> =

> - Handle runtime PM
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 54 +++++++++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  9 ++++
>  2 files changed, 63 insertions(+)
> =

> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/driv=
ers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 64b33774cbdf..782a696ac587 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -9,9 +9,61 @@
>   */
>  =

>  #include <linux/debugfs.h>
> +#include <linux/delay.h>
>  #include <linux/device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/seq_file.h>
>  =

>  #include "rkisp1-common.h"
> +#include "rkisp1-regs.h"
> +
> +#define RKISP1_DEBUG_DATA_COUNT_BINS	32
> +#define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BIN=
S)
> +
> +static int rkisp1_debug_input_status_show(struct seq_file *m, void *p)
> +{
> +	struct rkisp1_device *rkisp1 =3D m->private;
> +	u16 data_count[RKISP1_DEBUG_DATA_COUNT_BINS] =3D { };
> +	unsigned int hsync_count =3D 0;
> +	unsigned int vsync_count =3D 0;
> +	unsigned int i;
> +	u32 data;
> +	u32 val;
> +	int ret;
> +
> +	ret =3D pm_runtime_get_if_in_use(rkisp1->dev);
> +	if (ret <=3D 0)
> +		return ret ? : -ENODATA;
> +
> +	/* Sample the ISP input port status 10000 times with a 1=B5s interval. =
*/
> +	for (i =3D 0; i < 10000; ++i) {
> +		val =3D rkisp1_read(rkisp1, RKISP1_CIF_ISP_FLAGS_SHD);
> +
> +		data =3D (val & RKISP1_CIF_ISP_FLAGS_SHD_S_DATA_MASK)
> +		     >> RKISP1_CIF_ISP_FLAGS_SHD_S_DATA_SHIFT;
> +		data_count[data / RKISP1_DEBUG_DATA_COUNT_STEP]++;
> +
> +		if (val & RKISP1_CIF_ISP_FLAGS_SHD_S_HSYNC)
> +			hsync_count++;
> +		if (val & RKISP1_CIF_ISP_FLAGS_SHD_S_VSYNC)
> +			vsync_count++;
> +
> +		udelay(1);
> +	}
> +
> +	pm_runtime_put(rkisp1->dev);
> +
> +	seq_printf(m, "vsync: %u, hsync: %u\n", vsync_count, hsync_count);
> +	seq_puts(m, "data:\n");
> +	for (i =3D 0; i < ARRAY_SIZE(data_count); ++i)
> +		seq_printf(m, "- [%04u:%04u]: %u\n",
> +			   i * RKISP1_DEBUG_DATA_COUNT_STEP,
> +			   (i + 1) * RKISP1_DEBUG_DATA_COUNT_STEP - 1,
> +			   data_count[i]);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_input_status);
>  =

>  void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
> @@ -42,6 +94,8 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  			     &debug->frame_drop[RKISP1_MAINPATH]);
>  	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
>  			     &debug->frame_drop[RKISP1_SELFPATH]);
> +	debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
> +			    &rkisp1_debug_input_status_fops);
>  }
>  =

>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drive=
rs/media/platform/rockchip/rkisp1/rkisp1-regs.h
> index a93d0127b813..2b322db97252 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -454,6 +454,15 @@
>  #define RKISP1_CIF_ISP_DEMOSAIC_BYPASS			BIT(10)
>  #define RKISP1_CIF_ISP_DEMOSAIC_TH(x)			((x) & 0xFF)
>  =

> +/* ISP_FLAGS_SHD */
> +#define RKISP1_CIF_ISP_FLAGS_SHD_ISP_ENABLE_SHD		BIT(0)
> +#define RKISP1_CIF_ISP_FLAGS_SHD_ISP_ENABLE_INFORM_SHD	BIT(1)
> +#define RKISP1_CIF_ISP_FLAGS_SHD_INFORM_FIELD		BIT(2)
> +#define RKISP1_CIF_ISP_FLAGS_SHD_S_DATA_MASK		GENMASK(27, 16)
> +#define RKISP1_CIF_ISP_FLAGS_SHD_S_DATA_SHIFT		16
> +#define RKISP1_CIF_ISP_FLAGS_SHD_S_VSYNC		BIT(30)
> +#define RKISP1_CIF_ISP_FLAGS_SHD_S_HSYNC		BIT(31)
> +
>  /* AWB */
>  /* ISP_AWB_PROP */
>  #define RKISP1_CIF_ISP_AWB_YMAX_CMP_EN			BIT(2)
> -- =

> Regards,
> =

> Laurent Pinchart
> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
