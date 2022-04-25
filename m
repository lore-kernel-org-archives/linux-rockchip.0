Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD11C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwL+j7l+dzqoVkaEHD7HTwzXgvfmcWDpJWf/ISiif2s=; b=in1iSOrkvSyVid
	vAGPZao6Rh/OineaHx3S9REz+RZ5VOHrb8Wyef5cqM1O3ncglvYplu3rtRcjwQ5G72LrEcQfnkz+c
	7vOLdzkNVr+6CEnVty9auaNkhmr7lBmd/Oigp5td1RTJ1DVt6E7wxk8AefIPBTgmxhtGSX7XPmI6b
	LEUFu352I1i1RsNBJM50px1e8BbqtW4XSLjwNjdvaHd9l3Icp962iY2xeSrmpwoUiWDGzzXMPvtek
	N5p8CwJQLwUIQ+QQlJs7Gu8sVrprlFcWilPKWsZMM7JmG6EbaR/BcIZTfUgexpdoxfl6Oewn51VLi
	KC5KJ0vITDi2cFea1pAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nixAb-009LF0-W0; Mon, 25 Apr 2022 11:46:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nixAY-009L95-9o
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:46:20 +0000
Received: by mail-ej1-x635.google.com with SMTP id g6so6234578ejw.1
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4LiQigWckfpLwMbrYIQQOgR6X6QiTKfRradFl3Q0U4M=;
 b=EOjnsgMRVs+UQF+QmVfWr8VLWOMyWvgz2+/8OS6nu2Fs/RboxdceerikqF1i7HKJmW
 Ykprh7BSRNUKv4cBku/kC1IOQLmNHLNKqBaouQsREpW8aX0psHPuXXpYutT+nOTxJqja
 qSMR32lYjwDlVJGNs7P3W60UdQIDJwXVLI7nw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4LiQigWckfpLwMbrYIQQOgR6X6QiTKfRradFl3Q0U4M=;
 b=z0DCMal2nKbB7FD9RgpARbrHP7dDMY+v4Yz26Ipqup+kb0Hlo9NJCdXXX10WSn0djB
 nI95mLBn+jXLLdx2Zc9jgf6vpshd32GlWyGX0pkt4kbEaof+ifzHuYdtXwP0ccw4lL0n
 kOISV2loda3ffjMY/EMnZkXurvWtKJFWMhj6SBVxCU7nrN/rcEyQBJQTmcV1EGEH77KB
 3l9VBpPzCqm5FtZ/jOCPiRkJzoXagjNuVmgS0CaCOcSjNMBb20DD/YjNdgIlKMaic9Tx
 XRgZgkDBCb5BsJzelyTM5djA0DteyKmL7VTsSZ6JoNleGxytGehZYZI2kgxB1aqfdjBg
 Z4EQ==
X-Gm-Message-State: AOAM530QDBNVAzUMrbgaCWW//L1ums/nw1eY4DkZqykByI3SfV8yVzDq
 PvpRLTxJUTB/Vf8DDZ2N3Lr9yQ==
X-Google-Smtp-Source: ABdhPJyE5kgy54xqVNFY/KCbw57qoI7YORvA2f7LZSt+EWorLhJirchXBjKEwWV86bp8UUNzlltzGA==
X-Received: by 2002:a17:907:c297:b0:6e8:b7dd:5bc1 with SMTP id
 tk23-20020a170907c29700b006e8b7dd5bc1mr16540028ejc.173.1650887174497; 
 Mon, 25 Apr 2022 04:46:14 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 c6-20020a50f606000000b00425adbac753sm4536369edn.21.2022.04.25.04.46.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:46:14 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:45:56 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 17/21] media: rkisp1: debug: Consolidate reg dumps for
 shadow registers
Message-ID: <YmaJ9GGdEpZUufkL@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-18-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-18-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_044618_525977_F751BC9B 
X-CRM114-Status: GOOD (  23.24  )
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

