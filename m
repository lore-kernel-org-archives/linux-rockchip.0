Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6F0DC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4f30w7C3NnDmdCax4YbpoM9VvhYdF+GgP0JNilmwbVg=; b=EVQ2yOETAdwhJk
	5qyN1deHeyxYaZxiVu/glsn2a7t5JmVEPB2eGuQUaq3mHsoIAVy2QOdvzJ613XRcZJrLWuxuaI4iO
	taZttFHUcT2IPU6UtxKTYJn1MSJ/GAmDIE1BKdapwfHyPnwz2XE0J1ObDLILQpWy7JnJJtTLejhA0
	O8pcrnFbmCMR1zsiEV03mTBWg5YzkTAGTuRomIaSGmvLYp98ITRByJB3r8un1bDJa3Z0fXgQoR7X/
	4l9km2VP9RpU/V9hhXxE8lge/1dvxsArjdEdMeeb59htFrzgS7MAwTTSWp0X55MzSd1ku76nJWvlC
	Mc9GiUjY0X8fYgtdMYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niwhn-009GKJ-Lv; Mon, 25 Apr 2022 11:16:35 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niwhk-009GJT-Ns
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:16:34 +0000
Received: by mail-ed1-x533.google.com with SMTP id k27so2769837edk.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qdBFcW6vJKmQAv/hLXoaaVjL7wbFyKf0aQGRcWl+ruQ=;
 b=ljJGXa9x5cv7X6+Qge4jO9pP9mpyU5pHpEpmH84oJrW8E3HKvwwuLFhtf8XMMRAV1E
 kT9JeRtQe4o+Dnk+EPLFTnTUIBp9niTh2iFVBOej8rJ/k5irCpdtM0c8Waf6vdXJbRBI
 UuGOB2O1sVwlCZO8aAK5KgBb151V1SPunqe+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qdBFcW6vJKmQAv/hLXoaaVjL7wbFyKf0aQGRcWl+ruQ=;
 b=x69IscM1/sNhivegGZY8li7GSIUInSu8i+W2KsHudLAISpSc+MZ+tnySu6FN/q3oba
 VuG0x4XEg1XMrKLGYiKSIgTOEXWKRFzpYwVBLmVRXjDnjDq6dedXT/cGUr6nXhEmOhCW
 Yh9NNSJWiPwp8V2zIrWWCggBUqmuya1hzsNFLpEiuTou/pXE3eWf68rRxrDiambCdDt/
 KBEFhBnr3akT5HFqUZ6WQAPdzGGK7W3OXlgJPjX2bS4aISALx0gBfVlhE9JNNyhjekk7
 7RDp6I1zOcKjEa0TMnCEGH/qBJjOV9oXoJUIIG5N9NZSSJo5wnCaS4JGoEJIw9a2v4jV
 SPOg==
X-Gm-Message-State: AOAM532JFAmw1/T3CL0eTN6N9uc7cdYp+Rz8KucHulnfpbCgEQ4X6G/M
 Xs2Rzkh9UITmgNDXC2pioRvIdA==
X-Google-Smtp-Source: ABdhPJx548B6KtJv7QCLqPliUAlOgs8jQgsJ2ux/8ROdf+Q+DX/Cu6of0RFn06YhIB6fmG4M4YE2lQ==
X-Received: by 2002:aa7:cc02:0:b0:411:487e:36fe with SMTP id
 q2-20020aa7cc02000000b00411487e36femr18510088edt.338.1650885389546; 
 Mon, 25 Apr 2022 04:16:29 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 p7-20020a170906614700b006f396417dfcsm1033670ejl.225.2022.04.25.04.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:16:29 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:16:12 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 16/21] media: rkisp1: debug: Move resizer register
 dump to debugfs
Message-ID: <YmaC/D4QTJvGb6MY@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-17-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-17-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_041632_830425_5D6B7C61 
X-CRM114-Status: GOOD (  22.71  )
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

