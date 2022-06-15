Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697F0C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 22:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfgidePGFrAhPL/9doXXvOxELfD1uPg9Lxy7at4w9jM=; b=r+7sPleBPkV4cY
	2Ip/FDWe3VwNdGq9vta3pzD2AeuwYaRQ9W6ZmBM8YAhAhnDorBX4uLQlJmJdS880c82Y0NEqb9V9P
	O7qQkJNC6KrATze7olA63ej//7GDSQQnAnDQFbM4rLzLUk/ajuHKobwWbRrwDGuMaoMQKsEuytful
	V1WwpPHBwf8cvQIxmmpB90f+F056EBSOz1UlZXJFbzEodHSK5Z6uKHPTJgWj5muxUqL/TpUtog+BH
	MpgrKOtO0sNvwZSvdQe0QCcEx7Oglm6LG8wbv3SouddYBZ11QpIkBkIBI1GcxGte0LjYhlBTSO7VF
	zdlt0yLoi5FUuKMf72+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1biD-00GiBK-H6; Wed, 15 Jun 2022 22:42:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1biA-00GiAc-Mt
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 22:42:08 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A417A415;
	Thu, 16 Jun 2022 00:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655332924;
	bh=FWFjDDE8i0nvvIexGIPnRu7AkIvFJYjujv4BmnpluXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h8PhNvSVl0Nm28AOCOBwE8pYkbWaeBLg4Zn5/Go5Cs/5ckJxEODb5uoxgOsqOlClW
	 YbapbOLyntnBGxvMOByN249Bt8Fhzxk7DpXcOBIwOc5/GmnwCsMv+6X6jjRWPinhjQ
	 Vz+EyqGlWazAglyPTwpug3KIjfhtc2iJXg0XOTf0=
Date: Thu, 16 Jun 2022 01:41:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/55] media: rkisp1: debug: Add dump file in debugfs for
 MI buffer registers
Message-ID: <YqpgMkK33+0IpxjR@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-2-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-2-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_154206_939134_D26048AC 
X-CRM114-Status: GOOD (  19.04  )
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

Hi Paul,

Thank you for the patch.

On Wed, Jun 15, 2022 at 04:10:33AM +0900, Paul Elder wrote:
> Add a register dump file in debugfs for some of the buffer-related
> registers in MI, for the base address, the size, and the offset. Also
> dump the appropriate shadow registers.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index e76dc2b164b6..1a59c00fabdd 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
>  
> +static int rkisp1_debug_dump_mi_mp_y_offs_cnt_show(struct seq_file *m, void *p)
> +{
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT),
> +		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT2),
> +		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_SHD),
> +		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
> +		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
> +		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_SHD),
> +		RKISP1_DEBUG_REG(MI_MP_Y_OFFS_CNT_SHD),
> +		{ /* Sentinel */ },
> +	};
> +	struct rkisp1_device *rkisp1 = m->private;
> +
> +	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp_y_offs_cnt);
> +
>  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
>  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>  
> @@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  	debugfs_create_file("srsz", 0444, regs_dir,
>  			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
>  			    &rkisp1_debug_dump_rsz_regs_fops);
> +
> +	debugfs_create_file("mi_mp_y_bufs", 0444, regs_dir, rkisp1,
> +			    &rkisp1_debug_dump_mi_mp_y_offs_cnt_fops);

That's a very specialized file. I wonder if we should call it just
"mi_mp" if it needs to be extended later with other memory interface
registers for the main path. Or maybe even just "mi", to cover the self
path too ? The latter may be a tad too generic. What do you think ?

>  }
>  
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
