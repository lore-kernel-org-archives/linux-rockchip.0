Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FF89C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 14:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drKa/lpsqi3CixedNUOsZHIl7kDmee11uWFGQi9xMIc=; b=ksI/zMmzttqgTR
	lP4FB3wboo5xyqA2gYX2t/BSd7XCpE2L8QCmgUYiw6no3fxA2Td7V2dpd66Kpc67YOlVv8ar3zVWQ
	B+MOfmaWGjaXW6T+0i1JW9JgtO/UaeR+g0bHdfNdKkg3FBY08TucAs6uP1GHGoEvr/JKqr01rmewt
	Z45DCx42z3MBKOG5VhexvsszgcAltcRsYv1LzcH7sFseAZtBJlzi9t3quYJRLcGuEoJePKRYDf2m1
	m+zGkchJsA+lF1meC9RI+mlRf2ySTJtZG5G1guu3WtOqJ3ZhSFu0E+jgdZ1cPy+cK6VS3z7HDT5SK
	R4j53YTWjnJLwqblbaNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nniJ1-00APO3-Ee; Sun, 08 May 2022 14:54:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nniIp-00APJp-S3; Sun, 08 May 2022 14:54:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nniIb-0000rS-RG; Sun, 08 May 2022 16:54:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Haowen Bai <baihaowen@meizu.com>
Cc: Haowen Bai <baihaowen@meizu.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Sun, 08 May 2022 16:54:16 +0200
Message-ID: <3487561.R56niFO833@phil>
In-Reply-To: <1651802157-25092-1-git-send-email-baihaowen@meizu.com>
References: <1651802157-25092-1-git-send-email-baihaowen@meizu.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_075431_969535_1124FC19 
X-CRM114-Status: GOOD (  14.75  )
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

Am Freitag, 6. Mai 2022, 03:55:57 CEST schrieb Haowen Bai:
> Fixes coccicheck warning:
> 
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1476:2-3: Unneeded semicolon
> 
> Signed-off-by: Haowen Bai <baihaowen@meizu.com>

Yang Li was slightly faster [0] than this patch, so I've picked that one.

[0] https://lore.kernel.org/r/20220505232659.4405-1-yang.lee@linux.alibaba.com

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 0b49fed16535..7f9d88634a77 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1473,7 +1473,7 @@ static void rk3568_set_intf_mux(struct vop2_video_port *vp, int id,
>  	default:
>  		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
>  		return;
> -	};
> +	}
>  
>  	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
