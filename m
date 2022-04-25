Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2D86C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRSaRZF0UVOX6HUKlr65dLgdEH0RAuf5NCdLUS/pExc=; b=Xahfjp84pS/m9X
	tQyy7y7fDoTIhm65yo2w1UiXtXuwsjEpXGR8sUuvjFLkPTvLERtqCdhYt2PKOigvwrhDFP6ionpDo
	kNuU10+RZLrNY/apHXRdXrbBQ1vn6hp5pv4t5a3wxanVrFY72In4z+PPZAh883/gpJv0ERJTFoNCY
	6kNb36Eb9PGL6unECLCD5amMV3X0s10swl3wxX7sx8mNK/HD2NhpdI6v4MWVhLu+ET/tyDGbdL8I6
	ZuvYAs0vb6See4A2Szyl2fW7kk6Rpj8hsWeAkLtwjh/qyQq683bPzAuF1wlbAzYaSUn1Km9Vjuhy0
	S6ptpQ5oySpp/MqY3/+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niwfX-009G1K-Ln; Mon, 25 Apr 2022 11:14:15 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niwfU-009G0D-EU
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:14:14 +0000
Received: by mail-ej1-x636.google.com with SMTP id l18so2281983ejc.7
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YCeAp+MsVN3Wftm3eDFtqaQfWTZrH5Z6Qa2DrJiohA8=;
 b=GaBpKTOMfDX35z3yhEAlmid/BZOaqo0clNtGds4utk+vTCcgUFU2BBmDB3Nk4Pbg8o
 AhZSzj32VADD4VXK14LZo841Ma6re50Hskn4ORGPrMUaplXwQCUFHfFzrzHdFPwqw7Yb
 Y7wcKwuTLk+L3B4EIoJB4GKKUoNnoh4XPt4gw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YCeAp+MsVN3Wftm3eDFtqaQfWTZrH5Z6Qa2DrJiohA8=;
 b=sVchT76K5tZmqHQN1dJmuY8UUKr7J5N5E62ta8fkjRYwokbUO+mC+DPSJH1IfkwG2X
 83p1Yn6h3wLKuo5/QrT7C1iytxPAkNCX+f1dTFek7SaxvCd9TCGY4wpcatVX+DtM99jV
 PiK4QsNo4jNiey3ty9Z4Im7uo0ljIv1/ARvXuhU+s75x/RAVL5Q4uth32hRZ4kOmfTQp
 GJjoFy0xVfO1JeVp+4lNyh9c3zsBUPj8Xmv/tr+Yl59iYZMmsD3weuN9vyJHXj9Rx2jY
 vb5hoea2/AYpRK0PJtJpNALpZjLh2zmxPMKfOScvuj+uBHI66QlChgRcyfX+N5yjpDKt
 DedA==
X-Gm-Message-State: AOAM5334B2S0HrsjRaeW9ty5zXLo9k6TLhB0BaxRkAex+uONyJEPmiil
 oT5NY4acVvFPAr7dYLvHfcBZuA==
X-Google-Smtp-Source: ABdhPJxt88rlL+icmXV6pdJCdoRijSmmj4rvp2TPBC344nZ2mIxgDYBd683IwPVfeJbwEdESxhsI0A==
X-Received: by 2002:a17:906:130c:b0:6f3:8bbd:740a with SMTP id
 w12-20020a170906130c00b006f38bbd740amr6199424ejb.621.1650885247003; 
 Mon, 25 Apr 2022 04:14:07 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 v17-20020a1709060b5100b006f38cf075cbsm1452729ejg.104.2022.04.25.04.14.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:14:06 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:13:49 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 15/21] media: rkisp1: debug: Add debugfs files to dump
 core and ISP registers
Message-ID: <YmaCbRhGF5sr/S1z@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-16-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-16-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_041412_552451_9B4E1E9E 
X-CRM114-Status: GOOD (  21.75  )
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