> Extend the rkisp1_debug_register structure and the
> rkisp1_debug_dump_regs() function to support shadow registers, and
> replace the manual registers dump implementation in
> rkisp1_debug_dump_rsz_regs_show() with a call to
> rkisp1_debug_dump_regs().
> 
> Support for printing register values in decimal is dropped, as it was
> actually confusing to print resizer register expressed as fixed-point
> values in decimal.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 83 ++++++++-----------
>  1 file changed, 33 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index d6cfbfaba3cb..2c226f20f525 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -19,16 +19,20 @@
>  
>  struct rkisp1_debug_register {
>  	u32 reg;
> +	u32 shd;
>  	const char * const name;
>  };
>  
> -#define RKISP1_DEBUG_REG(name)	{ RKISP1_CIF_##name, #name }
> +#define RKISP1_DEBUG_REG(name)		{ RKISP1_CIF_##name, 0, #name }
> +#define RKISP1_DEBUG_SHD_REG(name) { \
> +	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name \
> +}
>  
> -static int rkisp1_debug_dump_regs(struct seq_file *m,
> +static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
> +				  struct seq_file *m, unsigned int offset,
>  				  const struct rkisp1_debug_register *regs)
>  {
> -	struct rkisp1_device *rkisp1 = m->private;
> -	u32 val;
> +	u32 val, shd;
>  	int ret;
>  
>  	ret = pm_runtime_get_if_in_use(rkisp1->dev);
> @@ -36,8 +40,15 @@ static int rkisp1_debug_dump_regs(struct seq_file *m,
>  		return ret ? : -ENODATA;
>  
>  	for ( ; regs->name; ++regs) {
> -		val = rkisp1_read(rkisp1, regs->reg);
> -		seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> +		val = rkisp1_read(rkisp1, offset + regs->reg);
> +
> +		if (regs->shd) {
> +			shd = rkisp1_read(rkisp1, offset + regs->shd);
> +			seq_printf(m, "%14s: 0x%08x/0x%08x\n", regs->name,
> +				   val, shd);
> +		} else {
> +			seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> +		}
>  	}
>  
>  	pm_runtime_put(rkisp1->dev);
> @@ -61,8 +72,9 @@ static int rkisp1_debug_dump_core_regs_show(struct seq_file *m, void *p)
>  		RKISP1_DEBUG_REG(MI_DMA_STATUS),
>  		{ /* Sentinel */ },
>  	};
> +	struct rkisp1_device *rkisp1 = m->private;
>  
> -	return rkisp1_debug_dump_regs(m, registers);
> +	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_core_regs);
>  
> @@ -76,59 +88,30 @@ static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
>  		RKISP1_DEBUG_REG(ISP_ERR),
>  		{ /* Sentinel */ },
>  	};
> +	struct rkisp1_device *rkisp1 = m->private;
>  
> -	return rkisp1_debug_dump_regs(m, registers);
> +	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_isp_regs);
>  
> -#define RKISP1_DEBUG_RSZ_REG_DEC(name) { \
> -	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name, false \
> -}
> -
> -#define RKISP1_DEBUG_RSZ_REG_HEX(name) { \
> -	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name, true \
> -}
> -
>  static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
>  {
> -	static const struct {
> -		u32 reg;
> -		u32 shadow;
> -		const char * const name;
> -		bool hex;
> -	} registers[] = {
> -		RKISP1_DEBUG_RSZ_REG_HEX(RSZ_CTRL),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HY),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HCB),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HCR),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_VY),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_VC),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_HY),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_HC),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_VY),
> -		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_VC),
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_SHD_REG(RSZ_CTRL),
> +		RKISP1_DEBUG_SHD_REG(RSZ_SCALE_HY),
> +		RKISP1_DEBUG_SHD_REG(RSZ_SCALE_HCB),
> +		RKISP1_DEBUG_SHD_REG(RSZ_SCALE_HCR),
> +		RKISP1_DEBUG_SHD_REG(RSZ_SCALE_VY),
> +		RKISP1_DEBUG_SHD_REG(RSZ_SCALE_VC),
> +		RKISP1_DEBUG_SHD_REG(RSZ_PHASE_HY),
> +		RKISP1_DEBUG_SHD_REG(RSZ_PHASE_HC),
> +		RKISP1_DEBUG_SHD_REG(RSZ_PHASE_VY),
> +		RKISP1_DEBUG_SHD_REG(RSZ_PHASE_VC),
>  		{ /* Sentinel */ },
>  	};
> -
>  	struct rkisp1_resizer *rsz = m->private;
> -	typeof(registers[0]) *reg;
> -	u32 val, shd;
> -	int ret;
>  
> -	ret = pm_runtime_get_if_in_use(rsz->rkisp1->dev);
> -	if (ret <= 0)
> -		return ret ? : -ENODATA;
> -
> -	for (reg = registers; reg->name; ++reg) {
> -		val = rkisp1_read(rsz->rkisp1, rsz->regs_base + reg->reg);
> -		shd = rkisp1_read(rsz->rkisp1, rsz->regs_base + reg->shadow);
> -		seq_printf(m, reg->hex ? "%14s: 0x%08x/0x%08x\n" : "%14s: %u/%u\n",
> -			   reg->name, val, shd);
> -	}
> -
> -	pm_runtime_put(rsz->rkisp1->dev);
> -
> -	return 0;
> +	return rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base, registers);
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
>  
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