> The debugfs support already includes support to dump core and ISP
> registers. Move the resizer register dump there too to make the
> userspace interface consistent.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v3:
> 
> - Use RKISP1_MAINPATH and RKISP1_SELFPATH macros
> - Call pm_runtime_get_if_in_use()
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 57 +++++++++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 37 ------------
>  2 files changed, 57 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 63aa81553178..d6cfbfaba3cb 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -81,6 +81,57 @@ static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_isp_regs);
>  
> +#define RKISP1_DEBUG_RSZ_REG_DEC(name) { \
> +	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name, false \
> +}
> +
> +#define RKISP1_DEBUG_RSZ_REG_HEX(name) { \
> +	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name, true \
> +}
> +
> +static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> +{
> +	static const struct {
> +		u32 reg;
> +		u32 shadow;
> +		const char * const name;
> +		bool hex;
> +	} registers[] = {
> +		RKISP1_DEBUG_RSZ_REG_HEX(RSZ_CTRL),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HY),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HCB),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_HCR),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_VY),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_SCALE_VC),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_HY),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_HC),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_VY),
> +		RKISP1_DEBUG_RSZ_REG_DEC(RSZ_PHASE_VC),
> +		{ /* Sentinel */ },
> +	};
> +
> +	struct rkisp1_resizer *rsz = m->private;
> +	typeof(registers[0]) *reg;
> +	u32 val, shd;
> +	int ret;
> +
> +	ret = pm_runtime_get_if_in_use(rsz->rkisp1->dev);
> +	if (ret <= 0)
> +		return ret ? : -ENODATA;
> +
> +	for (reg = registers; reg->name; ++reg) {
> +		val = rkisp1_read(rsz->rkisp1, rsz->regs_base + reg->reg);
> +		shd = rkisp1_read(rsz->rkisp1, rsz->regs_base + reg->shadow);
> +		seq_printf(m, reg->hex ? "%14s: 0x%08x/0x%08x\n" : "%14s: %u/%u\n",
> +			   reg->name, val, shd);
> +	}
> +
> +	pm_runtime_put(rsz->rkisp1->dev);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
> +
>  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
>  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>  
> @@ -168,6 +219,12 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  			    &rkisp1_debug_dump_core_regs_fops);
>  	debugfs_create_file("isp", 0444, regs_dir, rkisp1,
>  			    &rkisp1_debug_dump_isp_regs_fops);
> +	debugfs_create_file("mrsz", 0444, regs_dir,
> +			    &rkisp1->resizer_devs[RKISP1_MAINPATH],
> +			    &rkisp1_debug_dump_rsz_regs_fops);
> +	debugfs_create_file("srsz", 0444, regs_dir,
> +			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
> +			    &rkisp1_debug_dump_rsz_regs_fops);
>  }
>  
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index ac1b357a2a3a..1c07985c810d 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -203,41 +203,6 @@ static void rkisp1_dcrop_config(struct rkisp1_resizer *rsz)
>   * Resizer hw configs
>   */
>  
> -static void rkisp1_rsz_dump_regs(struct rkisp1_resizer *rsz)
> -{
> -	dev_dbg(rsz->rkisp1->dev,
> -		"RSZ_CTRL 0x%08x/0x%08x\n"
> -		"RSZ_SCALE_HY %d/%d\n"
> -		"RSZ_SCALE_HCB %d/%d\n"
> -		"RSZ_SCALE_HCR %d/%d\n"
> -		"RSZ_SCALE_VY %d/%d\n"
> -		"RSZ_SCALE_VC %d/%d\n"
> -		"RSZ_PHASE_HY %d/%d\n"
> -		"RSZ_PHASE_HC %d/%d\n"
> -		"RSZ_PHASE_VY %d/%d\n"
> -		"RSZ_PHASE_VC %d/%d\n",
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HY),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HY_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCB),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCB_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCR),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCR_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VY),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VY_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VC),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VC_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HY),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HY_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HC),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HC_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VY),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VY_SHD),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VC),
> -		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VC_SHD));
> -}
> -
>  static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
>  				     enum rkisp1_shadow_regs_when when)
>  {
> @@ -386,8 +351,6 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  
>  	/* set values in the hw */
>  	rkisp1_rsz_config_regs(rsz, &sink_y, &sink_c, &src_y, &src_c, when);
> -
> -	rkisp1_rsz_dump_regs(rsz);
>  }
>  
>  /* ----------------------------------------------------------------------------
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
