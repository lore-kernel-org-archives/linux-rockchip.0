Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 766C1C48BEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 10:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PArLAfmgmnHHX3gcNWEztoTG5MMgo68K8RFCzbPHvFg=; b=tjja5Nbalm3ftO
	nBj1rm3w+23lSLRPZFpeWKITzb4hT5XgF6UTXW4zmXzc3jhGoe3K6GdaMmKw9vURo36MPAfE5FBAz
	vDK077GCcuR8oaQyRoLWistn+JdxBpBtsG8I+p3F7oiFRC6YBdggxf5OFl9EC90YI/XQEn+ztLhVG
	TVnPk+aCBGX1GJXdrLOAyn0I0czBVbTA1Hx6xwzPT0Af4Bwim6sZ6eKILwY+xpgOiLIgsbPZNcB/u
	P8bG1hmJHjoD4E022lNMhg1LPku+dOeQwGjSb6S8sJIw1/Vch74OOeb7ubB48aRQ/Xln/hRtPw26B
	xKvUcFUbTZQC9/7OhEfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ravVX-00000001ydR-0ZN4;
	Fri, 16 Feb 2024 10:31:51 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ravVT-00000001ycS-2Jx2;
	Fri, 16 Feb 2024 10:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708079507; x=1739615507;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WOmoaQaLsDmrtvGLYushRM/n3wRCUbdTRdZi3Ojwz58=;
  b=GcRynAzmXynscE9AFzfvijNExlsVSQfnng3VxHa5J6VkpK+c6fPWUQcx
   prMKO6oQ3nHjNBAijwruVx6l2TISDrARqbO97JMJQ1pCwNdUGQ93/opS2
   TtIjXBenRIfAiowTQM2hI862MWcczdwbYxsAfekdzjpjPTdrUaV2jiqJB
   2VeCPaNmfFlvxdeCedAeJdka8wYG1FvrdkGJljX/LUVnudTv89/5ylI6C
   6CIeVi8wv0zaSJpjMMc+wZrpPhJZOIgpTQxwTrCcU/l2eVSD/ais7qnQm
   2QSu5BPMjV0A1GJx7C4Clnd7frMBniaaSqFUNCuWx34ZXCd781hYZINjr
   w==;
X-IronPort-AV: E=Sophos;i="6.06,164,1705359600"; 
   d="scan'208";a="35443453"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Feb 2024 11:31:45 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 22D87280075;
	Fri, 16 Feb 2024 11:31:45 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>
Cc: kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, aford173@gmail.com, Paul Elder <paul.elder@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v12 08/12] media: rkisp1: Support i.MX8MP's 34-bit DMA
Date: Fri, 16 Feb 2024 11:31:46 +0100
Message-ID: <1884916.CQOukoFCf9@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240216095458.2919694-9-paul.elder@ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com> <20240216095458.2919694-9-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_023147_930988_6832803C 
X-CRM114-Status: GOOD (  30.94  )
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

thanks for the update.

Am Freitag, 16. Februar 2024, 10:54:54 CET schrieb Paul Elder:
> On the ISP that is integrated in the i.MX8MP, DMA addresses have been
> extended to 34 bits, with the 32 MSBs stored in the DMA address
> registers and the 2 LSBs set to 0.
> =

> To support this:
> - Shift the addresses to the right by 2 when writing to registers
> - Set the dma mask to 34 bits
> - Use dma_addr_t instead of u32 when storing the addresses
> =

> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
> Changes since v5:
> =

> - Improve the commit message
> =

> Changes since v4:
> =

> - Squash in fix from Tomi:
>   -
> https://gitlab.com/ideasonboard/nxp/linux/-/commit/d6477fe673b1c0d05d12ae=
21
> d8db9a03b07e7fea
> =

> Changes since v2:
> =

> - Document the RKISP1_FEATURE_DMA_34BIT bit
> - Use the rkisp1_has_feature() macro
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 20 ++++++++++---------
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  4 +++-
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  8 ++++++++
>  3 files changed, 22 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c index
> ca95f62822fa..1ee7639c42b7 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -648,11 +648,13 @@ static void rkisp1_dummy_buf_destroy(struct
> rkisp1_capture *cap)
> =

