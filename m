Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABCA606A327
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 22:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JT24f+Ra;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=v3q9/L+c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=m/F9stUF3IsLzH9xuNwL4TTafEKLvz76jAJyQBBtI5c=; b=JT24f+RaDfWxlzYMd/NSjrJfFH
	jQLnPOpkL3JK47Y9yUDA3kNAgRuVDPD6C4LiAb098qnJqv5joTSnoqAfx3GuiFfNQ8arpfZ/1anZ3
	JSYbg8knCoYcEhclAJEIsgkH7so0ZHHeetBqzGQQFeywI4qjNnIJXOkYX0vAiZue7oQLMFiDSCgaG
	OjJAWTOCBQ/lr/laqSkHHX1X8A77oVw3361l6FtAqBoF+PBwN6eBl6hayCK0qKYT65XId25DGHV6Z
	Plg42rqN43DuQRrRqEBQh9dXSvnxxz/DnjGoWfJ9kCanOeKQAbIvfciJ4SA72Lko6v87xKk5/8o36
	aTyhEqxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO0ai-00000000ZYA-16Bk;
	Mon, 02 Nov 2026 22:33:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO0ae-00000000ZXR-3kSl;
	Mon, 02 Nov 2026 22:33:23 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 08EA3BA;
	Mon,  2 Nov 2026 23:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1793658661;
	bh=hcOlHliRKSdaB8pM8GXWnVePw0nVINC3lhEapMNXOvU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=v3q9/L+cC8F0c3oTmnGliaiHDPtz2BQT1fYsEcbxAsdmZOR17s672GVxURsXGBl94
	 I9rincg3HmxNrV6iBjPY+ByDA83AkZfde3bZ5ZkFC1xzsMbFc/qDPR768YbNspTYwT
	 nXIMVYKF4JQQc/Gi9Qfn8axWqidohc3urfpgMbBA=
Date: Tue, 3 Nov 2026 00:33:16 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: iav@iav.lv
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: Depend on PM
Message-ID: <20261102223316.GB3548113@killaraus.ideasonboard.com>
References: <20261102-rkisp1-depends-on-pm-v1-1-35a26cb2bbce@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102-rkisp1-depends-on-pm-v1-1-35a26cb2bbce@iav.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_143321_101727_835DD231 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 02, 2026 at 05:49:46PM +0000, Igor Velkov via B4 Relay wrote:
> From: Igor Velkov <iav@iav.lv>
> 
> rkisp1_runtime_resume() enables the clocks and lets the interrupt
> handlers run. Without CONFIG_PM it is never called, so rkisp1_probe()
> reads RKISP1_CIF_VI_ID with the clocks disabled and every interrupt
> handler returns IRQ_NONE.
> 
> ARCH_ROCKCHIP and arm64 ARCH_MXC select PM,

Why do we need this patch then ?

> and no arm32 i.MX has this
> ISP, so only COMPILE_TEST builds lose the driver. rkcif already depends
> on PM.
> 
> Signed-off-by: Igor Velkov <iav@iav.lv>
> ---
> Split out of the rkvdec CONFIG_PM discussion, as Nicolas asked [1].
> Without PM, olddefconfig on arm64 COMPILE_TEST now drops the driver;
> with PM it builds as before (W=1).
> 
> [1] https://lore.kernel.org/r/8aafdbbf04a0d939c6b4d7d5577d97bb58d1c439.camel@collabora.com
> ---
>  drivers/media/platform/rockchip/rkisp1/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/Kconfig b/drivers/media/platform/rockchip/rkisp1/Kconfig
> index f53eb1f3f3e7..c825fbacee96 100644
> --- a/drivers/media/platform/rockchip/rkisp1/Kconfig
> +++ b/drivers/media/platform/rockchip/rkisp1/Kconfig
> @@ -4,6 +4,7 @@ config VIDEO_ROCKCHIP_ISP1
>  	depends on V4L_PLATFORM_DRIVERS
>  	depends on VIDEO_DEV && OF
>  	depends on ARCH_ROCKCHIP || ARCH_MXC || COMPILE_TEST
> +	depends on PM
>  	select MEDIA_CONTROLLER
>  	select VIDEO_V4L2_SUBDEV_API
>  	select VIDEOBUF2_DMA_CONTIG
> 
> ---
> base-commit: 27285b099fbc5cb2ae3aef20f3bbd7b3c88b3005
> change-id: 20261102-rkisp1-depends-on-pm-219d94239b56

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
