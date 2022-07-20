Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCDF1C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jul 2022 12:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjAngbR40PsDlOQcKILJBNaBz/hS/7KdabxPw0zutuU=; b=x0IglP2Z+S3GVI
	Q5lRlANGjydpWiXljtlvqOepz36ZKAWBJP4sO1JiQ0/OLn57Fxqka2/nYa7ACFT302CKHpA8maJeE
	3+UuoiKFtD5d4jL+ZODUm+tGM2ZldrS79oFzkmCDJav1XiQVenGoM0Z+nqeZ2yRZxHrB4EGou33hK
	TWXmxdX7KmuRB4UzSuX39yAShMZK1oxAdLYzF8/8uQYBYuOwhlnWHJngHlmh6CB5+t7dh2dKWzq36
	6pprxr9KmBSggseVuH/cLsasfLuIa5f6DIg2K0ihmDVhlJ3J4Qr0A71Jd7IfYWY/VA0LXGY84xXNX
	x+bLPwq02RZqCpYGYuvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE97s-005V1A-Vn; Wed, 20 Jul 2022 12:48:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE97p-005Usg-Ry
	for linux-rockchip@lists.infradead.org; Wed, 20 Jul 2022 12:48:27 +0000
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 20C436DB;
	Wed, 20 Jul 2022 14:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658321295;
	bh=3BQewCSCcJ6YC3KW50l1ItyaKjSNqmtT2xPibi47J3M=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=hxjEKHddaJqXbzesaXAv4iaXrjjnPWJBnludJmGc9aWhlZHqp4vgV4J40NwN6yd+c
	 RLiO4/qM0scBqlPMXNhQHPCKXlk/ejfzZVzg4rYSl1tI2X7wJhh0wbOs312Swqw77F
	 VE383sJNF5IoU3k8PEldplVn+pcRlQlls7rfll/c=
MIME-Version: 1.0
In-Reply-To: <20220719222432.4356-1-laurent.pinchart@ideasonboard.com>
References: <20220719222432.4356-1-laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] media: rkisp1: Add and use rkisp1_has_feature() macro
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>, linux-rockchip@lists.infradead.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-media@vger.kernel.org
Date: Wed, 20 Jul 2022 13:48:12 +0100
Message-ID: <165832129287.2021905.5325737808156196561@Monstersaurus>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_054826_082828_1EF2C2D2 
X-CRM114-Status: GOOD (  16.51  )
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

Quoting Laurent Pinchart (2022-07-19 23:24:32)
> Simplify feature tests with a macro that shortens lines.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Given how we use it on VSP1 too, I certainly prefer this style of
helper!

Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>


> ---
> Sending to the correct mailing list this time, sorry for the noise.
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-common.h |  3 +++
>  .../media/platform/rockchip/rkisp1/rkisp1-dev.c    | 14 +++++++-------
>  2 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 8056997d5c29..0aae802464ac 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -111,6 +111,9 @@ enum rkisp1_feature {
>         RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
>  };
>  
> +#define rkisp1_has_feature(rkisp1, feature) \
> +       ((rkisp1)->info->features & RKISP1_FEATURE_##feature)
> +
>  /*
>   * struct rkisp1_info - Model-specific ISP Information
>   *
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index f2475c6235ea..e348d8c86861 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -206,7 +206,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>                 switch (reg) {
>                 case 0:
>                         /* MIPI CSI-2 port */
> -                       if (!(rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)) {
> +                       if (!rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
>                                 dev_err(rkisp1->dev,
>                                         "internal CSI must be available for port 0\n");
>                                 ret = -EINVAL;
> @@ -338,7 +338,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>         unsigned int i;
>         int ret;
>  
> -       if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
> +       if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
>                 /* Link the CSI receiver to the ISP. */
>                 ret = media_create_pad_link(&rkisp1->csi.sd.entity,
>                                             RKISP1_CSI_PAD_SRC,
> @@ -390,7 +390,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>  
>  static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
>  {
> -       if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
> +       if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
>                 rkisp1_csi_unregister(rkisp1);
>         rkisp1_params_unregister(rkisp1);
>         rkisp1_stats_unregister(rkisp1);
> @@ -423,7 +423,7 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
>         if (ret)
>                 goto error;
>  
> -       if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
> +       if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
>                 ret = rkisp1_csi_register(rkisp1);
>                 if (ret)
>                         goto error;
> @@ -590,7 +590,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>                 goto err_unreg_v4l2_dev;
>         }
>  
> -       if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
> +       if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
>                 ret = rkisp1_csi_init(rkisp1);
>                 if (ret)
>                         goto err_unreg_media_dev;
> @@ -611,7 +611,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  err_unreg_entities:
>         rkisp1_entities_unregister(rkisp1);
>  err_cleanup_csi:
> -       if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
> +       if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
>                 rkisp1_csi_cleanup(rkisp1);
>  err_unreg_media_dev:
>         media_device_unregister(&rkisp1->media_dev);
> @@ -630,7 +630,7 @@ static int rkisp1_remove(struct platform_device *pdev)
>         v4l2_async_nf_cleanup(&rkisp1->notifier);
>  
>         rkisp1_entities_unregister(rkisp1);
> -       if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
> +       if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
>                 rkisp1_csi_cleanup(rkisp1);
>         rkisp1_debug_cleanup(rkisp1);
>  
> -- 
> Regards,
> 
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
