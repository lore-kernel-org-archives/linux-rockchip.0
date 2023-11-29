Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E13EC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 11:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scG2xFXW7/JYbnsOaN2JgZLLtFfaPyt/Y04Tybk5Ng0=; b=RVykSiPUldNm3D
	olWOvfnkXDkxk1WtNBCs2g3usJ9wB03aAvcZxt7UzPmeT5SG7k3WA75xSFS8U93a0nhBd4l4K8sS2
	Z0HMCzWX9S+KUq1/3QTS3gxoO4LU9CdVJmq5sNz9NP3sh8KS1YIVCmKsGx7+wSDnPa4dZ2mGs1FVO
	Ty9YVa1QGhFJyQ+/C2jjyX0TDoHjV0ZFDY1cXDP734HYNYZogV3a0pzO+WeJNxTF3sAmQ9rfyWVFv
	ediG+guQy4ogTej/PXRlVY1s5FRAGlToUD3mfmG8umbadTwpJDJHZ93QM7VjsLxD23DybJW792SID
	jX2OMSjXJdDC4P+izSgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8IK4-007t8n-0k;
	Wed, 29 Nov 2023 11:01:40 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8IK0-007t7X-0j;
	Wed, 29 Nov 2023 11:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1701255696; x=1732791696;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=d/gFkPNfYqq0ZhlHY80Xn8zE1vltx+Kn8TG5aelRTQg=;
  b=M9e7ZGuJQj9sH5oKDyMkLIJ0i9RugmvTjpNT/ozhl3zn0kQYO3rn9Xx4
   jxMmAUS3tCxS7vSR+gEeWAQn/ZBAZ4iXyJdCfOP+L5PJ56k+Z84ldXR8O
   s65gSdTPgz4i7Wav3Bl9vpwBdvJKdlxiHZXWsLsiqir/Xp+OnTD0SDJHh
   2silq/6TjBm6Za7xXb2zW1G8ULmWk2617VI+qpQ36PYlBjIqdinWyCOb3
   Pv1LmpSVMtFOSosjfWwIweh7bVd0xuugiLsguAKVPftQJ1cxFYWKb20bl
   wUjy84LES+ixQR+sIZGcKs6RJiXiEOntZMhHv4BAyWOn/Mw4kE1rDcbWZ
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,235,1695679200"; 
   d="scan'208";a="34235422"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 29 Nov 2023 12:01:34 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3D34B280075;
	Wed, 29 Nov 2023 12:01:34 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, Paul Elder <paul.elder@ideasonboard.com>
Cc: kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, Paul Elder <paul.elder@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] media: rkisp1: debug: Count completed frame interrupts
Date: Wed, 29 Nov 2023 12:01:34 +0100
Message-ID: <12649569.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231129092956.250129-4-paul.elder@ideasonboard.com>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com> <20231129092956.250129-4-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_030136_561775_D6F0639E 
X-CRM114-Status: GOOD (  16.27  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Paul,

thanks for the patch.

Am Mittwoch, 29. November 2023, 10:29:56 CET schrieb Paul Elder:
> Add a counter to debugfs to count the number of frame-end interrupts.

This looks good to me.
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 1 +
>  drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c  | 2 ++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c    | 2 ++
>  3 files changed, 5 insertions(+)
> =

> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h index
> 1e7cea1bea5e..be69173958a4 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -417,6 +417,7 @@ struct rkisp1_debug {
>  	unsigned long stats_error;
>  	unsigned long stop_timeout[2];
>  	unsigned long frame_drop[2];
> +	unsigned long complete_frames;
>  };
> =

>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c index
> f66b9754472e..1b1edfd3ab6c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -232,6 +232,8 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  			     &debug->frame_drop[RKISP1_MAINPATH]);
>  	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
>  			     &debug->frame_drop[RKISP1_SELFPATH]);
> +	debugfs_create_ulong("complete_frames", 0444, debug->debugfs_dir,
> +			     &debug->complete_frames);
>  	debugfs_create_file("input_status", 0444, debug->debugfs_dir, =

rkisp1,
>  			    &rkisp1_debug_input_status_fops);
> =

> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c index
> 64a956b9f2d0..06cdb4edf19c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -991,6 +991,8 @@ irqreturn_t rkisp1_isp_isr(int irq, void *ctx)
>  	if (status & RKISP1_CIF_ISP_FRAME) {
>  		u32 isp_ris;
> =

> +		rkisp1->debug.complete_frames++;
> +
>  		/* New frame from the sensor received */
>  		isp_ris =3D rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
>  		if (isp_ris & RKISP1_STATS_MEAS_MASK)


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
