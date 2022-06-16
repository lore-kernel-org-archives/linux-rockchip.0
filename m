Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B9EDC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 07:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vkLcmNyqW50N9XM2qDNSMwc9C8zf/QqH+NZyprSvlM=; b=U6vCOGUBwcvR3z
	X+a6qvwnFRqyDEQyJg1sovpgwmeizwROZeamTk2Bg+5ScrWX68AMd4YxJGZb8xBu3tFMxGThhx8n6
	5tZ8LlOiGSMIsRbp1pwVqCKl5KQiahUcDYODrnGu1MYtPSpA0WVjaxqE4Zcfg/6Ggs/Y555cuZwae
	IfCXwxHhJVC9/GG2x7gjvZQWKhpTWpczI0PSaXh0jhqePh3lwh47G4UcInbd8s4RUBTQD5iqXRtwQ
	iV0dEDtIqF5pruvStQrdd3/TmY26rK2nktL9XUVWIu0cu6GlZo1nbqjwYwHLcg/NgpsUqPPcigiSl
	mOVc7W35osVHmBYzq3Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1k0l-0014gN-Cv; Thu, 16 Jun 2022 07:33:51 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1jzP-00143q-Rx
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 07:32:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655364747; x=1686900747;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=t18MzqsOj7RbKoS0HaLgd7YZ0X0BU7WwoWa5XPkGw4s=;
  b=MUXS8K9kxixVLcE/jQasoDVLFKVp6UAaIjIhwFcXxO8CFG6/s7nWJ93E
   461LjV74040aHEp6lRTCn2rN3nqQo8dZOPRrJuFTrCToWWJ1WlmtY6OYS
   mBKuX9PZA25FYehfIonPniRC6a+eYP9cPhsulbf2n1MLsjEmpExlF9q7a
   p5PGEVT8E90WvwU4MlGXX+pqVA0HwyDH5PaSYNc/P5OKasaHzPSSsoyH8
   ngdKHgLr+N3hHSxxGe430lN8np8ns2aMmodCOoOXsOPblfGjgsRWeQnO+
   XxmDoaWU4K2FcCY0GyiQDqgyyIeR+nMtFuH57ExeaCDN2Z81cisRrmQ4M
   g==;
X-IronPort-AV: E=Sophos;i="5.91,304,1647298800"; 
   d="scan'208";a="24491621"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Jun 2022 09:32:19 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Jun 2022 09:32:19 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Thu, 16 Jun 2022 09:32:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655364739; x=1686900739;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=t18MzqsOj7RbKoS0HaLgd7YZ0X0BU7WwoWa5XPkGw4s=;
  b=gfwmKZUYkjbjEgFRaAwYFTVbqZHr7sUnVllHo9Ylx9iSHgruc9vp26Ic
   QlHu2Vd8N4zXIbjNsnrqDGFwPVuO1QRC/M5UPSUc8M0r81XPBx6Z3u25q
   50B8OdytlH4fXcFoZL1NhCLss0vyv/SlXavuCkz8eT/MeUzFWREpS5O/u
   zHjsblPMhy5zb59JUU0DSUHHKEudExKYXACU+pjyOGqck/KrKTYrRKzrq
   Ba2jmUifuQu6+BuwstYZEj5lNsSLcWFmp6jK2662y9JUZ+6GnKvabXvM8
   uqX/sugNBzcrDEl6n5SVjDKVe6pXG8tJA8l9W9rwN0Rjw1RFPbTC7wBJK
   g==;
X-IronPort-AV: E=Sophos;i="5.91,304,1647298800"; 
   d="scan'208";a="24491620"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2022 09:32:19 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7DFFD280056;
	Thu, 16 Jun 2022 09:32:19 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, dafna@fastmail.com, heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com, linux-rockchip@lists.infradead.org
Subject: Re: (EXT) [PATCH 10/55] media: rkisp1: cap: Print debug message on failed link validation
Date: Thu, 16 Jun 2022 09:32:17 +0200
Message-ID: <7310038.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220614191127.3420492-11-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com> <20220614191127.3420492-11-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_003228_372773_86978563 
X-CRM114-Status: GOOD (  15.56  )
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

Am Dienstag, 14. Juni 2022, 21:10:42 CEST schrieb Paul Elder:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> When a link validation failure occurs, print a debug message to help
> diagnosing the cause.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c index
> 94819e6c23e2..94a0d787a312 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct
> media_link *link)
> 
>  	if (sd_fmt.format.height != cap->pix.fmt.height ||
>  	    sd_fmt.format.width != cap->pix.fmt.width ||
> -	    sd_fmt.format.code != fmt->mbus)
> +	    sd_fmt.format.code != fmt->mbus) {
> +		dev_dbg(cap->rkisp1->dev,

I wonder if a dev_warn is more suitable here.

Best regards,
Alexander

> +			"link '%s':%u -> '%s':%u not valid: 0x%04x/
%ux%u != 0x%04x/%ux%u",
> +			link->source->entity->name, link->source-
>index,
> +			link->sink->entity->name, link->sink->index,
> +			sd_fmt.format.code, sd_fmt.format.width,
> +			sd_fmt.format.height, fmt->mbus, cap-
>pix.fmt.width,
> +			cap->pix.fmt.height);
>  		return -EPIPE;
> +	}
> 
>  	return 0;
>  }





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
