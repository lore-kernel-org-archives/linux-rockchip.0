Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EBC6C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 13:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIfw0n5Y0I6ObhRUztn4V2z8zQHutmIAd5pwyfPnAGo=; b=oeHhYP2SW3mcQa
	xgBygT6/xjMPbvdhJeH/1iUKV5FAAUQilap8AgZ04IDB9rykoR/IiAGD9htrhabDWElN6gtFD2Q1h
	fHA93QefSgpwovd5rsrZasbM2SOjRjbaXTeFLZzRqBbz1o8k24HIVrDSPNnAZF+8G2HhxW8fhmn+9
	E+cULDjzFcRcts1mU2Bt3stU4b/tfmUT8QC8wakEUB3jaHp5bWQuPDBd2QXaELPBjf42h+y453Nak
	Sp3nwUNM/m1/g2WUu3KfmJ4PkuTOxv5x40pvgpqeAgluUhNtysjy3PIEfwECt9dB3l+L0xb86PQa7
	Aos0qmOTEePLTFZpNb0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8hJ2-00AzC5-0v;
	Thu, 30 Nov 2023 13:42:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8hIz-00AzAw-0U;
	Thu, 30 Nov 2023 13:42:14 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B72E66B8;
	Thu, 30 Nov 2023 14:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701351694;
	bh=7INR0+gFODzPUFe4WJ243a21nyiEELUis2SpyZE8Dug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JAQvg8CgVT6KsM5GEL3pkty93Ksbno5+bWEMSvuHLaatGlA3HOItUg5OJcAL/4X9a
	 6+1wDPQWsPhcAdvLcxrmRGTJKKUCqTnQBv1L7f8eWP6a4zLciQEe6wDwX3Cx50jojP
	 hY+DkT0uUrds/IuvPMLE7XcWH/hSLPXjrdH1YpLk=
Date: Thu, 30 Nov 2023 15:42:16 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] media: rkisp1: debug: Add register dump for IS
Message-ID: <20231130134216.GM8402@pendragon.ideasonboard.com>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com>
 <20231129092956.250129-3-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129092956.250129-3-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_054213_331787_C5158EEC 
X-CRM114-Status: GOOD (  20.29  )
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

On Wed, Nov 29, 2023 at 06:29:55PM +0900, Paul Elder wrote:
> Add register dump for the image stabilizer module to debugfs.
> 
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
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_SHD_REG(ISP_IS_H_OFFS),
> +		RKISP1_DEBUG_SHD_REG(ISP_IS_V_OFFS),
> +		RKISP1_DEBUG_SHD_REG(ISP_IS_H_SIZE),
> +		RKISP1_DEBUG_SHD_REG(ISP_IS_V_SIZE),

As these are ISP registers, how about adding them to the list of ISP
registers ?

    media: rkisp1: debug: Add register dump for IS

    Add register dump for the ISP image stabilizer module to debugfs. This
    helps debugging issues related to digital zoom.

    Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
    Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 71df3dc95e6f..d2fbed42164e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -92,6 +92,10 @@ static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
 		RKISP1_DEBUG_REG(ISP_FLAGS_SHD),
 		RKISP1_DEBUG_REG(ISP_RIS),
 		RKISP1_DEBUG_REG(ISP_ERR),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_H_OFFS),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_V_OFFS),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_H_SIZE),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_V_SIZE),
 		{ /* Sentinel */ },
 	};
 	struct rkisp1_device *rkisp1 = m->private;


> +		{ /* Sentinel */ },
> +	};
> +	struct rkisp1_device *rkisp1 = m->private;
> +
> +	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_is);
> +
>  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
>  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>  
> @@ -235,6 +250,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  
>  	debugfs_create_file("mi_mp", 0444, regs_dir, rkisp1,
>  			    &rkisp1_debug_dump_mi_mp_fops);
> +
> +	debugfs_create_file("is", 0444, regs_dir, rkisp1,
> +			    &rkisp1_debug_dump_is_fops);
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