>  static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
>  {
> +	u8 shift =3D rkisp1_has_feature(cap->rkisp1, DMA_34BIT) ? 2 : 0;
> +
>  	cap->buf.curr =3D cap->buf.next;
>  	cap->buf.next =3D NULL;
> =

>  	if (!list_empty(&cap->buf.queue)) {
> -		u32 *buff_addr;
> +		dma_addr_t *buff_addr;
> =

>  		cap->buf.next =3D list_first_entry(&cap->buf.queue, struct =

rkisp1_buffer,
> queue); list_del(&cap->buf.next->queue);
> @@ -660,7 +662,7 @@ static void rkisp1_set_next_buf(struct rkisp1_capture
> *cap) buff_addr =3D cap->buf.next->buff_addr;
> =

>  		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
> -			     buff_addr[RKISP1_PLANE_Y]);
> +			     buff_addr[RKISP1_PLANE_Y] >> shift);
>  		/*
>  		 * In order to support grey format we capture
>  		 * YUV422 planar format from the camera and
> @@ -669,17 +671,17 @@ static void rkisp1_set_next_buf(struct rkisp1_captu=
re
> *cap) if (cap->pix.cfg->fourcc =3D=3D V4L2_PIX_FMT_GREY) {
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cb_base_ad_init,
> -				     cap->buf.dummy.dma_addr);
> +				     cap->buf.dummy.dma_addr >> =

shift);
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cr_base_ad_init,
> -				     cap->buf.dummy.dma_addr);
> +				     cap->buf.dummy.dma_addr >> =

shift);
>  		} else {
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cb_base_ad_init,
> -				     buff_addr[RKISP1_PLANE_CB]);
> +				     buff_addr[RKISP1_PLANE_CB] >> =

shift);
>  			rkisp1_write(cap->rkisp1,
>  				     cap->config->mi.cr_base_ad_init,
> -				     buff_addr[RKISP1_PLANE_CR]);
> +				     buff_addr[RKISP1_PLANE_CR] >> =

shift);
>  		}
>  	} else {
>  		/*
> @@ -687,11 +689,11 @@ static void rkisp1_set_next_buf(struct rkisp1_captu=
re
> *cap) * throw data if there is no available buffer.
>  		 */
>  		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
> -			     cap->buf.dummy.dma_addr);
> +			     cap->buf.dummy.dma_addr >> shift);
>  		rkisp1_write(cap->rkisp1, cap->config->mi.cb_base_ad_init,
> -			     cap->buf.dummy.dma_addr);
> +			     cap->buf.dummy.dma_addr >> shift);
>  		rkisp1_write(cap->rkisp1, cap->config->mi.cr_base_ad_init,
> -			     cap->buf.dummy.dma_addr);
> +			     cap->buf.dummy.dma_addr >> shift);
>  	}
> =

>  	/* Set plane offsets */
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h index
> 69940014d597..26573f6ae575 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -114,6 +114,7 @@ enum rkisp1_isp_pad {
>   * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on =
the
> main path * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
>   * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the
> resizer input + * @RKISP1_FEATURE_DMA_34BIT: The ISP uses 34-bit DMA
> addresses
>   *
>   * The ISP features are stored in a bitmask in &rkisp1_info.features and
> allow * the driver to implement support for features present in some ISP
> versions @@ -124,6 +125,7 @@ enum rkisp1_feature {
>  	RKISP1_FEATURE_MAIN_STRIDE =3D BIT(1),
>  	RKISP1_FEATURE_SELF_PATH =3D BIT(2),
>  	RKISP1_FEATURE_DUAL_CROP =3D BIT(3),
> +	RKISP1_FEATURE_DMA_34BIT =3D BIT(4),
>  };
> =

>  #define rkisp1_has_feature(rkisp1, feature) \
> @@ -239,7 +241,7 @@ struct rkisp1_vdev_node {
>  struct rkisp1_buffer {
>  	struct vb2_v4l2_buffer vb;
>  	struct list_head queue;
> -	u32 buff_addr[VIDEO_MAX_PLANES];
> +	dma_addr_t buff_addr[VIDEO_MAX_PLANES];
>  };
> =

>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c index
> d0a3a13d9dd7..54a62487a4e8 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -552,6 +552,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	struct device *dev =3D &pdev->dev;
>  	struct rkisp1_device *rkisp1;
>  	struct v4l2_device *v4l2_dev;
> +	unsigned long long dma_mask;

The signature for dma_set_mask_and_coherent() uses u64 for the mask, so I =

would use the same type here as well.

Best regards,
Alexander

>  	unsigned int i;
>  	int ret, irq;
>  	u32 cif_id;
> @@ -566,6 +567,13 @@ static int rkisp1_probe(struct platform_device *pdev)
>  	dev_set_drvdata(dev, rkisp1);
>  	rkisp1->dev =3D dev;
> =

> +	dma_mask =3D rkisp1_has_feature(rkisp1, DMA_34BIT) ? DMA_BIT_MASK(34) =

:
> +							   =

DMA_BIT_MASK(32);
> +
> +	ret =3D dma_set_mask_and_coherent(dev, dma_mask);
> +	if (ret)
> +		return ret;
> +
>  	mutex_init(&rkisp1->stream_lock);
> =

>  	rkisp1->base_addr =3D devm_platform_ioremap_resource(pdev, 0);


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
