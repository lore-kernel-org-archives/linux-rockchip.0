Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B46B2C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 13:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYvyg3zLkkG6a+r5so5t5GZ01tpDVjYj4XHJgZLDaXk=; b=MP8fMY41SOJcb3
	15o1fjKQwJL3pzYLbehsI5piGuDmExzXStdTML8kl79Pz0OtzmLz2yfLIp7wXDFKgUH2PjN2CAUmD
	em2naEP2RnQ5nzS4UDjwW2CXVXKwECcjrmLrB1cqmcjdgmDwGA0I6SVc/SZbB2v2VR+ScArum/N7Y
	yz2aN1wMpF25juyIEhqU4uk7rnW0VFztm7OmExf0f+h+pOg1cxa/oA3/EEYL13K86B8FOHscbnGyL
	bQ2MQm7YI6esExyDvIdqxqi18C+chmfrxGin2kWBuF2dj4TcHo69cwsdiO2g9SEILYNyUZFP8/Bci
	9MRREyMLGzD03ZWQxsOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RkA-00GIsx-0c; Thu, 07 Jul 2022 13:40:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rk7-00GIs3-Dg
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 13:40:32 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7D57BD00;
	Thu,  7 Jul 2022 15:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657201230;
	bh=ucBhqRbq0ktIklt+KDeu83HkAm0H58VeKW/iuaLHbHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C89uxBL2zjzxIthQjjtmXMvaIuIJxWnZMlpGrghMohsJ7ApnlIgGj0u7gIgX5x7lP
	 QKa+QI87EWdB1b6JxADdxqpnL0eVNBrpSjsc4FyhwKb/YCUMif7HA7lVoHA6qC75ZT
	 ISa/ITK8Pec/s3/WUyr6jMMtJvDAe/ayFvYeXm10=
Date: Thu, 7 Jul 2022 22:40:20 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 05/55] media: rkisp1: Enable compilation on ARCH_MXC
Message-ID: <20220707134020.GL3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-6-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-6-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064031_637806_EE635811 
X-CRM114-Status: GOOD (  14.62  )
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

Hi Laurent,

On Fri, Jul 01, 2022 at 02:06:23AM +0300, Laurent Pinchart wrote:
> The ISP used by the Rockchip RK3399 is also found in the NXP i.MX8MP.
> Enable compilation of the driver for the MXC architecture in addition to
> ARCH_ROCKCHIP.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/Kconfig b/drivers/media/platform/rockchip/rkisp1/Kconfig
> index dabd7e42c193..731c9acbf6ef 100644
> --- a/drivers/media/platform/rockchip/rkisp1/Kconfig
> +++ b/drivers/media/platform/rockchip/rkisp1/Kconfig
> @@ -3,7 +3,7 @@ config VIDEO_ROCKCHIP_ISP1
>  	tristate "Rockchip Image Signal Processing v1 Unit driver"
>  	depends on V4L_PLATFORM_DRIVERS
>  	depends on VIDEO_DEV && OF
> -	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on ARCH_ROCKCHIP || ARCH_MXC || COMPILE_TEST
>  	select MEDIA_CONTROLLER
>  	select VIDEO_V4L2_SUBDEV_API
>  	select VIDEOBUF2_DMA_CONTIG

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
