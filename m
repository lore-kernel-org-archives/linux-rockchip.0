Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C782C52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 14:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmjKAky83/jSnCepAhrKbC9UJy7WAgwRmfPSc1LMBB0=; b=jQ/NaNw/NbqNpS
	BOFp6KDtEAZsH9E/66TJ1wrBYHg2VCab0JG5Kxp1tv30bHGdN/OwdNQt1N8O719f646S4dEMIgmYQ
	ppxiV6bRD+H9iw5I3lmXXuzjaXPcNHqz+f7yNDtuffgf4i6WsvsfSTxOKkuqlsVXYJpoN2uDz6V54
	8HJgE1sCGyY7yacMJ3CPdcTuQmo+yxsYyHqnOaF+w/vA6yyf9fizaIcHJIpmwVF+esKee/GQxieQK
	Bmoo2JXBm+9uXVN5hZMZEU2PB0vWYgBd9zcVifc7bBwuVQaKcaj7HAXdsk24ol0xNFvdltY1DihDa
	8/kCZ7flZPu5+OR7xd7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgluF-00000009DR8-2ATx;
	Wed, 21 Aug 2024 14:01:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgluC-00000009DPp-3hWw
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 14:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1sglu2-0005TZ-Nm; Wed, 21 Aug 2024 16:01:34 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1sgltz-0021bs-PB; Wed, 21 Aug 2024 16:01:31 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1sgltz-00FXH2-26;
	Wed, 21 Aug 2024 16:01:31 +0200
Date: Wed, 21 Aug 2024 16:01:31 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: John Keeping <jkeeping@inmusicbrands.com>
Cc: linux-media@vger.kernel.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2] media: rockchip: rga: fix rga offset lookup
Message-ID: <ZsXzO_Db_OmV4aW2@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	John Keeping <jkeeping@inmusicbrands.com>,
	linux-media@vger.kernel.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
References: <20240810130254.3338363-1-jkeeping@inmusicbrands.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240810130254.3338363-1-jkeeping@inmusicbrands.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_070144_939608_20F49BF6 
X-CRM114-Status: GOOD (  17.68  )
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

On Sat, 10 Aug 2024 14:02:54 +0100, John Keeping wrote:
> The arguments to rga_lookup_draw_pos() are passed in the wrong order,
> rotate mode should be before mirror mode.

Thanks for the patch!

> 
> Fixes: 558c248f930e6 ("media: rockchip: rga: split src and dst buffer setup")
> Signed-off-by: John Keeping <jkeeping@inmusicbrands.com>

Reviewed-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  drivers/media/platform/rockchip/rga/rga-hw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
> index 11c3d72347572..b2ef3beec5258 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -376,7 +376,7 @@ static void rga_cmd_set_dst_info(struct rga_ctx *ctx,
>  	 * Configure the dest framebuffer base address with pixel offset.
>  	 */
>  	offsets = rga_get_addr_offset(&ctx->out, offset, dst_x, dst_y, dst_w, dst_h);
> -	dst_offset = rga_lookup_draw_pos(&offsets, mir_mode, rot_mode);
> +	dst_offset = rga_lookup_draw_pos(&offsets, rot_mode, mir_mode);
>  
>  	dest[(RGA_DST_Y_RGB_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
>  		dst_offset->y_off;
> -- 
> 2.46.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