Laurent Pinchart wrote:

> It's useful to dumb the value of registers for debugging purpose. Add
not all the values are dumb :P
> two debugfs files to dump key core and ISP registers.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v3:
> 
> - Fix pm_runtime_get_if_in_use() return value handling
> - Rename rkisp1_debug_register offset field to reg
> 
> Changes since v2:
> 
> - Handle runtime PM
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 782a696ac587..63aa81553178 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -17,6 +17,70 @@
>  #include "rkisp1-common.h"
>  #include "rkisp1-regs.h"
>  
> +struct rkisp1_debug_register {
> +	u32 reg;
> +	const char * const name;
> +};
> +
> +#define RKISP1_DEBUG_REG(name)	{ RKISP1_CIF_##name, #name }
> +
> +static int rkisp1_debug_dump_regs(struct seq_file *m,
> +				  const struct rkisp1_debug_register *regs)
> +{
> +	struct rkisp1_device *rkisp1 = m->private;
> +	u32 val;
> +	int ret;
> +
> +	ret = pm_runtime_get_if_in_use(rkisp1->dev);
> +	if (ret <= 0)
> +		return ret ? : -ENODATA;
> +
> +	for ( ; regs->name; ++regs) {
> +		val = rkisp1_read(rkisp1, regs->reg);
> +		seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> +	}
> +
> +	pm_runtime_put(rkisp1->dev);
> +
> +	return 0;
> +}
> +
> +static int rkisp1_debug_dump_core_regs_show(struct seq_file *m, void *p)
> +{
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_REG(VI_CCL),
> +		RKISP1_DEBUG_REG(VI_ICCL),
> +		RKISP1_DEBUG_REG(VI_IRCL),
> +		RKISP1_DEBUG_REG(VI_DPCL),
> +		RKISP1_DEBUG_REG(MI_CTRL),
> +		RKISP1_DEBUG_REG(MI_BYTE_CNT),
> +		RKISP1_DEBUG_REG(MI_CTRL_SHD),
> +		RKISP1_DEBUG_REG(MI_RIS),
> +		RKISP1_DEBUG_REG(MI_STATUS),
> +		RKISP1_DEBUG_REG(MI_DMA_CTRL),
> +		RKISP1_DEBUG_REG(MI_DMA_STATUS),
> +		{ /* Sentinel */ },
> +	};
> +
> +	return rkisp1_debug_dump_regs(m, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_core_regs);
> +
> +static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
> +{
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_REG(ISP_CTRL),
> +		RKISP1_DEBUG_REG(ISP_ACQ_PROP),
> +		RKISP1_DEBUG_REG(ISP_FLAGS_SHD),
> +		RKISP1_DEBUG_REG(ISP_RIS),
> +		RKISP1_DEBUG_REG(ISP_ERR),
> +		{ /* Sentinel */ },
> +	};
> +
> +	return rkisp1_debug_dump_regs(m, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_isp_regs);
> +
>  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
>  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>  
> @@ -68,6 +132,7 @@ DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_input_status);
>  void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>  	struct rkisp1_debug *debug = &rkisp1->debug;
> +	struct dentry *regs_dir;
>  
>  	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
>  
> @@ -96,6 +161,13 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  			     &debug->frame_drop[RKISP1_SELFPATH]);
>  	debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
>  			    &rkisp1_debug_input_status_fops);
> +
> +	regs_dir = debugfs_create_dir("regs", debug->debugfs_dir);
Is it worth to make a folder just for these two files?
> +
> +	debugfs_create_file("core", 0444, regs_dir, rkisp1,
> +			    &rkisp1_debug_dump_core_regs_fops);
> +	debugfs_create_file("isp", 0444, regs_dir, rkisp1,
> +			    &rkisp1_debug_dump_isp_regs_fops);
>  }
>  
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> -- 
> Regards,
> 
> Laurent Pinchart
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
