Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5720FC07E98
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 20:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GQ8uTITvSJot+B60wlc4kjLhl5iJ+2Sd+SZvc4YNUs=; b=tashcVRKmdMPeN
	yViLFz+58ZCGF1RAr6P6G09V6su+N9fpLaiQyMPEbSKih3nKNbyu/L9tRul2qNAyFieHRMqg9mGdT
	dJMy6pA6qeyIsnlfTkEgvHfoV5vOtfV4/wnNjDaehd52GGECLNjqqkQuOFJbuzxztjxNkdkRZES1C
	G1zJ5BfS5YPNwbbjG4+FzwYY4REBRhL4RbwO+MdiwjoefR/Q5bk+Du14MOsk2qgMRPtyiNJxFmB2Y
	ZGP6R7DVEXPzjeKcQXgGJAcDfPLCEM2U4kVRPGF1Ai28CRYQh7ANakImDLgQVoN5DmzVkSavq4tvB
	RaW3somaIhjR996u6U+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Qog-009Dc5-1T;
	Wed, 29 Nov 2023 20:05:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Qoc-009Dbb-1O;
	Wed, 29 Nov 2023 20:05:47 +0000
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 228F36F0;
	Wed, 29 Nov 2023 21:05:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701288309;
	bh=spSf15rTwxA5JE7+sp4ojIqhMxZPcSNcX/1hS4MkL7c=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=ZFigpqTDQUCC6I06rU2X8xxZonJ1X7078Tw2MM4eOeygEbZtgA9UtiYi78FLQQGPE
	 ZJnR43Ero5GduQP4r6TqehBjBSQl3VtnAp2quLJmwe8NRo2h4Q6FYDBdlAxcz+rRAD
	 9GmrFLNdgklQuYXYJSL7PoJjYXDe2HxTLGzwtle8=
MIME-Version: 1.0
In-Reply-To: <20231129092956.250129-3-paul.elder@ideasonboard.com>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com> <20231129092956.250129-3-paul.elder@ideasonboard.com>
Subject: Re: [PATCH 2/3] media: rkisp1: debug: Add register dump for IS
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, Paul Elder <paul.elder@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Wed, 29 Nov 2023 20:05:42 +0000
Message-ID: <170128834260.3048548.11979514587961676400@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_120546_613782_4AA80F4C 
X-CRM114-Status: GOOD (  16.29  )
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

Quoting Paul Elder (2023-11-29 09:29:55)
> Add register dump for the image stabilizer module to debugfs.
> 

Is the Image Stabilizer on all variants of the ISP?

I.e. is it valid register space on the RK3399 implementation?

If so then:
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c    | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 71df3dc95e6f..f66b9754472e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -139,6 +139,21 @@ static int rkisp1_debug_dump_mi_mp_show(struct seq_file *m, void *p)
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp);
>  
> +static int rkisp1_debug_dump_is_show(struct seq_file *m, void *p)
> +{
> +       static const struct rkisp1_debug_register registers[] = {
> +               RKISP1_DEBUG_SHD_REG(ISP_IS_H_OFFS),
> +               RKISP1_DEBUG_SHD_REG(ISP_IS_V_OFFS),
> +               RKISP1_DEBUG_SHD_REG(ISP_IS_H_SIZE),
> +               RKISP1_DEBUG_SHD_REG(ISP_IS_V_SIZE),

I expect so as you haven't added the register macros in this series so
they must already be there ...


> +               { /* Sentinel */ },
> +       };
> +       struct rkisp1_device *rkisp1 = m->private;
> +
> +       return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_is);
> +
>  #define RKISP1_DEBUG_DATA_COUNT_BINS   32
>  #define RKISP1_DEBUG_DATA_COUNT_STEP   (4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>  
> @@ -235,6 +250,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  
>         debugfs_create_file("mi_mp", 0444, regs_dir, rkisp1,
>                             &rkisp1_debug_dump_mi_mp_fops);
> +
> +       debugfs_create_file("is", 0444, regs_dir, rkisp1,
> +                           &rkisp1_debug_dump_is_fops);
>  }
>  
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> -- 
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
