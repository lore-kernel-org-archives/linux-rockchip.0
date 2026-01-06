Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534ADCDC18E
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jh5s8qUT1e8tQhXwBX3ijcO0WJkHOwnT6jMcDxr8r1k=; b=AU/J/dCGFs2vTB
	Yay/c0ThHROLCjOrZjlHuluT65rzJNX1TEeuOtXvQEoQKjamnpicdePDw4sfQPMUV0qbMLV0Ui7ob
	6Z8tFP8+KfB9PGJPeGfAnGA3AqblRKRiyFmdaaBQ/ITRpyFubtGOBy0FEvv8CpaO5gTutSobfv7qO
	Hs/yHjqdsVSd/Gh7dQraAv1u/Sey+imFh4Y46yEoK/hh4WFzHS3aYawcDNhERr6LfXaBQctKiKups
	rGOLukfQa86O6HmsNbnKMSsRWk5nLpoLg4HiFdR1xhNLAK/P3tMYc/tlHgp8L5rick0rLTRyggDq0
	pGt4fXr43ohSwUGgbH/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd67f-0000000Czhe-1Whk;
	Tue, 06 Jan 2026 12:25:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd67b-0000000CzgH-3kYi;
	Tue, 06 Jan 2026 12:25:13 +0000
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 66F71581;
	Tue,  6 Jan 2026 13:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1767702285;
	bh=wBRsYLtKcDyFYvStHEhKrcma21Zlzgl0W/z54XToUP0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=WbfyO5LVDaAUBZF/4QiTewmuodA+E4eD2oQH4IbmJioV3EDqPF9Yi7Nduu6InKEdk
	 LBPer/1I9X4igMs25RQEmXYuKGHfmiAwRHYYYY7ds8mZ2P0t0LJq05k3omLm2Kz54v
	 xH9PTpmM3USsjyeLOKT9wlN/nkRb/PJozmNFED6s=
MIME-Version: 1.0
In-Reply-To: <20260105171142.147792-2-rui.wang@ideasonboard.com>
References: <20260105171142.147792-1-rui.wang@ideasonboard.com> <20260105171142.147792-2-rui.wang@ideasonboard.com>
Subject: Re: [PATCH v4 1/1] media: rkisp1: Fix filter mode register configuration
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: libcamera-devel@lists.libcamera.org, Rui Wang <rui.wang@ideasonboard.com>
To: Rui Wang <rui.wang@ideasonboard.com>, dafna@fastmail.com, heiko@sntech.de, laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mchehab@kernel.org
Date: Tue, 06 Jan 2026 12:25:03 +0000
Message-ID: <176770230345.3486172.1119327800680289066@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_042512_069759_4A8E6E91 
X-CRM114-Status: GOOD (  15.76  )
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

Quoting Rui Wang (2026-01-05 17:11:42)
> The rkisp1_flt_config() function performs an initial direct write to
> RKISP1_CIF_ISP_FILT_MODE without including the RKISP1_CIF_ISP_FLT_ENA
> bit, which clears the filter enable bit in the hardware.
> 
> The subsequent read/modify/write sequence then reads back the register
> with the enable bit already cleared and cannot restore it, resulting in
> the filter being inadvertently disabled.
> 
> Remove the redundant direct write. The read/modify/write sequence alone
> correctly preserves the existing enable bit state while updating the
> DNR mode and filter configuration bits.
> 
> Signed-off-by: Rui Wang <rui.wang@ideasonboard.com>
> ---
>  
> Changelog since v1:
>  1. Update version number from v1 to v4 to clarify the confusing
> 
> Reviewed-by Stefan Klug and Kieran Bingham
>  from v1 are carried over (no function code changes).

To carry them over you need to include the tags.

From the previous version:

Reviewed-by: Stefan Klug <stefan.klug@ideasonboard.com>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> 
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index c9f88635224c..6442436a5e42 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -411,12 +411,6 @@ static void rkisp1_flt_config(struct rkisp1_params *params,
>         rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_FILT_LUM_WEIGHT,
>                      arg->lum_weight);
>  
> -       rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_FILT_MODE,
> -                    (arg->mode ? RKISP1_CIF_ISP_FLT_MODE_DNR : 0) |
> -                    RKISP1_CIF_ISP_FLT_CHROMA_V_MODE(arg->chr_v_mode) |
> -                    RKISP1_CIF_ISP_FLT_CHROMA_H_MODE(arg->chr_h_mode) |
> -                    RKISP1_CIF_ISP_FLT_GREEN_STAGE1(arg->grn_stage1));
> -
>         /* avoid to override the old enable value */
>         filt_mode = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_FILT_MODE);
>         filt_mode &= RKISP1_CIF_ISP_FLT_ENA;
> -- 
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
