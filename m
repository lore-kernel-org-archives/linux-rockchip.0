Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F2DC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 08:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yH394WIM0fxcQy6VKHVwLXVAxBmrUD6IzkqcbwwTq7A=; b=dGNkBBNH2LGHZ+
	TD6EBR+N1wmZW54hh6qju4nXijznBoJwUZSdr0oaC3gBvFuJwJJ5vA6vg4/dcELBAopgS9gR8DsIf
	Rh8UOpTcwJzfOkDRULQuC4Wyg1GH0XHFwQwzPY5WJAFI1ZQVKvNQGMXhQ8VMfQDmjZ8aRUVUfPNTz
	alFKbb9H89LE0x+fmZnVHPV2pROYjxwOY68vzOg843G9mp8SHmCstSQYNnOXdSO89iL32niKazpsV
	kOcGz34Ltn2z2EoEgnfEVzOSBkILb7jwO9DhhF8a1dRP7AfMsRklQB4K9e/A3AbqeiMzIm6t7r/HA
	AwrUM+KOvMlN3FUWVZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1kZ1-001JPP-B3; Thu, 16 Jun 2022 08:09:15 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1kV3-001HIX-5s
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 08:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655366709; x=1686902709;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0nG76rL/Z/+MGOUZ/laO/4GyMPZzqtD/dzlRI+McaCg=;
  b=GcnuDOykj9+W5/RchgerOiAI9FJt2yP7nPbj0nn4ZfT2T21OcRkkUJfB
   A1y9j/baVc5S7ghAIVoH6A0h/yY4QInHipL77HPEAstajQwjsAW+DSEz3
   D69NHqwK7pr0rUhhmRq6zAAL7Us5kW/bZbdoTDWQ4EdgGo+dDOCVamvpx
   ctqjNGGW+k3IiMSQBfP04wEPs/MhtklapZ/bLEtaYpmE20c8TfIIGemA0
   bO06uhjwlTTwcKvRdH1ejs39cwJDhaQ8MrKe9MqnU6XYRxHpPej+N7jvQ
   rUztxGno84X2sW9dKNkXQCC1DfIlqSpM+ACsO594MR0ikcXvIpfWBdooo
   w==;
X-IronPort-AV: E=Sophos;i="5.91,304,1647298800"; 
   d="scan'208";a="24492362"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Jun 2022 10:05:07 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Jun 2022 10:05:07 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Thu, 16 Jun 2022 10:05:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655366707; x=1686902707;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0nG76rL/Z/+MGOUZ/laO/4GyMPZzqtD/dzlRI+McaCg=;
  b=UfFkVY63YY9RIMjox3/TzEklHR8HdWH0n+jmu9RS+S9jucLsz8PpdiNa
   quzUdhuvUYAbebksBQN09NJPAPcfdJQCl15qlwE+MU0YSHDpeapaYHtXI
   sSKJnA8bf339E31r8dCCblVBE40aQf4nvWneOVYDojE7Ib6U/BLf96Izw
   VkRrxyRa3CObs197Ndiy+mQygw7rr8X+yvToBY6GKkV3qQXa/Gk6H5GQe
   ddanAa0nQCMxnHoIMVbk3yc8gHiUcnnb8ZVWRR8vTaolr/wKlQ3iFe+bN
   EmtPqzIWNqOjt+uCJp0swx2wz65fRl3K9ayPn1AfOgGnwK0u3xm8hp/fr
   w==;
X-IronPort-AV: E=Sophos;i="5.91,304,1647298800"; 
   d="scan'208";a="24492361"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2022 10:05:07 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F3617280056;
	Thu, 16 Jun 2022 10:05:06 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>, dafna@fastmail.com, heiko@sntech.de, laurent.pinchart@ideasonboard.com, jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com, linux-rockchip@lists.infradead.org
Subject: Re: (EXT) [PATCH 55/55] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Date: Thu, 16 Jun 2022 10:05:06 +0200
Message-ID: <3553507.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220614191127.3420492-56-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com> <20220614191127.3420492-56-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_010509_712029_AB1A3C1D 
X-CRM114-Status: GOOD (  18.46  )
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

Hello Paul,

thanks for the patch.

Am Dienstag, 14. Juni 2022, 21:11:27 CEST schrieb Paul Elder:
> The ISP that is integrated in the i.MX8MP uses different bits in the
> MRSZ_CTRL and SRSZ_CTRL registers for updating the configuration
> compared to the on in the RK3399. In addition, it adds a new bit for
> enabling crop. Add new definitions for these bits for i.MX8MP devices,
> and update where they are set.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h   |  4 ++++
>  .../media/platform/rockchip/rkisp1/rkisp1-resizer.c    | 10 ++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h index
> 34f4fe09c88d..24ad2ccec2a3 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -168,6 +168,10 @@
>  #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
>  #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
> 
> +#define RKISP1_CIF_RSZ_CTRL_CROP_ENABLE_IMX		BIT(8)
> +#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX			BIT(9)
> +#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX		BIT(10)
> +

Does it make sense to move this kind of information into struct rkisp1_info? 
This way you can skip the if (isp_ver == ...) thing.

Best regards,
Alexander

>  /* RSZ_CROP_[XY]_DIR */
>  #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 
| (start) <<
> 0)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c index
> 08bf3aa8088f..29a31b18a082 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -209,9 +209,15 @@ static void rkisp1_rsz_update_shadow(struct
> rkisp1_resizer *rsz, u32 ctrl_cfg = rkisp1_rsz_read(rsz,
> RKISP1_CIF_RSZ_CTRL);
> 
>  	if (when == RKISP1_SHADOW_REGS_ASYNC)
> -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
> +		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
> +			ctrl_cfg |= 
RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX;
> +		else
> +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
>  	else
> -		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> +		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
> +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX;
> +		else
> +			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
> 
>  	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
>  }





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
